<!DOCTYPE html>
<html>
<head>
	<title>Post</title>
<link rel="stylesheet" type="text/css" href="css/postlast.css">
<link href="https://fonts.googleapis.com/css?family=Lato:400,400i" rel="stylesheet">
<link rel="shortcut icon" href="images/chelsea (3).png">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="jquery-3.2.1.min.js"></script>
<script>
$(document).ready(function(){
    $("ul.burger").click(function(){
        $("#container").hide();
        $("#efek").slideToggle("slow");
    });

	$("li.tutup").click(function(){
        $("#container").show();
        $("#efek").hide("slow");
    });

});	
</script>
<script type="text/javascript" src="jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="validasi.js"></script>
<script type="text/javascript">
$(document).ready(function() {
    $("#form").validate(); //id form
});
</script>
<meta name="description" content="">
<meta name="author" content="">

<?php
	include 'proses/koneksi.php';
	include 'function/library.php';
	include 'fungsi/config.php';
	$rowArtikel = detailArtikel($_GET['id']);
	$rowKomentar = tampilKomentar($_GET['id']);
?>
</head>
<body>

<div id="efek" style="display: none;">

			<ul class="hamburger">
						<li class="tutup"><i class="fa fa-window-close" aria-hidden="true"></i></li>
			</ul><!-- hamburger -->


				<ul class="navbar0 wrapper">
					<li class="satu">HOME</li>
					<li class="satu"></li>
					<li><hr></li>
					<li class="satu">ABOUT</li>
					<li><hr></li>
					<li class="satu">ARCHIVE</li>
					<li><hr></li>
					<li class="satu">CONTACT</li>
					<li><hr></li>
					<li img class="openBtn" onclick="openSearch()" src="images/search.png" alt="icon search" ></li>
				</ul><!-- navbar -->

		</div><!-- efek -->

	<div id="container">

		<div id="header" class="wrapper">

			<p id="logo" > Al Wahdah </p>

				<ul class="burger">
					<li><img src="images/burger.png" alt="icon burger"></li>
				</ul><!-- burger -->

				<ul class="navbar">
					<li><a href="index.php"> HOME</a></li>
					<li><a href="#">ABOUT</a></li>
					<li><a href="#">ARCHIVE</a>
					<li><a href="#">CONTACT</a></li>
					<li><img class="openBtn" onclick="openSearch()" src="images/search.png" alt="icon search" ></li>
				</ul><!-- navbar -->
		
				<div id="myOverlay" class="overlay">
			        <span class="closebtn" onclick="closeSearch()" title="CloseOverlay"><i class="fa fa-window-close" aria-hidden="true"></i></span>
			        <div class="overlay-content" >
			            <form action="#">
			                <input type="text" placeholder="Search new article" name="cari">
			            </form>
			        </div><!-- overlay-content -->
		    	</div><!-- myOverlay -->
		    <script>
		        function openSearch() {
		            document.getElementById("myOverlay").style.display ="block";
		        }

		        function closeSearch() {
		            document.getElementById("myOverlay").style.display ="none";
		        }
		    </script>

		</div><!-- header -->

						<div id="main" class="wrapper">

				<div id="content">

					<div id="center" class="wrapper">

						<?php
							$sql = mysqli_query($connect, "SELECT * FROM blog_artikel WHERE id= $_GET[id]");
							$row = mysqli_fetch_array($sql);
						?>

						<div id="category">
							<p id="category">
								<?= kategori($row['kategori_id']) ?>
							</p>
						</div><!-- category -->

						<p id="date">
							<?= date('F,d,Y', strtotime($row['tanggal'])) ?>
						</p>

						<p id="title">
							<?= $row['judul'] ?>
						</p>

						<div id="hr">

						</div>


						<div id="image">
					<img src="gambar/<?php echo $row['gambar']?>" width ="100%">
				</div>

				<div class="article">
					<p>
						<?= $row['isi'] ?>
					<p>
				</div><!-- article -->

				
				</div>

				<div id="trend">
					<p style="text-align: right;" >#Democracy   #Introspection</p>
				</div>

				<div id="comment">
					
						<div>
							<p> <?=jumlahKomentar($row['id']) ?> Komentar </p>	
						</div>
					<form method="post" id="form" >	
						<div>
							<input type="name" name="nama" id="nama" class="required" placeholder="Nama">	
						</div>	

						<div>
							<input type="email" name="email" id="email" class="required email" placeholder="email">
						</div>

						<div>
							<input type="text" name="handphone" id="handphone" class="required digits" placeholder="no handphone">
						</div>

						<div>
							<textarea  placeholder="Isi komentar dengan hati nuranimu" name="isi" id="isi" class="required" ></textarea>	
						</div>
						
						<div>
							<button type="submit" name="btnkomen">Tambahkan Komentar</button>	
						</div>
					</form>

				<?php
					if (isset($_POST['btnkomen'])) {
					postKomentar($_POST, $_GET['id']);

					echo "<meta http-equiv='refresh' content='1.5;url=post.php?id=".$rowArtikel['id']."'>";
					}
				?>	
							
				</div><!-- comment -->

				

				<div id="komentator" class="wrapper" >

				<?php foreach ($rowKomentar as $row): ?>

					<p id="nama"><?= $row['nama'] ?></p>
					<p id="email"><?= $row['email'] ?></p>
					<p id="handphone"><?= $row['handphone'] ?></p>
					<p id="isi"><?= $row['isi'] ?></p>
				<?php endforeach ?>	

				</div><!-- komentator -->

					</div><!-- center -->

				</div><!-- content -->



			<div id="footer">

				<div id="center2" class="wrapper">

					<p id="logo2">
						Al Wahdah
					</p><!-- logo2 -->

					<ul class="navbar2">
						<li>HOME</li>
						<li>ABOUT</li>
						<li>ARCHIVE</li>
						<li>CONTACT</li>
						<li><img src="images/search3.png" alt="icon search" ></li>
					</ul><!-- navbar2 -->					

					<div class="hr2 wrapper3">

					</div>

					<p id="visi" class="wrapper2">
						Nunc placerat dolor at lectus hendrerit dignissim. Ut tortor sem, consectetur nec hendrerit ut, ullamcorper ac odio. Donec viverra ligula at quam tincidunt imperdiet. Nulla mattis tincidunt auctor.
					</p>
						
					<div class="hr3 wrapper3">

					</div>

					<div id="iconset">
						<img src="images/socialmedia2.png">
					</div>


				</div><!-- center -->

			</div><!-- footer -->
				
	</div><!-- container -->



</body>
</html>