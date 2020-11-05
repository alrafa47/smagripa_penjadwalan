<div class="content-wrapper">
  <!-- Content Header (Page header) -->
  <section class="content-header">
    <div class="container-fluid">
      <div class="row mb-2">
        <div class="col-sm-6">
          <h1>Data Penugasan Guru</h1>
        </div>
        <div class="col-sm-6">
          <ol class="breadcrumb float-sm-right">
            <li class="breadcrumb-item"><a href="#">Dashboard</a></li>
            <li class="breadcrumb-item active">Data Penugasan Guru</li>
          </ol>
        </div>
      </div>
    </div><!-- /.container-fluid -->
  </section>


  <!-- Main content -->
  <section class="content">
    <!-- NOTIFIKASI -->
    <?php
    if ($this->session->flashdata('flash_penugasanguru')) { ?>
      <div class="alert alert-success alert-dismissible">
        <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
        <h6>
          <i class="icon fas fa-check"></i>
          Data Berhasil
          <strong>
            <?= $this->session->flashdata('flash_penugasanguru');   ?>
          </strong>
        </h6>
      </div>
    <?php } ?>
    <div class="row">
      <div class="col-12">
        <!-- Default box -->
        <div class="card">
          <div class="card-header">
            <h3 class="card-title">Tambah Penugasan Guru</h3>
            <div class="card-tools">
              <button type="button" class="btn btn-tool" data-card-widget="collapse" data-toggle="tooltip" title="Collapse">
                <i class="fas fa-minus"></i></button>
            </div>
          </div>
          <div class="card-body">
            <form action="<?= base_url("DataPenugasanGuru/validation_form") ?>" method="post">
              <div class="form-group">
                <label>Nama Guru</label>
                <select class="form-control">
                  <option selected="selected">Pilih Guru</option>
                  <?php foreach ($listGuru as $datalistGuru) : ?>
                    <option value="<?= $datalistGuru->id_guru ?>"><?= $datalistGuru->nama_guru ?></option>
                  <?php endforeach; ?>
                </select>
              </div>
              <div class="row select-form">
                <div class="col-3">
                  <div class="form-group">
                    <select class="form-control" id="mapelSelectForm" data-mapelselect="1" name="mapel[]">
                      <option selected="selected">Pilih Mapel</option>
                      <?php foreach ($listMapel as $datalistMapel) : ?>
                        <option value="<?= $datalistMapel->kode_mapel ?>"><?= $datalistMapel->nama_mapel ?></option>
                      <?php endforeach; ?>
                    </select>
                  </div>
                </div>
                <div class="col-3">
                  <div class="form-group">
                    <select class="form-control " id="KelasSelectForm" data-kelasselect="1" name="kelas[]">
                      <option selected="selected">Pilih Kelas</option>
                    </select>
                  </div>
                </div>

              </div>
            </form>
            <button type="button" id="btnaddForm" class="btn btn-block btn-success">
              Tambah
            </button>
          </div>
        </div>
        <!-- /.card -->
      </div>
    </div>
    <!-- input penugasan guru -->
    <div class="row">
      <div class="col-12">
        <!-- Default box -->
        <div class="card">
          <div class="card-header">
            <h3 class="card-title">Tambah Penugasan Guru</h3>
            <div class="card-tools">
              <button type="button" class="btn btn-tool" data-card-widget="collapse" data-toggle="tooltip" title="Collapse">
                <i class="fas fa-minus"></i></button>
            </div>
          </div>
          <div class="card-body">
            <table class="table table-bordered table-responsive">
              <tr>
                <th>No</th>
                <th>Nama Pelajaran</th>
                <th>Action</th>
              </tr>
              <tr>
              </tr>
            </table>
          </div>
        </div>
        <!-- /.card -->
      </div>
    </div>
    <!-- list penugasan guru -->
    <div class="row">
      <div class="col-12">
        <!-- Default box -->
        <div class="card">
          <div class="card-header">
            <h3 class="card-title">Title</h3>

            <div class="card-tools">
              <button type="button" class="btn btn-tool" data-card-widget="collapse" data-toggle="tooltip" title="Collapse">
                <i class="fas fa-minus"></i></button>
              <button type="button" class="btn btn-tool" data-card-widget="remove" data-toggle="tooltip" title="Remove">
                <i class="fas fa-times"></i></button>
            </div>
          </div>
          <div class="card-body">
            <table id="example1" class="table table-bordered table-striped">
              <thead>
                <tr>
                  <th>No</th>
                  <th>ID Penugasan Guru</th>
                  <th>Nama Guru</th>
                  <th>Nama Mapel</th>
                  <th>Kelas</th>
                  <th>Tahun Ajaran</th>
                  <th>Action</th>
                </tr>
              </thead>
              <tbody>
                <?php
                $no = 1;
                foreach ($tugas_guru as $row) { ?>
                  <tr>
                    <td><?= $no ?></td>
                    <td><?= $row->id_tugas ?></td>
                    <td><?= $row->id_guru ?></td>
                    <td><?= $row->id_mapel ?></td>
                    <td><?= $row->id_kelas ?></td>
                    <td><?= $row->tahun_ajaran ?></td>
                    <td>
                      <div class="btn-group">
                        <a href="<?= base_url() ?>DataPenugasanGuru/hapus/<?= $row->id_tugas ?>" class="btn btn-danger" onclick="return confirm('yakin ?')">Hapus</a>
                        <a href="<?= base_url() ?>DataPenugasanGuru/ubah/<?= $row->id_tugas ?>" class="btn btn-warning">update</a>
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
        </div>
        <!-- /.card -->
      </div>
    </div>
  </section>
  <!-- /.content -->
</div>
<!--  /.content-wrapper -->