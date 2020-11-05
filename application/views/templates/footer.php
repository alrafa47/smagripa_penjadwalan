<!-- Main Footer -->
<footer class="main-footer">
	<strong>Copyright &copy; 2014-2019 <a href="http://adminlte.io">AdminLTE.io</a>.</strong>
	All rights reserved.
	<div class="float-right d-none d-sm-inline-block">
		<b>Version</b> 3.0.2
	</div>
</footer>
</div>
<!-- ./wrapper -->

<!-- REQUIRED SCRIPTS -->
<!-- jQuery -->
<script src="<?= base_url() ?>assets/plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap -->
<script src="<?= base_url() ?>assets/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- SweetAlert2 -->
<script src="<?= base_url() ?>assets/plugins/sweetalert2/sweetalert2.min.js"></script>
<!-- Toastr -->
<script src="<?= base_url() ?>assets/plugins/toastr/toastr.min.js"></script>
<!-- overlayScrollbars -->
<script src="<?= base_url() ?>assets/plugins/overlayScrollbars/js/jquery.overlayScrollbars.min.js"></script>
<!-- DataTables -->
<script src="<?= base_url() ?>assets/plugins/datatables/jquery.dataTables.js"></script>
<script src="<?= base_url() ?>assets/plugins/datatables-bs4/js/dataTables.bootstrap4.js"></script>
<!-- AdminLTE App -->
<script src="<?= base_url() ?>assets/dist/js/adminlte.js"></script>
<!-- OPTIONAL SCRIPTS -->
<script src="<?= base_url() ?>assets/dist/js/demo.js"></script>
<!-- ChartJS -->
<script src="<?= base_url() ?>assets/plugins/chart.js/Chart.min.js"></script>
<!-- PAGE SCRIPTS -->
<script src="<?= base_url() ?>assets/dist/js/pages/dashboard2.js"></script>
<!-- page script Table -->
<!-- Select2 -->
<script src="<?= base_url() ?>assets/plugins/select2/js/select2.full.min.js"></script>
<!-- InputMask -->
<script src="<?= base_url() ?>assets/plugins/moment/moment.min.js"></script>
<script src="<?= base_url() ?>assets/plugins/inputmask/min/jquery.inputmask.bundle.min.js"></script>

<script>
	$(function() {
		$('#example1').DataTable();
	});

	//Initialize Select2 Elements
	$('.select2').select2()

	//Initialize Select2 Elements
	$('.select2bs4').select2({
		theme: 'bootstrap4'
	})

	// $("input[name=chkHari\\[\\]]").change(function() {
	// 	var max = 3;
	// 	if ($("input[name=chkHari\\[\\]]:checked").length == max) {
	// 		$("input[name=chkHari\\[\\]]").attr('disabled', 'disabled');
	// 		$("input[name=chkHari\\[\\]]:checked").removeAttr('disabled');
	// 	} else {
	// 		$("input[name=chkHari\\[\\]]").removeAttr('disabled');
	// 	}
	// })
</script>
<?php if ($this->uri->segment(1) == "DataPenugasanGuru") : ?>
	<script>
		var numberForm = 2;
		$("#mapelSelectForm").on('change', function() {
			var selectedVal = $(this).val();
			var dataSelect = $(this).data("mapelselect");
			$.ajax({
				type: "POST",
				url: "<?= base_url('DataPenugasanGuru/getDataKelasByKodeMapel') ?>",
				data: {
					'kode_mapel': selectedVal
				},
				success: function(data) {
					dataKelas = JSON.parse(data);
					console.log(dataKelas);
				}
			})
			console.log('inidata' + dataSelect);
		});


		$("#btnaddForm").click(function() {
			var html = `
			<div class="row inputFormRow">
			    <div class="col-3">
			      <div class="form-group">
			        <select class="form-control"  id="mapelSelectForm" name="mapel[] data-mapelselect="` + numberForm +
				`" >
			          <option selected="selected">Pilih Mapel</option>
			          <?php foreach ($listMapel as $datalistMapel) : ?>
			            <option value="<?= $datalistMapel->kode_mapel ?>"><?= $datalistMapel->nama_mapel ?></option>
			          <?php endforeach; ?>
			        </select>
			      </div>
			    </div>
			    <div class="col-3">
			      <div class="form-group">
			        <select class="form-control" data-kelasselect="` + numberForm +
				`" >
			          <option selected="selected">Pilih Mapel</option>
			        </select>
			      </div>
			    </div>
			    <div class="col-3">
			      <button type="button" id="removeForm" class="btn btn-block btn-danger">
			        Remove
			      </button>
			    </div>
			  </div>`;
			numberForm++;
			$(".select-form").after(html);
			// remove
			$("#removeForm").click(function() {
				$(this).closest('.inputFormRow').remove();
			});
		});
	</script>
<?php endif; ?>
</body>

</html>