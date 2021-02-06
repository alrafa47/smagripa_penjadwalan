<?php

use Svg\Tag\Group;

/**
 * 
 */
class Mapel_Model extends CI_Model
{
	public function getAllData($grup = false)
	{

		$this->db->select('id_mapel, kode_mapel, nama_mapel, kelas, beban_jam, jurusan.id_jurusan, kelompok_mapel');
		$this->db->from('mapel');
		$this->db->join('jurusan', 'jurusan.id_jurusan = mapel.id_jurusan');
		if ($grup) {
			$this->db->group_by('kode_mapel');
		}
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
		foreach ($this->input->post('chkKelas') as $valueKls) {
			foreach ($this->input->post('chkJurusan') as $valueJur) {
				$data = [
					'kode_mapel' => $this->input->post('kd_map'),
					'nama_mapel' => $this->input->post('nm_map'),
					'kelompok_mapel' => $this->input->post('kelompok_mapel'),
					'kelas' => $valueKls,
					'beban_jam' => $this->input->post('beban'),
					'id_jurusan' => $valueJur
				];
				if ($this->checkExist($this->input->post('kd_map'), $this->input->post('kelompok_mapel'), $valueKls, $this->input->post('beban'), $valueJur)) {
					$this->db->insert('mapel', $data);
				}
			}
		}
	}

	public function checkExist($kode_mapel, $kelompok_mapel, $kelas, $nama_mapel, $beban_jam, $id_jurusan)
	{
		$data = [
			'kode_mapel' => $kode_mapel,
			'kelompok_mapel' => $kelompok_mapel,
			'kelas' => $kelas,
			'nama_mapel' => $nama_mapel,
			'beban_jam' => $beban_jam,
			'id_jurusan' => $id_jurusan
		];
		$query = $this->db->get_where('mapel', $data)->num_rows();
		if ($query > 0) {
			return false;
		}
		return true;
	}

	// public function tambah_data()
	// {
	// 	echo $jumlah = $this->input->post('jml_data');
	// 	echo $id_kelas = $this->input->post('id_kelas');
	// 	echo $id_mapel = $this->input->post('id_mapel');
	// 	echo $nama_mapel = $this->input->post('nama_mapel');
	// 	echo $kode_mapel = $this->input->post('kode_mapel');
	// 	echo $beban_jam = $this->input->post('beban_jam');
	// 	echo $id_guru = $this->input->post('guru');


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
	// }

	// public function hapus_data($id)
	// {
	// 	$this->db->delete('mapel', ['id_mapel' => $id]);
	// }

	public function hapus_data($id, $check = false)
	{

		$where = ['id_mapel' => $id];
		if ($check) {
			// $this->db->query("DELETE FROM kelas LEFT JOIN penjadwalan ON kelas.id_kelas = penjadwalan.id_kelas WHERE kelas.id_jurusan = '$id'");
			// $this->db->query("DELETE FROM mapel LEFT JOIN tugas_guru ON mapel.id_mapel = tugas_guru.id_mapel WHERE mapel.id_jurusan = '$id'");
			// $this->db->delete('penjadwalan', $where);
			// $this->db->empty_table('penjadwalan');
			$this->resetPenjadwalan();
			$this->db->delete('tugas_guru', $where);
		}
		$this->db->delete('mapel', $where);
		if (!$this->db->delete('mapel', $where)) {
			echo $this->db->error()['code'];
		}
		// $this->db->affected_rows();
	}

	public function checkForeign($id)
	{
		$where = ['id_mapel' => $id];
		$query1 = $this->db->get_where('penjadwalan', $where);
		$query2 = $this->db->get_where('tugas_guru', $where);
		if ($query1->num_rows() >= 1 || $query2->num_rows() >= 1) {
			return true;
		}
		return false;
	}

	public function ubah_data()
	{
		$data = array(
			'kode_mapel' => $this->input->post('kd_map', true),
			'nama_mapel' => $this->input->post('nm_map', true),
			'kelas' => $this->input->post('kls', true),
			'beban_jam' => $this->input->post('beban', true),
			'id_jurusan' => $this->input->post('id_jur', true),
			'kelompok_mapel' => $this->input->post('kelompok_mapel', true)
		);
		if ($this->checkExist($this->input->post('kd_map'), $this->input->post('kelompok_mapel'), $this->input->post('nm_mapel'), $this->input->post('kls', true), $this->input->post('beban'), $this->input->post('id_jur', true))) {
			$this->db->where('id_mapel', $this->input->post('id_map', true));
			$this->db->update('mapel', $data);
			if ($this->db->get_where('tugas_guru', ['id_mapel' => $this->input->post('id_map', true)])->num_rows() > 0) {
				$this->db->update('tugas_guru', ['beban_jam' => $this->input->post('beban', true)], ['id_mapel' => $this->input->post('id_map', true)]);
			}
			$this->resetPenjadwalan();
		}
	}

	public function resetPenjadwalan()
	{
		$this->db->query('UPDATE penjadwalan SET id_guru = null, id_mapel = null, kode_jadwal = "-", keterangan = "kosong" WHERE id_guru != ""');
		$this->db->query('UPDATE tugas_guru SET status = "0" WHERE status="1"');
		$this->db->query('UPDATE tugas_guru SET sisa_jam = beban_jam');
	}


	public function detail_data($id)
	{
		return $this->db->get_where('mapel', ['id_mapel' => $id])->row_array();
	}
}
