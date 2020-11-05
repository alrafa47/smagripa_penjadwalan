<div class="content-wrapper">
  <!-- Content Header (Page header) -->
  <section class="content-header">
    <div class="container-fluid">
      <div class="row mb-2">
        <div class="col-sm-6">
          <h1>Data Mata Pelajaran</h1>
        </div>
        <div class="col-sm-6">
          <ol class="breadcrumb float-sm-right">
            <li class="breadcrumb-item"><a href="#">Dashboard</a></li>
            <li class="breadcrumb-item active">Data Mapel</li>
          </ol>
        </div>
      </div>
    </div><!-- /.container-fluid -->
  </section>


  <!-- Main content -->
  <section class="content">
    <!-- NOTIFIKASI -->
    <?php
    if ($this->session->flashdata('flash_mapel')) { ?>
      <div class="alert alert-success alert-dismissible">
        <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
        <h6>
          <i class="icon fas fa-check"></i>
          Data Berhasil
          <strong>
            <?= $this->session->flashdata('flash_mapel');   ?>
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
                <form action="<?= base_url() ?>DataMapel/validation_form" method="post" accept-charset="utf-8">
                  <div class="card-body">

                    <div class="form-group">
                      <label for="exampleInputEmail1">Kode Mapel</label>
                      <input type="text" class="form-control" id="exampleInputEmail1" name="kd_map">
                    </div>

                    <div class="form-group">
                      <label for="exampleInputPassword1">Nama Mapel</label>
                      <input type="text" class="form-control" id="exampleInputPassword1" name="nm_map">
                    </div>

                    <div class="form-group">
                      <label for="exampleInputEmail1">Kelas</label>
                      <input type="text" class="form-control" id="exampleInputEmail1" name="kls">
                    </div>

                    <div class="form-group">
                      <label for="exampleInputEmail1">Beban Jam</label>
                      <input type="text" class="form-control" id="exampleInputEmail1" name="beban">
                    </div>

                    <div class="form-group">
                      <label>Jurusan</label>
                      <select class="form-control" name="id_jur">
                        <?php
                        foreach ($jurusan as $jur) { ?>
                          <option value="<?= $jur->id_jurusan ?>"><?= $jur->nama_jurusan ?></option>
                        <?php } ?>
                      </select>
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
                  <th>Kode Mapel</th>
                  <th>Nama Mapel</th>
                  <th>Kelas</th>
                  <th>Beban Jam</th>
                  <th>Jurusan</th>
                  <th>Action</th>
                </tr>
              </thead>

              <tbody>
                <?php
                $no = 1;
                foreach ($mapel as $row) { ?>
                  <tr>
                    <td><?= $no ?></td>
                    <td><?= $row->kode_mapel ?></td>
                    <td><?= $row->nama_mapel ?></td>
                    <td><?= $row->kelas ?></td>
                    <td><?= $row->beban_jam ?></td>
                    <td><?= $row->id_jurusan ?></td>
                    <td>
                      <div class="btn-group">
                        <a href="<?= base_url() ?>DataMapel/hapus/<?= $row->id_mapel ?>" class="btn btn-danger" onclick="return confirm('yakin ?')">Hapus</a>
                        <a href="<?= base_url() ?>DataMapel/ubah/<?= $row->id_mapel ?>" class="btn btn-warning">update</a>
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
<!-- /.content-wrapper