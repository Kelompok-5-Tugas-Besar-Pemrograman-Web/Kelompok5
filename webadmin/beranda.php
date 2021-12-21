<?php include 'header.php'; ?>
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
								<h2 class="page-header">Hai Selamat datang, <strong><?php echo $_SESSION['nm_admin']; ?></strong></h2>
							</span>
						</div>
					</div>
					<div class="row">
						<div class="col-md-12">
							<br><br>
						</div>
					</div>
					<div class="row">
						<div class="col-md-12">
							<div class="col-sm-3 big-icon ">
								<div class="card w-50">
									<div class="card-body">
										<a href="berita.php">
											<span class="fa fa-newspaper-o fa-5x"></span>
											<h4>Berita</h4>
											<p class="card-text">Kunjungi untuk Kelola Berita</p>
										</a>
										<a href="berita.php" target="_blank" class="btn btn-primary btn-sm">Lihat</a>
									</div>
								</div>

							</div>
							<div class="col-sm-3 big-icon">
								<div class="card w-50">
									<div class="card-body">
										<a href="kategori.php">
											<span class="fa fa-server fa-5x"></span>
											<h4>Kategori</h4>
											<p class="card-text">Kunjungi untuk Kelola Kategori</p>
										</a>
										<a href="kategori.php" target="_blank" class="btn btn-primary btn-sm">Lihat</a>
									</div>
								</div>
							</div>
							<div class="col-sm-3 big-icon">
								<div class="card w-50">
									<div class="card-body">
										<a href="profil.php">
											<span class="fa fa-user fa-5x"></span>
											<h4>Profil</h4>
											<p class="card-text">Kunjungi untuk Kelola Profil Anda</p>
										</a>
										<a href="daftaradmin.php" target="_blank" class="btn btn-primary btn-sm">Lihat</a>
									</div>
								</div>
							</div>
							<div class="col-sm-3 big-icon">
								<div class="card w-50">
									<div class="card-body">
										<a href="daftaradmin.php">
											<span class="fa fa-users fa-5x"></span>
											<h4>Admin</h4>
											<p class="card-text">Kunjungi untuk Kelola Admin</p>
										</a>
										<a href="daftaradmin.php" target="_blank" class="btn btn-primary btn-sm">Lihat</a>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-md-12">
							<br>
						</div>
					</div>
					<div class="row">
						<div class="col-md-12">

							<div class="col-sm-3 big-icon">
								<div class="card w-50">
									<div class="card-body">
										<a href="buku-tamu.php">
											<span class="fa fa-book fa-5x"></span>
											<h4>Buku Tamu</h4>
											<p class="card-text">Kunjungi Kelola Buku Tamu dan Komentar</p>
										</a>
										<a href="buku-tamu.php" target="_blank" class="btn btn-primary btn-sm">Lihat</a>
									</div>
								</div>
							</div>
							<div class="col-sm-3 big-icon">
								<div class="card w-50">
									<div class="card-body">
										<a href="pesan.php">
											<span class="fa fa-comments fa-5x"></span>
											<h4>Pesan</h4>
											<p class="card-text">Kunjungi Kelola Pesan</p>
										</a>
										<a href="pesan.php" target="_blank" class="btn btn-primary btn-sm">Lihat</a>
									</div>
								</div>
							</div>
							<div class="col-sm-3 big-icon">
								<div class="card w-50">
									<div class="card-body">
										<a href="logout.php">
											<span class="fa fa-sign-out fa-5x"></span>
											<h4>Log Out</h4>
											<p class="card-text">Keluar dari web Administrator</p>
										</a>
										<a href="logout.php" target="_blank" class="btn btn-primary btn-sm">Keluar</a>
									</div>
								</div>
							</div>
							<div class="col-sm-3 big-icon">
								<div class="card w-50">
									<div class="card-body">
										<a href="<?php echo $base_url; ?>" target="_blank">
											<span class="fa fa-globe fa-5x"></span>
											<h4>Kunjungi Situs</h4>
											<p class="card-text">Kunjungi situs web berita untuk user</p>
										</a>
										<a href="<?php echo $base_url; ?>" target="_blank" class="btn btn-primary btn-sm">Lihat</a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<?php include 'footer.php'; ?>