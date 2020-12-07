<?php

/**
 * 
 */
class Jadwal_Model extends CI_Model
{
	public function getAllData()
	{
		return $this->db->get('jadwal')->result();
	}

	public function insertData($hari, $kelas, $sesi, $kodeJadwal, $keterangan, $jam_mulai, $jam_selesai)
	{
		$data = array(
			'hari' => $hari,
			'id_kelas' => $kelas,
			'sesi' => $sesi,
			'kode_jadwal' => $kodeJadwal,
			'keterangan' => $keterangan,
			'jam_mulai' => $jam_mulai,
			'jam_selesai' => $jam_selesai
		);
		$this->db->insert('penjadwalan', $data);
	}

	public function checkingJadwalExist($hari = null, $sesi, $idGuru)
	{
		if ($this->db->query('SELECT * FROM penjadwalan where hari="' . $hari . '" && sesi="' . $sesi . '" && kode_jadwal LIKE %' . $idGuru . '%')->num_rows() > 0) {
			return true;
		} else {
			return false;
		}
	}

	/* 
	*cari jadwal berdasarkan sesi hari dan kelas
	*/
	public function cariJadwal($sesi, $hari, $id_kelas)
	{
		return $this->db->query("SELECT * FROM penjadwalan where sesi  = '$sesi' and hari = '$hari' and id_kelas = '$id_kelas'")->row();
		// $this->db->where('sesi', $sesi);
		// $this->db->where('hari', $hari);
		// $this->db->where('id_kelas', $id_kelas);
		// return $this->db->get('penjadwalan')->row();
	}

	/* 
	* description : mendapatkan data penjadwalan berdasarkan id kelas dan Hari
	* param : id kelas , hari(can be null)
	*/
	public function getDataPenjadwalan($idKelas, $hari)
	{
		$this->db->select('penjadwalan.*');
		$this->db->from('penjadwalan');
		$this->db->where('id_kelas', $idKelas);
		$this->db->where('keterangan', 'kosong');
		$this->db->where('kode_jadwal', '-');
		$this->db->where('hari', $hari);
		return $this->db->get()->result();
	}

	public function isiJadwal($kelas, $hari, $sesi, $id_guru, $id_mapel, $keterangan, $kode_jadwal)
	{
		if (is_array($sesi)) {
			foreach ($sesi as $value) {
				$data = [
					'id_guru' => $id_guru,
					'id_mapel' => $id_mapel,
					'kode_jadwal' => $kode_jadwal,
					'keterangan' => $keterangan
				];

				$this->db->where('sesi', $value);
				$this->db->where('id_kelas', $kelas);
				$this->db->where('hari', $hari);
				$this->db->update('penjadwalan', $data);
			}
		} else {
			echo '<br>{sesi error }<br>';
		}
	}

	public function updateStatusPenugasan($id_tugas)
	{
		$this->db->query("UPDATE tugas_guru SET status = '1' WHERE id_tugas='" . $id_tugas . "'");
	}

	public function coba()
	{
		$this->db->get();
	}
}
