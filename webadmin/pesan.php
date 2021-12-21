<?php include 'header.php'; ?>
<?php
$limit = 5;
if (isset($_GET['p'])) {
	$noHalaman = $_GET['p'];
} else $noHalaman = 1;

$offset = ($noHalaman - 1) * $limit;

$sql = "SELECT
pesan.pesan_id,
pesan.pengirim,
pesan.email,
pesan.subjek,
pesan.pesan_isi,
pesan.status,
pesan.tanggal
FROM
pesan
ORDER BY tanggal DESC
LIMIT " . $offset . "," . $limit;
$qry = $mysqli->query($sql) or die("Error retrieving data: " . $mysqli->error);

$sql_pesan = "SELECT pesan.pesan_id FROM pesan";

$total_pesan = $mysqli->query($sql_pesan) or die("Error retrieving number:" . $mysqli->error);

$total_pesan_num = $total_pesan->num_rows;

$total_halaman = ceil($total_pesan_num / $limit);

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
								<h2 class="page-header"><i class="fa fa-envelope"></i><strong> Kontak</strong></h2>
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
							<h2 class="page-header"></h2>
						</div>
					</div>
					<div class="row">
						<div class="col-md-12">
							<table id="example" class="stripe hover order-column row-border" style="width:100%">
								<thead>
									<tr>
										<th width="30%">Pengirim</th>
										<th width="30%">Subjek</th>
										<th width="20%">Tanggal</th>
										<th width="20%" class="text-center">Pilihan</th>
									</tr>
								</thead>
								<tbody>
									<?php if ($total_pesan_num == 0) { ?>
										<tr>
											<td colspan="4" align="center">Belum ada data</td>
										</tr>
									<?php } else { ?>
										<?php while ($pesan = $qry->fetch_assoc()) { ?>
											<?php if ($pesan['status'] == "belum") { ?>
												<tr>
													<td><?php echo $pesan['email']; ?></td>
													<td><?php echo $pesan['subjek']; ?></td>
													<td><?php echo $pesan['tanggal']; ?></td>
													<td align="center">
														<a href="lihat-pesan.php?id=<?= $pesan['pesan_id'] ?>" class="btn btn-sm btn-primary">
															<i class="fa fa-eye"></i>
														</a>
														<a onclick="return confirm('Anda Yakin Ingin Menghapus Data Ini?');" href="hapus-pesan.php?id=<?= $pesan['pesan_id'] ?>" class="btn btn-danger btn-sm">
															<i class="fa fa-trash"></i>
														</a>
													</td>
												</tr>
											<?php } else { ?>
												<tr>
													<td><?php echo $pesan['email']; ?></td>
													<td><?php echo $pesan['subjek']; ?></td>
													<td><?php echo $pesan['tanggal']; ?></td>
													<td align="center">
														<a href="lihat-pesan.php?id=<?= $pesan['pesan_id'] ?>" class="btn btn-sm btn-primary">
															<i class="fa fa-eye"></i>
														</a>
														<a onclick="return confirm('Anda Yakin Ingin Menghapus Data Ini?');" href="hapus-pesan.php?id=<?= $pesan['pesan_id'] ?>" class="btn btn-danger btn-sm">
															<i class="fa fa-trash"></i>
														</a>
													</td>
												</tr>
											<?php } ?>
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