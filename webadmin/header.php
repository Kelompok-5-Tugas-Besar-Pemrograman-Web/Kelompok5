<?php
include '../config/koneksi.php';
include '../config/config.php';
session_start();
if (!isset($_SESSION['admin'])) {
	header('location:index.php');
}
?>
<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="UTF-8">
	<title>Administrator | Ada Apa Dengan USU</title>
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" type="text/css" href="../assets/bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="../assets/font-awesome/css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="../dist/css/admin.css">
	<link rel="stylesheet" href="../dist/css/jquery.dataTables.min.css">
	<link rel="stylesheet" href="../dist/js/admin.cssdataTables.bootstrap5.min.js">
	<script src="../dist/js/jquery-3.5.1.js"></script>
	<script src="../dist/js/jquery.dataTables.min.js"></script>
	<script async defer src="../assets/bootstrap/js/bootstrap.min.js"></script>
	<script src="assets/ckeditor/ckeditor.js"></script>
</head>

<body>
	<nav class="navbar navbar-default" role="navigation">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
					<span class="sr-only">Toggle navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
				<img src="../images/logo.png" alt="" width="50" height="50" class="d-inline-block align-text-top img-circle mt-10 md-10">
			</div>
			<div class="navbar-header col-md-1">
				<a class="navbar-brand float-md-start" href="#">
					<strong>Administrator</strong>
				</a>
			</div>
			<div class="collapse navbar-collapse navbar-ex1-collapse">
				<ul class="nav navbar-nav navbar-right">
					<li class="dropdown">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown">
							<i class="fa fa-user"></i> <?php echo $_SESSION['nm_admin']; ?> <b class="caret"></b>
						</a>
						<ul class="dropdown-menu">
							<li><a href="<?php echo $base_url . 'logout.php'; ?>" data-toggle="modal" data-target="#modal_logout">Logout <i class="fa fa-sign-out"></i></a></li>
						</ul>
					</li>
				</ul>
			</div>
		</div>
	</nav>