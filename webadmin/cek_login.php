<?php
include '../config/koneksi.php';

$username = $mysqli->real_escape_string(stripslashes(strip_tags(htmlspecialchars($_POST['username'], ENT_QUOTES))));
$password = $mysqli->real_escape_string(stripslashes(strip_tags(htmlspecialchars($_POST['password'], ENT_QUOTES))));

$login = $mysqli->query("SELECT * FROM admin WHERE username='$username' AND password='$password'") or die($mysqli->error);
$loginResult = mysqli_num_rows($login);
$data = $login->fetch_assoc();
$user_name = $data['username'];
$user_pass = $data['password'];
if ($loginResult == 1 && md5($password, $user_pass)) {
	session_start();
	$_SESSION['admin'] = 1;
	$_SESSION['id_admin'] = $data['id_admin'];
	$_SESSION['nm_admin'] = $data['nama_lengkap'];
	$_SESSION['level'] = $data['level'];
	header('location:beranda.php');
} else if ($loginResult == 0) {
	header('location:index.php?failed=1');
}
