<?php 

function jumlahKomentar($idArtikel)
{
	global $conn;

	$query = "SELECT * FROM komentar WHERE artikel = '$idArtikel' ";
	$res = mysqli_query($conn, $query);

	$row = mysqli_num_rows($res);

	return $row;
}

function tampilKomentar($idArtikel)
{
	global $conn;

	$query = "SELECT * FROM komentar WHERE artikel = '$idArtikel' ";
	$res = mysqli_query($conn, $query);

	while ($rows = mysqli_fetch_assoc($res)) {
		$row[] = $rows;
	}

	return $row;
}

function postKomentar ($data, $idArtikel)
{
	global $conn;

	$nama = $data['nama'];
	$email = $data['email'];
	$handphone = $data['handphone'];
	$isi = $data['isi'];
	
	

	$query = "INSERT INTO komentar VALUES ('','$idArtikel','$nama','$email','$handphone','$isi')";


	if (mysqli_query($conn, $query)) {
		echo "komentar sukses";
	}

}