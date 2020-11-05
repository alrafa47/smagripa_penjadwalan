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

	public function getDataPenjadwalanByIdKelas($idKelas, $hari = null)
	{
		$this->db->select('penjadwalan.*');
		$this->db->from('penjadwalan');
		$this->db->where('id_kelas', $idKelas);
		$this->db->where('keterangan', 'kosong');
		$this->db->where('kode_jadwal', '-');
		$this->db->where('hari', $hari);
		return $this->db->get();
	}

	public function plotingJadwal($hari, $idKelas, $jadwal, $jumlahSesi, $idTugas, $namaMapel)
	{
		for ($i = 0; $i < $jumlahSesi; $i++) {
			// $this->db->query("UPDATE penjadwalan SET keterangan = '" . $namaMapel . "', kode_jadwal = '" . $idTugas . "' WHERE hari ='" . $hari . "' && id_kelas='" . $idKelas . "' && sesi='" . $jadwal[$i]->sesi . "'");
			echo $jadwal[$i]->sesi . ", ";
		}
		// $this->updateStatusPenugasan($idTugas);
	}

	public function checkingJadwalyangKosong($hari, $kelas)
	{
		$this->db->select('penjadwalan.*');
		$this->db->from('penjadwalan');
		$this->db->where('hari', $hari);
		$this->db->where('kode_jadwal', '-');
		$this->db->where('keterangan', 'kosong');
		$this->db->where('id_kelas', $kelas);
		return $this->db->get()->result();
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
