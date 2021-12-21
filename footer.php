<?php
// Bagian Query Ambil Data dari Tabel Berita dan Admin
$prestasi = 'SELECT
berita.id_berita,
berita.judul,
berita.gambar,
berita.tgl_posting,
berita.id_admin,
admin.nama_lengkap,
berita.dilihat,
kategori.id_kategori
FROM
berita
INNER JOIN admin ON berita.id_admin = admin.id_admin
INNER JOIN kategori ON kategori.id_kategori = berita.id_kategori
WHERE
berita.id_kategori = "1"
ORDER BY
berita.tgl_posting DESC
LIMIT 0, 5';

$acara = 'SELECT
berita.id_berita,
berita.judul,
berita.gambar,
berita.tgl_posting,
berita.id_admin,
admin.nama_lengkap,
berita.dilihat,
kategori.id_kategori
FROM
berita
INNER JOIN admin ON berita.id_admin = admin.id_admin
INNER JOIN kategori ON kategori.id_kategori = berita.id_kategori
WHERE
berita.id_kategori = "2"
ORDER BY
berita.tgl_posting DESC
LIMIT 0, 5';

$beasiswa = 'SELECT
berita.id_berita,
berita.judul,
berita.gambar,
berita.tgl_posting,
berita.id_admin,
admin.nama_lengkap,
berita.dilihat,
kategori.id_kategori
FROM
berita
INNER JOIN admin ON berita.id_admin = admin.id_admin
INNER JOIN kategori ON kategori.id_kategori = berita.id_kategori
WHERE
berita.id_kategori = "3"
ORDER BY
berita.tgl_posting DESC
LIMIT 0, 5';

$list_prestasi = $mysqli->query($prestasi) or die("Error prestasi:" . $mysqli->error);
$list_acara = $mysqli->query($acara) or die("Error acara" . $mysqli->error);
$list_beasiswa = $mysqli->query($beasiswa) or die("Error beasiswa" . $mysqli->error);
?>
<div class="container-fluid footer">
	<div class="row footer-top">
		<div class="container">
			<div class="col-md-4">
				<h3 class="page-header">Beasiswa</h3>
				<ul class="news-list">
					<?php while ($beasiswa_list = $list_beasiswa->fetch_array()) { ?>
						<li>
							<a href="<?php echo $base_url . "detail.php?id=" . $beasiswa_list['id_berita'] . "&amp;judul=" . strtolower(str_replace(" ", "-", $beasiswa_list['judul'])); ?>">
								<img src="<?php echo $base_url . "images/" . $beasiswa_list['gambar']; ?>" class="img-responsive wow fadeIn">
							</a>
							<p>Oleh: <a href="<?php echo $base_url . "author.php?id=" . $beasiswa_list['id_admin']; ?>"><?php echo $beasiswa_list['nama_lengkap']; ?></a>&nbsp;&nbsp;&ndash;&nbsp;&nbsp;<?php echo $beasiswa_list['tgl_posting']; ?></p>
							<a href="<?php echo $base_url . "detail.php?id=" . $beasiswa_list['id_berita'] . "&amp;judul=" . strtolower(str_replace(" ", "-", $beasiswa_list['judul'])); ?>">
								<?php echo $beasiswa_list['judul']; ?>
							</a>
						</li>
					<?php } ?>
				</ul>
			</div>
			<div class="col-md-4">
				<h3 class="page-header">Prestasi</h3>
				<ul class="news-list">
					<?php while ($prestasi_list = $list_prestasi->fetch_array()) { ?>
						<li>
							<a href="<?php echo $base_url . "detail.php?id=" . $prestasi_list['id_berita'] . "&amp;judul=" . strtolower(str_replace(" ", "-", $prestasi_list['judul'])); ?>">
								<img src="<?php echo $base_url . "images/" . $prestasi_list['gambar']; ?>" class="img-responsive wow fadeIn">
							</a>
							<p>Oleh: <a href="<?php echo $base_url . "author.php?id=" . $prestasi_list['id_admin']; ?>"><?php echo $prestasi_list['nama_lengkap']; ?></a>&nbsp;&nbsp;&ndash;&nbsp;&nbsp;<?php echo $prestasi_list['tgl_posting']; ?></p>
							<a href="<?php echo $base_url . "detail.php?id=" . $prestasi_list['id_berita'] . "&amp;judul=" . strtolower(str_replace(" ", "-", $prestasi_list['judul'])); ?>">
								<?php echo $prestasi_list['judul']; ?>
							</a>
						</li>
					<?php } ?>
				</ul>
			</div>
			<div class="col-md-4">
				<h3 class="page-header">Acara</h3>
				<ul class="news-list">
					<?php while ($acara_list = $list_acara->fetch_array()) { ?>
						<li>
							<a href="<?php echo $base_url . "detail.php?id=" . $acara_list['id_berita'] . "&amp;judul=" . strtolower(str_replace(" ", "-", $acara_list['judul'])); ?>">
								<img src="<?php echo $base_url . "images/" . $acara_list['gambar']; ?>" class="img-responsive wow fadeIn">
							</a>
							<p>Oleh: <a href="<?php echo $base_url . "author.php?id=" . $acara_list['id_admin']; ?>"><?php echo $acara_list['nama_lengkap']; ?></a>&nbsp;&nbsp;&ndash;&nbsp;&nbsp;<?php echo $acara_list['tgl_posting']; ?></p>
							<a href="<?php echo $base_url . "detail.php?id=" . $acara_list['id_berita'] . "&amp;judul=" . strtolower(str_replace(" ", "-", $acara_list['judul'])); ?>">
								<?php echo $acara_list['judul']; ?>
							</a>
						</li>
					<?php } ?>
				</ul>
			</div>
		</div>
	</div>
	<div class="row footer-bottom">
		<div class="col-md-12">
			<span class="copy">Copyright &copy; <?php echo date('Y'); ?> Ada Apa Dengan USU ? </span>
		</div>
	</div>
</div>
<script src="<?php echo $base_url; ?>assets/bootstrap/js/bootstrap.min.js"></script>
<script src="<?php echo $base_url; ?>assets/ticker/jquery.ticker.min.js"></script>
<script src="<?php echo $base_url; ?>assets/wow/dist/wow.min.js"></script>
<script src="<?php echo $base_url; ?>dist/js/portalberita.js"></script>
</body>

</html>