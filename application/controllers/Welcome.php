<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Welcome extends CI_Controller
{

	public function __construct()
	{
		parent::__construct();
		if (!$this->session->has_userdata('id_user')) {
			redirect('Login');
		}
		$this->load->model('Guru_Model');
		$this->load->model('Jadwal_Model');
		$this->load->model('JadwalKhusus_Model');
		$this->load->model('Jurusan_Model');
		$this->load->model('Kelas_Model');
		$this->load->model('Mapel_Model');
		$this->load->model('PenugasanGuru_Model');
		$this->load->model('RangeJam_Model');
		$this->load->model('RequestJadwal_Model');
		$this->load->model('Rumusan_Model');
		$this->load->model('User_Model');
	}
	public function index()
	{
		$data = [
			'guru' => count($this->Guru_Model->getAllData()),
			'jadwal' => count($this->Jadwal_Model->getAllData()),
			'jadwalKhusus' => count($this->JadwalKhusus_Model->getAllData()),
			'jurusan' => count($this->Jurusan_Model->getAllData()),
			'kelas' => count($this->Kelas_Model->getAllData()),
			'mapel' => count($this->Mapel_Model->getAllData(true)),
			'penugasanGuru' => count($this->PenugasanGuru_Model->getAllData()),
			'rangeJam' => count($this->RangeJam_Model->getAllData()),
			'requestJadwal' => count($this->RequestJadwal_Model->getAllData()),
			'rumusan' => count($this->Rumusan_Model->getDataRumusan()),
			'user' => count($this->User_Model->getData())
		];
		$this->load->view("templates/header");
		$this->load->view("templates/sidebar");
		$this->load->view("index", $data);
		$this->load->view("templates/footer");
	}
}
