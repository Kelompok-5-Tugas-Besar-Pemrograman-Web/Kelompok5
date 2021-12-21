<?php include 'header.php'; ?>
<?php
$limit = 6;
if (isset($_GET['p'])) {
	$noPage = $_GET['p'];
} else $noPage = 1;

$offset = ($noPage - 1) * $limit;

$sql = "SELECT * FROM admin LIMIT " . $offset . "," . $limit;

$qry = $mysqli->query($sql);

$sql_rec = "SELECT admin FROM admin";

$total_rec = $mysqli->query($sql_rec);
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
								<h2 class="page-header"><i class="fa fa-users"></i><strong> Daftar Admin</strong></h2>
							</span>
						</div>
					</div>
					<div class="row">
						<div class="col-md-12">
							<br>
						</div>
					</div>
					<div class="clear"></div>
					<table id="example" class="stripe hover order-column row-border" style="width:100%">
						<thead>
							<tr>
								<th style="text-align: center;">Nama</th>
								<th>Foto</th>
								<th style="text-align: center;">deskripsi</th>
								<th style="text-align: center;">level</th>
								<th style="text-align: center;">Pilihan</th>
							</tr>
						</thead>
						<tbody>
							<?php while ($admin_list = $qry->fetch_assoc()) { ?>
								<tr>
									<td class="text-center"><strong><?php echo $admin_list['nama_lengkap']; ?></strong></td>
									<td>
										<img src="../images/author/<?php echo $admin_list['foto']; ?>" height="75" width="75">
									</td>
									<td class="text-center"><?php echo $admin_list['deskripsi']; ?></td>
									<td class="text-center"><?php echo $admin_list['level']; ?></td>

									<td align="center">
										<?php if ($admin_list['id_admin'] == $_SESSION['id_admin'] or $_SESSION['level'] == 'admin') { ?>

											<a href="profil.php?id=<?= $admin_list['id_admin'] ?>" class="btn btn-sm btn-success">
												<i class="fa fa-edit"></i>
											</a>
											<a onclick="return confirm('Anda Yakin Ingin Menghapus Data Ini?');" href="hapus-admin.php?id=<?= $admin_list['id_admin'] ?>" class="btn btn-sm btn-danger">
												<i class="fa fa-trash"></i>
											</a>
										<?php } else { ?>
											<a class="btn btn-sm btn-primary" target="_blank" href="<?php echo $base_url . 'detail.php?id=' . $admin_list['id_admin']; ?>">
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