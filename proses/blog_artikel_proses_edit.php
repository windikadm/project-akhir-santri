<?php
session_start();
if (isset($_SESSION['login'])) {
	
	include 'koneksi.php';
	
	$judul    = isset($_POST['judul']) ? $_POST['judul'] : '';
	$kategori   = isset($_POST['kategori']) ? $_POST['kategori'] : '';
	$isi   = isset($_POST['isi']) ? $_POST['isi'] : '';
	$status   = isset($_POST['status']) ? $_POST['status'] : '';
	$tanggal   = date('Y-m-d H:i:s',time());
	$user_id   = $_SESSION['user_id'];

	$id   = isset($_POST['id']) ? $_POST['id'] : '';

	if (!empty($judul) && !empty($kategori) && !empty($isi)) {

		mysqli_query($connect, "
			UPDATE blog_artikel 
			SET judul = '$judul', isi = '$isi', Kategori_id = '$kategori', user_id = '$user_id', tanggal = '$tanggal', status = '$status'
			WHERE id = '$id'
			");

		header("location:../blog_artikel.php");

	} else {

		echo "Silahkan lengkapi data <a href='../blog_kategori_tambah.php'>Artikel</a>";

	}


} else {

  	echo "Please <a href='../index.php'>login</a> first.";

}
?>