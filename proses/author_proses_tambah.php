<?php
	session_start();
	if (isset($_SESSION['login'])) {
		
		include 'koneksi.php';
		
		$nama 			= isset($_POST['nama']) ? $_POST['nama'] : '';
		$email 			= isset($_POST['email']) ? $_POST['email'] : '';
		$password	 	= isset($_POST['password']) ? md5($_POST['password']) : '';
		
		if (!empty($nama) && !empty($email) && !empty($password)) {
			
			mysqli_query($connect, "INSERT INTO author VALUES (null, '$nama', '$email', '$password')");
			
			header("location:../author.php");
			
		} else {
			echo "Silahkan Lengkapi Data <a href='../author_tambah.php'>Author</a>";
		}
		
	} else {
		echo "Please <a href='../index.php'>Login</a> First.";
	}
?>