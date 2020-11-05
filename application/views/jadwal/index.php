<div class="content-wrapper">
	<!-- Content Header (Page header) -->
	<section class="content-header">
		<div class="container-fluid">
			<div class="row mb-2">
				<div class="col-sm-6">
					<h1>Data Jadwal</h1>
				</div>
				<div class="col-sm-6">
					<ol class="breadcrumb float-sm-right">
						<li class="breadcrumb-item"><a href="#">Dashboard</a></li>
						<li class="breadcrumb-item active">Data Range Jam</li>
					</ol>
				</div>
			</div>
		</div><!-- /.container-fluid -->
	</section>
	<!-- Main content -->
	<section class="content">
		<!-- NOTIFIKASI -->
		<?php
		if ($this->session->flashdata('flash_rangejam')) { ?>
			<div class="alert alert-success alert-dismissible">
				<button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
				<h6>
					<i class="icon fas fa-check"></i>
					Data Berhasil
					<strong>
						<?= $this->session->flashdata('flash_rangejam');   ?>
					</strong>
				</h6>
			</div>
		<?php } ?>
		<!-- /.row -->
		<!-- list data -->
		<div class="row">
			<div class="col-12">
				<div class="card">
					<!-- card-body -->
					<div class="card-body">

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