<?php include 'header.php';

if (!isset($_GET['id'])) redirect('404');
$limit = 5;
if (isset($_GET['p'])) {
	$noPage = $_GET['p'];
} else $noPage = 1;

$offset = ($noPage - 1) * $limit;

$sqlAdmin = "SELECT nama_lengkap, foto, deskripsi FROM admin WHERE id_admin='" . $mysqli->real_escape_string($_GET['id']) . "'";

$qryAdmin = $mysqli->query($sqlAdmin) or die($mysqli->error);

$jumlah = $qryAdmin->num_rows;

if ($jumlah > 0) {
	$admin = $qryAdmin->fetch_assoc();
	$sqlIndex = "SELECT
	berita.id_berita,
	berita.judul,
	berita.gambar,
	berita.teks_berita,
	berita.tgl_posting,
	berita.dilihat,
	admin.id_admin,
	admin.nama_lengkap,
	kategori.id_kategori,
	kategori.kategori
	FROM
	admin
	INNER JOIN berita ON admin.id_admin = berita.id_admin
	INNER JOIN kategori ON kategori.id_kategori = berita.id_kategori
	WHERE admin.id_admin = '" . $mysqli->real_escape_string($_GET['id']) . "'
	ORDER BY
	berita.tgl_posting DESC
	LIMIT " . $offset . "," . $limit;

	$sql_berita = "SELECT id_berita FROM berita WHERE id_admin = '" . $mysqli->real_escape_string($_GET['id']) . "'";

	$total_berita = $mysqli->query($sql_berita);

	$total_berita_num = $total_berita->num_rows;

	$qryIndex = $mysqli->query($sqlIndex);

	$total_page = ceil($total_berita_num / $limit);
} else {
	echo "<script>window.location = '404.php'</script>";
}
?>
<div class="container-fluid">
	<div class="row">
		<div class="container content-wrapper">
			<div class="panel panel-default">
				<div class="panel-body main">
					<div class="col-md-8">
						<!-- Bagian Berita Utama -->
						<div class="author">
							<div class="author-img wow fadeIn" data-wow-duration="3s" data-wow-delay="5s">
								<img width="150" height="150" src="<?php echo $base_url; ?>images/author/<?php echo $admin['foto']; ?>">
							</div>
							<div class="author-data">
								<p><span class="author-name"><?php echo $admin['nama_lengkap']; ?></span></p>
								<p class="author-desc text-muted"><?php echo $admin['deskripsi']; ?></p>
							</div>
						</div>
						<h4>Berita yang diposting oleh "<strong><?php echo $admin['nama_lengkap']; ?></strong>"</h4>
						<?php while ($post_auth = $qryIndex->fetch_assoc()) { ?>
							<div class="news">
								<div class="row news-title">
									<div class="col-sm-12">
										<a href="<?php echo $base_url . "detail.php?id=" . $post_auth['id_berita'] . "&amp;judul=" . strtolower(str_replace(" ", "-", $post_auth['judul'])); ?>">
											<h2><?php echo strtoupper($post_auth['judul']); ?></h2>
										</a>
									</div>
								</div>
								<div class="row news-meta">
									<div class="col-sm-3">
										<i class="glyphicon glyphicon-user"></i>&nbsp;&nbsp;<?php echo $admin['nama_lengkap']; ?>
									</div>
									<div class="col-sm-3">
										<i class="glyphicon glyphicon-calendar"></i>&nbsp;&nbsp;<?php echo $post_auth['tgl_posting']; ?>
									</div>
									<div class="col-sm-3">
										<i class="glyphicon glyphicon-eye-open"></i>&nbsp;&nbsp;<?php echo $post_auth['dilihat']; ?>x
									</div>
									<div class="col-sm-3">
										<i class="glyphicon glyphicon-folder-open"></i>&nbsp;&nbsp;
										<a href="<?php echo $base_url . "kategori.php?id=" . $post_auth['id_kategori'] . "&amp;" .
														strtolower(str_replace(' ', '-', $post_auth['kategori'])); ?>">
											<em><?php echo $post_auth['kategori']; ?></em>
										</a>
									</div>
								</div>
								<div class="row news-content">
									<div class="col-sm-12 excerpt">
										<img src="<?php echo $base_url . "images/" . $post_auth['gambar']; ?>" class="wow fadeIn">
										<?php echo substr($post_auth['teks_berita'], 0, 200); ?>...
										<a href="<?php echo $base_url . "detail.php?id=" . $post_auth['id_berita'] . "&amp;judul=" . strtolower(str_replace(' ', '-', $post_auth['judul'])); ?>">
											Selengkapnya <i class="glyphicon glyphicon-chevron-right"></i>
										</a>
									</div>
								</div>
							</div>
						<?php } ?>
					</div>
					<!--Bagian Sidebar -->
					<?php include 'sidebar.php'; ?>
					<div class="col-md-12">
						<ul class="pagination">
							<?php if ($noPage > 1) { ?>

								<li>
									<a href="<?php echo $base_url . "author.php?id=" . $_GET['id'] . "&amp;p=" . ($noPage - 1); ?>">
										<i class="glyphicon glyphicon-chevron-left"></i>
									</a>
								</li>

							<?php } ?>

							<?php for ($page = 1; $page <= $total_page; $page++) { ?>
								<?php if ((($page >= $noPage - 3) && ($page <= $noPage + 3)) || ($page == 1) || ($page == $total_page)) { ?>
									<?php
									$showPage = $page;
									if ($page == $total_page && $noPage <= $total_page - 5) echo "<li class='active'><a>...</a></li>";
									if ($page == $noPage) echo "<li class='active'><a href='#'>" . $page . "</a></li> ";
									else echo " <li><a href='" . $_SERVER['PHP_SELF'] . "?id=" . $_GET['id'] . "&amp;p=" . $page . "'>" . $page . "</a></li> ";
									if ($page == 1 && $noPage >= 6) echo "<li class='active'><a>...</a></li>";
									?>
								<?php } ?>
							<?php } ?>

							<?php if ($noPage < $total_page) { ?>
								<li>
									<a href="<?php echo $base_url . "author.php?id=" . $_GET['id'] . "&amp;p=" . ($noPage + 1); ?>">
										<i class="glyphicon glyphicon-chevron-right"></i>
									</a>
								</li>
							<?php } ?>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<?php include 'footer.php';
