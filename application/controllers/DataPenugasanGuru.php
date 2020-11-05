<?php

/**
 * 
 */
class DataPenugasanGuru extends CI_Controller
{
	public function __construct()
	{
		parent::__construct();
		$this->load->model('PenugasanGuru_Model');
		$this->load->model('Guru_Model');
		$this->load->model('Mapel_Model');
		$this->load->model('Kelas_Model');
		$this->load->model('Jurusan_Model');
		$this->load->library('form_validation');
	}
	function index()
	{
		// tampil list penugasan guru
		$data['tugas_guru'] = $this->PenugasanGuru_Model->getAllData();
		$data['listGuru'] = $this->Guru_Model->getAllData();
		$data['listMapel'] = $this->Mapel_Model->listDataMapel();
		$data['kelas'] = $this->Kelas_Model->getAllData();
		$data['jurusan'] = $this->Jurusan_Model->getAllData();
		$this->load->view('templates/header');
		$this->load->view('templates/sidebar');
		$this->load->view('penugasanguru/index', $data);
		$this->load->view('templates/footer');
	}

	public function getDataKelasByKodeMapel()
	{
		$kode = $this->input->post('kode_mapel');
		echo json_encode($this->Mapel_Model->getDataMapelByKodeMapel($kode));
	}

	public function validation_form()
	{
		$this->PenugasanGuru_Model->tambah_data();
		$this->session->set_flashdata('flash_penugasanguru', 'Disimpan');
		redirect('DataPenugasanGuru');
	}

	public function hapus($id_pen)
	{
		$this->PenugasanGuru_Model->hapus_data($id_pen);
		$this->session->set_flashdata('flash_penugasanguru', 'Dihapus');
		redirect('DataPenugasanGuru');
	}

	public function ubah($id_pen)
	{
		$this->form_validation->set_rules("id_pen", "ID Penugasan Guru", "required|max_length[5]");
		$this->form_validation->set_rules("id_gur", "Nama Guru", "required");
		$this->form_validation->set_rules("id_map", "Mapel", "required");
		$this->form_validation->set_rules("id_kls", "Kelas", "required");
		$this->form_validation->set_rules("thn", "Tahun Ajaran", "required");
		if ($this->form_validation->run() == FALSE) {
			$data['ubah'] = $this->PenugasanGuru_Model->detail_data($id_pen);
			$data['guru'] = $this->Guru_Model->getAllData();
			$data['mapel'] = $this->Mapel_Model->getAllData();
			$data['kelas'] = $this->Kelas_Model->getAllData();
			$this->load->view('templates/header');
			$this->load->view('templates/sidebar');
			$this->load->view('penugasanguru/ubah', $data);
			$this->load->view('templates/footer');
		} else {
			$this->PenugasanGuru_Model->ubah_data();
			$this->session->set_flashdata('flash_penugasanguru', 'DiUbah');
			redirect('DataPenugasanGuru');
		}
	}
}
