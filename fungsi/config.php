<?php
	
$conn = mysqli_connect("sql127.main-hosting.eu", "u925156864_dika", "Dika1234", "u925156864_dika");

if (!$conn) {
	echo "konkesi gagal;";
}

include 'fungsi_artikel.php';
include 'fungsi_komentar.php';


?>

