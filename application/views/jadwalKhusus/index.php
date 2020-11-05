<div class="content-wrapper">
  <!-- Content Header (Page header) -->
  <section class="content-header">
    <div class="container-fluid">
      <div class="row mb-2">
        <div class="col-sm-6">
          <h1>Data Jadwal Khusus</h1>
        </div>
        <div class="col-sm-6">
          <ol class="breadcrumb float-sm-right">
            <li class="breadcrumb-item"><a href="#">Dashboard</a></li>
            <li class="breadcrumb-item active">Data Jadwal Khusus</li>
          </ol>
        </div>
      </div>
    </div><!-- /.container-fluid -->
  </section>
  <!-- Main content -->
  <section class="content">
    <!-- NOTIFIKASI -->
    <?php
    if ($this->session->flashdata('flash_jadwalKhusus')) { ?>
      <div class="alert alert-success alert-dismissible">
        <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
        <h6>
          <i class="icon fas fa-check"></i>
          Data Berhasil
          <strong>
            <?= $this->session->flashdata('flash_jadwalKhusus');   ?>
          </strong>
        </h6>
      </div>
    <?php } ?>
    <!-- tambah data -->
    <div class="row">
      <div class="col-md-12">
        <div class="card">
          <div class="card-header">
            <h5 class="card-title">Tambah Data</h5>
            <div class="card-tools">
              <button type="button" class="btn btn-tool" data-card-widget="collapse">
                <i class="fas fa-minus"></i>
              </button>
            </div>
          </div>
          <!-- /.card-header -->
          <div class="card-body">
            <div class="row">
              <div class="col-md-8">
                <?= validation_errors(); ?>
                <form action="<?= base_url() ?>DataJadwalKhusus/validation_form" method="post" accept-charset="utf-8">
                  <div class="card-body">
                    <div class="form-group">
                      <label>Hari</label>
                      <br>
                      <?php
                      $hari = ['Senin', 'Selasa', 'Rabu', 'Kamis', 'Jum`at', 'Sabtu'];
                      foreach ($hari as $value) { ?>
                        <div class="form-check form-check-inline">
                          <input class="form-check-input" name="hari[]" type="checkbox" id="<?= $value ?>" value="<?= $value ?>">
                          <label class="form-check-label" for="<?= $value ?>"><?= $value ?></label>
                        </div>
                      <?php } ?>
                    </div>
                    <div class="form-group">
                      <label>Kelas</label>
                      <br>
                      <?php
                      $kelas = ['X', 'XI', 'XII'];
                      foreach ($kelas as $value) { ?>
                        <div class="form-check form-check-inline">
                          <input class="form-check-input" name="kelas[]" type="checkbox" id="<?= $value ?>" value="<?= $value ?>">
                          <label class="form-check-label" for="<?= $value ?>"><?= $value ?></label>
                        </div>
                      <?php } ?>
                    </div>
                    <div class="form-group">
                      <label for="keterangan">Keterangan</label>
                      <input class="form-control" type="text" name="keterangan" id="keterangan">
                    </div>

                    <div class="form-group">
                      <label for="sesi">Sesi Ke</label>
                      <input class="form-control" type="number" name="sesi" id="sesi" min="0" max="20">
                    </div>
                    <div class="form-group">
                      <label for="durasi">Durasi</label>
                      <input class="form-control" type="number" name="durasi" id="durasi">
                    </div>
                    <input type="submit" name="save" class="btn btn-primary" value="Save">
                  </div>
                  <!-- /.card-body -->
                </form>
              </div>
              <!-- /.col -->
            </div>
            <!-- /.row -->
          </div>
          <!-- ./card-body -->
        </div>
        <!-- /.card -->
      </div>
      <!-- /.col -->
    </div>
    <!-- /.row -->
    <!-- list data -->
    <div class="row">
      <div class="col-12">
        <div class="card">
          <!-- card-body -->
          <div class="card-body">
            <table id="example1" class="table table-bordered table-striped">
              <thead>
                <tr>
                  <th>No</th>
                  <th>Hari</th>
                  <th>Kelas</th>
                  <th>Keterangan</th>
                  <th>Sesi Ke</th>
                  <th>Durasi</th>
                  <th>Action</th>
                </tr>
              </thead>
              <tbody>
                <?php
                $no = 1;
                foreach ($range_jam as $row) { ?>
                  <tr>
                    <td><?= $no ?></td>
                    <td><?= $row['hari'] ?></td>
                    <td><?= $row['kelas'] ?></td>
                    <td><?= $row['keterangan'] ?></td>
                    <td><?= $row['sesi'] ?></td>
                    <td><?= $row['durasi'] ?></td>
                    <td>
                      <div class="btn-group">
                        <a href="<?= base_url() ?>DataJadwalKhusus/hapus/<?= $row['id_jadwal_khusus']   ?>" class="btn btn-danger" onclick="return confirm('yakin ?')">Hapus</a>
                        <a href="<?= base_url() ?>DataJadwalKhusus/ubah/<?= $row['id_jadwal_khusus']  ?>" class="btn btn-warning">update</a>
                      </div>
                    </td>
                  </tr>
                <?php
                  $no++;
                }
                ?>
              </tbody>
            </table>
          </div>
          <!-- /.card-body -->
        </div>
        <!-- /.card -->
      </div>
      <!-- /.col -->
    </div>
    <!-- /.row -->
  </section>
  <!-- /.content -->
</div>
<!-- /.content-wrapper -->