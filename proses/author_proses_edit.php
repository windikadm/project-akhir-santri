<?php
	session_start();
	if(isset($_SESSION['login'])) {
		
		// $connect = mysqli_connect("localhost", "root", "", "pondok_dua");
		include 'koneksi.php';
		
		$nama = isset($_POST['nama']) ? $_POST['nama'] : '';
		$email = isset($_POST['email']) ? $_POST['email'] : '';
		$password = isset($_POST['password']) ? ($_POST['password']) : '';
		
		$id = isset($_POST['id']) ? $_POST['id'] : '';
		
		if (!empty($nama) && !empty($email)) {
			
			if (!empty($password)) {
				mysqli_query($connect, "
					UPDATE author
					SET nama = '$nama', email = '$email', password = '$password' WHERE id = '$id'
				");
			} else {
				mysqli_query($connect, "
					UPDATE author
					SET nama = '$nama', email = '$email'
					WHERE id = '$id'
				");
			}
			
			header("location:../author.php");
			
		} else {
			echo "Silahkan Lengkapi Data <a href='../author_tambah.php'>Author</a>";
		}
 	} else {
		echo "Please <a href='../index.php'>Login</a> First.";
	}
?>