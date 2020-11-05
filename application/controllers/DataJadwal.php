<?php
class DataJadwal extends CI_Controller
{
	public function __construct()
	{
		parent::__construct();
		$this->load->library('form_validation');
		$this->load->model('Jadwal_Model');
		$this->load->model('JadwalKhusus_Model');
		$this->load->model('Kelas_Model');
		$this->load->model('RequestJadwal_Model');
		$this->load->model('PenugasanGuru_Model');
	}
	public function index($halaman = 'default')
	{
		$data['jadwal'] = $this->Jadwal_Model->getAllData();
		$this->load->view('templates/header');
		$this->load->view('templates/sidebar');
		$this->load->view('jadwal/index', $data);
		$this->load->view('templates/footer');
	}

	// search jadwal Khusus 
	public function searchJadwalKhusus($array, $sesi, $hari, $kelas)
	{
		foreach ($array as $value) {
			if ($value['kelas'] == $kelas && $value['hari'] == $hari  && $value['sesi'] == $sesi) {
				return ['id_jadwal' => $value['id_jadwal_khusus'], 'keterangan' => $value['keterangan'], 'durasi' => $value['durasi']];
			}
		}
		return false;
	}

	//create jadwal
	public function createJadwal()
	{
		$jadwal = $this->Jadwal_Model->getAllData();
		$kelas = $this->Kelas_Model->getAllData();
		$jadwalKhusus = $this->JadwalKhusus_Model->getAllData();

		echo '<table>';
		foreach ($kelas as $rowKelas) {
			$kosong = 0;
			echo '<tr>';
			echo '<td>';
			echo "jadwal kelas" . $rowKelas->kelas . $rowKelas->nama_jurusan . $rowKelas->nama_kelas . "<br>";
			echo '</td>';
			echo '</tr>';
			echo '<tr>';
			echo '<td colspan = "6">';
			echo 'Mapel : ';
			$tugasGuru = $this->PenugasanGuru_Model->getAllDataByid_kelas($rowKelas->id_kelas);
			$totalBebanJam = 0;
			foreach ($tugasGuru as $dataTugasGuru) {
				$requestHari = $this->RequestJadwal_Model->getAllDataByid_guru($dataTugasGuru->id_guru);
				$totalBebanJam += $dataTugasGuru->beban_jam;
				echo $dataTugasGuru->id_tugas . ' : ' . $dataTugasGuru->nama_mapel .  '=>' . $dataTugasGuru->beban_jam  . '(' . $requestHari . ')' . ' <br>';
			}
			echo 'total beban jam : ' . $totalBebanJam;
			echo '</td>';
			echo '</tr>';
			echo '<tr>';
			foreach ($jadwal as $rowJadwal) {
				echo '<td>';
				echo "===================<br>";
				echo $rowJadwal->hari;
				echo "<br>";
				echo "=================== <br>";
				$jam_mulai = strtotime($rowJadwal->jam_mulai);
				for ($i = 0; $i < $rowJadwal->jumlah_sesi; $i++) {
					if (is_array($khusus = $this->searchJadwalKhusus($jadwalKhusus, $i, $rowJadwal->hari, $rowKelas->kelas))) {
						$idJadwal = $khusus['id_jadwal'];
						$keterangan = $khusus['keterangan'];
						$lama_sesi = $khusus['durasi'];
					} else {
						$idJadwal = '-';
						$keterangan = "kosong";
						$lama_sesi = $rowJadwal->lama_sesi;
						$kosong++;
					}
					$jam_selesai = date("H:i", strtotime('+' . $lama_sesi . ' minutes', $jam_mulai));
					// $this->Jadwal_Model->insertData($rowJadwal->hari, $rowKelas->id_kelas, $i, $idJadwal, $keterangan, date("H:i", $jam_mulai), $jam_selesai);
					echo $i . " " . $idJadwal . " " . $keterangan . " " . date("H:i", $jam_mulai) . "-" . $jam_selesai . "<br>";
					$jam_mulai = strtotime($jam_selesai);
				}
				echo '</td>';
			}
			echo '</tr>';
			echo '<tr>';
			echo '<td>';
			echo 'jumlah jadwal kosong : ' . $kosong;
			echo '</td>';
			echo '</tr>';
		}
		echo '</table>';
	}

	public $tempDataGuruMengajar = null;

	public function plotingJadwal($kelas)
	{

		// day
		$hari = ['Senin', 'Selasa', 'Rabu', 'Kamis', 'Jum`at', 'Sabtu'];

		// check jadwal yang kosong 
		$jumlahJadwalKosong = $this->Jadwal_Model->checkingJadwalyangKosong('Senin', $kelas);
		echo 'jadwal ksosong : ' . count($jumlahJadwalKosong) . "<br>";

		// get data Sesi yang kosong
		$dataPenjadwalan = $this->Jadwal_Model->getDataPenjadwalanByIdKelas($kelas, 'Senin')->result();
		echo 'Sesi : ' . $dataPenjadwalan[0]->sesi . "<br/>";

		// get data guru yang belum dapat jatah mengajar
		$tugasGuru = $this->PenugasanGuru_Model->getTugasGuruJoinMapelRequestJadwal($kelas, 'Senin')->row();

		echo $tugasGuru->id_tugas . "-" . $tugasGuru->nama_mapel . "-" . $tugasGuru->beban_jam . "<br/>";

		// cek apakah jadwal guru crash
		// $this->Jadwal_Model->checkingJadwalExist('Senin', $tugasGuru->id_guru, $dataPenjadwalan, $tugasGuru->beban_jam);

		// jika tidak crash maka melakukan plotting
		$this->Jadwal_Model->plotingJadwal('Senin', $tugasGuru->id_kelas, $dataPenjadwalan, $tugasGuru->beban_jam, $tugasGuru->id_tugas, $tugasGuru->nama_mapel);

		// menyimpan data guru agar guru tidak mengajar 2 mapel di hari yang sama
		$tempDataGuruMengajar[] = $tugasGuru->id_guru;
	}

	public function coba()
	{
		$this->Jadwal_Model->coba();
	}
}
