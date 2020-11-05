Content Wrapper. Contains page content -->
<div class="content-wrapper">
  <!-- Content Header (Page header) -->
  <section class="content-header">
    <div class="container-fluid">
      <div class="row mb-2">
        <div class="col-sm-6">
          <h1> Ubah Data Guru</h1>
        </div>
        <div class="col-sm-6">
          <ol class="breadcrumb float-sm-right">
            <li class="breadcrumb-item">Dashboard</li>
            <li class="breadcrumb-item">Data Mapel</li>
            <li class="breadcrumb-item active">Ubah Data Mapel</li>
          </ol>
        </div>
      </div>
    </div><!-- /.container-fluid -->
  </section>
  <!-- Main content -->
  <section class="content">
    <!-- tambah data -->
    <div class="row">
      <div class="col-md-12">
        <div class="card">
          <div class="card-header">
            <h5 class="card-title">Ubah Data</h5>
          </div>
          <!-- /.card-header -->
          <div class="card-body">
            <div class="row">
              <div class="col-md-8">
                <?= validation_errors(); ?>
                <form action="" method="post" accept-charset="utf-8">
                  <div class="card-body">
                    <div class="form-group">
                      <label for="exampleInputEmail1">ID Mapel</label>
                      <input type="text" class="form-control disabled" name="id_map" value="<?= $ubah['id_mapel'] ?>" readonly>
                    </div>

                    <div class="form-group">
                      <label for="exampleInputPassword1">Nama Mapel</label>
                      <input type="text" class="form-control"name="nm_map" value="<?= $ubah['nama_mapel'] ?>">
                    </div>

                    <div class="form-group">
                      <label for="exampleInputPassword1">Kelas</label>
                      <input type="text" class="form-control"name="kls" value="<?= $ubah['kelas'] ?>">
                    </div>

                    <div class="form-group">
                      <label for="exampleInputPassword1">Beban Jam</label>
                      <input type="text" class="form-control"name="beban" value="<?= $ubah['beban_jam'] ?>">
                    </div>

                    <div class="form-group">
                      <label>Jurusan</label>
                      <select class="form-control" name="id_jur">
                        <?php 
                        foreach ($jurusan as $jur) { ?>
                          <option value="<?= $jur->id_jurusan?>"><?= $jur->nama_jurusan ?></option>
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
  </section>
  <!-- /.content -->
</div>
<!-- /.content-wrapper