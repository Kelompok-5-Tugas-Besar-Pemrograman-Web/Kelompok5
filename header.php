<?php
error_reporting(0);
require_once 'config/config.php';
require_once 'config/koneksi.php';
require_once 'lib/site_title.php';
require_once 'lib/redirect.php';

$sqlHalaman = 'SELECT * FROM halaman';
$queryHalaman = $mysqli->query($sqlHalaman) or die($mysqli->error);

$sqlKategori = 'SELECT
kategori.id_kategori,
kategori.kategori
FROM
kategori
INNER JOIN berita ON kategori.id_kategori = berita.id_kategori
GROUP BY
kategori.kategori
ORDER BY
kategori.id_kategori ASC
LIMIT 0, 5';
$qryKategori = $mysqli->query($sqlKategori) or die($mysqli->error);

$sqlpelajar = 'SELECT berita.id_berita, berita.judul FROM berita ORDER BY berita.tgl_posting DESC LIMIT 0, 5';
$qrypelajar = $mysqli->query($sqlpelajar);

$url = $_SERVER['REQUEST_URI'];
$explode_url = explode("/", $url);
?>
<!DOCTYPE html>
<html lang="en">

<head>
	<title>Ada Apa Dengan USU? | Berita Pelajar</title>
	<link rel="shortcut icon" href="images/logo.png" type="image/x-icon">
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" href="dist/css/hover-min.css">
	<link rel="stylesheet" href="assets/font-awesome/css/font-awesome.min.css">
	<link rel="stylesheet" href="dist/css/style.css">
	<link rel="stylesheet" href="assets/wow/css/animate.css">
	<script src="<?php echo $base_url; ?>assets/jquery/jquery-1.12.0.min.js"></script>
	<style>
		@import url('https://fonts.googleapis.com/css2?family=Cormorant+Garamond:ital,wght@1,700&family=Lobster&family=Playfair+Display+SC:wght@900&display=swap');
	</style>
</head>

<body>
	<div class="container-fluid wrapper">
		<div class="row">
			<nav class="navbar navbar-fixed-top navbar-inverse navbar-top">
				<div class="container">
					<div class="navbar-header">
						<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
							<span class="sr-only">Toggle navigation</span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
						</button>
					</div>

					<!-- Navigasi Link, Form, dan Toggle Konten -->
					<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
						<ul class="nav navbar-nav headline-container">
							<p class="navbar-text headline">Berita Pelajar</p>
							<li>
								<ul id="headlines" class="headlines">
									<?php while ($pelajar_news = $qrypelajar->fetch_array()) { ?>
										<li>
											<a href="<?php echo $base_url . "detail.php?id=" . $pelajar_news['id_berita'] . "&amp;judul=" . strtolower(str_replace(" ", "-", $pelajar_news['judul'])); ?>">
												<?php echo $pelajar_news['judul']; ?>
											</a>
										</li>
									<?php } ?>
								</ul>
							</li>
						</ul>
						<!-- Navigasi -->
						<ul class="nav navbar-nav navbar-right">
							<?php if ($explode_url[2] == 'index.php' || $explode_url[2] == '') { ?>

								<li class="active"><a href="index.php">Beranda</a></li>

							<?php } else { ?>

								<li><a href="index.php">Beranda</a></li>

							<?php } ?>

							<?php
							while ($hal = $queryHalaman->fetch_array()) {
								if ($hal['link'] == $explode_url[2]) {
							?>
									<li class="active"><a href="<?php echo $base_url . $hal['link']; ?>"><?php echo $hal['nm_halaman']; ?></a></li>
								<?php
								} else {
								?>
									<li><a href="<?php echo $base_url . $hal['link']; ?>"><?php echo $hal['nm_halaman']; ?></a></li>
								<?php
								}
								?>
							<?php } ?>
						</ul>
					</div>
				</div>
			</nav>
		</div>
		<!-- Header Portal -->
		<div class="row header-wrapper">
			<div class="container">
				<div class="header">
					<div class="row">
						<div class="col-lg-2 col-xs-2">
							<img src="images/logo.png" alt="">
						</div>
						<div class="col-lg-10 col-xs-10">
							<h3 class="website-name">
								Ada Apa Dengan USU ?
							</h3>
							<h4 class="website-desc">Aktual | Terbaru | Terpercaya</h4>
						</div>
					</div>
					<nav class="navbar navbar-default navbar-bottom">
						<div class="container-fluid">
							<div class="navbar-header">
								<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-2" aria-expanded="false">
									<span class="sr-only">Toggle navigation</span>
									<span class="icon-bar"></span>
									<span class="icon-bar"></span>
									<span class="icon-bar"></span>
								</button>
							</div>

							<!-- Navigasi Link, Form, dan Toggle Konten -->
							<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-2">
								<ul class="nav navbar-nav">

									<?php if ($explode_url[2] == 'index.php' || $explode_url[2] == '') { ?>

										<li class="active"><a href="index.php" class="hvr-sweep-to-top"><i class="glyphicon glyphicon-home"></i></a></li>

									<?php } else { ?>

										<li><a href="index.php" class="hvr-sweep-to-top"><i class="glyphicon glyphicon-home"></i></a></li>

									<?php } ?>

									<?php while ($kat_menu = $qryKategori->fetch_array()) { ?>

										<?php if (isset($_GET['kat']) && $kat_menu['id_kategori'] == $_GET['id']) { ?>

											<li class="active">
												<a class="hvr-sweep-to-top" href="<?php echo $base_url . "kategori.php?id=" . $kat_menu['id_kategori'] . "&amp;kat=" . strtolower($kat_menu['kategori']); ?>">
													<?php echo $kat_menu['kategori']; ?>
												</a>
											</li>

										<?php } else { ?>

											<li>
												<a class="hvr-sweep-to-top" href="<?php echo $base_url . "kategori.php?id=" . $kat_menu['id_kategori'] . "&amp;kat=" . strtolower($kat_menu['kategori']); ?>">
													<?php echo $kat_menu['kategori']; ?>
												</a>
											</li>

										<?php } ?>

									<?php } ?>
								</ul>
								<!-- Searching -->
								<ul class="nav navbar-nav navbar-right">
									<li class="dropdown">
										<a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false" id="search">
											<i class="glyphicon glyphicon-search"></i>
										</a>
										<ul class="dropdown-menu search-dropdown">
											<li>
												<form action="search.php" class="navbar-form" role="search" method="GET">
													<div class="form-group">
														<input type="text" class="form-control" placeholder="Telusuri" name="q" id="search-form">
													</div>
												</form>
											</li>
										</ul>
									</li>
								</ul>
							</div>
						</div>
					</nav>
				</div>
			</div>
		</div>
		<div class="clear"></div>