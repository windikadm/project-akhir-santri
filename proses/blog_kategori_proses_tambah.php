<?php
session_start();
if (isset($_SESSION['login'])) {

	include 'koneksi.php';
	
	$nama    = isset($_POST['nama']) ? $_POST['nama'] : '';
	$status   = isset($_POST['status']) ? $_POST['status'] : '';

	if (!empty($nama) && !empty($status)) {

		mysqli_query($connect, "INSERT INTO blog_kategori VALUES (null,'$nama','$status')");

		header("location:../blog_kategori.php");

	} else {

		echo "Silahkan lengkapi data <a href='../blog_kategori_tambah.php'>kategori</a>";

	}


} else {

  	echo "Please <a href='../index.php'>login</a> first.";

}
?>