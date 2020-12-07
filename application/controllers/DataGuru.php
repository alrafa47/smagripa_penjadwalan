<?php

/**
 * 
 */
class DataGuru extends CI_Controller
{
	public function __construct()
	{
		parent::__construct();
		$this->load->model('Guru_Model');
		$this->load->library('form_validation');
	}

	public function index()
	{
		$data['guru'] = $this->Guru_Model->getAllData();
		$this->load->view('templates/header');
		$this->load->view('templates/sidebar');
		$this->load->view('guru/index', $data);
		$this->load->view('templates/footer');
	}

	public function validation_form()
	{
		$this->form_validation->set_rules("id_gur", "Kode Gur", "required|is_unique[guru.id_guru]|max_length[5]");
		$this->form_validation->set_rules("nama_gur", "Nama Gur", "required|is_unique[guru.nama_guru]");
		$this->form_validation->set_rules("status_gur", "Status Gur", "required|is_unique[guru.status]");
		$this->form_validation->set_rules("pendidikan_gur", "Pendidikan Gur", "required|is_unique[guru.pendidikan_terakhir]");
		$this->form_validation->set_rules("telp_gur", "Nomor Telpon Gur", "required|is_unique[guru.no_telp]");
		$this->form_validation->set_rules("email_gur", "Email Gur", "required|is_unique[guru.email]");
		if ($this->form_validation->run() == FALSE) {
			$this->index();
		} else {
			$this->Guru_Model->tambah_data();
			$this->session->set_flashdata('flash_guru', 'Disimpan');
			redirect('DataGuru');
		}
	}

	public function hapus($id)
	{
		$this->Guru_Model->hapus_data($id);
		$this->session->set_flashdata('flash_guru', 'Dihapus');
		redirect('DataGuru');
	}

	public function ubah($id)
	{
		$this->form_validation->set_rules("id_gur", "Kode Gur", "required|max_length[5]");
		$this->form_validation->set_rules("nama_gur", "Nama Gur", "required");
		$this->form_validation->set_rules("status_gur", "Status Gur", "required");
		$this->form_validation->set_rules("pendidikan_gur", "Pendidikan Gur", "required");
		$this->form_validation->set_rules("telp_gur", "Nomor Telpon Gur", "required");
		$this->form_validation->set_rules("email_gur", "Email Gur", "required");
		if ($this->form_validation->run() == FALSE) {
			$data['ubah'] = $this->Guru_Model->detail_data($id);
			$this->load->view('templates/header');
			$this->load->view('templates/sidebar');
			$this->load->view('guru/ubah', $data);
			$this->load->view('templates/footer');
		} else {
			$this->Guru_Model->ubah_data();
			$this->session->set_flashdata('flash_guru', 'DiUbah');
			redirect('DataGuru');
		}
	}
}
