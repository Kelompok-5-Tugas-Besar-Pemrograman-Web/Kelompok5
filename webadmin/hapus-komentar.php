<?php include 'header.php';
$komentar_delete_sql = "DELETE FROM buku_tamu WHERE komentar_id ='$_GET[id]'";

$komentar_delete_qry = $mysqli->query($komentar_delete_sql);
?>
<div class="container-fluid body">
	<div class="row">
		<div class="col-lg-2 sidebar">
			<?php include 'sidebar.php'; ?>
		</div>
		<div class="col-lg-10 main-content">
			<div class="panel panel-default">
				<div class="panel-body">
					<?php if ($komentar_delete_qry) {
						echo "<meta http-equiv='refresh' content='0;url=buku-tamu.php'>";
						echo "<h3 class='page-header'><i class='fa fa-refresh fa-spin'></i> Data berhasil dihapus</h3>";
					} else {
						echo $mysqli->error;
					} ?>
				</div>
			</div>
		</div>
	</div>
</div>
<?php include 'footer.php'; ?>