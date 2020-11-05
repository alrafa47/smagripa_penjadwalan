<?php

/**
 * 
 */
class PenugasanGuru_Model extends CI_Model
{
	public function getAllDataJoin()
	{
		$this->db->select('id_tugas, guru.id_guru, mapel.id_mapel, kelas.id_kelas, tahun_ajaran');
		$this->db->from('tugas_guru');
		$this->db->join('guru', 'guru.id_guru = tugas_guru.id_guru');
		$this->db->join('mapel', 'mapel.kode_mapel = tugas_guru.id_mapel');
		$this->db->join('kelas', 'kelas.id_kelas = tugas_guru.id_kelas');
		return $this->db->get()->result();
	}

	public function getAllData()
	{
		return $this->db->get('tugas_guru')->result();
	}

	public function getAllDataByid_kelas($id_kelas)
	{
		return $this->db->query("SELECT tugas_guru.*, mapel.beban_jam, mapel.nama_mapel from tugas_guru left join mapel on tugas_guru.id_mapel = mapel.kode_mapel where tugas_guru.id_kelas= '" . $id_kelas . "' GROUP by id_tugas")->result();
	}
	public function getTugasGuruJoinMapelRequestJadwal($id_kelas = null, $hari = null)
	{
		return $this->db->query("SELECT tugas_guru.*, mapel.nama_mapel, mapel.beban_jam FROM tugas_guru LEFT JOIN mapel on mapel.kode_mapel = tugas_guru.id_mapel LEFT JOIN request_jadwal on tugas_guru.id_guru = request_jadwal.id_guru where tugas_guru.id_kelas='" . $id_kelas . "' && tugas_guru.status='0' && request_jadwal.hari LIKE '%" . $hari . "%' GROUP BY id_tugas");
	}

	public function tambah_data()
	{
		$data = array(
			'id_tugas' => $this->input->post('id_pen'),
			'id_guru' => $this->input->post('id_gur'),
			'id_mapel' => $this->input->post('id_map'),
			'id_kelas' => $this->input->post('id_kls'),
			'tahun_ajaran' => $this->input->post('thn')
		);
		$this->db->insert('tugas_guru', $data);
	}

	public function ubah_data()
	{
		$data = array(
			'id_guru' => $this->input->post('id_gur', true),
			'id_mapel' => $this->input->post('id_map', true),
			'id_kelas' => $this->input->post('id_kls', true),
			'tahun_ajaran' => $this->input->post('thn', true)
		);
		$this->db->where('id_tugas', $this->input->post('id_pen', true));
		$this->db->update('tugas_guru', $data);
	}

	public function hapus_data($id)
	{
		$this->db->delete('tugas_guru', ['id_tugas' => $id]);
	}

	public function detail_data($id)
	{
		return $this->db->get_where('tugas_guru', ['id_tugas' => $id])->row_array();
	}
}