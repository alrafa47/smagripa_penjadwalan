<?php

/**
 * 
 */
class Mapel_Model extends CI_Model
{
	public function getAllData()
	{
		$this->db->select('id_mapel, kode_mapel, nama_mapel, kelas, beban_jam, jurusan.id_jurusan');
		$this->db->from('mapel');
		$this->db->join('jurusan', 'jurusan.id_jurusan = mapel.id_jurusan');
		// $this->db->order_by('kode_mapel', 'ASC');
		return $this->db->get()->result();
	}

	public function getMapel()
	{
		return $this->db->query("SELECT * FROM `mapel` inner join kelas on (mapel.kelas = kelas.kelas && mapel.id_jurusan = kelas.id_jurusan) ORDER BY `mapel`.`kode_mapel` ASC ")->result();
	}

	public function getMapelbyKodeMapel($kodeMapel)
	{
		return $this->db->get_where('mapel', ['kode_mapel' => $kodeMapel])->row('nama_mapel');
	}

	public function listDataMapel()
	{
		$this->db->group_by('kode_mapel');
		$this->db->order_by('id_mapel', 'ASC');
		return $this->db->get('mapel')->result();
	}

	public function getDataMapelByKodeMapel($kodeMapel)
	{
		return $this->db->get_where('mapel', ['kode_mapel' => $kodeMapel])->result();
	}

	public function getAllData_jurusan()
	{
		return $this->db->get('jurusan')->result();
	}

	public function tambah_data()
	{
		echo $jumlah = $this->input->post('jml_data');
		echo $id_kelas = $this->input->post('id_kelas');
		echo $id_mapel = $this->input->post('id_mapel');
		echo $nama_mapel = $this->input->post('nama_mapel');
		echo $kode_mapel = $this->input->post('kode_mapel');
		echo $beban_jam = $this->input->post('beban_jam');
		echo $id_guru = $this->input->post('guru');


		// for ($i = 0; $i < $jumlah; $i++) {
		// 	$data = array(
		// 		'id_tugas' => $id_guru[$i] . '-' . $id_mapel[$i] . '-' . $id_kelas[$i],
		// 		'id_guru' => $id_guru[$i],
		// 		'id_mapel' => $id_mapel[$i],
		// 		'nama_mapel' => $nama_mapel[$i],
		// 		'kode_mapel' => $kode_mapel[$i],
		// 		'id_kelas' => $id_kelas[$i],
		// 		'sisa_jam' => $beban_jam[$i]
		// 	);
		// 	$this->db->insert('mapel', $data);
		// }
	}

	public function hapus_data($id)
	{
		$this->db->delete('mapel', ['id_mapel' => $id]);
	}

	public function ubah_data()
	{
		$data = array(
			'nama_mapel' => $this->input->post('nm_map', true),
			'kelas' => $this->input->post('kls', true),
			'beban_jam' => $this->input->post('beban', true),
			'id_jurusan' => $this->input->post('id_jur', true)
		);
		$this->db->where('id_mapel', $this->input->post('id_map', true));
		$this->db->update('mapel', $data);
	}


	public function detail_data($id)
	{
		return $this->db->get_where('mapel', ['id_mapel' => $id])->row_array();
	}
}
