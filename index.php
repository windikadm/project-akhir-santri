<!DOCTYPE html>
<html>
<head>
	<title>Home</title>
<link rel="stylesheet" type="text/css" href="css/final3.css">
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
<meta name="description" content="">
<meta name="author" content="">

<?php
	include 'proses/koneksi.php';
	include 'function/library.php';
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
					<li><a href="#"> HOME</a></li>
					<li><a href="#">ABOUT</a></li>
					<li><a href="#">ARCHIVE</a>
					<li><a href="#">CONTACT</a></li>
					<li><img class="openBtn" onclick="openSearch()" src="images/search.png" alt="icon search" ></li>
				</ul><!-- navbar -->
		
				<div id="myOverlay" class="overlay">
			        <span class="closebtn" onclick="closeSearch()" title="CloseOverlay"><i class="fa fa-window-close" aria-hidden="true"></i></span>
			        <div class="overlay-content" >
			            <form action="index.php" method="POST">
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

				<?php
					include 'proses/koneksi.php';
					$cari = isset($_POST['cari']) ? $_POST['cari'] : '';
					if (!empty($cari)){
						$sql = mysqli_query($connect, "SELECT * FROM blog_artikel WHERE judul LIKE '%$cari%' OR isi LIKE '%$cari%' ORDER BY id DESC");
					} else {
						$sql = mysqli_query($connect, "SELECT * FROM blog_artikel ORDER BY id DESC");
					}
					while ($row = mysqli_fetch_array($sql)) {
				?>

				<div id="picture"> 

					<img src="gambar/<?php echo $row['gambar']?>" width = "100%"">

				</div><!-- picture -->

				<div id="content">

					<div id="center" class="wrapper">

						<div id="category">
							<p id="category">
								<?= kategori($row['kategori_id']) ?>
							</p>
						</div><!-- category -->

						<p id="date">
							<?=date('F d, Y') ?>
						</p>

						<p id="title">
							<?= $row['judul'] ?>
						</p>

						<p id="article">
							<?= substr($row['isi'],0,500) ?>	
						</p>

						<p id="readmore">
							<a href="<?php echo 'post.php?id='.$row['id'];  ?>">READ MORE</a>
						</p><!-- readmore -->

					</div><!-- center -->

				<?php
					}
				?>

				</div><!-- content -->


			</div><!-- main -->

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