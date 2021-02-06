<?php

/**
 * 
 */
class Jurusan_Model extends CI_Model
{
	public function getAllData($grup = null)
	{
		return $this->db->get('jurusan')->result();
	}

	public function tambah_data()
	{
		$data = array(
			'id_jurusan' => $this->input->post('id_jur', true),
			'nama_jurusan' => $this->input->post('nm_jur', true)
		);

		$this->db->insert('jurusan', $data);
	}

	public function ubah_data()
	{
		$data = array(
			'nama_jurusan' => $this->input->post('nm_jur', true)
		);
		$this->db->where('id_jurusan', $this->input->post('id_jur', true));
		$this->db->update('jurusan', $data);
	}

	public function hapus_data($id, $check = false)
	{

		$where = ['id_jurusan' => $id];
		if ($check) {
			$queryKelas = $this->db->get_where('kelas', $where)->result();
			$querymapel = $this->db->get_where('mapel', $where)->result();
			$querypenjadwalan = $this->db->get('penjadwalan')->result();
			$querytugasguru = $this->db->get('tugas_guru')->result();

			foreach ($querypenjadwalan as $penjadwalan) {
				$index = array_search($penjadwalan->id_kelas, array_column($queryKelas, 'id_kelas'));
				if (!is_bool($index)) {
					$this->db->delete('penjadwalan', ['id_penjadwalan' => $penjadwalan->id_penjadwalan]);
				}
			}

			foreach ($querytugasguru as $tugas_guru) {
				$index = array_search($tugas_guru->id_mapel, array_column($querymapel, 'id_mapel'));
				if (!is_bool($index)) {
					$this->db->delete('tugas_guru', ['id_tugas' => $tugas_guru->id_tugas]);
				}
			}

			$this->db->delete('kelas', $where);
			$this->db->delete('mapel', $where);
		}
		$this->db->delete('jurusan', $where);
		if (!$this->db->delete('jurusan', $where)) {
			echo $this->db->error()['code'];
		}
		// $this->db->affected_rows();
	}

	public function checkForeign($id)
	{
		$where = ['id_jurusan' => $id];
		$query1 = $this->db->get_where('kelas', $where);
		$query2 = $this->db->get_where('mapel', $where);
		if ($query1->num_rows() >= 1 || $query2->num_rows() >= 1) {
			return true;
		}
		return false;
	}

	public function detail_data($id)
	{
		return $this->db->get_where('jurusan', ['id_jurusan' => $id])->row_array();
	}
}
