-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 28 Feb 2018 pada 17.25
-- Versi Server: 10.1.25-MariaDB
-- PHP Version: 7.0.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wahdah`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `author`
--

CREATE TABLE `author` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `author`
--

INSERT INTO `author` (`id`, `nama`, `email`, `password`) VALUES
(1, 'dika', 'dika@gmail.com', '1'),
(2, 'restu', 'restufauzi@gmail.com', 'c4ca4238a0b923820dcc509a6f75849b'),
(3, 'iqbal', 'iqbal@gmail.com', 'c4ca4238a0b923820dcc509a6f75849b');

-- --------------------------------------------------------

--
-- Struktur dari tabel `blog_artikel`
--

CREATE TABLE `blog_artikel` (
  `id` int(11) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `isi` text NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `kategori_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `tanggal` datetime NOT NULL,
  `status` enum('1','0') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `blog_artikel`
--

INSERT INTO `blog_artikel` (`id`, `judul`, `isi`, `gambar`, `kategori_id`, `user_id`, `tanggal`, `status`) VALUES
(15, 'What is Lorem Ipsum?', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</p>\r\n\r\n<h2>Where does it come from?</h2>\r\n\r\n<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of &quot;de Finibus Bonorum et Malorum&quot; (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, &quot;Lorem ipsum dolor sit amet..&quot;, comes from a line in section 1.10.32.</p>\r\n\r\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from &quot;de Finibus Bonorum et Malorum&quot; by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham</p>\r\n\r\n<h2>Why do we use it?</h2>\r\n\r\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2>Where does it come from?</h2>\r\n\r\n<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of &quot;de Finibus Bonorum et Malorum&quot; (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, &quot;Lorem ipsum dolor sit amet..&quot;, comes from a line in section 1.10.32.</p>\r\n\r\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from &quot;de Finibus Bonorum et Malorum&quot; by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>\r\n\r\n<h2>Where can I get some?</h2>\r\n\r\n<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don&#39;t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn&#39;t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>\r\n', 'Chelsea-FC-Wallpaper.jpg', 3, 1, '2018-02-19 15:14:10', '1'),
(18, 'Cesc FÃ bregas Biography', '<p>Soccer player Cesc F&agrave;bregas has starred for the Arsenal and FC Barcelona clubs and led Spain to multiple championships in international competition.</p>\r\n\r\n<h2>Synopsis</h2>\r\n\r\n<p>Cesc F&agrave;bregas was born on May 4, 1987, in Arenys de Mar, Spain. A talented midfielder, he became the youngest player to appear for the Arsenal soccer club as well as a Spanish World Cup team. F&agrave;bregas spent nine seasons with Arsenal before transferring to FC Barcelona, and served as a key member of the Spanish teams that won Euro 2008 and 2012 and the 2010 World Cup.</p>\r\n\r\n<h2>Early Life</h2>\r\n\r\n<p>Professional soccer player Francesc &quot;Cesc&quot; F&agrave;bregas Soler was born on May 4, 1987, in the Spanish port town of Arenys de Mar. F&agrave;bregas came from a modest background. His mother, Nuria, worked as a caterer for a time, while his father, Francesc F&agrave;bregas Sr., kept his family fed by laboring as a construction worker. Soccer was also a large part of his father&#39;s life; Francesc Sr. continued to play soccer even after his son was born, and when it came time for young F&agrave;bregas to take the field, it was his dad who served as his first coach.</p>\r\n\r\n<p>From an early age, F&agrave;bregas demonstrated the mental toughness and dedication to the game that set him apart as a true professional. At the age of 8, with dreams of playing professionally very much on his mind, F&agrave;bregas was already training hard and becoming careful about his diet, opting for fish and vegetables over fast food. At age 10, he joined soccer club FC Barcelona&#39;s youth academy, a renowned training ground for some of the sport&#39;s most promising young players.</p>\r\n\r\n<p>In the summer of 2003, F&agrave;bregas showcased his impressive talent in the FIFA U-17 World Championship in Finland, where the playmaker led Spain to a second-place finish, captured the Golden Ball as the tournament&#39;s best player and received the Golden Boot award for becoming the tournament&#39;s top scorer.</p>\r\n\r\n<h2>First Professional Contract</h2>\r\n\r\n<p>Just a few months later, F&agrave;bregas signed his first professional contract, with the Premier League club Arsenal. For F&agrave;bregas, the decision to leave home and jump to England was a big one. But Arsenal, a club that cultivated a reputation for developing young players under the direction of manager Arsene Wenger, was more than willing to work with the midfielder and lessen the chance for any homesickness.</p>\r\n\r\n<p>He moved into a home in Barnet, Hertfordshire, that was run by a woman who looked after some of Arsenal&#39;s younger players. There, F&agrave;bregas lived a fairly simple life, with days dominated by practice time and English lessons. &quot;I had a stereo, some clothes, a computer, a tiny television, which was hooked up to my PlayStation,&quot; he later recalled. &quot;I&#39;d think about my friends back home, who were out clubbing and having a good time and there I was, all by myself, in front of the computer, wondering what the hell I was doing. It was tough, but it was a choice I made.&quot;</p>\r\n\r\n<h2>Club Stardom</h2>\r\n\r\n<p>It wasn&#39;t long before F&agrave;bregas saw the benefits of his social sacrifices. In October 2003, the midfielder made his debut with Arsenal, giving him the distinction of becoming the youngest player ever to step onto the field for the club. That same year, he helped Arsenal take home the Premier League championship. In 2005, with F&agrave;bregas getting more playing time, Arsenal repeated its 2003 title turn and finished as the Premier League&#39;s top team.</p>\r\n\r\n<p>F&agrave;bregas won the PFA Young Player of the Year Award in 2008, and later that year he was named captain of the Arsenal squad. But despite his standing with the club that groomed him to become a star, the lure of playing in his home country proved too powerful to ignore, and F&agrave;bregas returned to FC Barcelona in August 2011 for a transfer fee of approximately $56 million. F&agrave;bregas enjoyed immediate success with the powerful Barcelona team, which won the Spanish Super Cup, the UEFA Super Cup, the FIFA Club World Cup and Copa Del Rey in his first season.</p>\r\n\r\n<h2>Spanish Kings</h2>\r\n\r\n<p>In addition to his club successes, F&agrave;bregas has starred for his country&#39;s national team. The youngest player to appear in a World Cup game for Spain, F&agrave;bregas distinguished himself on soccer&#39;s biggest stage in 2006, when he came off the bench to spark a comeback win over Tunisia and vault his countrymen into the knockout stage. His performance drew praise from former Argentina captain Diego Maradona, who told a Spanish television station that &quot;Cesc gave Spain the final ball that it was lacking in the first half.&quot;</p>\r\n\r\n<p>Although Spain fell short of the ultimate prize in that year&#39;s tournament, they soon proved indomitable in world play. In Euro 2008, F&agrave;bregas netted the deciding penalty kick in a quarter-final win over Italy, a key moment in Spain&#39;s march to the title. In 2010, F&agrave;bregas provided the assist for the lone goal scored in Spain&#39;s World Cup final victory over the Netherlands. Two years later, history repeated itself as F&agrave;bregas again nailed a deciding penalty kick, this time in a semifinal victory over Portugal, to help Spain claim Euro 2012 and become the first team to win three consecutive international competitions.</p>\r\n', 'chelsea (2).png', 3, 1, '2018-02-19 15:21:46', '1'),
(19, 'Lorem ipsum', '<p><strong>Lorem ipsum</strong>, atau ringkasnya&nbsp;<strong>lipsum</strong>, adalah teks standar yang ditempatkan untuk mendemostrasikan elemen grafis atau presentasi visual seperti&nbsp;<em><a href=\"https://id.wikipedia.org/wiki/Font\">font</a></em>,&nbsp;<a href=\"https://id.wikipedia.org/wiki/Tipografi\">tipografi</a>, dan&nbsp;<a href=\"https://id.wikipedia.org/wiki/Tata_letak\">tata letak</a>. Maksud penggunaan lipsum adalah agar pengamat tidak terlalu berkonsentrasi kepada arti harfiah per kalimat, melainkan lebih kepada elemen desain dari teks yang dipresentasi.Lorem ipsum disebut juga dengan&nbsp;<em>greeking</em>&nbsp;(melatinkan/meyunanikan) karena kalimat ini berasal dari&nbsp;<a href=\"https://id.wikipedia.org/wiki/Bahasa_Latin\">bahasa Latin</a></p>\r\n\r\n<p>Contoh teks lorem ipsum yang lazim digunakan adalah:<em>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</em>Teks asli dari Cicero untuk&nbsp;<em>lorem ipsum</em>&nbsp;adalah sebagai berikut (dengan bagian-bagian cuplikannya yang dicetak tebal):</p>\r\n\r\n<p><em>[32] Sed ut perspiciatis, unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam eaque ipsa, quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt, explicabo. Nemo enim ipsam voluptatem, quia voluptas sit, aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos, qui ratione voluptatem sequi nesciunt, neque porro quisquam est, qui do<strong>lorem ipsum</strong>, quia&nbsp;<strong>dolor sit, amet, consectetur, adipisci</strong>&nbsp;v<strong>elit, sed</strong>&nbsp;quia non numquam&nbsp;<strong>eius mod</strong>i&nbsp;<strong>tempor</strong>a&nbsp;<strong>incidunt, ut labore et dolore magna</strong>m&nbsp;<strong>aliqua</strong>m quaerat voluptatem.&nbsp;<strong>Ut enim ad minim</strong>a&nbsp;<strong>veniam, quis nostru</strong>m&nbsp;<strong>exercitation</strong>em&nbsp;<strong>ullam co</strong>rporis suscipit&nbsp;<strong>laborios</strong>am,&nbsp;<strong>nisi ut aliquid ex ea commodi consequat</strong>ur?&nbsp;<strong>Quis aute</strong>m vel eum&nbsp;<strong>iure reprehenderit,</strong>&nbsp;qui&nbsp;<strong>in</strong>&nbsp;ea&nbsp;<strong>voluptate velit esse</strong>, quam nihil molestiae&nbsp;<strong>c</strong>onsequatur, vel&nbsp;<strong>illum</strong>, qui&nbsp;<strong>dolore</strong>m&nbsp;<strong>eu</strong>m&nbsp;<strong>fugiat</strong>, quo voluptas&nbsp;<strong>nulla pariatur</strong>? [33] At vero eos et accusamus et iusto odio dignissimos ducimus, qui blanditiis praesentium voluptatum deleniti atque corrupti, quos dolores et quas molestias&nbsp;<strong>exceptur</strong>i&nbsp;<strong>sint, obcaecat</strong>i&nbsp;<strong>cupiditat</strong>e&nbsp;<strong>non pro</strong>v<strong>ident</strong>, similique&nbsp;<strong>sunt in culpa</strong>,&nbsp;<strong>qui officia deserunt mollit</strong>ia&nbsp;<strong>anim</strong>i,&nbsp;<strong>id est laborum</strong>&nbsp;et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio, cumque nihil impedit, quo minus id, quod maxime placeat, facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet, ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.</em></p>\r\n\r\n<p>Dalam bahasa Indonesia, kalimat di atas diterjemahkan: &quot;Demikian pula, tidak adakah orang yang mencintai atau mengejar atau ingin mengalami penderitaan, bukan semata-mata karena penderitaan itu sendiri, tetapi karena sesekali terjadi keadaan di mana susah-payah dan penderitaan dapat memberikan kepadanya kesenangan yang besar. Sebagai contoh sederhana, siapakah di antara kita yang pernah melakukan pekerjaan fisik yang berat, selain untuk memperoleh manfaat daripadanya? Tetapi siapakah yang berhak untuk mencari kesalahan pada diri orang yang memilih untuk menikmati kesenangan yang tidak menimbulkan akibat-akibat yang mengganggu, atau orang yang menghindari penderitaan yang tidak menghasilkan kesenangan?&quot;</p>\r\n', 'Hazard-Chelsea.jpg', 3, 1, '2018-02-20 05:38:11', '1');

-- --------------------------------------------------------

--
-- Struktur dari tabel `blog_kategori`
--

CREATE TABLE `blog_kategori` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `status` enum('1','0') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `blog_kategori`
--

INSERT INTO `blog_kategori` (`id`, `nama`, `status`) VALUES
(1, 'berita', '1'),
(2, 'pengumuman', '1'),
(3, 'olahraga', '1'),
(5, 'islam', '1');

-- --------------------------------------------------------

--
-- Struktur dari tabel `komentar`
--

CREATE TABLE `komentar` (
  `id` int(11) NOT NULL,
  `artikel` int(11) NOT NULL,
  `nama` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `handphone` varchar(50) NOT NULL,
  `isi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `komentar`
--

INSERT INTO `komentar` (`id`, `artikel`, `nama`, `email`, `handphone`, `isi`) VALUES
(20, 19, 'restu', 'doarestu@gmail.com', '085747580776', 'kapan balik pbg>'),
(21, 15, 'dika', 'windikadm3@gmail.com', '085747580776', 'lorem ipsum'),
(22, 18, 'iqbal', 'iqbal@gmail.com', '085747580776', 'dika kapan balik pbg'),
(23, 19, 'zaki', 'zaki@yahoo.co.id', '123456789', 'kodong berhasil komentar'),
(24, 19, 'farid', 'farid@rockte@mail.co', '08547575775', 'apa ini');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `author`
--
ALTER TABLE `author`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_artikel`
--
ALTER TABLE `blog_artikel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_kategori`
--
ALTER TABLE `blog_kategori`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `komentar`
--
ALTER TABLE `komentar`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `author`
--
ALTER TABLE `author`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `blog_artikel`
--
ALTER TABLE `blog_artikel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `blog_kategori`
--
ALTER TABLE `blog_kategori`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `komentar`
--
ALTER TABLE `komentar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
