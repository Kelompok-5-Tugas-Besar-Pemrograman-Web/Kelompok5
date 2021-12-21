<?php include 'header.php'; ?>
<?php
$limit = 5;
if (isset($_GET['p'])) {
	$noHalaman = $_GET['p'];
} else $noHalaman = 1;

$offset = ($noHalaman - 1) * $limit;

$sql = "SELECT
buku_tamu.komentar_id,
buku_tamu.komentar_pengirim,
buku_tamu.komentar_email,
buku_tamu.komentar_isi,
buku_tamu.komentar_status,
buku_tamu.komentar_tgl
FROM
buku_tamu
ORDER BY komentar_tgl DESC
LIMIT " . $offset . "," . $limit;
$qry = $mysqli->query($sql) or die("Error retrieving data: " . $mysqli->error);

$sql_buku_tamu = "SELECT buku_tamu.komentar_id FROM buku_tamu";

$total_buku_tamu = $mysqli->query($sql_buku_tamu) or die("Error retrieving number:" . $mysqli->error);

$total_buku_tamu_num = $total_buku_tamu->num_rows;

$total_Halaman = ceil($total_buku_tamu_num / $limit);

?>
<div class="container-fluid body">
	<div class="row">
		<div class="col-lg-2 sidebar">
			<?php include 'sidebar.php'; ?>
		</div>
		<div class="col-lg-10 main-content">
			<div class="panel panel-default">
				<div class="panel-body">
					<div class="row">
						<div class="col-md-12">
							<span class="badge rounded-pill bg-success">
								<h2 class="page-header"><i class="fa fa-book"></i> <strong> Buku Tamu</strong></h2>
							</span>
						</div>
					</div>
					<div class="row">
						<div class="col-md-12">
							<br>
						</div>
					</div>
					<div class="row">
						<div class="col-md-12">
							<table id="example" class="stripe hover order-column row-border" style="width:100%">
								<thead>
									<tr>
										<th width="20%">Pengirim</th>
										<th width="15%">Email</th>
										<th width="35%">Isi</th>
										<th width="10%">Status</th>
										<th width="10%">Tanggal</th>
										<th width="10%" class="text-center">Pilihan</th>
									</tr>
								</thead>
								<tbody>
									<?php if ($total_buku_tamu_num == 0) { ?>
										<tr>
											<td colspan="5" align="center">Belum ada data</td>
										</tr>
									<?php } else { ?>
										<?php while ($pesan = $qry->fetch_assoc()) { ?>
											<tr>
												<td><?php echo $pesan['komentar_pengirim']; ?></td>
												<td><?php echo $pesan['komentar_email']; ?></td>
												<td><?php echo $pesan['komentar_isi']; ?></td>
												<td>
													<?php if ($pesan['komentar_status'] == 'tidak') { ?>
														<label class="label label-danger">PERLU MODERASI</label>
													<?php } else { ?>
														<label class="label label-success">DITERIMA</label>
													<?php } ?>
												</td>
												<td><?php echo substr($pesan['komentar_tgl'], 0, 10); ?></td>
												<td align="center">
													<a data-toggle="tooltip" data-placement="bottom" title="Ubah Status" href="ubah-komentar.php?id=<?php echo $pesan['komentar_id'] ?>" class="btn btn-xs btn-success">
														<i class="fa fa-edit"></i>
													</a>
													<a onclick="return confirm('Anda Yakin Ingin Menghapus Data Ini?');" data-toggle="tooltip" data-placement="bottom" title="Hapus" href="hapus-komentar.php?id=<?php echo $pesan['komentar_id'] ?>" class="btn btn-danger btn-xs">
														<i class="fa fa-trash"></i>
													</a>
												</td>
											</tr>
										<?php } ?>
									<?php } ?>
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<?php include 'footer.php'; ?>