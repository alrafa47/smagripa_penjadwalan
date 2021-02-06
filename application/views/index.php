<div class="content-wrapper">
  <!-- Content Header (Page header) -->
  <div class="content-header">
    <div class="container-fluid">
      <div class="row mb-2">
        <div class="col-sm-6">
          <h1 class="m-0 text-dark">Dashboard</h1>
        </div><!-- /.col -->
        <div class="col-sm-6">
          <ol class="breadcrumb float-sm-right">
            <li class="breadcrumb-item"><a href="#">Home</a></li>
          </ol>
        </div><!-- /.col -->
      </div><!-- /.row -->
    </div><!-- /.container-fluid -->
  </div>
  <!-- /.content-header -->

  <!-- Main content -->
  <section class="content">
    <div class="container-fluid">
      <!-- Info boxes -->
      <div class="row">
        <div class="col-lg-3 col-6">
          <!-- small box -->
          <div class="small-box bg-info">
            <div class="inner">
              <h3><?= $jurusan ?></h3>

              <p>Jurusan</p>
            </div>
            <div class="icon">
              <i class="fas fa-shield-alt"></i>
            </div>
            <a href="<?= base_url('DataJurusan') ?>" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
          </div>
        </div>

        <div class="col-lg-3 col-6">
          <!-- small box -->
          <div class="small-box bg-info">
            <div class="inner">
              <h3><?= $kelas ?></h3>

              <p>Kelas</p>
            </div>
            <div class="icon">
              <i class="fas fa-school"></i>
            </div>
            <a href="<?= base_url('DataKelas') ?>" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
          </div>
        </div>

        <div class="col-lg-3 col-6">
          <!-- small box -->
          <div class="small-box bg-info">
            <div class="inner">
              <h3><?= $guru ?></h3>

              <p>Guru</p>
            </div>
            <div class="icon">
              <i class="fas fa-user-tie"></i>
            </div>
            <a href="<?= base_url('DataGuru') ?>" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
          </div>
        </div>
        <div class="col-lg-3 col-6">
          <!-- small box -->
          <div class="small-box bg-info">
            <div class="inner">
              <h3><?= $mapel ?></h3>
              <p>Mapel</p>
            </div>
            <div class="icon">
              <i class="fas fa-book-open"></i>
            </div>
            <a href="<?= base_url('DataMapel') ?>" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
          </div>
        </div>
        <!-- /.col -->
      </div>
      <!-- /.row -->

      <?php
      if ($jurusan == 0) {

        echo '<div class="alert alert-danger alert-dismissible">';

        echo '<button type="button" class="close" data-dismiss="alert" ;aria-hidden="true">×</button>';

        echo '<h5><i class="fas fa-times"></i> Alert!</h5>';

        echo 'data Jurusan Belum Terisi';

        echo '</div>';
      }
      if ($kelas == 0) {

        echo '<div class="alert alert-danger alert-dismissible">';

        echo '<button type="button" class="close" data-dismiss="alert" ;aria-hidden="true">×</button>';

        echo '<h5><i class="fas fa-times"></i> Alert!</h5>';

        echo 'data Kelas Belum Terisi';

        echo '</div>';
      }
      if ($mapel == 0) {

        echo '<div class="alert alert-danger alert-dismissible">';

        echo '<button type="button" class="close" data-dismiss="alert" ;aria-hidden="true">×</button>';

        echo '<h5><i class="fas fa-times"></i> Alert!</h5>';

        echo 'data Kelas Belum Terisi';

        echo '</div>';
      }
      if ($guru == 0) {

        echo '<div class="alert alert-danger alert-dismissible">';

        echo '<button type="button" class="close" data-dismiss="alert" ;aria-hidden="true">×</button>';

        echo '<h5><i class="fas fa-times"></i> Alert!</h5>';

        echo 'data Kelas Belum Terisi';

        echo '</div>';
      }
      // if ($penugasanGuru == 0) {

      //   echo '<div class="alert alert-danger alert-dismissible">';

      //   echo '<button type="button" class="close" data-dismiss="alert" ;aria-hidden="true">×</button>';

      //   echo '<h5><i class="fas fa-times"></i> Alert!</h5>';

      //   echo 'data Kelas Belum Terisi';

      //   echo '</div>';
      // }

      if ($requestJadwal == 0) {

        echo '<div class="alert alert-danger alert-dismissible">';

        echo '<button type="button" class="close" data-dismiss="alert" ;aria-hidden="true">×</button>';

        echo '<h5><i class="fas fa-times"></i> Alert!</h5>';

        echo 'Belum ada Guru yang melakukan request Hari';

        echo '</div>';
      }

      if ($rangeJam == 0) {

        echo '<div class="alert alert-danger alert-dismissible">';

        echo '<button type="button" class="close" data-dismiss="alert" ;aria-hidden="true">×</button>';

        echo '<h5><i class="fas fa-times"></i> Alert!</h5>';

        echo 'Data Range Jam Belum Terisi';

        echo '</div>';
      }
      if ($jadwalKhusus == 0) {

        echo '<div class="alert alert-danger alert-dismissible">';

        echo '<button type="button" class="close" data-dismiss="alert" ;aria-hidden="true">×</button>';

        echo '<h5><i class="fas fa-times"></i> Alert!</h5>';

        echo 'Data Jadwal Khusus Belum Terisi';

        echo '</div>';
      }
      ?>
    </div>
    <!--/. container-fluid -->
  </section>
  <!-- /.content -->
</div>
<!-- /.content-wrapper -->

<!-- Control Sidebar -->
<aside class="control-sidebar control-sidebar-dark">
  <!-- Control sidebar content goes here -->
</aside>
<!-- /.control-sidebar -->