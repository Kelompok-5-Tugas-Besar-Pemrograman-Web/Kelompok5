<?php include 'header.php'; ?>
<?php
$sql_admin = "SELECT * FROM admin WHERE id_admin ='$_GET[id]'";

$qry_admin = $mysqli->query($sql_admin) or die($mysqli->error);

$num = $qry_admin->num_rows;

$data = $qry_admin->fetch_assoc();
?>
<div class="container-fluid body">
	<div class="row">
		<div class="col-lg-2 sidebar">
			<?php include 'sidebar.php'; ?>
		</div>
		<div class="col-lg-10 main-content">
			<div class="panel panel-default">
				<div class="panel-body">
					<?php
					if ($num == 0) {
						header('location:daftaradmin.php');
					} else {
						$del_sql = "DELETE FROM admin WHERE admin.id_admin='$_GET[id]'";

						$del_qry = $mysqli->query($del_sql);

						if ($del_qry) {
							echo "<meta http-equiv='refresh' content='0;url=daftaradmin.php'>";
							echo "<h3 class='page-header'><i class='fa fa-refresh fa-spin'></i> Admin berhasil dihapus</h3>";
						} else {
							echo $mysqli->error;
						}
					} ?>
				</div>
			</div>
		</div>
	</div>
</div>
<?php include 'footer.php'; ?>