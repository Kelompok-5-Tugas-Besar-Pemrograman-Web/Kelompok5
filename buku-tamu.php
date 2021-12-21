<?php
include 'header.php';
include 'lib/Pagination.php';

$limit = 8;
if (isset($_GET['p'])) {
	$noHalaman = $mysqli->real_escape_string($_GET['p']);
} else $noHalaman = 1;

$offset = ($noHalaman - 1) * $limit;

// Perintah Query 
$komentar_qry = $mysqli->query("SELECT komentar_pengirim, komentar_isi FROM buku_tamu WHERE komentar_status = 'ya' ORDER BY komentar_tgl DESC LIMIT " . $limit) or die($mysqli->error);

$sql_komentar = "SELECT komentar_pengirim, komentar_isi FROM buku_tamu WHERE komentar_status = 'ya'";

$total_komentar = $mysqli->query($sql_komentar);

$total_komentar_num = $total_komentar->num_rows;

$total_Halaman = ceil($total_komentar_num / $limit);

?>
<div class="container-fluid">
	<div class="row">
		<div class="container content-wrapper">
			<div class="panel panel-default">
				<div class="panel-body main">
					<div class="col-md-8">
						<div class="news-detail">
							<div class="row news-title">
								<div class="col-sm-12">
									<h2>Buku Saran dan Komentar Tamu</h2>
								</div>
							</div>
							<div class="row news-content">
								<div class="col-sm-12">
									<a class="btn btn-primary" data-toggle="modal" href='#buku-modal'>Tulis Saran dan Komentar!</a>
									<hr>
									<div class="buku-tamu" id="buku-tamu">
										<?php if ($komentar_qry->num_rows == 0) { ?>
											<h4 class="text-muted text-center">Belum Ada Saran dan Komentar</h4>
										<?php } else { ?>
											<?php while ($komentar = $komentar_qry->fetch_assoc()) { ?>
												<div class="guest-book-item">
													<h4 class="Halaman-header">Dari: <?php echo $komentar['komentar_pengirim']; ?></h4>
													<p class="text-muted"><?php echo $komentar['komentar_isi']; ?></p>
												</div>
											<?php } ?>
										<?php } ?>
									</div>
								</div>
								<div class="clear"></div>
								<div class="col-sm-12">
									<ul class="pagination">
										<?php if ($total_komentar_num > $limit) { ?>
											<?php if ($noHalaman > 1) { ?>
												<li>
													<a href="<?php echo $base_url . "index.php?p=" . ($noHalaman - 1); ?>">
														<i class="glyphicon glyphicon-chevron-left"></i>
													</a>
												</li>
											<?php } ?>

											<?php for ($Halaman = 1; $Halaman <= $total_Halaman; $Halaman++) { ?>
												<?php if ((($Halaman >= $noHalaman - 3) && ($Halaman <= $noHalaman + 3)) || ($Halaman == 1) || ($Halaman == $total_Halaman)) { ?>
													<?php
													$showHalaman = $Halaman;
													if ($Halaman == $total_Halaman && $noHalaman <= $total_Halaman - 5) echo "<li class='active'><a>...</a></li>";
													if ($Halaman == $noHalaman) echo "<li class='active'><a href='#'>" . $Halaman . "</a></li> ";
													else echo " <li><a href='" . $_SERVER['PHP_SELF'] . "?p=" . $Halaman . "'>" . $Halaman . "</a></li> ";
													if ($Halaman == 1 && $noHalaman >= 6) echo "<li class='active'><a>...</a></li>";
													?>
												<?php } ?>
											<?php } ?>

											<?php if ($noHalaman < $total_Halaman) { ?>
												<li>
													<a href="<?php echo $base_url . "index.php?p=" . ($noHalaman + 1); ?>">
														<i class="glyphicon glyphicon-chevron-right"></i>
													</a>
												</li>
											<?php } ?>
										<?php } ?>
									</ul>
								</div>
							</div>
						</div>
					</div>
					<?php include 'sidebar.php'; ?>
				</div>
			</div>
		</div>
	</div>
</div>
<div class="modal fade" id="buku-modal">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
				<h4 class="modal-title">Kirim Saran dan Komentar Anda!</h4>
			</div>
			<form id="kirim-buku-tamu">
				<div class="modal-body">
					<div class="form-group">
						<label>Nama:</label>
						<input type="text" class="form-control input-sm" name="nama" placeholder="Nama" id="nama">
						<label id="nama_label" style="font-size:0.8em;" class="text-danger"><em>Mohon isi nama!</em></label>
					</div>
					<div class="form-group">
						<label for="">Email</label>
						<input type="email" class="form-control input-sm" name="email" placeholder="Email" id="email">
						<label id="email_label" style="font-size:0.9em;" class="text-danger"><em>Mohon isi Email!</em></label>
						<label id="email_label_invalid" style="font-size:0.8em;" class="text-danger"><em>Mohon isi dengan email!</em></label>
					</div>
					<div class="form-group">
						<label>Komentar</label>
						<textarea name="komentar" id="komentar" cols="30" rows="5" class="form-control input-sm"></textarea>
						<label id="komentar_label" style="font-size:0.8em;" class="text-danger"><em>Komentar masih kosong!</em></label>
					</div>
					<label class="text-muted" style="font-size:0.8em">Email Anda tidak akan kami publikasikan.</label>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-danger btn-sm" id="btn-batal" data-dismiss="modal"><i class="fa fa-times"></i> Batal</button>
					<button type="button" class="btn btn-success btn-sm" id="btn-kirim"><i class="fa fa-send"></i> Kirim</button>
				</div>
			</form>
		</div>
	</div>
</div>
<div id="snackbar">Terima kasih! Komentar atau Saran Anda akan kami moderasi terlebih dahulu.</div>
<?php include 'footer.php';
