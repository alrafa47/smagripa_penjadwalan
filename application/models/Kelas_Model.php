<?php

/**
 * 
 */
class Kelas_Model extends CI_Model
{
	/* 
	* mengambil semua data kelas dan join data jurusan
	*/
	public function getAllData()
	{
		$this->db->select('id_kelas, kelas, kelas.id_jurusan, jurusan.nama_jurusan, nama_kelas');
		$this->db->from('kelas');
		$this->db->join('jurusan', 'jurusan.id_jurusan = kelas.id_jurusan');
		$this->db->order_by('kelas.id_jurusan', 'ASC');
		$this->db->order_by('kelas.kelas', 'ASC');
		$this->db->order_by('kelas.nama_kelas', 'ASC');
		return $this->db->get()->result();
	}

	public function getAllData_jurusan()
	{
		return $this->db->get('jurusan')->result();
	}

	public function tambah_data()
	{
		$data = array(
			'id_kelas' => $this->input->post('kelas') .	$this->input->post('id_jur') . $this->input->post('nm_kelas'),
			'kelas' => $this->input->post('kelas'),
			'id_jurusan' => $this->input->post('id_jur'),
			'nama_kelas' => $this->input->post('nm_kelas')
		);
		$this->db->insert('kelas', $data);
	}

	// public function hapus_data($id)
	// {
	// 	$this->db->delete('kelas', ['id_kelas' => $id]);
	// }

	public function hapus_data($id, $check = false)
	{

		$where = ['id_kelas' => $id];
		if ($check) {
			// $this->db->query("DELETE FROM kelas LEFT JOIN penjadwalan ON kelas.id_kelas = penjadwalan.id_kelas WHERE kelas.id_jurusan = '$id'");
			// $this->db->query("DELETE FROM mapel LEFT JOIN tugas_guru ON mapel.id_mapel = tugas_guru.id_mapel WHERE mapel.id_jurusan = '$id'");
			// $this->db->empty_table('penjadwalan');
			$this->resetPenjadwalan();
			$this->db->delete('tugas_guru', $where);
		}
		$this->db->delete('kelas', $where);
		if (!$this->db->delete('kelas', $where)) {
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
		$where = ['id_kelas' => $id];
		$query1 = $this->db->get_where('penjadwalan', $where);
		$query2 = $this->db->get_where('tugas_guru', $where);
		if ($query1->num_rows() >= 1 || $query2->num_rows() >= 1) {
			return true;
		}
		return false;
	}

	public function detail_data($id)
	{
		return $this->db->get_where('kelas', ['id_kelas' => $id])->row_array();
	}
}
