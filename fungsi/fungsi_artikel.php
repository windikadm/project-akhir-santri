<?php

function tampilArtikel()
{
	global $conn;

	$query	= "SELECT * FROM blog_artikel";
	$res	= mysqli_query($conn, $query);

	$row	= [];

	while ($rows = mysqli_fetch_assoc($res)) {
		$row[] = $rows;
	}

	return $row;
}

function detailArtikel($idArtikel)
{

	global $conn;

	$query = "SELECT * FROM blog_artikel where id = '$idArtikel' ";
	$res = mysqli_query($conn, $query);

	$row = mysqli_fetch_assoc($res);


	return $row;
}
