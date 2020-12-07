<?php
class DataJadwal extends CI_Controller
{
	public function __construct()
	{
		parent::__construct();
		$this->load->library('form_validation');
		$this->load->model('Jadwal_Model');
		$this->load->model('Guru_Model');
		$this->load->model('JadwalKhusus_Model');
		$this->load->model('Kelas_Model');
		$this->load->model('RequestJadwal_Model');
		$this->load->model('PenugasanGuru_Model');
		$this->load->model('Rumusan_Model');
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

	public function tampilJadwalSementara()
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
						$penjadwalan_guru = $this->Jadwal_Model->cariJadwal($i, $rowJadwal->hari, $rowKelas->id_kelas);
						// $idJadwal = $penjadwalan_guru->id_penjadwalan;
						$keterangan = $penjadwalan_guru->keterangan;
						$idJadwal = "";
						// $keterangan = "";
						$lama_sesi = $rowJadwal->lama_sesi;
						// $kosong++;
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
			// echo 'jumlah jadwal kosong : ' . $kosong;
			echo '</td>';
			echo '</tr>';
		}
		echo '</table>';
	}

	public function coba()
	{
		$this->Jadwal_Model->coba();
	}

	/* 
	* mendapatkan data guru dan kehadirannya
	* rumusan berfungsi untuk menentukan prioritas guru mana yang perlu di masukan dahulu
	 */
	public function rumusan()
	{
		$result = $this->Guru_Model->getDataGuruJoinRequest();

		foreach ($result as $key => $value) {
			if (!$value->id_request) {
				// tambah data bila ada guru yang tidak request
				$value->hari = ['Senin', 'Selasa', 'Rabu', 'Kamis', 'Jum`at', 'Sabtu'];
				$status = 0;
				$result[$key]->status_request = $status;
			} else {
				// convert data string to array
				$value->hari = explode(",", $value->hari);
				$status = 1;
				$result[$key]->status_request = $status;
			}
			// menambahkan kelas yang diajar
			$result[$key]->kelas = $this->Guru_Model->getDataGuruJoinKelas($value->id_guru);
			$kelas = $result[$key]->kelas;
			// menambahkan beban kerja guru
			$result[$key]->beban_kerja = $this->Guru_Model->getDataBebanKerja($value->id_guru);
			// menambahkan total jam tersedia
			$result[$key]->jam_tersedia = $this->Guru_Model->ketersediaanJam($kelas, $value->hari);
			// menambahkan hasil rumusan 
			if ($result[$key]->beban_kerja == 0 && $result[$key]->jam_tersedia == 0) {
				$rumusan = 0;
			} else {
				$rumusan = round(($status == 1) ? 1 + ($result[$key]->beban_kerja / $result[$key]->jam_tersedia) : 0 + ($result[$key]->beban_kerja / $result[$key]->jam_tersedia), 2);
			}

			$result[$key]->rumusan = $rumusan;
		}

		echo "<pre>";
		echo print_r($result);
		echo "</pre>";
		/* 
		 !create data 
		 */
		// $this->Rumusan_Model->createData($result);
	}


	/* 
	*membuat data penjadwalan 
	*(tujuan agar mudah dibaca)
	*/
	public $jadwal;
	public function CreateDataJadwal($kelas)
	{
		$hari =  ['Senin', 'Selasa', 'Rabu', 'Kamis', 'Jum`at', 'Sabtu'];
		// $data = [];
		// $dataHari = explode(',', $hari);
		foreach ($hari as $value) {
			$this->jadwal[$value] = $this->Jadwal_Model->getDataPenjadwalan($kelas, $value);
		}
	}

	/* 
	*mengambildata jadwal yang sudah dibuat bedasarkan hari yang di tentukan
 	*/
	public function getDataJadwal($hari)
	{
		$data = [];
		$dataHari = explode(',', $hari);
		foreach ($dataHari as $value) {
			$data[$value] = $this->jadwal[$value];
		}
		return $data;
	}

	/* 
	* plotting penjadwalan
	*/
	public function ploting_jadwal()
	{
		$dataKelas = $this->Kelas_Model->getAllData();
		// data kelas 
		foreach ($dataKelas as $valuedataKelas) {
			$kelas = $valuedataKelas->id_kelas;
			// ambil data guru dan tugas mengajarnya berdasarkan id kelas 
			$dataGuru = $this->dataGuru($kelas);
			// echo "<pre>";
			// print_r($dataGuru);
			// echo "</pre>";
			foreach ($dataGuru as $valueDataGuru) {
				echo '<br>';
				$id_guru = $valueDataGuru->id_guru;
				echo $id_guru . '<br>';
				echo $valueDataGuru->hari_request . '<br>';
				echo 'mengajar : <br>';
				// echo '<pre>';
				// print_r($valueDataGuru->mengajar);
				// echo '</pre>';
				foreach ($valueDataGuru->mengajar as $valueMengajar) {
					echo "<br>-> $valueMengajar->nama_mapel kel. : $valueMengajar->kelompok_mapel beban : $valueMengajar->beban_jam , ";
					// *pencarian waktu terbaik
					$hariSesi = $this->cariWaktuTerbaik($kelas, $valueDataGuru->id_guru, $valueDataGuru->hari_request, $valueMengajar->beban_jam, $valueMengajar->kelompok_mapel);
					// echo "<pre>";
					// print_r($hariSesi);
					// echo "</pre>";
					echo "<br>";
					// echo $kelas . '-' . $hariSesi['hari'] . '-' . implode(",", $hariSesi['sesi']) . '-' . $id_guru . '-' . $valueMengajar->id_mapel . '-' . $valueMengajar->nama_mapel . '-' . $valueMengajar->id_tugas;
					$this->Jadwal_Model->isiJadwal($kelas, $hariSesi['hari'], $hariSesi['sesi'], $id_guru, $valueMengajar->id_mapel, $valueMengajar->nama_mapel, $valueMengajar->id_tugas);
				}
				echo '<br>';
				// $this->Jadwal_Model->getDataPenjadwalan($kelas, $value)
				// break;
			}
			break;
		}
	}

	/* 
	* ambil data guru yang mengajar di kelas beserta kewajiban mengajarnya
	*/
	public function dataGuru(String $kelas)
	{
		$dataGuru = $this->Rumusan_Model->getDataRumusan($kelas);
		foreach ($dataGuru as $key => $valuedataGuru) {
			$dataGuru[$key]->mengajar = $this->PenugasanGuru_Model->getDatatugasByidGuru($valuedataGuru->id_guru, $kelas);
		}
		return (array) $dataGuru;
	}

	/* 
	* mencari jam terbaik
	*/
	public function cariWaktuTerbaik($kelas, $id_guru, $hari, $bebanJam, $kelompokMapel, $metode = 1)
	{
		/*
		* jumlah pembagian jam 
		* cek apakah ada jadwal yg ngepress
		* cek apakah ada jadwal yang ada tapi tidak ngpress
		* jika sudah tidak ada tambahi metode
		* kalau sudah tidak bisa maka geser
		* kalau sudah tidak bisa lagi maka kepepet
		*/

		$pembagianJam = $this->pembagianWaktu($kelompokMapel, $bebanJam, $metode);
		print_r($pembagianJam);
		$dataHari = explode(',', $hari);
		$hasilJadwal = $this->jadwalPas($kelas, $pembagianJam, $dataHari, $id_guru);
		echo "<br>";
		echo "<pre>";
		print_r($hasilJadwal);
		echo "</pre>";
		switch ($hasilJadwal['status']) {
			case 'Press':
				echo " sesi press";
				foreach ($hasilJadwal['sesi'] as $key => $sesi) {
					return [
						'hari' => $key,
						'sesi' => $sesi[0]
					];
					break;
				}
				break;
			case 'tidakPress':
				echo " proses dahulu";
				$tempTotal = 0;
				$hariyangdipilih = '';
				// print_r($hasilJadwal['sesi']);
				foreach ($hasilJadwal['sesi'] as $key => $valueHasilJadwal) {
					if ($tempTotal < count($valueHasilJadwal)) {
						$tempTotal = count($valueHasilJadwal);
						$hariyangdipilih = $key;
					}
				}
				return [
					'hari' => $hariyangdipilih,
					'sesi' => $hasilJadwal['sesi'][$hariyangdipilih][0]
				];
				break;
			case ' tidakMuat':
				echo "ganti metode";
				break;
		}
	}



	/* 
	* memecah jam sks
	*/
	public function pembagianWaktu($kelompokMapel, $bebanJam, $metodeKe = null)
	{
		switch ($bebanJam) {
			case '8':
				switch ($metodeKe) {
					case '1':
						return [4, 4];
						break;
					case '2':
						return [2, 2, 2, 2];
						break;
					case '3':
						return [5, 3];
						break;
					default:
						return false;
						break;
				}
				break;
			case '7':
				switch ($metodeKe) {
					case '1':
						return [3, 2, 2];
						break;
					case '2':
						return [4, 3];
						break;
					case '3':
						return [5, 2];
						break;
					default:
						return false;
						break;
				}
				break;
			case '6':
				switch ($metodeKe) {
					case '1':
						return [3, 3];
						break;
					case '2':
						return [2, 2, 2];
						break;
					case '3':
						return [4, 2];
					default:
						return false;
						break;
				}
				break;

			case '5':
				switch ($metodeKe) {
					case '1':
						return [3, 2];
						break;
					case '2':
						return [4, 1];
						break;
					default:
						return false;
						break;
				}
				break;
			case '4':
				if ($kelompokMapel == 'C') {
					switch ($metodeKe) {
						case '1':
							return [4];
							break;
						case '2':
							return [2, 2];
							break;
						default:
							return false;
							break;
					}
				} else {
					return [2, 2];
				}
				break;
			case '3':
				switch ($metodeKe) {
					case '1':
						return [3];
						break;
					case '2':
						return [2, 1];
						break;
					default:
						return false;
						break;
				}
				break;
			default:
				return [$bebanJam];
				break;
		}
	}

	/* 
	* function untuk mencari apakah ada jadwal yg ngepress dan berturut turut / hanya bisa di isi saja namun tidak ngepress
	* 
	*/
	public function jadwalPas($kelas, $pembagianJam, $hari, $id_guru)
	{
		echo  'Pembagian_jam ->';
		echo implode(", ", $pembagianJam);
		foreach ($pembagianJam as $beban_jam) {
			// echo "value pembagian : $beban_jam <br>";
			foreach ($hari as $valueDataHari) {
				$jumlahHariKosong = 0;
				// echo $kelas;
				// echo $valueDataHari;
				$dataJadwal = $this->Jadwal_Model->getDataPenjadwalan($kelas, $valueDataHari);
				// echo "jumlah jadwal" . count($dataJadwal) . "<br>";
				$data = [];
				if ($beban_jam <= count($dataJadwal)) {
					foreach ($dataJadwal as $dataHari) {
						if ($dataHari->kode_jadwal == '-' && $dataHari->keterangan == 'kosong') {
							$jumlahHariKosong++;
							$data[] = $dataHari->sesi;
							if (count($data) == $beban_jam) {
								$sesi[$valueDataHari][] = $data;
								$data = [];
							}
						} else {
							$data = [];
							$jumlahHariKosong = 0;
						}
					}
					if ($jumlahHariKosong == $beban_jam) {
						$result =  [
							'status' => 'Press',
							'sesi' => $pembagianBebanJam[$beban_jam][] = $sesi
						];
					} else if ($jumlahHariKosong > $beban_jam) {
						$result =  [
							'status' => 'tidakPress',
							'sesi' => $pembagianBebanJam[$beban_jam][] = $sesi
						];
					}
				} else {
					$result =  [
						'status' => 'tidakMuat'
					];
				}
			}
		}
		return $result;
	}

	/* 
	* ambil hari yang kosong 
	*/
	public function getDataHariKosong($hari, $kelas)
	{
		foreach ($hari as $valueHari) {
			$dataKosong[$valueHari] = $this->Jadwal_Model->getDataPenjadwalanByIdKelas($kelas, $valueHari);
		}
		return $dataKosong;
	}
}
