<?php

/**
 * 
 */
class Guru_Model extends CI_Model
{
	public function getAllData()
	{
		return $this->db->get('guru')->result();
	}

	public function tambah_data()
	{
		$data = array(
			'id_guru' => $this->input->post('id_gur'),
			'nama_guru' => $this->input->post('nama_gur'),
			'status' => $this->input->post('status_gur'),
			'pendidikan_terakhir' => $this->input->post('pendidikan_gur'),
			'no_telp' => $this->input->post('telp_gur'),
			'email' => $this->input->post('email_gur', true),
			'code_color' => $this->input->post('code_color', true)
		);

		$this->db->insert('guru', $data);
	}

	public function ubah_data()
	{
		$data = array(
			'nama_guru' => $this->input->post('nama_gur', true),
			'status' => $this->input->post('status_gur', true),
			'pendidikan_terakhir' => $this->input->post('pendidikan_gur', true),
			'no_telp' => $this->input->post('telp_gur', true),
			'email' => $this->input->post('email_gur', true),
			'code_color' => $this->input->post('code_color', true)
		);
		$this->db->where('id_guru', $this->input->post('id_gur', true));
		$this->db->update('guru', $data);
	}

	// public function hapus_data($id)
	// {
	// 	$this->db->delete('guru', ['id_guru' => $id]);
	// }

	public function hapus_data($id, $check = false)
	{

		$where = ['id_guru' => $id];
		if ($check) {
			// $this->db->query("DELETE FROM kelas LEFT JOIN penjadwalan ON kelas.id_guru = penjadwalan.id_guru WHERE kelas.id_jurusan = '$id'");
			// $this->db->query("DELETE FROM mapel LEFT JOIN tugas_guru ON mapel.id_mapel = tugas_guru.id_mapel WHERE mapel.id_jurusan = '$id'");
			// $this->db->empty_table('penjadwalan');
			$this->resetPenjadwalan();
			$this->db->delete('tugas_guru', $where);
			$this->db->delete('rumusan', $where);
			$this->db->delete('request_jadwal', $where);
		}
		$this->db->delete('guru', $where);
		if (!$this->db->delete('guru', $where)) {
			echo $this->db->error()['code'];
		}
		// $this->db->affected_rows();
	}

	public function resetPenjadwalan()
	{
		$this->db->query('UPDATE penjadwalan SET id_guru = null, id_mapel = null, kode_jadwal = "-", keterangan = "kosong" WHERE id_guru != ""');
		$this->db->query('UPDATE tugas_guru SET status = "0" WHERE status="1"');
		$this->db->query('UPDATE tugas_guru SET sisa_jam = beban_jam');
	}

	public function checkForeign($id)
	{
		$where = ['id_guru' => $id];
		$query1 = $this->db->get_where('penjadwalan', $where);
		$query2 = $this->db->get_where('tugas_guru', $where);
		$query3 = $this->db->get_where('rumusan', $where);
		$query4 = $this->db->get_where('request_jadwal', $where);
		if ($query1->num_rows() >= 1 || $query2->num_rows() >= 1 || $query3->num_rows() >= 1 || $query4->num_rows() >= 1) {
			return true;
		}
		return false;
	}

	public function detail_data($id)
	{
		return $this->db->get_where('guru', ['id_guru' => $id])->row_array();
	}

	/* 
		* mendapatkan data guru yang melakukan request
		*/
	public function getDataGuruJoinRequest()
	{
		return $this->db->query("SELECT guru.id_guru, guru.nama_guru, request_jadwal.id_request, request_jadwal.hari FROM guru left join request_jadwal on guru.id_guru = request_jadwal.id_guru")->result();
	}

	/* 
		* mendapatkan data kelas berdasarkan id guru
		*/
	public function getDataGuruJoinKelas($id_guru)
	{
		$query = $this->db->query("SELECT id_kelas from tugas_guru where id_guru ='$id_guru' GROUP BY id_kelas")->result();
		$data = [];
		foreach ($query as $value) {
			$data[] = $value->id_kelas;
		}
		return $data;
	}

	/* 
		* beban kerja guru berdasarkan id_guru
		*/
	public function getDataBebanKerja($id_guru)
	{
		$query =  $this->db->query("SELECT SUM(sisa_jam) as beban FROM `tugas_guru` where id_guru ='$id_guru'")->row()->beban;
		return ($query) ? $query : 0;
	}

	/* 
		* total ketersediaan pada hari
		*/
	public function ketersediaanJam($kelas, $hari)
	{
		$query = "SELECT COUNT(id_penjadwalan) as total FROM `penjadwalan` where keterangan = 'kosong' AND (";
		if (empty($kelas)) {
			return 0;
		} else {
			foreach ($kelas as $key => $dataKelas) {
				if ($key == 0) {
					$query .= "id_kelas = '$dataKelas'";
				} else {
					$query .= " OR id_kelas = '$dataKelas'";
				}
			}
			$query .= ") AND (";
			foreach ($hari as $key => $dataHari) {
				if ($key == 0) {
					$query .= "hari = '$dataHari'";
				} else {
					$query .= " OR hari = '$dataHari'";
				}
			}
			$query .= ")";
			return $this->db->query($query)->row()->total;
		}
	}
}
