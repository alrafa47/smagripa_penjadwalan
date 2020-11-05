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

	public function tambah_data( )
	{
		$data = array(
			'id_guru' => $this->input->post('id_gur'),
			'nama_guru' => $this->input->post('nama_gur'),
			'status' => $this->input->post('status_gur'),
			'pendidikan_terakhir' => $this->input->post('pendidikan_gur'),
			'no_telp' => $this->input->post('telp_gur'),
			'email' => $this->input->post('email_gur', true)
		);

		$this->db->insert('guru', $data);
	}

	public function ubah_data( )
	{
		$data = array(
			'nama_guru' => $this->input->post('nama_gur', true),
			'status' => $this->input->post('status_gur', true),
			'pendidikan_terakhir' => $this->input->post('pendidikan_gur', true),
			'no_telp' => $this->input->post('telp_gur', true),
			'email' => $this->input->post('email_gur', true)
		);
		$this->db->where('id_guru', $this->input->post('id_gur', true));
		$this->db->update('guru', $data);
	}

	public function hapus_data($id)
	{
		$this->db->delete('guru', ['id_guru' => $id]);
	}

	public function detail_data($id)
	{
		return $this->db->get_where('guru', ['id_guru' => $id]) ->row_array(); 
	}

}
 ?>