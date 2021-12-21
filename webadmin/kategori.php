<?php include 'header.php'; ?>
<?php
$limit = 10;
if (isset($_GET['p'])) {
	$noHalaman = $_GET['p'];
} else $noHalaman = 1;

$offset = ($noHalaman - 1) * $limit;

$sql = "SELECT id_kategori, kategori FROM kategori LIMIT " . $offset . "," . $limit;
$qry = $mysqli->query($sql) or die($mysqli->error);

$sql_kategori = "SELECT id_kategori FROM kategori";

$total_kategori = $mysqli->query($sql_kategori);

$total_kategori_num = $total_kategori->num_rows;

$total_halaman = ceil($total_kategori_num / $limit);

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
								<h2 class="page-header"><i class="fa fa-server"></i> <strong> Kategori</strong> </h2>
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

						</div>
					</div>
					<div class="row">
						<div class="col-md-12">
							<div class="col-md-3">
								<form method="POST" action="aksi-kat.php?act=tambah">
									<div class="form-group">
										<label>Tambah Kategori</label>
										<input class="form-control input-sm" name="kategori" type="text" placeholder="Tambah Kategori"></input>
									</div>
									<div class="form-group">
										<button class="btn btn-sm btn-default"><i class="fa fa-plus-circle"></i> Tambah</button>
									</div>
								</form>
							</div>
							<div class="clear"></div>
							<hr>
							<table id="example" class="stripe hover order-column row-border" style="width:100%">
								<thead>
									<tr>
										<th width="10%" style="text-align: right">ID Kategori</th>
										<th width="70%">Kategori</th>
										<th width="20%" style="text-align: center">Pilihan</th>
									</tr>
								</thead>
								<tbody>
									<?php while ($kat_list = $qry->fetch_assoc()) { ?>
										<tr>
											<td align="center"><?php echo $kat_list['id_kategori']; ?></td>
											<td><?php echo $kat_list['kategori'] ?></td>
											<td align="center">
												<?php if ($kat_list['kategori'] != 'Uncategorized') { ?>
													<a onclick="return confirm('Anda Yakin Ingin Menghapus Data Ini?');" href="aksi-kat.php?act=hapus&amp;id=<?= $kat_list['id_kategori'] ?>" class="btn btn-sm btn-danger">
														<i class="fa fa-trash"></i>
													</a>
													<a href="aksi-kat.php?act=edit&amp;id=<?= $kat_list['id_kategori'] ?>" class="btn btn-sm btn-success">
														<i class="fa fa-edit"></i>
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