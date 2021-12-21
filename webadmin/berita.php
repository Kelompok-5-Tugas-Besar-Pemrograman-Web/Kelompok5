<?php include 'header.php'; ?>
<?php
$limit = 15;
if (isset($_GET['p'])) {
	$noPage = $_GET['p'];
} else $noPage = 1;

$offset = ($noPage - 1) * $limit;

$sql = "SELECT
berita.id_berita,
berita.judul,
admin.id_admin,
berita.gambar,
berita.tgl_posting,
admin.nama_lengkap,
kategori.kategori
FROM
berita
INNER JOIN admin ON berita.id_admin = admin.id_admin
INNER JOIN kategori ON kategori.id_kategori = berita.id_kategori
ORDER BY berita.tgl_posting DESC
LIMIT " . $offset . "," . $limit;
$qry = $mysqli->query($sql);

$sql_rec = "SELECT id_berita FROM berita";

$total_rec = $mysqli->query($sql_rec);

$total_rec_num = $total_rec->num_rows;

$total_page = ceil($total_rec_num / $limit);

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
							<h2 class="page-header"><i class="fa fa-newspaper-o"></i> Berita</h2>
						</div>
					</div>
					<div class="row">
						<div class="col-md-12">
							<a href="tambah-berita.php" class="btn btn-sm btn-primary">
								<i class="fa fa-plus-circle"></i> Tambah Berita
							</a>
							<div class="clear"></div>
							<table id="example" class="stripe hover order-column row-border" style="width:100%">
								<thead>
									<tr>
										<th>Judul</th>
										<th>Gambar</th>
										<th>Kategori</th>
										<th>Tgl. Posting</th>
										<th>Penulis</th>
										<th>Pilihan</th>
									</tr>
								</thead>
								<tbody>
									<?php while ($news_list = $qry->fetch_assoc()) { ?>
										<tr>
											<td><strong><?php echo $news_list['judul']; ?></strong></td>
											<td>
												<img src="../images/<?php echo $news_list['gambar']; ?>" height="75" width="75">
											</td>
											<td><?php echo $news_list['kategori']; ?></td>
											<td><?php echo $news_list['tgl_posting']; ?></td>
											<td><?php echo $news_list['nama_lengkap']; ?></td>
											<td align="center" width="50px">
												<?php if ($news_list['id_admin'] == $_SESSION['id_admin'] or $_SESSION['level'] == 'admin') { ?>
													<a class="btn btn-sm btn-primary" target="_blank" href="<?php echo $base_url . 'detail.php?id=' . $news_list['id_berita']; ?>">
														<i class="fa fa-eye"></i>
													</a>
													<a href="edit-berita.php?id=<?= $news_list['id_berita'] ?>" class="btn btn-sm btn-success">
														<i class="fa fa-edit"></i>
													</a>
													<a onclick="return confirm('Anda Yakin Ingin Menghapus Data Ini?');" href="hapus-berita.php?id=<?= $news_list['id_berita'] ?>" class="btn btn-sm btn-danger">
														<i class="fa fa-trash"></i>
													</a>
												<?php } else { ?>
													<a class="btn btn-sm btn-primary" target="_blank" href="<?php echo $base_url . 'detail.php?id=' . $news_list['id_berita']; ?>">
														<i class="fa fa-eye"></i>
													</a>
												<?php } ?>
											</td>
										</tr>
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