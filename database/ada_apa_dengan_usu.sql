-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 21, 2021 at 04:12 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `aadu`
--
CREATE DATABASE IF NOT EXISTS `aadu` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `aadu`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `username` varchar(40) NOT NULL,
  `password` varchar(100) NOT NULL,
  `nama_lengkap` varchar(50) NOT NULL,
  `foto` varchar(100) NOT NULL,
  `deskripsi` text NOT NULL,
  `level` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id_admin`, `username`, `password`, `nama_lengkap`, `foto`, `deskripsi`, `level`) VALUES
(1, 'johansen', 'johansen123', 'Johansen Sihombing', 'johansenn.jpg', 'saya suka bernyanyi', 'admin'),
(2, 'beatric', 'beatric123', 'Beatrics Sahcahyani Purba', 'beatricss.jpg', 'saya suka memasak', 'admin'),
(3, 'luis', 'luis123', 'Luis Christoryan Silalahi', 'luiss.jpg', 'saya suka bermusik', 'admin'),
(4, 'ilham', 'ilham123', 'Muhammad Ilham', 'ilhamm.png', 'saya suka olahraga', 'admin'),
(5, 'steven', 'steven123', 'Steven Valentino', 'stevenn.jpeg', 'saya suka belajar', 'admin'),
(6, 'windy', 'windy123', 'Windy Nabila', 'windyy.jpeg', 'saya suka traveling', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `berita`
--

CREATE TABLE `berita` (
  `id_berita` int(11) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `gambar` varchar(100) NOT NULL,
  `teks_berita` text NOT NULL,
  `tgl_posting` datetime NOT NULL,
  `id_admin` int(11) NOT NULL,
  `dilihat` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `berita`
--

INSERT INTO `berita` (`id_berita`, `judul`, `id_kategori`, `gambar`, `teks_berita`, `tgl_posting`, `id_admin`, `dilihat`) VALUES
(1, 'Simak Tips dan Trik dari Penerima Beasiswa Karya Salemba Empat!', 3, 'beasiswa karya salemba empat (berita beasiswa 1).jpg', '<p style=\"margin-left:35.45pt; margin-right:0cm; text-align:justify\"><strong><span style=\"color:#666666\">Suara USU, Medan.&nbsp;</span></strong><span style=\"color:#666666\">Yayasan Karya Salemba kembali membuka pendaftaran. Setiap tahun, ada puluhan ribu mahasiswa yang mendaftar, tetapi hanya 10% yang diterima. Terbayang bukan bagaimana sulitnya mendapat beasiswa ini? Salah seorang penerima beasiswa KSE, Andreas Sitompul membagikan tips sederhana untuk melewati berbagai tahap seleksi beasiswa ini.</span></p>\r\n\r\n<p style=\"margin-left:35.45pt; margin-right:0cm; text-align:justify\"><span style=\"color:#666666\">Karya Salemba Empat (KSE) membuka registrasi mulai awal hingga akhir April selama lima hari per gelombang. USU mendapat gelombang pada tanggal 14-19 April 2021. Untuk mendaftarnya kamu bisa mengakses link&nbsp;</span><span style=\"color:black\"><a href=\"http://www.beasiswa.or.id/\"><span style=\"color:#BB1919\">http://www.beasiswa.or.id/</span></a></span><span style=\"color:#666666\">.</span></p>\r\n\r\n<p style=\"margin-left:35.45pt; margin-right:0cm; text-align:justify\"><span style=\"color:#666666\">Andreas mengatakan bahwa pendaftar harus memastikan berkas administrasi yang lengkap, membuat essay semenarik mungkin dan dapat dipertanggungjawabkan saat wawancara nantinya. Kamu tidak perlu pusing untuk mencari judul essay, karena Yayasan Karya Salemba Empat yang akan menentukan judulnya. Saat mengikuti seleksi, Andreas mengerjakan delapan essay, seperti alasan mengapa layak diterima di beasiswa KSE ini, alasan kenapa memilih jurusan ini dan judul lain yang tertera di website pendaftaran. Jadi, dari delapan judul tadi dirangkum menjadi satu essay.</span></p>\r\n\r\n<p style=\"margin-left:35.45pt; margin-right:0cm; text-align:justify\"><span style=\"color:#666666\">&ldquo;Yang pastinya memperhatikan semua berkas administrasi, kemudian membuat essay yang menarik dan bisa juga&nbsp;<em>sharing</em>&nbsp;pengalaman dalam essay, latihan wawancara, dan yang terakhir memprediksi pertanyaan dari pihak yayasan,&rdquo; tutur mahasiswa Sosiologi itu.</span></p>\r\n\r\n<p style=\"margin-left:35.45pt; margin-right:0cm; text-align:justify\"><span style=\"color:#666666\">Menurut Andreas, bahan pertanyaan saat wawancara itu dari essay yang dibuat. Jadi, kamu harus menguasai essay yang kamu buat, agar tidak bingung untuk menjawab pertanyaannya. Dari situ kamu bisa mempelajari semua kemungkinan pertanyaan saat wawancara. Lebih baik lagi, persiapkan jawabannya dan latihan berulang-ulang. Kamu juga harus pandai mengatur bahasa tubuh maupun ekspresi karena merupakan salah satu penilaian.</span></p>\r\n\r\n<p style=\"margin-left:35.45pt; margin-right:0cm; text-align:justify\"><span style=\"color:#666666\">Andreas berharap semoga ke depannya beasiswa KSE ini dapat memperluas cakupan baik di PTN maupun PTS lain, sehingga bisa menambah kuota penerimaan beasiswa.</span></p>\r\n\r\n<p style=\"margin-left:35.45pt; margin-right:0cm; text-align:justify\"><span style=\"color:#666666\">Setiap penerima beasiswa memiliki pengalaman yang berkesan di setiap kegiatannya. Seperti itu juga yang dirasakan oleh Andreas. Menurutnya, pengalaman yang berkesan dari program beasiswa ini sangat banyak, seperti Kegiatan Bina Desa yang saat ini sedang berjalan, kegiatan Kawasan Rumah Pangan Lestari (KRPL), dan juga Bina Panti. Kamu juga akan diberi fasilitas untuk kuliah dari pihak yayasan yang bekerja sama dengan Inalum. Akan tetapi, belum semua terjun ke desa, hanya beberapa tim saja.</span></p>\r\n\r\n<p style=\"margin-left:35.45pt; margin-right:0cm; text-align:justify\"><span style=\"color:#666666\">&ldquo;Tetap semanagat dan isi berkas dan essay dengan baik dan jujur. Semangat!&rdquo; pesan Andreas untuk teman-teman yang mendaftar beasiswa KSE.</span></p>\r\n\r\n<p style=\"margin-left:35.45pt; margin-right:0cm; text-align:justify\"><strong><span style=\"color:#666666\">Redaktur: Yulia Putri Hadi</span></strong></p>\r\n\r\n<p style=\"margin-left:35.45pt; margin-right:0cm; text-align:justify\"><strong><span style=\"color:#666666\">&nbsp;</span></strong></p>\r\n', '2021-11-25 04:20:30', 1, 0),
(2, 'Sosialisasi Beasiswa LPDP: Siapkan Amunisi Terbaik', 3, 'sosialisasi beasiswa lpdp (berita beasiswa 2).jpeg', '<p style=\"margin-left:35.45pt; margin-right:0cm; text-align:justify\"><strong><span style=\"color:#666666\">Suara&nbsp;USU, MEDAN.&nbsp;</span></strong><span style=\"color:#666666\">Unit Pengembangan Pendidikan Universitas Sumatera Utara (UPP USU) menyelenggarakan sosialisasi bertajuk Mengenal Lebih Dekat Beasiswa LPDP&nbsp;pada Kamis (15/07). Webinar ini dilaksanakan melalui zoom meeting Narasumber diwebinar kali ini adalah seorang&nbsp;<em>executive secretary to president director of</em>&nbsp;LPDP, Trio Susilo.</span></p>\r\n\r\n<p style=\"margin-left:35.45pt; margin-right:0cm; text-align:justify\"><span style=\"color:#666666\">Beasiswa LPDP adalah program beasiswa yang dibiayai oleh pemerintah Indonesia melalui pemanfaatan Dana Pengembangan Pendidikan Nasional (DPPN). Dikelola oleh LPDP untuk pembiayaan studi lanjut pada program Magister atau S2 maupun program Doktoral atau S3 di Perguruan Tinggi terbaik di dalam dan di luar negeri.</span></p>\r\n\r\n<p style=\"margin-left:35.45pt; margin-right:0cm; text-align:justify\"><span style=\"color:#666666\">LPDP berdiri sejak tahun 2012 dengan tiga kor layanan utama yaitu 1)&nbsp;pengembangan dana, yang artinya menjamin keberlangsungan pendanaan pendidikan bagi generasi berikutnya melalui pengelolaan dana abadi pendidikan yang optimal, 2) beasiswa, yang artinya mempersiapkan pemimpin dan profesional masa depan indonesia melalui pembiayaan pendidikan, 3) riset, yang artinya mendorong riset strategis dan/atau inovatif yang implementatif dan menciptakan nilai tambah melalui pendanaan riset.</span></p>\r\n\r\n<p style=\"margin-left:35.45pt; margin-right:0cm; text-align:justify\"><span style=\"color:#666666\">Dalam webinar tersebut,&nbsp;Tri Susilo menjelaskan beberapa jenis beasiswa yang LPDP keluarkan yaitu Beasiswa Afirmasi, Beasiswa Targeted Group dan Beasiswa Umum. Dijelaskan juga, untuk mendukung kelancaran dan keberhasilan studi lanjut pada program magister atau S1 maupun program Doktoral atau S3 di Perguruan Tinggi tujuan, kepada penerima beasiswa diberikan dana yang meliputi beberapa komponen yaitu dana pendidikan, dana pendukung, dana tambahan khusus beasiswa pendidikan dokter spesialis, dan dana tambahan khusus beasiswa penyandang disabilitas.</span></p>\r\n\r\n<p style=\"margin-left:35.45pt; margin-right:0cm; text-align:justify\"><span style=\"color:#666666\">Tri Susilo menjawab salah satu pertanyaan dari peserta mengenai syarat mengambil beasiswa doktoral dari dalam negeri.</span></p>\r\n\r\n<p style=\"margin-left:35.45pt; margin-right:0cm; text-align:justify\"><span style=\"color:#666666\">&ldquo;Bisa disesuaikan jalurnya apa, apakah afirmasi, targeted atau reguler bisa dilihat di website LPDP. Yang harus disiapkan adalah kesiapan administrasi sama yakin apa yang mau diambil. Apakah harus mendaftar telebih dahulu ke universitas nya, tidak harus. Boleh daftar LPDP dulu baru daftar universitas atau dapar LOA dulu baru daftar universitas,&ldquo; jelasnya.</span></p>\r\n\r\n<p style=\"margin-left:35.45pt; margin-right:0cm; text-align:justify\"><span style=\"color:#666666\">Tri Susilo juga memberikan wejangan kepada teman-teman yang melamar beasiswa LPDP ini.</span></p>\r\n\r\n<p style=\"margin-left:35.45pt; margin-right:0cm; text-align:justify\"><span style=\"color:#666666\">&ldquo;Teman-teman jangan pernah meminta&nbsp;<em>excuses</em>&nbsp;untuk syarat-syarat yang memang sudah jelas abcd nya seperti apa&nbsp;<em>whats is kind white or black</em>&nbsp;ya. Siapkan dengan baik tidak perlu buru-buru ya, dilengkapi dengan baik. Kalau sudah melengkapi dengan baik persyaratan administrasi,&nbsp;<em>i do belive&nbsp;</em>kamu punya amunisi yang cukup untuk&nbsp;<em>the next step</em>,&nbsp;<em>when you have the ammunition i</em>ntinya. The perfect one gitu amunisi yang&nbsp;bagus dan lengkap, teman-teman bisa masuk ke tahapan selanjutnya.&rdquo;</span></p>\r\n\r\n<p style=\"margin-left:35.45pt; margin-right:0cm; text-align:justify\"><span style=\"color:#666666\">Mengenai persyaratan maupun penjelasan yang lebih detail, kamu bisa kunjungi web LPDP yaitu&nbsp;</span><span style=\"color:black\"><a href=\"http://www.lpdp.kemenkeu.go.id/\"><span style=\"color:#BB1919\">www.lpdp.kemenkeu.go.id</span></a></span><span style=\"color:#666666\">&nbsp;. Untuk teman-teman yang ingin menonton ulang webinar pada hari ini, kamu bisa menonton di Youtube UPP USU!</span></p>\r\n\r\n<p style=\"margin-left:35.45pt; margin-right:0cm; text-align:justify\"><strong><span style=\"color:#666666\">Redaktur: Yulia Putri Hadi</span></strong></p>\r\n', '2021-11-25 04:22:07', 1, 0),
(3, 'Beasiswa PSBB 2021 Sedang Membuka Pendaftaran Angkatan Ketiga, Buruan Cek Ketentuannya!', 3, 'beasiswa psbb 2021 (berita beasiswa 3)jpg.jpg', '<p style=\"margin-left:35.45pt\"><strong>Suara USU, MEDAN</strong>. Beasiswa Pemuda Semangat Bantu Bangsa (PSBB) sedang membuka pendaftaran angkatan ketiga sampai dengan 15 November 2021. Beasiswa PSBB ini merupakan bagian dari semangat bantu serta beasiswa ini juga sering mengadakan kegiatan bersedekah.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">Adapun beberapa syarat umum dari beasiswa ini sebagai berikut:</p>\r\n\r\n<ol>\r\n	<li>Mahasiswa muslim.</li>\r\n	<li>Maksimal berumur 21 tahun.</li>\r\n	<li>Mahasiswa aktif minimal semester 3 dengan IPK minimal 3.00.</li>\r\n	<li>Dapat membaca Al-quran dengan lancar, tidak merokok, tidak berpacaran, dan belum menikah.</li>\r\n	<li>Tidak sedang menerima beasiswa sejenis.</li>\r\n	<li>Aktif dalam kegiatan kampus dan sosial.</li>\r\n	<li>Memiliki dan aktif di akun media sosial.</li>\r\n	<li>Memiliki salah satu kemampuan: menulis, nge-vlog, desain, fotografi, dan videografi.</li>\r\n	<li>Bersedia aktif secara rutin setiap pekan untuk program sosial.</li>\r\n	<li>Bersedia mengikuti segala rangkaian program selama satu tahun.</li>\r\n</ol>\r\n\r\n<p style=\"margin-left:35.45pt\">Dava Warsyahdana selaku koordinator PSBB 2021/2021 mengatakan bahwa ketika mendaftar beasiswa PSBB ada beberpa berkas yang perlu dipersiapkan, diantaranya mengisi form pendaftaran, scan KTP/KTM, foto 4&times;3 (dalam bentuk JPG/PNG), scan KK, scan transkrip nilai, CV terbaru, surat keterangan aktif dalam organisasi, scan sertifikat prestasi, dan&nbsp;<em>screenshoot broadcast</em>&nbsp;informasi pendaftaran kelima grup Whatsapp.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">Mahasiswa Fakultas Pertanian ini juga mengatakan alasan utamanya tertarik mengikuti beasiswa ini karena pada dasarnya beasiswa PSBB mengajarkan untuk senantiasa bisa bermanfaat bukan hanya untuk diri sendiri, tetapi orang banyak khususnya orang yang membutuhkan. Dava juga menambahkan, selain bisa bermanfaat untuk sesama, banyak sekali pembelajaran yang ia dapatkan.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">Dalam program Beasiswa PSBB, setiap bulannya mengadakan gerak terjun langsung ke masyarakat untuk memberikan paket nutrisi dan sembako ke masyarakat yang membutuhkan, seperti para pejuang nafkah di pagi hari, orang yang kurang dalam finansial (miskin), orang yang terkena musibah atau bencana alam pada suatu daerah (banjir, longsor, gempa dll). Program rutin Beasiswa PSBB ini adalah kegiatan mentoring yang diadakan setiap pekan. Kegiatan mentoring ini seperti pembentukan karakter baik itu&nbsp;<em>softskill</em>&nbsp;maupun&nbsp;<em>hardskill</em>&nbsp;kita.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">&ldquo;Hampir semua kegiatan PSBB sangat berkesan, karena saya melihat senyuman mereka yang sangat tulus dan ikhlas ketika kita memberikan rezeki kepada yang membutuhkan,&rdquo; ungkapnya.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">Selain memiliki program kerja yang sangat menguntung kan untuk sesama, Beasiswa PSBB juga memberi keuntungan pada para penerimanya, seperti relasi nasional, memiliki mentor nasional dan internasional, mendapatkan pelatihan peningkatan kapasitas diri, berperan aktif melaksanakan program sosial, mendapat uang binaan pribadi Rp.400.000/bulan, dan banyak keuntungan lainnya.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">Koordinator Nasional PSBB ini berpesan untuk mahasiswa yang tertarik mendaftar Beasiswa PSBB, &ldquo;Semoga tetap semangat mengikuti tahap seleksinya, harus optimis bahwa kalianlah yang terbaik, jika belum bergabung dengan PSBB, masih banyak wadah untuk terus belajar dan senantiasa memberikan kebermanfaatan kepada banyak orang,&rdquo; ujarnya.</p>\r\n\r\n<p style=\"margin-left:35.45pt\"><strong>Redaktur: Wiranto Asruri Siregar</strong></p>\r\n', '2021-11-25 04:22:58', 6, 0),
(4, 'SEMBEA 2021 Kembali Digelar, Gudang Informasi Seputar Beasiswa', 3, 'SEMBEA 2021 (berita beasiswa 4).png', '<p style=\"margin-left:35.45pt\"><strong>Suara USU, MEDAN</strong>. SEMBEA (Seminar Beasiswa) 2021 kembali digelar untuk menyampaikan berbagai informasi mengenai beasiswa secara online melalui media Zoom Meeting, Sabtu (6/11/2021). SEMBEA kali ini mengangkat tema&nbsp;<em>&ldquo;Achieving Your Dream by Challenging Yourself with Scholarship&rdquo;.</em></p>\r\n\r\n<p style=\"margin-left:35.45pt\">Acara yang diadakan oleh UKMI As-Siyasah FISIP USU ini dihadiri oleh berbagai pemateri yang pernah menerima beasiswa, seperti Fadhillah Arafah dari Beasiswa Unggulan Kemendikbud, Miranda Lufti Nasution dari Beasiswa Tanoto Foundation, Kustiningsih Dwi dari Beasiswa Bank Indonesia, dan Muhammad Fachri Pradana dari Beasiswa Rumah Kepemimpinan.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">Acara dibuka dengan&nbsp;<em>opening ceremony,&nbsp;</em>kemudian dilanjutkan dengan kata sambutan Ketua UKMI As-Siyasah FISIP USU serta Ketua Pelaksana SEMBEA 2021. Setelah itu, acara dilanjutkan dengan pemaran berbagai materi yang menarik serta tips-tips untuk mendapatkan beasiswa. Sesi berlangsung sebanyak 4 kali. Setiap sesinya akan disuguhkan mengenai motivasi serta ilmu oleh para pemateri.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">Azhar Riadi sebagai ketua pelaksana SEMBEA 2021 mengungkapkan bahwa dengan memilih keempat pemateri berbeda dan telah pernah menerima beasiswa maka acara ini akan lebih menarik. Beasiswa yang dibahas juga sangat dikenal di lingkungan mahasiswa, &ldquo;Kenapa memilih keempat beasiswa tersebut untuk SEMBEA tahun ini, karena keempat beasiswa tersebut yang banyak diketahui oleh para mahasiswa dan terkenal dikalangan mahasiswa serta merupakan beasiswa yang bergengsi. Nah, dengan begitu dapat menarik para mahasiswa untuk mengetahui bagaimana sih cara supaya bisa dapat beasiswa tersebut.&rdquo;</p>\r\n\r\n<p style=\"margin-left:35.45pt\">Bukan hanya sekedar materi yang disampaikan dalam acara tersebut, tetapi di sela-sela sesi diadakan&nbsp;<em>ice breaking</em>&nbsp;untuk para peserta agar peserta bisa tetap fokus sekaligus rileks dalam mengikuti materi di setiap sesinya.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">Miranda Lufti Nasution salah satu pemateri berpesan kepada semua peserta agar tidak menjadi mahasiswa kupu-kupu. Tetapi, harus memiliki&nbsp;<em>planning</em>&nbsp;di setiap tahunnya untuk memotivasi diri sendiri dengan begitu mimpi-mimpi yang ingin dicapai dapat tercapai dan terealisasikan.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">Azhar berharap SEMBEA ini akan terus terlaksana kedepannya dalam memberikan informasi seputar beasiswa, &ldquo;Harapan saya yah, semoga SEMBEA tahun kedepannya tetap terlaksana sampai tiada akhirnya, agar bisa terus memberikan informasi seputar beasiswa lainnya dan menjadi bekal bagi para peserta yang ikut untuk menggapai cita-citanya,&rdquo; ungkapnya.</p>\r\n\r\n<p style=\"margin-left:35.45pt\"><strong>Redaktur: Wiranto Asruri Siregar</strong></p>\r\n', '2021-11-25 04:24:02', 2, 1),
(5, 'Rektor: USU Janjikan Beasiswa S2 dan Jadi Dosen bagi Mahasiswa yang Juara di PIMNAS', 3, 'rektor usu janjikan beasiswa (berita beasiswa 5).jpg', '<p style=\"margin-left:35.45pt\"><strong>Suara USU, MEDAN</strong>. Rektor USU, Muryanto Amin janjikan beasiswa S2 untuk mahasiswa USU yang nantinya meraih juara di ajang PIMNAS ke-34. Hal ini diungkapkan dalam kegiatan Konferensi Pers yang diselenggarakan di Gedung Biro Rektorat Universitas Sumatera Utara, Kamis (16/9/2021).</p>\r\n\r\n<p style=\"margin-left:35.45pt\">&ldquo;Harus ada harapan untuk semua orang, kalau ada yang juara, pasti kita berikan apresiasi. Untuk dia lanjutkan S2 nya dan untuk dia jadi dosen,&rdquo; ungkap pria yang akrab disapa Mury ini.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">Rektor juga menjelaskan bahwasanya, ini merupakan terobosan baru yang sedang dicoba USU dalam mengapresiasi mahasiswa S1 atau sarjana yang memiliki prestasi luar biasa selama aktif berkuliah.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">&ldquo;Ini bisa dicatat ya, kalau ada yang nanti mahasiswa USU yang bisa juara, kita janjikan dia beasiswa, tapi dengan perjanjian dia menjadi dosen. Karena kita ada program yang memberikan beasiswa S2 kepada mahasiswa yang luar biasa prestasinya dan kita langsung dia kontrakan untuk perjanjian dosen setelah dia tamat S2,&rdquo; terangnya di depan pers.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">Mury berharap 36 karya perwakilan USU bisa menang dan memberikan hasil positif untuk membawa nama baik USU di level nasional.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">&ldquo;Mudah-mudahan yang 36 ini menang semua, tapi ini beregu dan juga berkelompok. Mudah-mudahan ini bisa mendapatkan piala semua. Sehingga membawa nama baik kita di nasional,&rdquo; pungkasnya.</p>\r\n\r\n<p style=\"margin-left:35.45pt\"><strong>Redaktur: Wiranto Asruri Siregar</strong></p>\r\n', '2021-11-25 04:25:00', 3, 17),
(6, 'Raih Prestasi dengan Game, E-Sport USU Vine Juara 3 GAYATAMA ke-2', 1, 'e-sport vine juara 3 gayatama (berita prestasi 1).jpeg', '<p style=\"margin-left:35.45pt\"><strong>Suara USU, Medan</strong>. Mengharumkan nama besar Universitas Sumatera Utara, tim E-Sport USU Vine berhasil mendapatkan juara 3 PUBG dalam turnamen GAYATAMA yang diselenggarakan oleh UNESA. Terdapat 5 mahasiswa dalam tim USU Vine yakni, Iqbal (AET stambuk 20), Fauzi (Antropologi stambuk 19), Benjie (Akuntansi stambuk 18), Kevin (Pariwisata stambuk 19), dan Paul (MSP stambuk 20).</p>\r\n\r\n<p style=\"margin-left:35.45pt\">Gelar Karya dan Prestasi Mahasiswa (GAYATAMA) ke-2 merupakan agenda rutin yang diselenggarakan oleh Bidang Kemahasiswaan dan Alumni, Universitas Negeri Surabaya (UNESA). GAYATAMA ini ialah kegiatan tingkat nasional&nbsp;dan bertujuan untuk memberikan wadah kepada mahasiswa di seluruh Indonesia&nbsp;untuksemangat berkarya dan berpretasi di bidang akademis, seni, maupun olahraga dengan mengedepankan dan menjunjung tinggi sikap sportifitas dalam pengembangan diri secara optimal.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">Saat diwawancarai oleh Kru Suara USU pada Sabtu (06/11).Salah satu anggota tim USU Vine, Iqbal, mengaku bahwa ego dan strategi merupakan salah satu rintangan mereka dalam lomba ini.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">&ldquo;Ego antar&nbsp;<em>player</em>&nbsp;harus disatuin, kemudian&nbsp;<em>gameplay</em>&nbsp;kampus lain yang berbeda-beda dan baru pertama kali bertanding melawan kampus lain, mau ga mau dari strategi harus berdaptasi dengan&nbsp;<em>gameplay&nbsp;</em>kampus lain. Untuk rintangannya nya ya itu, ego masing-masing&nbsp;<em>player</em>&nbsp;harus saling mengalah, saling mengerti supaya&nbsp;<em>chemistry&nbsp;</em>nya bisa menyatu,&rdquo; jelas Iqbal.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">Manager USU Vine Hulwa Sefianggi&nbsp;menceritakan&nbsp;panjangnya proses dan perjuangan mereka di turnamen UNESA ini, mulai dari perdebatan antar pemain, latihan dan evaluasi. &ldquo;Mereka berlima ini punya sifat yang berbeda-beda tapi Alhamdulillah bisa bersatu dalam satu tim berkat&nbsp;<em>chemistry</em>&nbsp;dan juga cita-cita yang sama,&rdquo; ucapnya.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">Banyak harapan yang disampaikan oleh Hulwa sebagai manager untuk tim USU Vine agar semangat dalam mengejar serta mengukir prestasi di bidang E-Sport ini.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">&ldquo;Harapannya semoga USU Vine bisa membawa nama USU lebih sering lagi, kalo bisa sampai ke tahap&nbsp;<em>Internasional</em>,&rdquo; tutupnya.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">Stigma negatif memang selama ini masih melekat pada game karena masyarakat hanya mengetahui game itu &nbsp;sebagai suatu permainan yang menghabiskan waktu dan tidak bermanfaat, padahal game bisa menghasilkan prestasi seperti halnya tim USU Vine ini. Mengingat perkembangan zaman dan teknologi yang terus meningkat,&nbsp;membuat E-Sport selalu ada dalam setiap perlombaaan resmi.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">Dalam waktu dekat ini USU Vine akan bertanding kembali di Turnamen Nasional PUBG Mobile Campus Championship (PMCC) dan akan di ikuti oleh seluruh Universitas di Indonesia.</p>\r\n\r\n<p style=\"margin-left:35.45pt\"><strong>Redaktur: Yulia Putri Had</strong>i</p>\r\n', '2021-11-25 04:25:42', 2, 0),
(7, 'Tiga Mahasiswa USU Berhasil Torehkan Prestasi Pada Ajang Duta Bahasa Sumatera Utara 2021', 1, 'prestasi ajang duta bahasa (berita prestasi 2).jpeg', '<p style=\"margin-left:35.45pt\"><strong>Suara USU, Medan.&nbsp;</strong>Genap seminggu lebih satu hari, acara puncak pemilihan Duta Bahasa Sumatera Utara 2021 telah resmi berlalu. Acara puncak tersebut digelar pada 30 Mei 2021 lalu oleh Balai Bahasa Sumatera Utara di hotel Emerald Garden, Medan. Tidak disangka, diantara para finalis yang berkompetisi terdapat tiga mahasiswa Universtitas Sumatera Utara berhasil meraih gelar juara. Mereka adalah Ananda Rizqullah sebagai Duta Bahasa Utama (Mahasiswa Arsitektur USU 2020), Shevilla Mayori sebagai Wakil I Duta Bahasa (Mahasiswi Ilmu Komunikasi 2019), dan Haisyah Hani sebagai Duta Bahasa Favorit (Mahasiswi Biologi 2018).</p>\r\n\r\n<p style=\"margin-left:35.45pt\">Pemilihan Duta Bahasa Provinsi Sumatera Utara merupakan ajang tahunan yang rutin dilaksanakan. Para duta yang terpilih diseleksi berdasarkan kegiatan saat karantina dan kemampuan berbahasa, baik bahasa Indonesia yang diukur menggunakan Uji Kemahiran Berbahasa Indonesia (UKBI), kemampuan berbahasa daerah, maupun kemampuan berbahasa asing. Setiap tahun, Sumatera Utara menyumbang peserta untuk melaju ke ajang Duta Bahasa Nasional, yakni pemenang I dengan predikat Duta Utama, yang pada tahun ini jatuh kepada Ananda Rizqullah, seorang mahasiswa di Universitas Sumatera Utara</p>\r\n\r\n<p style=\"margin-left:35.45pt\">Mengikuti ajang Nasional merupakan kebanggaan yang luar biasa bagi setiap orang, tidak terkecuali bagi Ananda Rizqullah. Hal ini diperkuat oleh pernyataan Ananda seusai acara puncak dilaksanakan. Ia mengungkapkan merupakan sebuah kehormatan menjadi peraih duta bahasa utama.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">&ldquo;Ini adalah suatu kehormatan bagi Saya untuk bisa membawa nama Sumatera Utara di tingkat Nasional. Ini bukan amanah berat tapi besar, karena kalau berat itu soal rasa dan cara pandang. Namun kalau besar berarti ada ukurannya. Saya yakin dengan dukungan orang-orang terdekat saya, seperti Tresia sebagai pasangan dan 18 teman teman dubas 2021, balai bahasa, doa keluarga dan teman-teman semua yang mengetahui ini, Insya Allah amanah ini akan tuntas dikerjakan,&rdquo; ucapnya</p>\r\n\r\n<p style=\"margin-left:35.45pt\">Hal yang sama juga dilontarkan oleh Shevilla Mayori, Wakil I Duta Bahasa Sumatera Utara 2021 dari jurusan Ilmu Komunikasi USU. Baginya, mengikuti ajang Duta Bahasa telah adalah bagian dari pengalaman yang luar biasa. Pembekalan yang diberikan sangat bermanfaat, apalagi materi kebahasaan sesuai dengan jurusannya, Ilmu Komunikasi.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">&ldquo;Biarpun tidak menjadi Duta Utama, saya bangga dan bersyukur atas pencapaian ini. Saya sangat senang bisa melihat Ananda maju sebagai perwakilan dari Sumatera Utara. Kami disini akan terus menyokong keberhasilan mereka dan menjalankan amanah untuk menyosialisasikan bahasa yang baik dan benar di Sumatera Utara,&rdquo; papar Shevilla.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">Dan tidak ketinggalan, ada satu lagi mahasiswi USU yang meraih gelar juara Duta Bahasa Favorit Sumut 2021 yaitu Haisyah Hani. Ia mengaku sangat bangga dan bersyukur mendapatkan gelar baru sebagai Duta favorit. Hani juga berharap gelarnya bukan hanya sekedar julukan tetapi dapat memberikan manfaat bagi banyak orang.</p>\r\n\r\n<p style=\"margin-left:35.45pt\"><strong>Redaktur: Muhammad Fadhlan Amri</strong></p>\r\n', '2021-11-25 04:26:25', 1, 1),
(8, 'FASILKOM-TI Kukuhkan Khairul Imam Jadi Mahasiswa Berprestasi Utama di Kontestasi PILMAPRES', 1, 'fasilkom-ti kukuhkan mapres (berita prestasi 3).jpeg', '<p style=\"margin-left:35.45pt\">Pilmapres atau Pemilihan Mahasiswa Berprestasi adalah kontestasi tahunan untuk menyaring mahasiswa-mahasiswa terbaik USU setiap tahunnya. Nantinya usai digelar di fakultas, akan segera dilanjutkan ke level USU, dan nasional. Beberapa waktu lalu Pilmapres Fakultas sudah mulai digelar dan mengukuhkan beberapa nama sebagai juara.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">Di FASILKOM-TI contohnya,&nbsp; pada (02/03) Khairul Imam dari Ilmu Komputer 2019 mampu keluar sebagai MAWAPRES (Mahasiswa) Utama Fakultas yang terletak di pintu 1 USU ini. Kepada Suara USU, Imam menjelaskan bahwa proses dan persiapannya menjadi MAWAPRES telah dipersiapkannya dari jauh-jauh hari.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">&ldquo;Persiapan saya itu sudah sejak tahun lalu. Ada namanya tahun lalu itu Sekolah MAWAPRES, dari PEMA Fakultas, dan disitulah nampaklah konsepnya itu bagaimana yang dilakukan untuk ikut seleksi MAWAPRES, jadi dari Sekolah Mawapres saya ada rencana kedepannya bagaimana,&rdquo; ungkapnya pada Suara USU.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">Imam juga menjelaskan bahwa mahasiswa ini aktif di beberapa organisasi selama persiapan sebelum menjadi MAWAPRES Utama FASILKOM-TI.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">&ldquo;Jadi sudah ikut beberapa organisasi sejak dari tahun lalu, saat ini saya ikut aktif di 5 (lima) organisasi dari komunitas, untuk melatih saya berbicara, sempat juga menjadi&nbsp;<em>speaker&nbsp;</em>di&nbsp;<em>Webinar&nbsp;</em>kemarin, jadi&nbsp;<em>feeling,&nbsp;</em>untuk memulai organisasi itu sudah ada,&rdquo; tuturnya.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">&ldquo;Juga ikut duta Green Campus yang diangkat Universitas, dan itu dihitung di Pilmapres, jadi poin. Saya juga jadi asisten lab di ilmu komputer, di jurusan. Saya juga merupakan anggota UKMI bidang akademi dan kompetensi. Kegiatan kemasyarakatan juga sebagai bendahara umum di remaja mesjid, sebelumnya ketua umum,&rdquo; ungkap Imam,</p>\r\n\r\n<p style=\"margin-left:35.45pt\">Imam juga menjelaskan bahwa ada beberapa perbedaan di Pilmapres kali ini.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">&ldquo;Tahun lalu masih&nbsp;<em>offline,&nbsp;</em>tatap muka jadi penjuriannya di fakultas kemarin. Tahun ini secara&nbsp;<em>online</em>. Bedanya sangat terasa. Kalo&nbsp;<em>offline</em>&nbsp;penilaiannya banyak, dari&nbsp;<em>gesture&nbsp;</em>karena langsung terlihat. Kita sebagai peserta juga merasakan perbedaannya, ada kawan-kawan yang mendukung, lebih meriah&nbsp;<em>lah</em>&nbsp;bisa dibilang. Di&nbsp;<em>online&nbsp;</em>&nbsp;yang terlihat hanya kepala dan bahu, namun kita harus mampu membuat itu terlihat lebih interaktif,&rdquo; ucapnya.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">Imam menjelaskan bahwa ada 5 kriteria untuk menjadi MAWAPRES. Yaitu kepemimpinan, berpikir untuk maju, percaya diri, mengambil kesempatan dan inovatif.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">&ldquo;Aku rangkum ada 5 ya, yang pertama itu kepemimpinan, bisa dari organsiasi, baik menjadi ketua umum maupun staf, yang kedua itu berpikir untuk maju. Kita selama ini kuliah nanti mau ngapain aja, dan di Sekolah MAWAPRES ini saya dapet gambarannya jadi tahu apa yang mau dikerjakan, kemudian percaya diri, harus percaya diri dulu kalo ga, ya ga akan maju.&rdquo;</p>\r\n\r\n<p style=\"margin-left:35.45pt\">Keempat mengambil kesempatan, sangat banyak peluang yang tersebar selama pandemi, yaitu semua&nbsp;<em>webinar</em>, semua pelatihan, lomba-lomba itu berserakan di&nbsp;<em>instagram,&nbsp;</em>dan media sosial. Kemudian tiap tahun harus diambil dan kita coba terus, jadi kesalahan yang lalu kita perbaiki. Dan yang kelima inovatif, untuk kita mengerjakan&nbsp; KTI kita yang bermanfaat dan realistis untuk dikerjakan.&rdquo;</p>\r\n\r\n<p style=\"margin-left:35.45pt\">Terkait poin-poin dalam penilaian selama seleksi MAWAPRES, menurut Imam adalah prestasi dan organisasi menjadi kunci utama dan poin penting.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">&ldquo;Juara poster nasional Fakultas Psikologi USU, duta Green Campus, dan yang ketiga adalah IPK. IPK ini cukup baik lah Alhamdulillah. Semua pengalaman tadi itu karena berkat dukungan dari organisasi dan komunitas yang aku jalani selama ini, orang-orang yang mendukung aku, mewujudkan ide itu tadi.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">Kepada Suara USU Imam mengungkapkan bahwa beliau belum mengetahui pasti kapan Pilmapres USU terselenggara, namun menurutnya, universitas masih menunggu nama-nama dari fakultas.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">&ldquo;Belum ada, ini mungkin universitas masih nunggu nama-nama dari fakultas,&rdquo; jelasnya.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">Kepada para mahasiswa baru, Imam juga membagikan beberapa tips terkait bagaimana menjadi mahasiswa berprestasi.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">&ldquo;Nah untuk mahasiswa baru aku ada 5 poin yang harus kalian lakukan untuk jadi MAWAPRES. Yang pertama ikut organisasi atau komunitas, mulai dari jurusan kemudian nasional ataupun internasional. Yang kedua mengikuti lomba, dari yang kecil hingga ke internasional. Coba mulai lomba, mulai dari yang kecil-kecil dulu. Yang ketiga berada di lingkungan yang maju, jangan hanya begibah sana-sini atau nongki-nongki.&rdquo;</p>\r\n\r\n<p style=\"margin-left:35.45pt\">&ldquo;Keempat, jangan hanya terlena dengan hiburan.&nbsp;<em>Games&nbsp;</em>sana-sini, nongki sana-sini, padahal banyak waktu untuk kegiatan positif, organisasi itu bagus itu, hiburan boleh sesekali. Yang terakhir jangan lupa beribadah, ingat bahwa segala kesuksesan itu berkat dari Allah SWT, jangan sempat MAWAPRES ini menjadi sebuah kesombongan yang dibawa-bawa dan menyepelekan orang lain,&rdquo; tutup Imam di akhir wawancara.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">Penyunting: Yulia Putri Hadi</p>\r\n', '2021-11-25 04:27:08', 2, 0),
(9, 'Angkat Isu Solar Sel, Tim Gantari USU Rengkuh Juara III di Kompetisi LKTIN Unsyiah', 1, 'tim gantari usu juara 3 lktin (berita prestasi 4).jpeg', '<p style=\"margin-left:35.45pt\"><strong>Suara USU, MEDAN.&nbsp;</strong>Lomba Karya Tulis Ilmiah Nasional (LKTIN) yang diadakan oleh Himpunan Mahasiswa Teknik Kimia Universitas Syiah Kuala bertema &ldquo;Enhancing of Youth Innovation to Face the Modernization of Science and Technology&rdquo; membawa berkah bagi tim Gantari Teknik Kimia Universitas Sumatera Utara.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">Pasalnya dalam lomba ini mereka menyandang gelar juara III. Tim yang beranggotakan 3 orang ini, diantaranya yaitu Aravi Zalsa Ramadhan (Teknik Kimia 2020), Muhammad Rafli Derriansyah (Teknik Kimia 2019), dan Viqry Pramananda (Teknik Kimia 2017). Dan dosen pembimbing yaitu Ir. Erni Misran, S.T., M.T., Ph.D. Mengangkat subtema&nbsp;<em>Renewable Energy</em>&nbsp;dengan Judul paper &ldquo;Sintesis Karbon Aktif Pelepah Kelapa Sawit Sebagai Material Counter Electrode Platina Pada Pembuatan Dye Sensitized Solar Cell&rdquo;.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">Melalui tahapan yang panjang yaitu: pendaftaran, seleksi abstrak, seleksi full paper, hingga sampai final tim Gantari menjelaskan proses yang panjang ini merupakan buah dari hasil perjuangan penelitian selama ini, dari tanggal 20 Agustus 2021-7 November 2021.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">Selama penelitian berlangsung, menurut Viqry kendala yang dihadapi tim tidak terlalu berat, terlebih dengan hadirnya dukungan dari elemen dekanat, dosen dan beberapa fasilitas pendukung lainnya.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">&ldquo;Departemen Teknik Kimia mendukung penuh dalam rangka penelitian lomba seperti ini. Mulai dari dosen pembimbing, WD 1, serta kajur juga memberikan semangat. Fasilitas seperti lab pun juga terbuka luang mendukung setiap proses penelitian,&rdquo; ungkap Viqry.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">Ungkapan Viqry juga selaras dengan Rafli, mahasiswa berprestasi I FT USU. Rafli menambahkan bahwa yang paling menyulitkan di gelaran kali ini adalah proses pembuatan DSSC.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">&ldquo;Untuk duka nya, mungkin karena harus berjuang dengan bolak-balik ke lab sewaktu pembuatan DSSC,&rdquo; tambah Rafli.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">Aravi yang merupakan stambuk termuda di tim mengungkapkan bahwa kendala yang paling besar ia temui ada di domisilinya yang jauh dari kampus dan harus beberapa kali menempuh perjalanan jauh.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">&ldquo;Untuk kendala dari saya yaitu karena saya sedang tidak di Medan dan harus beberapa kali pulang balik ke Medan,&rdquo; ucap mahasiswa yang berdomisili di Kisaran ini.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">Berbekal semangat yang tinggi dan ide yang inovatif, tim Gantari pun memberikan secerca tips dan trik dalam mengikuti LKTI. Rafli memberikan tips bahwa dalam mengikuti lomba LKTI, pemilik ide pun harus kritis dalam mencari celah karyanya.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">&ldquo;Mahasiswa yang ingin mengikuti LKTI wajib kritis terhadap karya sendiri, mengalisa celah kekurangan ide, serta mempertanyakan kekuatan ide sendiri. Sumber pustaka yang digunakan usahakan selengkap dan sebaru mungkin. Dan terakhir, latihan presentasi se-intens mungkin dengan tim, karena jikalaupun ide nya bagus tapi pada saat presentasi nya tidak baik ,aksud dan tujuan ide nya tidak akan tersampaikan pada juri,&rdquo; papar Rafli.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">Aravi sendiri, menyampaikan bahwa ini adalah kali pertama dia mengikuti LKTI. Menurutnya, yang paling penting dalam LKTI adalah pengujian langsung dan studi literatur.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">&ldquo;Nah tips dari saya di&nbsp;<em>paper</em>&nbsp;nya sendiri kita nentuin itu dia pengujian langsung atau hanya studi literatur jadi saat presentasi itu kita tidak kebingungan jika ada pertanyaan seperti itu. Terus melakukan pengujian, tidak spek data karena akan berakibat fatal dan itu menjadi penilaian yang signifikan dari jurinya,&rdquo; terangnya.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">Viqry pun sepakat dengan Aravi. Menurutnya ada beberapa tambahan tips dalam mengikuti LKTI. Mulai dari menghasilkan Karya Tulis Ilmiah yang berbasis penelitian, kerja sama tim, hingga menggali potensi lokal yang ada di daerah kita sendiri.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">&ldquo;Nah ada beberapa hal yang perlu dicatat bagi teman teman yang mau ikutan LKTI. Pertama, selalu hasilkan KTI berbebasis penelitian (ada data primer yang diperoleh sendiri, bukan sekedar studi literatur). Ini untuk membantu mengasah&nbsp;<em>research skill</em>&nbsp;kita dan membuktikan apakah gagasan di KTI kita emang bisa dibuktikan apa engga. Kedua, kerja sama tim. Disini kita harus percaya sama kemampuan tim kita. Meskipun mungkin posisinya kita sebagai senior, bukan berarti kita tau semua. Bisa saja ada anggota tim yang lebih muda dari kita tapi punya pengetahuan/skill yang juga mumpuni. Jadi harus kolaboratif. Ketiga, usahakan untuk menggali potensi lokal daerah kita. Contohnya dalam penelitian ini kami pakai pelepah kelapa sawit yang notabene nya adalah potensi lokal Sumatera Utara,&rdquo; sambung Viqry.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">Rafli menutup dengan menyampaikan pesannya pada seluruh mahasiswa Universitas Sumatera Utara. Dimana lomba-lomba ilimiah ini yang mampu memaksimalkan potensi diri dan berkontribusi untuk bangsa dan tanah air.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">&ldquo;Lomba-lomba ilmiah seperti LKTI ini merupakan peluang untuk kita dapat memaksimalkan potensi diri dan juga berkontribusi terhadap bangsa. Harapannya ide-ide yang di gagaskan menjadi KTI terus diperjuangkan agar dapat di implementasikan. Tidak hanya berhenti menjadi KTI. Setiap mahasiswa memiliki kemampuan untuk berpikir kritis, lomba-lomba keilmiahan seperti inilah yang menjadi wadah untuk menyalurkannya,&rdquo; papar Rafli</p>\r\n\r\n<p style=\"margin-left:35.45pt\">Viqry juga menambahkan bahwa mahasiswa USU tak boleh berkecil hati apalagi minder. Viqry juga mengingatkan kepada mahasiswa USU agar selektif dalam mengikuti perlombaan karena diluar sana ada banyak ajang perlombaan predator yang hanya menginginkan uang.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">&ldquo;Tetap semangat untuk semua mahasiswa USU. Jangan minder dengan kampus-kampus lain karena sudah banyak bukti kalau kita bisa sejajar dengan mereka. Tetap selektif memilih ajang perlombaan, jangan sembarang ikutan karena banyak&nbsp;<em>event predator</em>&nbsp;dengan embel-embel internasional di luar sana yang tidak memberikan esensi penelitian ke kita,&rdquo; pungkasnya.</p>\r\n\r\n<p style=\"margin-left:35.45pt\"><strong>Redaktur: Muhammad Fadhlan Amri</strong></p>\r\n', '2021-11-25 04:27:52', 2, 0),
(10, 'Keren! Ahmad Maulana Berhasil Menjadi Juara 1 Lomba Poster Ilmiah pada Online National IYSA Sumatera', 1, 'juara 1 lomba poster ilmiah (berita prestasi 5).jpg', '<p style=\"margin-left:35.45pt\"><strong>Suara USU, MEDAN</strong>. Kabar baik datang dari Ahmad Maulana Surbakti, mahasiswa USU stambuk 2019 yang belum lama ini mendapatkan juara 1 pada kategori lomba poster ilmiah di Online National IYSA Sumatera Competition (ONIC) 2021. ONIC 2021 merupakan suatu kompetisi ilmiah yang diadakan oleh organisasi Indonesia Young Scientist Association (IYSA) regional Sumatera pada 24 Juli s.d 31 Agustus 2021. Kompetisi ini dapat diikuti oleh pelajar dengan rentang usia 15-25 tahun.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">Terdapat 3 kategori lomba pada ONIC 2021 ini, yaitu poster ilmiah, karya tulis ilmiah, dan esai. Ahmad sendiri hanya mengikuti satu kategori lomba, yaitu poster ilmiah. Ia juga tergabung dalam komunitas yang bergerak di bidang prestasi, pembinaan, dan pengabdian. Di dalam komunitas tersebut, para anggota saling mengikuti kompetisi yang berbeda dan juga berhasil mendapat juara 1. Komunitas tersebut menjadi wadah bagi Ahmad dalam mengikuti lomba ini.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">Ahmad mendapatkan pengalaman yang berkesan selama mengikuti lomba ONIC 2021. Mengingat lomba poster ilmiah merupakan yang pertama kali untuknya, ia bisa mendapat wawasan lebih mengenai bagaimana pembuatan poster ilmiah dan kriterianya.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">Ahmad memaparkan manfaat positif yang ia dapatkan setelah mengikuti lomba ini, salah satunya menambah wawasan dan mengasah kemampuan desainnya.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">&ldquo;Manfaat yang pertama, saya jadi punya pengalaman yang berarti selain dari bangku perkuliahan, di luar menang atau kalahnya. Manfaat kedua, saya merasa semakin bertambahnya wawasan dan kemampuan saya dalam desain setelah saya mengikuti berbagai perlombaan, termasuk perlombaan ini. Karena ketika kita membuat suatu karya dalam perlombaan, umumnya kita akan berliterasi untuk mencari dan mengembangkan sebuah ide, dan ketika berliterasi maka kita akan semakin memperkaya diri akan wawasan.&rdquo;</p>\r\n\r\n<p style=\"margin-left:35.45pt\">Ahmad juga menceritakan usahanya dalam mengikuti lomba ini. Dimulai dari mencari ide yang cocok dan mendengarkan masukan dan saran revisi dari teman-temannya. Selain itu, ia juga melihat beberapa karya poster orang lain yang pernah menang, dengan tujuan meningkatkan standar desainnya.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">&ldquo;Kalau usaha saat membuat karya, sih. Harus nyari ide yang cocok dulu, terus sering minta saran berulang-ulang kepada teman-teman. Kalau ada saran revisi lagi dan lagi, sampai desainnya&nbsp;<em>bener-bener</em>&nbsp;kelihatan bagus di banyak mata. Selain itu, ada satu hal lagi,&nbsp;<em>gatau</em>&nbsp;ini usaha atau&nbsp;<em>gak.</em>&nbsp;Jadi, setiap mau lomba desain saya ada kebiasaan untuk cari-cari karya poster orang lain juga yang pernah juara. Tujuannya untuk&nbsp;<em>ningkatin</em>&nbsp;standar desain saya, kalau sering liat desain yang bagus, kita juga punya standar yang bagus untuk desain sendiri,&rdquo; paparnya.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">Ia berharap, tahun depan lomba ini dapat terlaksana kembali dengan lebih baik dan mahasiswa USU dapat mempertahankan prestasinya. Baginya tidak ada yang perlu diperbaiki, ia hanya memberi masukan agar ada presentasi dalam lomba posternya.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">&ldquo;Harapannya untuk acara lomba ini, semoga tahun depan dapat terlaksana kembali dan semakin baik, serta mahasiswa USU masih dapat mempertahankan prestasi di&nbsp;<em>event</em>&nbsp;ini maupun&nbsp;<em>event</em>&nbsp;lain. Untuk yang perlu diperbaiki tidak ada sih, tapi ingin kalau cabang lomba posternya ada presentasi juga gitu.&rdquo;</p>\r\n\r\n<p style=\"margin-left:35.45pt\"><strong>Redaktur: Wiranto Asruri Siregar</strong></p>\r\n', '2021-11-25 04:28:29', 1, 3),
(11, 'Kabar Gembira! USU Akan Gelar Wisuda Luring', 2, 'usu akan gelar wisuda luring (berita acara 1) .jpg', '<p style=\"margin-left:35.45pt\"><strong>Suara USU, Medan.&nbsp;</strong>Universitas Sumatera Utara akhirnya adakan wisuda luring pertama selama masa pandemi ini. Beberapa waktu lalu akun Instagram @official.usu memposting surat edaran perihal wisuda luring bagi wisudawan periode I TA. 2021/2022. Pada surat edaran tersebut diberitahukan bahwa untuk mengikuti acara wisuda luring, wisudawan harus menyertakan bukti tes hasil Swab PCR yang sampelnya diambil maksimal 3&times;24 jam.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">&nbsp;</p>\r\n\r\n<p style=\"margin-left:35.45pt\">Berita ini mengundang banyak tanggapan dari mahasiswa yang akan wisuda di periode I TA. 2021/2022. Momen sakral ini telah ditunggu-tunggu oleh mahasiswa, lantaran USU hanya melakukan wisuda secara online sejak masuknya pandemi ke Indonesia.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">Salah satu wisudawan periode I TA 2021/2022, Annisa Zahara mengungkapkan kebahagiaannya dengan wisuda luring ini, terlebih lagi Annisa mendapatkan gelar cumlaude tertinggi di fakultasnya pada wisuda periode ini.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">&ldquo;Jujur wisuda luring sudah ditunggu-tunggu wisudawan, begitu ada kabar akan wisuda luring seluruh wisudawan merasa senang. Mungkin ada sedikit kecewa karena orangtua tidak boleh ikut tapi hal tersebut bisa dimaklumi karena kondisi sedang pandemi Covid-19,&rdquo; ujar mahasiswa Fakultas Kesehatan Masyarakat itu.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">Di sisi lain, salah satu mahasiswa dari FISIP menyatakan keterkejutannya lantaran pemberitahuan mendadak tentang wisuda luring membuat para mahasiswa kurang persiapan.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">&ldquo;Senang ya kan bisa join bareng kawan gitu kan. Keselnya ya tiba-tiba offline. Aku mikir, kalian semua pada gak konfirmasi duluan gitu, kesepakatan mau buat wisuda offline atau online. Mana SK gak langsung&nbsp;keluar,&rdquo; ujar Jee.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">Jee juga berpesan,&nbsp;USU dapat lebih bijak menanggapi kemajuan yang ada. &ldquo;Harapan untuk USU kedepannya semoga lebih baik lagi, makin bijak dengan segala kemajuan ya ada, biar gak ngeribetin lagi untuk ngelakuin segala sesuatu itu dua kali,&rdquo; tutup mahasiswa FISIP itu.</p>\r\n\r\n<p style=\"margin-left:35.45pt\"><strong>Redaktur: Yulia Putri Hadi</strong></p>\r\n', '2021-11-25 04:29:09', 3, 2),
(12, 'Adakan Aksi Donor Darah, KMB-USU: Drop of Blood, Million of Hopes', 2, 'aksi donor darah (berita acara 2).jpeg', '<p style=\"margin-left:35.45pt\">Dalam rangka untuk meningkatkan kesadaran masyarakat tentang pentingnya donor darah dalam segi saintifik maupun sosial, pada Minggu&nbsp;(31/10),&nbsp;KMB-USU kembali menyelenggarakan donor darah. Acara donor darah ini diadakan setiap tahun. Tahun ini KMB-USU mengangkat tema &ldquo;Drop of Blood, Million of Hopes&rdquo;.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">Donor darah ini terbuka untuk umum dengan jumlah&nbsp;71&nbsp;peserta. Acara donor darah ini dilaksakan di Cambridge City&nbsp;Square Lt.2 dengan tetap mengikuti protokol kesehatan.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">KMB-USU berharap&nbsp;dengan diadakannya acara donor darah dapat menambah stok darah PMI dan dapat digunakan dalam situasi urgen sesuai dengan tujuan yang ada.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">&ldquo;Semoga kedepannya masyarakat lebih antusias untuk menghadiri acara donor darah, baik diadakan oleh pihak manapun, serta masyarakat umum dapat lebih mengenal KMB &ndash; USU,&rdquo; harap Ketua Panitia Felix Idwan.</p>\r\n\r\n<p style=\"margin-left:35.45pt\"><strong>Redaktur : Yulia Putri Hadi</strong></p>\r\n', '2021-11-25 04:29:42', 1, 2),
(13, 'Digelar Secara Hybrid, PIMNAS ke-34 USU Resmi Dibuka!', 2, 'pimnas-34 resmi dibuka (berita acara 3).jpeg', '<p style=\"margin-left:35.45pt\"><strong>Suara USU, MEDAN.&nbsp;</strong>Berlokasi di Gedung Biro Rektorat pada Selasa (26/10) malam, Pekan Ilmiah Nasional Ke-34 resmi dibuka. Pada gelaran kali ini, dilaksanakan secara hybrid dimana selain dari lokasi yang disebutkan, acara juga ditayangkan dan digelar di Zoom Meetings dan Youtube PIMNAS Ke-34.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">Dalam pembukaan PIMNAS Ke-34 ini, hadir beberapa tokoh dari berbagai latar belakang mulai dari Rektor dan jajarannya, Wali Kota Medan Bobby Nasution, PLT Kepala Pusat Prestasi Nasional Asep Sukmayadi, Ketua Dewan Juri PIMNAS ke-34 Prof Dr Ir Nuni Gofar dari Universitas Sriwijaya dan Menteri Pendidikan dan Kebudayaan yang juga hadir dan memberikan kata sambutan secara virtual.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">Acara diawali dengan 8 tarian khas Sumatera Utara, yang kemudian dilanjutkan dengan kata sambutan Edy Ikhsan selaku Ketua Umum PIMNAS Ke-34. Dalam Kata Sambutannya, Edy menyampaikan sejumlah keterangan terkait statistik PIMNAS kali ini. Ia juga berharap agar PIMNAS kali ini bisa berjalan dengan lancar dan tertib.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">&ldquo;PIMNAS Ke-34 diikuti oleh 3.126 mahasiswa, yang tergabung 735 kelompok PKM berasal dari 108 Perguruan Tinggi seluruh Indonesia. jumlah 35 kelas penjurian, dimana 18 kelas dari FASILKOM-TI dan 17 kelas di Fakultas Kedokteran Gigi. Tim juri berjumlah 107 orang, hadir luring 98 orang dan hadir daring 9 orang. Kami berharap PIMNAS Ke-34 ini berlangsung dengan sukses, lancar, aman dan tertib,&rdquo; papar dosen Fakultas Hukum ini.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">&nbsp;</p>\r\n\r\n<p style=\"margin-left:35.45pt\">Rektor Universitas Sumatera Utara, Muryanto Amin pun tak luput memberikan kata sambutan. Ia menyatakan kesiapan USU dalam melaksanakan amanah yang telah diberikan.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">&ldquo;Sesaat lagi akan kita mulai dan semua rangkaian acaranya dilaksanakan. Terimakasih atas amanah yang telah diberikan. Insyaallah kami siap melaksanakan amanah dan tugas yang diberikan sebaik-baiknya,&rdquo; ucap mantan Dekan FISIP ini.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">Lebih lanjut, Rektor menyebutkan bahwa PIMNAS ini merupakan kontribusi nyata USU dalam perwujudan Tri Dharma Perguruan Tinggi.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">&ldquo;PIMNAS ini merupakan salah satu bentuk kontribusi dari Tri dharma Perguruan Tinggi. PIMNAS Ke-34 ini memfasilitasi seluruh ide, dan kita harus semangat untuk terus melangkah bersama berjuang mengupayakan kesuksesannya. Berbagai macam perubahan dan saat ini dunia sangat membutuhkan kontribusi kita semua menjadi yang lebih baik dan mampu memberikan solusi berbagai masalah kemanusiaan dan berkontribusi untuk kemajuan negara,&rdquo; terang Rektor.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">Lebih lanjut Rektor berharap ini merupakan langkah dan jembatan untuk seluruh peserta meraih prestasi atas nama USU</p>\r\n\r\n<p style=\"margin-left:35.45pt\">&ldquo;Semoga bisa menjadi jembatan emas yang memediasi seluruh upaya para peserta untuk meraih prestasi atas nama seluruh civitas akademika Universitas Sumatera Utara,&rdquo; pungkasnya.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">&nbsp;</p>\r\n\r\n<p style=\"margin-left:35.45pt\">Acara kemudian dilanjutkan dengan berbagai pertunjukan seperti parade para kontingen seluruh Indonesia, penyerahan piala PIMNAS Ke-34 kepada tuan rumah dari pemenang sebelumnya, pertunjukan&nbsp;<em>mapping artworks&nbsp;</em>dan tradisi lompat batu dari Nias.</p>\r\n\r\n<p style=\"margin-left:35.45pt\"><strong>Redaktur: Yulia Putri Hadi</strong></p>\r\n', '2021-11-25 04:30:21', 4, 1);
INSERT INTO `berita` (`id_berita`, `judul`, `id_kategori`, `gambar`, `teks_berita`, `tgl_posting`, `id_admin`, `dilihat`) VALUES
(14, 'Kementerian Unit Kegiatan Mahasiswa Adakan Open Recruitment Panitia Duta Mahasiswa USU', 2, 'open recruitment panitia duta mahasiswa (berita acara 4).jpg', '<p style=\"margin-left:35.45pt\"><strong>Suara USU, MEDAN</strong>. Kementerian Unit Kegiatan Mahasiswa mengadakan o<em>pen recruitment</em>&nbsp;Panitia Duta Mahasiswa USU. o<em>pen recruitment</em>&nbsp;Panitia Duta Mahasiswa USU dimulai dari tahap pendaftaran online 9 s.d 13 Oktober 2021, pengumuman seleksi berkas 14 Oktober 2021, kemudian tahap wawancara 16 s.d 17 Oktober 2021, dan tahap yang terakhir adalah pengumuman akhir pada 19 Oktober 2021.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">Divisi yang dibutuhkan pada kepanitiaan Duta Mahasiswa USU ini adalah Divisi Acara, PDD, PTT, Administrasi, Humas, Keamanan &amp; P3K, Konsumsi, dan Sponsorship.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">Syarat untuk menjadi panitia Duta Mahasiswa USU adalah mahasiswa aktif USU stambuk 2018-2020, berkomitmen dan bertanggung jawab, berdomisili di Medan, wajib mengikuti akun Instagram @official.pemausu, @kemen_ukm.pemausu, dan @dutamahasiswa.usu; Khusus untuk Divisi PDD harus melampirkan portofolio, dan minimal sudah mendaptkan vaksin pertama.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">Nazura Octaprilia, mahasiswa jurusan Biologi stambuk 2018 mengatakan bahwa ia sangat berharap semua panitia Duta Mahasiswa USU memiliki semangat yang tinggi, berkomitmen, dan bertanggung jawab dalam melaksanakan kegiatan ini, &ldquo;Yang pasti kami mengharapkan semua panitia memiliki semangat yang tinggi, berkomitmen, dan bertanggung jawab dalam menjalankan kepanitiaan ini nantinya,&rdquo; ungkapnya.</p>\r\n\r\n<p style=\"margin-left:35.45pt\"><strong>Redaktur : Wiranto Asruri Siregar</strong></p>\r\n', '2021-11-25 04:31:03', 1, 6),
(15, 'Puncak Dies Natalis ke-69, USU Adakan Sidang Terbuka dan Luncurkan Telemedicine!', 2, 'puncak dies natalis ke-69 (berita acara 5).jpeg', '<p style=\"margin-left:35.45pt\">Universitas Sumatera Utara mengadakan Sidang Terbuka sebagai acara puncak Dies Natalis ke 69 Universitas Sumatera Utara pada Selasa (21/09). Acara ini menampilkan orasi ilmiah oleh Prof. Dr. dr Arman Bhakti Pulungan, Executive Director International Pediatric Association.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">Acara yang diselenggarakan secara hybrid ini mengusung tema &ldquo;Working Together to Protect Our Health Against COVID-19&rdquo;. Dengan makna USU mengedepankan peran kampus dalam penanggulangan Covid-19 di Indonesia dan Sumatera Utara secara khusus.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">Presiden Joko Widodo yang hadir turut memberikan sambutan berharap USU menjadikan usia 69 Tahun sebagai momentum yang tepat untuk memantapkan langkah internasionalisasi agar USU menjadi pusat pengembangan ilmu pengetahuan, teknologi, inovasi yang unggul.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">Selain itu, Menko Maritim dan Investasi Luhut B. Pandjaitan, Mendikbudristek Nadiem Makarim, Gubernur Sumatera Utara Edy Rahmayadi, Wakil Gubernur Sumatera Utara Musa Rajekshah dan Wali Kota Medan Bobby Nasution juga berhadir dan memberikan selamat.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">Rektor Universitas Sumatera Utara, Dr. Muryanto Amin, dalam sambutannya mengatakan, &ldquo;USU telah berkontribusi dalam membantu Pemerintah menangani Covid-19 dengan memberikan pelayanan melalui Rumah Sakit Umum USU,&rdquo;</p>\r\n\r\n<p style=\"margin-left:35.45pt\">&ldquo;RS USU juga telah mengadakan vaksinasi massal kepada masyarakat dengan memberikan vaksin kepada remaja, ibu hamil, lansia, pasien rentan dan umum,&rdquo; lanjut Rektor.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">Muryanto Amin juga mengajak seluruh masyarakat Sumut untuk berdoa agar pandemi segera berlalu dan meminta masyarakat agar tetap mematuhi Prokes.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">&ldquo;Mari kita terus mendoakan agar pandemi segera berlalu dan kita dapat bangkit membangun kejayaan dan kemajuan bangsa di masa-masa mendatang,&rdquo; ujar Rektor.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">Dalam acara puncak Dies Natalis ke-69 USU, USU juga meluncurkan Telemedicine, platform layanan kesehatan jarak jauh (<em>online</em>) kepada penderita Covid-19 yang menjalani isolasi mandiri. Telemedicine ini adalah bentuk pengabdian masyarakat USU untuk membantu pasien Covid-19. Dengan layanan ini, pasien bisa berkonsultasi secara online serta mendapatkan obat yang diantar langsung ke alamat pasien.</p>\r\n\r\n<p style=\"margin-left:35.45pt\"><strong>Redaktur: Muhammad Fadhlan Amri</strong></p>\r\n\r\n<p style=\"margin-left:35.45pt\">&nbsp;</p>\r\n', '2021-11-25 04:31:45', 5, 15);

-- --------------------------------------------------------

--
-- Table structure for table `buku_tamu`
--

CREATE TABLE `buku_tamu` (
  `komentar_id` int(11) NOT NULL,
  `komentar_pengirim` varchar(100) NOT NULL,
  `komentar_email` varchar(100) NOT NULL,
  `komentar_isi` text NOT NULL,
  `komentar_status` enum('ya','tidak') NOT NULL DEFAULT 'tidak',
  `komentar_tgl` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `buku_tamu`
--

INSERT INTO `buku_tamu` (`komentar_id`, `komentar_pengirim`, `komentar_email`, `komentar_isi`, `komentar_status`, `komentar_tgl`) VALUES
(1, 'steven', 'steven@gmail.com', 'beritanya sangat update! mantap!', 'ya', '2021-01-18 06:40:04'),
(2, 'luis', 'luis0208@gmail.com', 'kategori beritanya kurang banyak! semoga kontennya diperbanyak!', 'ya', '2021-01-19 19:30:35'),
(3, 'Johansen', 'johansensihombing099@gmail.com', 'Sangat bagus beritanya', 'ya', '2021-11-02 09:37:26'),
(4, 'beatric', 'beatric88@gmail.com', 'Saya sangat senang membaca beritanya', 'ya', '2021-11-25 07:50:20'),
(5, 'luis', 'luis@gmail.com', 'web nya sangat bermanfaat untuk pelajar', 'tidak', '2021-12-13 17:54:36');

-- --------------------------------------------------------

--
-- Table structure for table `halaman`
--

CREATE TABLE `halaman` (
  `id_hal` int(11) NOT NULL,
  `nm_halaman` varchar(30) NOT NULL,
  `link` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `halaman`
--

INSERT INTO `halaman` (`id_hal`, `nm_halaman`, `link`) VALUES
(1, 'Hubungi', 'contact.php'),
(2, 'Tentang Kami', 'about.php'),
(3, 'Komentar', 'buku-tamu.php');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(11) NOT NULL,
  `kategori` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `kategori`) VALUES
(1, 'Prestasi'),
(2, 'Acara'),
(3, 'Beasiswa');

-- --------------------------------------------------------

--
-- Table structure for table `pesan`
--

CREATE TABLE `pesan` (
  `pesan_id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `pengirim` varchar(50) NOT NULL,
  `subjek` varchar(100) NOT NULL,
  `pesan_isi` text NOT NULL,
  `status` varchar(5) NOT NULL,
  `tanggal` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pesan`
--

INSERT INTO `pesan` (`pesan_id`, `email`, `pengirim`, `subjek`, `pesan_isi`, `status`, `tanggal`) VALUES
(1, 'windy@gmail.com', 'windy', 'konten berita', 'hendaknya konten beritanya ditambah lagi supaya lebih bervariasi', 'dibac', '2021-01-18 06:38:09'),
(2, 'ilham@gmail.com', 'ilham', 'lowongan pekerjaan', 'saya ingin menjadi penulis artikel untuk website ini', 'dibac', '2021-01-19 19:28:48'),
(3, 'luis@gmail.com', 'Luis', 'Permintaan Kerja sama ', 'Saya ingin memasang iklan pada website anda', 'belum', '2021-12-13 17:46:12'),
(4, 'luis@gmail.com', 'Luis', 'Permintaan Kerja sama Iklan', 'Saya ingin memasang iklan di website anda', 'belum', '2021-12-13 17:48:29'),
(5, 'johansen@gmail.com', 'Johansen', 'Iklan', 'Saya ingin memasang iklan', 'belum', '2021-12-13 18:01:57');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `berita`
--
ALTER TABLE `berita`
  ADD PRIMARY KEY (`id_berita`);

--
-- Indexes for table `buku_tamu`
--
ALTER TABLE `buku_tamu`
  ADD PRIMARY KEY (`komentar_id`);

--
-- Indexes for table `halaman`
--
ALTER TABLE `halaman`
  ADD PRIMARY KEY (`id_hal`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `pesan`
--
ALTER TABLE `pesan`
  ADD PRIMARY KEY (`pesan_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `berita`
--
ALTER TABLE `berita`
  MODIFY `id_berita` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `buku_tamu`
--
ALTER TABLE `buku_tamu`
  MODIFY `komentar_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `halaman`
--
ALTER TABLE `halaman`
  MODIFY `id_hal` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `pesan`
--
ALTER TABLE `pesan`
  MODIFY `pesan_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- Database: `ada_apa_dengan_usu`
--
CREATE DATABASE IF NOT EXISTS `ada_apa_dengan_usu` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `ada_apa_dengan_usu`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `username` varchar(40) NOT NULL,
  `password` varchar(100) NOT NULL,
  `nama_lengkap` varchar(50) NOT NULL,
  `foto` varchar(100) NOT NULL,
  `deskripsi` text NOT NULL,
  `level` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id_admin`, `username`, `password`, `nama_lengkap`, `foto`, `deskripsi`, `level`) VALUES
(1, 'johansen', 'johansen123', 'Johansen Sihombing', 'johansenn.jpg', 'saya suka bernyanyi', 'admin'),
(2, 'beatric', 'beatric123', 'Beatrics Sahcayani Purba', 'beatricss.jpg', 'saya suka memasak', 'admin'),
(3, 'luis', 'luis123', 'Luis Christoryan Silalahi', 'luiss.jpg', 'saya suka bermusik', 'admin'),
(4, 'ilham', 'ilham123', 'Muhammad Ilham', 'ilhamm.png', 'saya suka olahraga', 'admin'),
(5, 'steven', 'steven123', 'Steven Valentino', 'stevenn.jpeg', 'saya suka belajar', 'admin'),
(6, 'windy', 'windy123', 'Windy Nabila', 'windyy.jpeg', 'saya suka traveling', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `berita`
--

CREATE TABLE `berita` (
  `id_berita` int(11) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `gambar` varchar(100) NOT NULL,
  `teks_berita` text NOT NULL,
  `tgl_posting` datetime NOT NULL,
  `id_admin` int(11) NOT NULL,
  `dilihat` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `berita`
--

INSERT INTO `berita` (`id_berita`, `judul`, `id_kategori`, `gambar`, `teks_berita`, `tgl_posting`, `id_admin`, `dilihat`) VALUES
(1, 'Simak Tips dan Trik dari Penerima Beasiswa Karya Salemba Empat!', 3, 'beasiswa karya salemba empat (berita beasiswa 1).jpg', '<p style=\"margin-left:35.45pt; margin-right:0cm; text-align:justify\"><strong><span style=\"color:#666666\">Suara USU, Medan.&nbsp;</span></strong><span style=\"color:#666666\">Yayasan Karya Salemba kembali membuka pendaftaran. Setiap tahun, ada puluhan ribu mahasiswa yang mendaftar, tetapi hanya 10% yang diterima. Terbayang bukan bagaimana sulitnya mendapat beasiswa ini? Salah seorang penerima beasiswa KSE, Andreas Sitompul membagikan tips sederhana untuk melewati berbagai tahap seleksi beasiswa ini.</span></p>\r\n\r\n<p style=\"margin-left:35.45pt; margin-right:0cm; text-align:justify\"><span style=\"color:#666666\">Karya Salemba Empat (KSE) membuka registrasi mulai awal hingga akhir April selama lima hari per gelombang. USU mendapat gelombang pada tanggal 14-19 April 2021. Untuk mendaftarnya kamu bisa mengakses link&nbsp;</span><span style=\"color:black\"><a href=\"http://www.beasiswa.or.id/\"><span style=\"color:#BB1919\">http://www.beasiswa.or.id/</span></a></span><span style=\"color:#666666\">.</span></p>\r\n\r\n<p style=\"margin-left:35.45pt; margin-right:0cm; text-align:justify\"><span style=\"color:#666666\">Andreas mengatakan bahwa pendaftar harus memastikan berkas administrasi yang lengkap, membuat essay semenarik mungkin dan dapat dipertanggungjawabkan saat wawancara nantinya. Kamu tidak perlu pusing untuk mencari judul essay, karena Yayasan Karya Salemba Empat yang akan menentukan judulnya. Saat mengikuti seleksi, Andreas mengerjakan delapan essay, seperti alasan mengapa layak diterima di beasiswa KSE ini, alasan kenapa memilih jurusan ini dan judul lain yang tertera di website pendaftaran. Jadi, dari delapan judul tadi dirangkum menjadi satu essay.</span></p>\r\n\r\n<p style=\"margin-left:35.45pt; margin-right:0cm; text-align:justify\"><span style=\"color:#666666\">&ldquo;Yang pastinya memperhatikan semua berkas administrasi, kemudian membuat essay yang menarik dan bisa juga&nbsp;<em>sharing</em>&nbsp;pengalaman dalam essay, latihan wawancara, dan yang terakhir memprediksi pertanyaan dari pihak yayasan,&rdquo; tutur mahasiswa Sosiologi itu.</span></p>\r\n\r\n<p style=\"margin-left:35.45pt; margin-right:0cm; text-align:justify\"><span style=\"color:#666666\">Menurut Andreas, bahan pertanyaan saat wawancara itu dari essay yang dibuat. Jadi, kamu harus menguasai essay yang kamu buat, agar tidak bingung untuk menjawab pertanyaannya. Dari situ kamu bisa mempelajari semua kemungkinan pertanyaan saat wawancara. Lebih baik lagi, persiapkan jawabannya dan latihan berulang-ulang. Kamu juga harus pandai mengatur bahasa tubuh maupun ekspresi karena merupakan salah satu penilaian.</span></p>\r\n\r\n<p style=\"margin-left:35.45pt; margin-right:0cm; text-align:justify\"><span style=\"color:#666666\">Andreas berharap semoga ke depannya beasiswa KSE ini dapat memperluas cakupan baik di PTN maupun PTS lain, sehingga bisa menambah kuota penerimaan beasiswa.</span></p>\r\n\r\n<p style=\"margin-left:35.45pt; margin-right:0cm; text-align:justify\"><span style=\"color:#666666\">Setiap penerima beasiswa memiliki pengalaman yang berkesan di setiap kegiatannya. Seperti itu juga yang dirasakan oleh Andreas. Menurutnya, pengalaman yang berkesan dari program beasiswa ini sangat banyak, seperti Kegiatan Bina Desa yang saat ini sedang berjalan, kegiatan Kawasan Rumah Pangan Lestari (KRPL), dan juga Bina Panti. Kamu juga akan diberi fasilitas untuk kuliah dari pihak yayasan yang bekerja sama dengan Inalum. Akan tetapi, belum semua terjun ke desa, hanya beberapa tim saja.</span></p>\r\n\r\n<p style=\"margin-left:35.45pt; margin-right:0cm; text-align:justify\"><span style=\"color:#666666\">&ldquo;Tetap semanagat dan isi berkas dan essay dengan baik dan jujur. Semangat!&rdquo; pesan Andreas untuk teman-teman yang mendaftar beasiswa KSE.</span></p>\r\n\r\n<p style=\"margin-left:35.45pt; margin-right:0cm; text-align:justify\"><strong><span style=\"color:#666666\">Redaktur: Yulia Putri Hadi</span></strong></p>\r\n\r\n<p style=\"margin-left:35.45pt; margin-right:0cm; text-align:justify\"><strong><span style=\"color:#666666\">&nbsp;</span></strong></p>\r\n', '2021-11-25 04:20:30', 1, 0),
(2, 'Sosialisasi Beasiswa LPDP: Siapkan Amunisi Terbaik', 3, 'sosialisasi beasiswa lpdp (berita beasiswa 2).jpeg', '<p style=\"margin-left:35.45pt; margin-right:0cm; text-align:justify\"><strong><span style=\"color:#666666\">Suara&nbsp;USU, MEDAN.&nbsp;</span></strong><span style=\"color:#666666\">Unit Pengembangan Pendidikan Universitas Sumatera Utara (UPP USU) menyelenggarakan sosialisasi bertajuk Mengenal Lebih Dekat Beasiswa LPDP&nbsp;pada Kamis (15/07). Webinar ini dilaksanakan melalui zoom meeting Narasumber diwebinar kali ini adalah seorang&nbsp;<em>executive secretary to president director of</em>&nbsp;LPDP, Trio Susilo.</span></p>\r\n\r\n<p style=\"margin-left:35.45pt; margin-right:0cm; text-align:justify\"><span style=\"color:#666666\">Beasiswa LPDP adalah program beasiswa yang dibiayai oleh pemerintah Indonesia melalui pemanfaatan Dana Pengembangan Pendidikan Nasional (DPPN). Dikelola oleh LPDP untuk pembiayaan studi lanjut pada program Magister atau S2 maupun program Doktoral atau S3 di Perguruan Tinggi terbaik di dalam dan di luar negeri.</span></p>\r\n\r\n<p style=\"margin-left:35.45pt; margin-right:0cm; text-align:justify\"><span style=\"color:#666666\">LPDP berdiri sejak tahun 2012 dengan tiga kor layanan utama yaitu 1)&nbsp;pengembangan dana, yang artinya menjamin keberlangsungan pendanaan pendidikan bagi generasi berikutnya melalui pengelolaan dana abadi pendidikan yang optimal, 2) beasiswa, yang artinya mempersiapkan pemimpin dan profesional masa depan indonesia melalui pembiayaan pendidikan, 3) riset, yang artinya mendorong riset strategis dan/atau inovatif yang implementatif dan menciptakan nilai tambah melalui pendanaan riset.</span></p>\r\n\r\n<p style=\"margin-left:35.45pt; margin-right:0cm; text-align:justify\"><span style=\"color:#666666\">Dalam webinar tersebut,&nbsp;Tri Susilo menjelaskan beberapa jenis beasiswa yang LPDP keluarkan yaitu Beasiswa Afirmasi, Beasiswa Targeted Group dan Beasiswa Umum. Dijelaskan juga, untuk mendukung kelancaran dan keberhasilan studi lanjut pada program magister atau S1 maupun program Doktoral atau S3 di Perguruan Tinggi tujuan, kepada penerima beasiswa diberikan dana yang meliputi beberapa komponen yaitu dana pendidikan, dana pendukung, dana tambahan khusus beasiswa pendidikan dokter spesialis, dan dana tambahan khusus beasiswa penyandang disabilitas.</span></p>\r\n\r\n<p style=\"margin-left:35.45pt; margin-right:0cm; text-align:justify\"><span style=\"color:#666666\">Tri Susilo menjawab salah satu pertanyaan dari peserta mengenai syarat mengambil beasiswa doktoral dari dalam negeri.</span></p>\r\n\r\n<p style=\"margin-left:35.45pt; margin-right:0cm; text-align:justify\"><span style=\"color:#666666\">&ldquo;Bisa disesuaikan jalurnya apa, apakah afirmasi, targeted atau reguler bisa dilihat di website LPDP. Yang harus disiapkan adalah kesiapan administrasi sama yakin apa yang mau diambil. Apakah harus mendaftar telebih dahulu ke universitas nya, tidak harus. Boleh daftar LPDP dulu baru daftar universitas atau dapar LOA dulu baru daftar universitas,&ldquo; jelasnya.</span></p>\r\n\r\n<p style=\"margin-left:35.45pt; margin-right:0cm; text-align:justify\"><span style=\"color:#666666\">Tri Susilo juga memberikan wejangan kepada teman-teman yang melamar beasiswa LPDP ini.</span></p>\r\n\r\n<p style=\"margin-left:35.45pt; margin-right:0cm; text-align:justify\"><span style=\"color:#666666\">&ldquo;Teman-teman jangan pernah meminta&nbsp;<em>excuses</em>&nbsp;untuk syarat-syarat yang memang sudah jelas abcd nya seperti apa&nbsp;<em>whats is kind white or black</em>&nbsp;ya. Siapkan dengan baik tidak perlu buru-buru ya, dilengkapi dengan baik. Kalau sudah melengkapi dengan baik persyaratan administrasi,&nbsp;<em>i do belive&nbsp;</em>kamu punya amunisi yang cukup untuk&nbsp;<em>the next step</em>,&nbsp;<em>when you have the ammunition i</em>ntinya. The perfect one gitu amunisi yang&nbsp;bagus dan lengkap, teman-teman bisa masuk ke tahapan selanjutnya.&rdquo;</span></p>\r\n\r\n<p style=\"margin-left:35.45pt; margin-right:0cm; text-align:justify\"><span style=\"color:#666666\">Mengenai persyaratan maupun penjelasan yang lebih detail, kamu bisa kunjungi web LPDP yaitu&nbsp;</span><span style=\"color:black\"><a href=\"http://www.lpdp.kemenkeu.go.id/\"><span style=\"color:#BB1919\">www.lpdp.kemenkeu.go.id</span></a></span><span style=\"color:#666666\">&nbsp;. Untuk teman-teman yang ingin menonton ulang webinar pada hari ini, kamu bisa menonton di Youtube UPP USU!</span></p>\r\n\r\n<p style=\"margin-left:35.45pt; margin-right:0cm; text-align:justify\"><strong><span style=\"color:#666666\">Redaktur: Yulia Putri Hadi</span></strong></p>\r\n', '2021-11-25 04:22:07', 1, 0),
(3, 'Beasiswa PSBB 2021 Sedang Membuka Pendaftaran Angkatan Ketiga, Buruan Cek Ketentuannya!', 3, 'beasiswa psbb 2021 (berita beasiswa 3)jpg.jpg', '<p style=\"margin-left:35.45pt\"><strong>Suara USU, MEDAN</strong>. Beasiswa Pemuda Semangat Bantu Bangsa (PSBB) sedang membuka pendaftaran angkatan ketiga sampai dengan 15 November 2021. Beasiswa PSBB ini merupakan bagian dari semangat bantu serta beasiswa ini juga sering mengadakan kegiatan bersedekah.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">Adapun beberapa syarat umum dari beasiswa ini sebagai berikut:</p>\r\n\r\n<ol>\r\n	<li>Mahasiswa muslim.</li>\r\n	<li>Maksimal berumur 21 tahun.</li>\r\n	<li>Mahasiswa aktif minimal semester 3 dengan IPK minimal 3.00.</li>\r\n	<li>Dapat membaca Al-quran dengan lancar, tidak merokok, tidak berpacaran, dan belum menikah.</li>\r\n	<li>Tidak sedang menerima beasiswa sejenis.</li>\r\n	<li>Aktif dalam kegiatan kampus dan sosial.</li>\r\n	<li>Memiliki dan aktif di akun media sosial.</li>\r\n	<li>Memiliki salah satu kemampuan: menulis, nge-vlog, desain, fotografi, dan videografi.</li>\r\n	<li>Bersedia aktif secara rutin setiap pekan untuk program sosial.</li>\r\n	<li>Bersedia mengikuti segala rangkaian program selama satu tahun.</li>\r\n</ol>\r\n\r\n<p style=\"margin-left:35.45pt\">Dava Warsyahdana selaku koordinator PSBB 2021/2021 mengatakan bahwa ketika mendaftar beasiswa PSBB ada beberpa berkas yang perlu dipersiapkan, diantaranya mengisi form pendaftaran, scan KTP/KTM, foto 4&times;3 (dalam bentuk JPG/PNG), scan KK, scan transkrip nilai, CV terbaru, surat keterangan aktif dalam organisasi, scan sertifikat prestasi, dan&nbsp;<em>screenshoot broadcast</em>&nbsp;informasi pendaftaran kelima grup Whatsapp.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">Mahasiswa Fakultas Pertanian ini juga mengatakan alasan utamanya tertarik mengikuti beasiswa ini karena pada dasarnya beasiswa PSBB mengajarkan untuk senantiasa bisa bermanfaat bukan hanya untuk diri sendiri, tetapi orang banyak khususnya orang yang membutuhkan. Dava juga menambahkan, selain bisa bermanfaat untuk sesama, banyak sekali pembelajaran yang ia dapatkan.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">Dalam program Beasiswa PSBB, setiap bulannya mengadakan gerak terjun langsung ke masyarakat untuk memberikan paket nutrisi dan sembako ke masyarakat yang membutuhkan, seperti para pejuang nafkah di pagi hari, orang yang kurang dalam finansial (miskin), orang yang terkena musibah atau bencana alam pada suatu daerah (banjir, longsor, gempa dll). Program rutin Beasiswa PSBB ini adalah kegiatan mentoring yang diadakan setiap pekan. Kegiatan mentoring ini seperti pembentukan karakter baik itu&nbsp;<em>softskill</em>&nbsp;maupun&nbsp;<em>hardskill</em>&nbsp;kita.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">&ldquo;Hampir semua kegiatan PSBB sangat berkesan, karena saya melihat senyuman mereka yang sangat tulus dan ikhlas ketika kita memberikan rezeki kepada yang membutuhkan,&rdquo; ungkapnya.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">Selain memiliki program kerja yang sangat menguntung kan untuk sesama, Beasiswa PSBB juga memberi keuntungan pada para penerimanya, seperti relasi nasional, memiliki mentor nasional dan internasional, mendapatkan pelatihan peningkatan kapasitas diri, berperan aktif melaksanakan program sosial, mendapat uang binaan pribadi Rp.400.000/bulan, dan banyak keuntungan lainnya.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">Koordinator Nasional PSBB ini berpesan untuk mahasiswa yang tertarik mendaftar Beasiswa PSBB, &ldquo;Semoga tetap semangat mengikuti tahap seleksinya, harus optimis bahwa kalianlah yang terbaik, jika belum bergabung dengan PSBB, masih banyak wadah untuk terus belajar dan senantiasa memberikan kebermanfaatan kepada banyak orang,&rdquo; ujarnya.</p>\r\n\r\n<p style=\"margin-left:35.45pt\"><strong>Redaktur: Wiranto Asruri Siregar</strong></p>\r\n', '2021-11-25 04:22:58', 6, 0),
(4, 'SEMBEA 2021 Kembali Digelar, Gudang Informasi Seputar Beasiswa', 3, 'SEMBEA 2021 (berita beasiswa 4).png', '<p style=\"margin-left:35.45pt\"><strong>Suara USU, MEDAN</strong>. SEMBEA (Seminar Beasiswa) 2021 kembali digelar untuk menyampaikan berbagai informasi mengenai beasiswa secara online melalui media Zoom Meeting, Sabtu (6/11/2021). SEMBEA kali ini mengangkat tema&nbsp;<em>&ldquo;Achieving Your Dream by Challenging Yourself with Scholarship&rdquo;.</em></p>\r\n\r\n<p style=\"margin-left:35.45pt\">Acara yang diadakan oleh UKMI As-Siyasah FISIP USU ini dihadiri oleh berbagai pemateri yang pernah menerima beasiswa, seperti Fadhillah Arafah dari Beasiswa Unggulan Kemendikbud, Miranda Lufti Nasution dari Beasiswa Tanoto Foundation, Kustiningsih Dwi dari Beasiswa Bank Indonesia, dan Muhammad Fachri Pradana dari Beasiswa Rumah Kepemimpinan.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">Acara dibuka dengan&nbsp;<em>opening ceremony,&nbsp;</em>kemudian dilanjutkan dengan kata sambutan Ketua UKMI As-Siyasah FISIP USU serta Ketua Pelaksana SEMBEA 2021. Setelah itu, acara dilanjutkan dengan pemaran berbagai materi yang menarik serta tips-tips untuk mendapatkan beasiswa. Sesi berlangsung sebanyak 4 kali. Setiap sesinya akan disuguhkan mengenai motivasi serta ilmu oleh para pemateri.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">Azhar Riadi sebagai ketua pelaksana SEMBEA 2021 mengungkapkan bahwa dengan memilih keempat pemateri berbeda dan telah pernah menerima beasiswa maka acara ini akan lebih menarik. Beasiswa yang dibahas juga sangat dikenal di lingkungan mahasiswa, &ldquo;Kenapa memilih keempat beasiswa tersebut untuk SEMBEA tahun ini, karena keempat beasiswa tersebut yang banyak diketahui oleh para mahasiswa dan terkenal dikalangan mahasiswa serta merupakan beasiswa yang bergengsi. Nah, dengan begitu dapat menarik para mahasiswa untuk mengetahui bagaimana sih cara supaya bisa dapat beasiswa tersebut.&rdquo;</p>\r\n\r\n<p style=\"margin-left:35.45pt\">Bukan hanya sekedar materi yang disampaikan dalam acara tersebut, tetapi di sela-sela sesi diadakan&nbsp;<em>ice breaking</em>&nbsp;untuk para peserta agar peserta bisa tetap fokus sekaligus rileks dalam mengikuti materi di setiap sesinya.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">Miranda Lufti Nasution salah satu pemateri berpesan kepada semua peserta agar tidak menjadi mahasiswa kupu-kupu. Tetapi, harus memiliki&nbsp;<em>planning</em>&nbsp;di setiap tahunnya untuk memotivasi diri sendiri dengan begitu mimpi-mimpi yang ingin dicapai dapat tercapai dan terealisasikan.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">Azhar berharap SEMBEA ini akan terus terlaksana kedepannya dalam memberikan informasi seputar beasiswa, &ldquo;Harapan saya yah, semoga SEMBEA tahun kedepannya tetap terlaksana sampai tiada akhirnya, agar bisa terus memberikan informasi seputar beasiswa lainnya dan menjadi bekal bagi para peserta yang ikut untuk menggapai cita-citanya,&rdquo; ungkapnya.</p>\r\n\r\n<p style=\"margin-left:35.45pt\"><strong>Redaktur: Wiranto Asruri Siregar</strong></p>\r\n', '2021-11-25 04:24:02', 2, 1),
(5, 'Rektor: USU Janjikan Beasiswa S2 dan Jadi Dosen bagi Mahasiswa yang Juara di PIMNAS', 3, 'rektor usu janjikan beasiswa (berita beasiswa 5).jpg', '<p style=\"margin-left:35.45pt\"><strong>Suara USU, MEDAN</strong>. Rektor USU, Muryanto Amin janjikan beasiswa S2 untuk mahasiswa USU yang nantinya meraih juara di ajang PIMNAS ke-34. Hal ini diungkapkan dalam kegiatan Konferensi Pers yang diselenggarakan di Gedung Biro Rektorat Universitas Sumatera Utara, Kamis (16/9/2021).</p>\r\n\r\n<p style=\"margin-left:35.45pt\">&ldquo;Harus ada harapan untuk semua orang, kalau ada yang juara, pasti kita berikan apresiasi. Untuk dia lanjutkan S2 nya dan untuk dia jadi dosen,&rdquo; ungkap pria yang akrab disapa Mury ini.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">Rektor juga menjelaskan bahwasanya, ini merupakan terobosan baru yang sedang dicoba USU dalam mengapresiasi mahasiswa S1 atau sarjana yang memiliki prestasi luar biasa selama aktif berkuliah.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">&ldquo;Ini bisa dicatat ya, kalau ada yang nanti mahasiswa USU yang bisa juara, kita janjikan dia beasiswa, tapi dengan perjanjian dia menjadi dosen. Karena kita ada program yang memberikan beasiswa S2 kepada mahasiswa yang luar biasa prestasinya dan kita langsung dia kontrakan untuk perjanjian dosen setelah dia tamat S2,&rdquo; terangnya di depan pers.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">Mury berharap 36 karya perwakilan USU bisa menang dan memberikan hasil positif untuk membawa nama baik USU di level nasional.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">&ldquo;Mudah-mudahan yang 36 ini menang semua, tapi ini beregu dan juga berkelompok. Mudah-mudahan ini bisa mendapatkan piala semua. Sehingga membawa nama baik kita di nasional,&rdquo; pungkasnya.</p>\r\n\r\n<p style=\"margin-left:35.45pt\"><strong>Redaktur: Wiranto Asruri Siregar</strong></p>\r\n', '2021-11-25 04:25:00', 3, 17),
(6, 'Raih Prestasi dengan Game, E-Sport USU Vine Juara 3 GAYATAMA ke-2', 1, 'e-sport vine juara 3 gayatama (berita prestasi 1).jpeg', '<p style=\"margin-left:35.45pt\"><strong>Suara USU, Medan</strong>. Mengharumkan nama besar Universitas Sumatera Utara, tim E-Sport USU Vine berhasil mendapatkan juara 3 PUBG dalam turnamen GAYATAMA yang diselenggarakan oleh UNESA. Terdapat 5 mahasiswa dalam tim USU Vine yakni, Iqbal (AET stambuk 20), Fauzi (Antropologi stambuk 19), Benjie (Akuntansi stambuk 18), Kevin (Pariwisata stambuk 19), dan Paul (MSP stambuk 20).</p>\r\n\r\n<p style=\"margin-left:35.45pt\">Gelar Karya dan Prestasi Mahasiswa (GAYATAMA) ke-2 merupakan agenda rutin yang diselenggarakan oleh Bidang Kemahasiswaan dan Alumni, Universitas Negeri Surabaya (UNESA). GAYATAMA ini ialah kegiatan tingkat nasional&nbsp;dan bertujuan untuk memberikan wadah kepada mahasiswa di seluruh Indonesia&nbsp;untuksemangat berkarya dan berpretasi di bidang akademis, seni, maupun olahraga dengan mengedepankan dan menjunjung tinggi sikap sportifitas dalam pengembangan diri secara optimal.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">Saat diwawancarai oleh Kru Suara USU pada Sabtu (06/11).Salah satu anggota tim USU Vine, Iqbal, mengaku bahwa ego dan strategi merupakan salah satu rintangan mereka dalam lomba ini.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">&ldquo;Ego antar&nbsp;<em>player</em>&nbsp;harus disatuin, kemudian&nbsp;<em>gameplay</em>&nbsp;kampus lain yang berbeda-beda dan baru pertama kali bertanding melawan kampus lain, mau ga mau dari strategi harus berdaptasi dengan&nbsp;<em>gameplay&nbsp;</em>kampus lain. Untuk rintangannya nya ya itu, ego masing-masing&nbsp;<em>player</em>&nbsp;harus saling mengalah, saling mengerti supaya&nbsp;<em>chemistry&nbsp;</em>nya bisa menyatu,&rdquo; jelas Iqbal.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">Manager USU Vine Hulwa Sefianggi&nbsp;menceritakan&nbsp;panjangnya proses dan perjuangan mereka di turnamen UNESA ini, mulai dari perdebatan antar pemain, latihan dan evaluasi. &ldquo;Mereka berlima ini punya sifat yang berbeda-beda tapi Alhamdulillah bisa bersatu dalam satu tim berkat&nbsp;<em>chemistry</em>&nbsp;dan juga cita-cita yang sama,&rdquo; ucapnya.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">Banyak harapan yang disampaikan oleh Hulwa sebagai manager untuk tim USU Vine agar semangat dalam mengejar serta mengukir prestasi di bidang E-Sport ini.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">&ldquo;Harapannya semoga USU Vine bisa membawa nama USU lebih sering lagi, kalo bisa sampai ke tahap&nbsp;<em>Internasional</em>,&rdquo; tutupnya.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">Stigma negatif memang selama ini masih melekat pada game karena masyarakat hanya mengetahui game itu &nbsp;sebagai suatu permainan yang menghabiskan waktu dan tidak bermanfaat, padahal game bisa menghasilkan prestasi seperti halnya tim USU Vine ini. Mengingat perkembangan zaman dan teknologi yang terus meningkat,&nbsp;membuat E-Sport selalu ada dalam setiap perlombaaan resmi.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">Dalam waktu dekat ini USU Vine akan bertanding kembali di Turnamen Nasional PUBG Mobile Campus Championship (PMCC) dan akan di ikuti oleh seluruh Universitas di Indonesia.</p>\r\n\r\n<p style=\"margin-left:35.45pt\"><strong>Redaktur: Yulia Putri Had</strong>i</p>\r\n', '2021-11-25 04:25:42', 2, 0),
(7, 'Tiga Mahasiswa USU Berhasil Torehkan Prestasi Pada Ajang Duta Bahasa Sumatera Utara 2021', 1, 'prestasi ajang duta bahasa (berita prestasi 2).jpeg', '<p style=\"margin-left:35.45pt\"><strong>Suara USU, Medan.&nbsp;</strong>Genap seminggu lebih satu hari, acara puncak pemilihan Duta Bahasa Sumatera Utara 2021 telah resmi berlalu. Acara puncak tersebut digelar pada 30 Mei 2021 lalu oleh Balai Bahasa Sumatera Utara di hotel Emerald Garden, Medan. Tidak disangka, diantara para finalis yang berkompetisi terdapat tiga mahasiswa Universtitas Sumatera Utara berhasil meraih gelar juara. Mereka adalah Ananda Rizqullah sebagai Duta Bahasa Utama (Mahasiswa Arsitektur USU 2020), Shevilla Mayori sebagai Wakil I Duta Bahasa (Mahasiswi Ilmu Komunikasi 2019), dan Haisyah Hani sebagai Duta Bahasa Favorit (Mahasiswi Biologi 2018).</p>\r\n\r\n<p style=\"margin-left:35.45pt\">Pemilihan Duta Bahasa Provinsi Sumatera Utara merupakan ajang tahunan yang rutin dilaksanakan. Para duta yang terpilih diseleksi berdasarkan kegiatan saat karantina dan kemampuan berbahasa, baik bahasa Indonesia yang diukur menggunakan Uji Kemahiran Berbahasa Indonesia (UKBI), kemampuan berbahasa daerah, maupun kemampuan berbahasa asing. Setiap tahun, Sumatera Utara menyumbang peserta untuk melaju ke ajang Duta Bahasa Nasional, yakni pemenang I dengan predikat Duta Utama, yang pada tahun ini jatuh kepada Ananda Rizqullah, seorang mahasiswa di Universitas Sumatera Utara</p>\r\n\r\n<p style=\"margin-left:35.45pt\">Mengikuti ajang Nasional merupakan kebanggaan yang luar biasa bagi setiap orang, tidak terkecuali bagi Ananda Rizqullah. Hal ini diperkuat oleh pernyataan Ananda seusai acara puncak dilaksanakan. Ia mengungkapkan merupakan sebuah kehormatan menjadi peraih duta bahasa utama.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">&ldquo;Ini adalah suatu kehormatan bagi Saya untuk bisa membawa nama Sumatera Utara di tingkat Nasional. Ini bukan amanah berat tapi besar, karena kalau berat itu soal rasa dan cara pandang. Namun kalau besar berarti ada ukurannya. Saya yakin dengan dukungan orang-orang terdekat saya, seperti Tresia sebagai pasangan dan 18 teman teman dubas 2021, balai bahasa, doa keluarga dan teman-teman semua yang mengetahui ini, Insya Allah amanah ini akan tuntas dikerjakan,&rdquo; ucapnya</p>\r\n\r\n<p style=\"margin-left:35.45pt\">Hal yang sama juga dilontarkan oleh Shevilla Mayori, Wakil I Duta Bahasa Sumatera Utara 2021 dari jurusan Ilmu Komunikasi USU. Baginya, mengikuti ajang Duta Bahasa telah adalah bagian dari pengalaman yang luar biasa. Pembekalan yang diberikan sangat bermanfaat, apalagi materi kebahasaan sesuai dengan jurusannya, Ilmu Komunikasi.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">&ldquo;Biarpun tidak menjadi Duta Utama, saya bangga dan bersyukur atas pencapaian ini. Saya sangat senang bisa melihat Ananda maju sebagai perwakilan dari Sumatera Utara. Kami disini akan terus menyokong keberhasilan mereka dan menjalankan amanah untuk menyosialisasikan bahasa yang baik dan benar di Sumatera Utara,&rdquo; papar Shevilla.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">Dan tidak ketinggalan, ada satu lagi mahasiswi USU yang meraih gelar juara Duta Bahasa Favorit Sumut 2021 yaitu Haisyah Hani. Ia mengaku sangat bangga dan bersyukur mendapatkan gelar baru sebagai Duta favorit. Hani juga berharap gelarnya bukan hanya sekedar julukan tetapi dapat memberikan manfaat bagi banyak orang.</p>\r\n\r\n<p style=\"margin-left:35.45pt\"><strong>Redaktur: Muhammad Fadhlan Amri</strong></p>\r\n', '2021-11-25 04:26:25', 1, 0),
(8, 'FASILKOM-TI Kukuhkan Khairul Imam Jadi Mahasiswa Berprestasi Utama di Kontestasi PILMAPRES', 1, 'fasilkom-ti kukuhkan mapres (berita prestasi 3).jpeg', '<p style=\"margin-left:35.45pt\">Pilmapres atau Pemilihan Mahasiswa Berprestasi adalah kontestasi tahunan untuk menyaring mahasiswa-mahasiswa terbaik USU setiap tahunnya. Nantinya usai digelar di fakultas, akan segera dilanjutkan ke level USU, dan nasional. Beberapa waktu lalu Pilmapres Fakultas sudah mulai digelar dan mengukuhkan beberapa nama sebagai juara.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">Di FASILKOM-TI contohnya,&nbsp; pada (02/03) Khairul Imam dari Ilmu Komputer 2019 mampu keluar sebagai MAWAPRES (Mahasiswa) Utama Fakultas yang terletak di pintu 1 USU ini. Kepada Suara USU, Imam menjelaskan bahwa proses dan persiapannya menjadi MAWAPRES telah dipersiapkannya dari jauh-jauh hari.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">&ldquo;Persiapan saya itu sudah sejak tahun lalu. Ada namanya tahun lalu itu Sekolah MAWAPRES, dari PEMA Fakultas, dan disitulah nampaklah konsepnya itu bagaimana yang dilakukan untuk ikut seleksi MAWAPRES, jadi dari Sekolah Mawapres saya ada rencana kedepannya bagaimana,&rdquo; ungkapnya pada Suara USU.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">Imam juga menjelaskan bahwa mahasiswa ini aktif di beberapa organisasi selama persiapan sebelum menjadi MAWAPRES Utama FASILKOM-TI.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">&ldquo;Jadi sudah ikut beberapa organisasi sejak dari tahun lalu, saat ini saya ikut aktif di 5 (lima) organisasi dari komunitas, untuk melatih saya berbicara, sempat juga menjadi&nbsp;<em>speaker&nbsp;</em>di&nbsp;<em>Webinar&nbsp;</em>kemarin, jadi&nbsp;<em>feeling,&nbsp;</em>untuk memulai organisasi itu sudah ada,&rdquo; tuturnya.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">&ldquo;Juga ikut duta Green Campus yang diangkat Universitas, dan itu dihitung di Pilmapres, jadi poin. Saya juga jadi asisten lab di ilmu komputer, di jurusan. Saya juga merupakan anggota UKMI bidang akademi dan kompetensi. Kegiatan kemasyarakatan juga sebagai bendahara umum di remaja mesjid, sebelumnya ketua umum,&rdquo; ungkap Imam,</p>\r\n\r\n<p style=\"margin-left:35.45pt\">Imam juga menjelaskan bahwa ada beberapa perbedaan di Pilmapres kali ini.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">&ldquo;Tahun lalu masih&nbsp;<em>offline,&nbsp;</em>tatap muka jadi penjuriannya di fakultas kemarin. Tahun ini secara&nbsp;<em>online</em>. Bedanya sangat terasa. Kalo&nbsp;<em>offline</em>&nbsp;penilaiannya banyak, dari&nbsp;<em>gesture&nbsp;</em>karena langsung terlihat. Kita sebagai peserta juga merasakan perbedaannya, ada kawan-kawan yang mendukung, lebih meriah&nbsp;<em>lah</em>&nbsp;bisa dibilang. Di&nbsp;<em>online&nbsp;</em>&nbsp;yang terlihat hanya kepala dan bahu, namun kita harus mampu membuat itu terlihat lebih interaktif,&rdquo; ucapnya.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">Imam menjelaskan bahwa ada 5 kriteria untuk menjadi MAWAPRES. Yaitu kepemimpinan, berpikir untuk maju, percaya diri, mengambil kesempatan dan inovatif.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">&ldquo;Aku rangkum ada 5 ya, yang pertama itu kepemimpinan, bisa dari organsiasi, baik menjadi ketua umum maupun staf, yang kedua itu berpikir untuk maju. Kita selama ini kuliah nanti mau ngapain aja, dan di Sekolah MAWAPRES ini saya dapet gambarannya jadi tahu apa yang mau dikerjakan, kemudian percaya diri, harus percaya diri dulu kalo ga, ya ga akan maju.&rdquo;</p>\r\n\r\n<p style=\"margin-left:35.45pt\">Keempat mengambil kesempatan, sangat banyak peluang yang tersebar selama pandemi, yaitu semua&nbsp;<em>webinar</em>, semua pelatihan, lomba-lomba itu berserakan di&nbsp;<em>instagram,&nbsp;</em>dan media sosial. Kemudian tiap tahun harus diambil dan kita coba terus, jadi kesalahan yang lalu kita perbaiki. Dan yang kelima inovatif, untuk kita mengerjakan&nbsp; KTI kita yang bermanfaat dan realistis untuk dikerjakan.&rdquo;</p>\r\n\r\n<p style=\"margin-left:35.45pt\">Terkait poin-poin dalam penilaian selama seleksi MAWAPRES, menurut Imam adalah prestasi dan organisasi menjadi kunci utama dan poin penting.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">&ldquo;Juara poster nasional Fakultas Psikologi USU, duta Green Campus, dan yang ketiga adalah IPK. IPK ini cukup baik lah Alhamdulillah. Semua pengalaman tadi itu karena berkat dukungan dari organisasi dan komunitas yang aku jalani selama ini, orang-orang yang mendukung aku, mewujudkan ide itu tadi.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">Kepada Suara USU Imam mengungkapkan bahwa beliau belum mengetahui pasti kapan Pilmapres USU terselenggara, namun menurutnya, universitas masih menunggu nama-nama dari fakultas.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">&ldquo;Belum ada, ini mungkin universitas masih nunggu nama-nama dari fakultas,&rdquo; jelasnya.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">Kepada para mahasiswa baru, Imam juga membagikan beberapa tips terkait bagaimana menjadi mahasiswa berprestasi.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">&ldquo;Nah untuk mahasiswa baru aku ada 5 poin yang harus kalian lakukan untuk jadi MAWAPRES. Yang pertama ikut organisasi atau komunitas, mulai dari jurusan kemudian nasional ataupun internasional. Yang kedua mengikuti lomba, dari yang kecil hingga ke internasional. Coba mulai lomba, mulai dari yang kecil-kecil dulu. Yang ketiga berada di lingkungan yang maju, jangan hanya begibah sana-sini atau nongki-nongki.&rdquo;</p>\r\n\r\n<p style=\"margin-left:35.45pt\">&ldquo;Keempat, jangan hanya terlena dengan hiburan.&nbsp;<em>Games&nbsp;</em>sana-sini, nongki sana-sini, padahal banyak waktu untuk kegiatan positif, organisasi itu bagus itu, hiburan boleh sesekali. Yang terakhir jangan lupa beribadah, ingat bahwa segala kesuksesan itu berkat dari Allah SWT, jangan sempat MAWAPRES ini menjadi sebuah kesombongan yang dibawa-bawa dan menyepelekan orang lain,&rdquo; tutup Imam di akhir wawancara.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">Penyunting: Yulia Putri Hadi</p>\r\n', '2021-11-25 04:27:08', 2, 0),
(9, 'Angkat Isu Solar Sel, Tim Gantari USU Rengkuh Juara III di Kompetisi LKTIN Unsyiah', 1, 'tim gantari usu juara 3 lktin (berita prestasi 4).jpeg', '<p style=\"margin-left:35.45pt\"><strong>Suara USU, MEDAN.&nbsp;</strong>Lomba Karya Tulis Ilmiah Nasional (LKTIN) yang diadakan oleh Himpunan Mahasiswa Teknik Kimia Universitas Syiah Kuala bertema &ldquo;Enhancing of Youth Innovation to Face the Modernization of Science and Technology&rdquo; membawa berkah bagi tim Gantari Teknik Kimia Universitas Sumatera Utara.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">Pasalnya dalam lomba ini mereka menyandang gelar juara III. Tim yang beranggotakan 3 orang ini, diantaranya yaitu Aravi Zalsa Ramadhan (Teknik Kimia 2020), Muhammad Rafli Derriansyah (Teknik Kimia 2019), dan Viqry Pramananda (Teknik Kimia 2017). Dan dosen pembimbing yaitu Ir. Erni Misran, S.T., M.T., Ph.D. Mengangkat subtema&nbsp;<em>Renewable Energy</em>&nbsp;dengan Judul paper &ldquo;Sintesis Karbon Aktif Pelepah Kelapa Sawit Sebagai Material Counter Electrode Platina Pada Pembuatan Dye Sensitized Solar Cell&rdquo;.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">Melalui tahapan yang panjang yaitu: pendaftaran, seleksi abstrak, seleksi full paper, hingga sampai final tim Gantari menjelaskan proses yang panjang ini merupakan buah dari hasil perjuangan penelitian selama ini, dari tanggal 20 Agustus 2021-7 November 2021.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">Selama penelitian berlangsung, menurut Viqry kendala yang dihadapi tim tidak terlalu berat, terlebih dengan hadirnya dukungan dari elemen dekanat, dosen dan beberapa fasilitas pendukung lainnya.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">&ldquo;Departemen Teknik Kimia mendukung penuh dalam rangka penelitian lomba seperti ini. Mulai dari dosen pembimbing, WD 1, serta kajur juga memberikan semangat. Fasilitas seperti lab pun juga terbuka luang mendukung setiap proses penelitian,&rdquo; ungkap Viqry.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">Ungkapan Viqry juga selaras dengan Rafli, mahasiswa berprestasi I FT USU. Rafli menambahkan bahwa yang paling menyulitkan di gelaran kali ini adalah proses pembuatan DSSC.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">&ldquo;Untuk duka nya, mungkin karena harus berjuang dengan bolak-balik ke lab sewaktu pembuatan DSSC,&rdquo; tambah Rafli.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">Aravi yang merupakan stambuk termuda di tim mengungkapkan bahwa kendala yang paling besar ia temui ada di domisilinya yang jauh dari kampus dan harus beberapa kali menempuh perjalanan jauh.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">&ldquo;Untuk kendala dari saya yaitu karena saya sedang tidak di Medan dan harus beberapa kali pulang balik ke Medan,&rdquo; ucap mahasiswa yang berdomisili di Kisaran ini.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">Berbekal semangat yang tinggi dan ide yang inovatif, tim Gantari pun memberikan secerca tips dan trik dalam mengikuti LKTI. Rafli memberikan tips bahwa dalam mengikuti lomba LKTI, pemilik ide pun harus kritis dalam mencari celah karyanya.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">&ldquo;Mahasiswa yang ingin mengikuti LKTI wajib kritis terhadap karya sendiri, mengalisa celah kekurangan ide, serta mempertanyakan kekuatan ide sendiri. Sumber pustaka yang digunakan usahakan selengkap dan sebaru mungkin. Dan terakhir, latihan presentasi se-intens mungkin dengan tim, karena jikalaupun ide nya bagus tapi pada saat presentasi nya tidak baik ,aksud dan tujuan ide nya tidak akan tersampaikan pada juri,&rdquo; papar Rafli.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">Aravi sendiri, menyampaikan bahwa ini adalah kali pertama dia mengikuti LKTI. Menurutnya, yang paling penting dalam LKTI adalah pengujian langsung dan studi literatur.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">&ldquo;Nah tips dari saya di&nbsp;<em>paper</em>&nbsp;nya sendiri kita nentuin itu dia pengujian langsung atau hanya studi literatur jadi saat presentasi itu kita tidak kebingungan jika ada pertanyaan seperti itu. Terus melakukan pengujian, tidak spek data karena akan berakibat fatal dan itu menjadi penilaian yang signifikan dari jurinya,&rdquo; terangnya.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">Viqry pun sepakat dengan Aravi. Menurutnya ada beberapa tambahan tips dalam mengikuti LKTI. Mulai dari menghasilkan Karya Tulis Ilmiah yang berbasis penelitian, kerja sama tim, hingga menggali potensi lokal yang ada di daerah kita sendiri.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">&ldquo;Nah ada beberapa hal yang perlu dicatat bagi teman teman yang mau ikutan LKTI. Pertama, selalu hasilkan KTI berbebasis penelitian (ada data primer yang diperoleh sendiri, bukan sekedar studi literatur). Ini untuk membantu mengasah&nbsp;<em>research skill</em>&nbsp;kita dan membuktikan apakah gagasan di KTI kita emang bisa dibuktikan apa engga. Kedua, kerja sama tim. Disini kita harus percaya sama kemampuan tim kita. Meskipun mungkin posisinya kita sebagai senior, bukan berarti kita tau semua. Bisa saja ada anggota tim yang lebih muda dari kita tapi punya pengetahuan/skill yang juga mumpuni. Jadi harus kolaboratif. Ketiga, usahakan untuk menggali potensi lokal daerah kita. Contohnya dalam penelitian ini kami pakai pelepah kelapa sawit yang notabene nya adalah potensi lokal Sumatera Utara,&rdquo; sambung Viqry.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">Rafli menutup dengan menyampaikan pesannya pada seluruh mahasiswa Universitas Sumatera Utara. Dimana lomba-lomba ilimiah ini yang mampu memaksimalkan potensi diri dan berkontribusi untuk bangsa dan tanah air.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">&ldquo;Lomba-lomba ilmiah seperti LKTI ini merupakan peluang untuk kita dapat memaksimalkan potensi diri dan juga berkontribusi terhadap bangsa. Harapannya ide-ide yang di gagaskan menjadi KTI terus diperjuangkan agar dapat di implementasikan. Tidak hanya berhenti menjadi KTI. Setiap mahasiswa memiliki kemampuan untuk berpikir kritis, lomba-lomba keilmiahan seperti inilah yang menjadi wadah untuk menyalurkannya,&rdquo; papar Rafli</p>\r\n\r\n<p style=\"margin-left:35.45pt\">Viqry juga menambahkan bahwa mahasiswa USU tak boleh berkecil hati apalagi minder. Viqry juga mengingatkan kepada mahasiswa USU agar selektif dalam mengikuti perlombaan karena diluar sana ada banyak ajang perlombaan predator yang hanya menginginkan uang.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">&ldquo;Tetap semangat untuk semua mahasiswa USU. Jangan minder dengan kampus-kampus lain karena sudah banyak bukti kalau kita bisa sejajar dengan mereka. Tetap selektif memilih ajang perlombaan, jangan sembarang ikutan karena banyak&nbsp;<em>event predator</em>&nbsp;dengan embel-embel internasional di luar sana yang tidak memberikan esensi penelitian ke kita,&rdquo; pungkasnya.</p>\r\n\r\n<p style=\"margin-left:35.45pt\"><strong>Redaktur: Muhammad Fadhlan Amri</strong></p>\r\n', '2021-11-25 04:27:52', 2, 0),
(10, 'Keren! Ahmad Maulana Berhasil Menjadi Juara 1 Lomba Poster Ilmiah pada Online National IYSA Sumatera', 1, 'juara 1 lomba poster ilmiah (berita prestasi 5).jpg', '<p style=\"margin-left:35.45pt\"><strong>Suara USU, MEDAN</strong>. Kabar baik datang dari Ahmad Maulana Surbakti, mahasiswa USU stambuk 2019 yang belum lama ini mendapatkan juara 1 pada kategori lomba poster ilmiah di Online National IYSA Sumatera Competition (ONIC) 2021. ONIC 2021 merupakan suatu kompetisi ilmiah yang diadakan oleh organisasi Indonesia Young Scientist Association (IYSA) regional Sumatera pada 24 Juli s.d 31 Agustus 2021. Kompetisi ini dapat diikuti oleh pelajar dengan rentang usia 15-25 tahun.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">Terdapat 3 kategori lomba pada ONIC 2021 ini, yaitu poster ilmiah, karya tulis ilmiah, dan esai. Ahmad sendiri hanya mengikuti satu kategori lomba, yaitu poster ilmiah. Ia juga tergabung dalam komunitas yang bergerak di bidang prestasi, pembinaan, dan pengabdian. Di dalam komunitas tersebut, para anggota saling mengikuti kompetisi yang berbeda dan juga berhasil mendapat juara 1. Komunitas tersebut menjadi wadah bagi Ahmad dalam mengikuti lomba ini.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">Ahmad mendapatkan pengalaman yang berkesan selama mengikuti lomba ONIC 2021. Mengingat lomba poster ilmiah merupakan yang pertama kali untuknya, ia bisa mendapat wawasan lebih mengenai bagaimana pembuatan poster ilmiah dan kriterianya.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">Ahmad memaparkan manfaat positif yang ia dapatkan setelah mengikuti lomba ini, salah satunya menambah wawasan dan mengasah kemampuan desainnya.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">&ldquo;Manfaat yang pertama, saya jadi punya pengalaman yang berarti selain dari bangku perkuliahan, di luar menang atau kalahnya. Manfaat kedua, saya merasa semakin bertambahnya wawasan dan kemampuan saya dalam desain setelah saya mengikuti berbagai perlombaan, termasuk perlombaan ini. Karena ketika kita membuat suatu karya dalam perlombaan, umumnya kita akan berliterasi untuk mencari dan mengembangkan sebuah ide, dan ketika berliterasi maka kita akan semakin memperkaya diri akan wawasan.&rdquo;</p>\r\n\r\n<p style=\"margin-left:35.45pt\">Ahmad juga menceritakan usahanya dalam mengikuti lomba ini. Dimulai dari mencari ide yang cocok dan mendengarkan masukan dan saran revisi dari teman-temannya. Selain itu, ia juga melihat beberapa karya poster orang lain yang pernah menang, dengan tujuan meningkatkan standar desainnya.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">&ldquo;Kalau usaha saat membuat karya, sih. Harus nyari ide yang cocok dulu, terus sering minta saran berulang-ulang kepada teman-teman. Kalau ada saran revisi lagi dan lagi, sampai desainnya&nbsp;<em>bener-bener</em>&nbsp;kelihatan bagus di banyak mata. Selain itu, ada satu hal lagi,&nbsp;<em>gatau</em>&nbsp;ini usaha atau&nbsp;<em>gak.</em>&nbsp;Jadi, setiap mau lomba desain saya ada kebiasaan untuk cari-cari karya poster orang lain juga yang pernah juara. Tujuannya untuk&nbsp;<em>ningkatin</em>&nbsp;standar desain saya, kalau sering liat desain yang bagus, kita juga punya standar yang bagus untuk desain sendiri,&rdquo; paparnya.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">Ia berharap, tahun depan lomba ini dapat terlaksana kembali dengan lebih baik dan mahasiswa USU dapat mempertahankan prestasinya. Baginya tidak ada yang perlu diperbaiki, ia hanya memberi masukan agar ada presentasi dalam lomba posternya.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">&ldquo;Harapannya untuk acara lomba ini, semoga tahun depan dapat terlaksana kembali dan semakin baik, serta mahasiswa USU masih dapat mempertahankan prestasi di&nbsp;<em>event</em>&nbsp;ini maupun&nbsp;<em>event</em>&nbsp;lain. Untuk yang perlu diperbaiki tidak ada sih, tapi ingin kalau cabang lomba posternya ada presentasi juga gitu.&rdquo;</p>\r\n\r\n<p style=\"margin-left:35.45pt\"><strong>Redaktur: Wiranto Asruri Siregar</strong></p>\r\n', '2021-11-25 04:28:29', 1, 3),
(11, 'Kabar Gembira! USU Akan Gelar Wisuda Luring', 2, 'usu akan gelar wisuda luring (berita acara 1) .jpg', '<p style=\"margin-left:35.45pt\"><strong>Suara USU, Medan.&nbsp;</strong>Universitas Sumatera Utara akhirnya adakan wisuda luring pertama selama masa pandemi ini. Beberapa waktu lalu akun Instagram @official.usu memposting surat edaran perihal wisuda luring bagi wisudawan periode I TA. 2021/2022. Pada surat edaran tersebut diberitahukan bahwa untuk mengikuti acara wisuda luring, wisudawan harus menyertakan bukti tes hasil Swab PCR yang sampelnya diambil maksimal 3&times;24 jam.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">&nbsp;</p>\r\n\r\n<p style=\"margin-left:35.45pt\">Berita ini mengundang banyak tanggapan dari mahasiswa yang akan wisuda di periode I TA. 2021/2022. Momen sakral ini telah ditunggu-tunggu oleh mahasiswa, lantaran USU hanya melakukan wisuda secara online sejak masuknya pandemi ke Indonesia.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">Salah satu wisudawan periode I TA 2021/2022, Annisa Zahara mengungkapkan kebahagiaannya dengan wisuda luring ini, terlebih lagi Annisa mendapatkan gelar cumlaude tertinggi di fakultasnya pada wisuda periode ini.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">&ldquo;Jujur wisuda luring sudah ditunggu-tunggu wisudawan, begitu ada kabar akan wisuda luring seluruh wisudawan merasa senang. Mungkin ada sedikit kecewa karena orangtua tidak boleh ikut tapi hal tersebut bisa dimaklumi karena kondisi sedang pandemi Covid-19,&rdquo; ujar mahasiswa Fakultas Kesehatan Masyarakat itu.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">Di sisi lain, salah satu mahasiswa dari FISIP menyatakan keterkejutannya lantaran pemberitahuan mendadak tentang wisuda luring membuat para mahasiswa kurang persiapan.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">&ldquo;Senang ya kan bisa join bareng kawan gitu kan. Keselnya ya tiba-tiba offline. Aku mikir, kalian semua pada gak konfirmasi duluan gitu, kesepakatan mau buat wisuda offline atau online. Mana SK gak langsung&nbsp;keluar,&rdquo; ujar Jee.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">Jee juga berpesan,&nbsp;USU dapat lebih bijak menanggapi kemajuan yang ada. &ldquo;Harapan untuk USU kedepannya semoga lebih baik lagi, makin bijak dengan segala kemajuan ya ada, biar gak ngeribetin lagi untuk ngelakuin segala sesuatu itu dua kali,&rdquo; tutup mahasiswa FISIP itu.</p>\r\n\r\n<p style=\"margin-left:35.45pt\"><strong>Redaktur: Yulia Putri Hadi</strong></p>\r\n', '2021-11-25 04:29:09', 3, 3),
(12, 'Adakan Aksi Donor Darah, KMB-USU: Drop of Blood, Million of Hopes', 2, 'aksi donor darah (berita acara 2).jpeg', '<p style=\"margin-left:35.45pt\">Dalam rangka untuk meningkatkan kesadaran masyarakat tentang pentingnya donor darah dalam segi saintifik maupun sosial, pada Minggu&nbsp;(31/10),&nbsp;KMB-USU kembali menyelenggarakan donor darah. Acara donor darah ini diadakan setiap tahun. Tahun ini KMB-USU mengangkat tema &ldquo;Drop of Blood, Million of Hopes&rdquo;.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">Donor darah ini terbuka untuk umum dengan jumlah&nbsp;71&nbsp;peserta. Acara donor darah ini dilaksakan di Cambridge City&nbsp;Square Lt.2 dengan tetap mengikuti protokol kesehatan.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">KMB-USU berharap&nbsp;dengan diadakannya acara donor darah dapat menambah stok darah PMI dan dapat digunakan dalam situasi urgen sesuai dengan tujuan yang ada.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">&ldquo;Semoga kedepannya masyarakat lebih antusias untuk menghadiri acara donor darah, baik diadakan oleh pihak manapun, serta masyarakat umum dapat lebih mengenal KMB &ndash; USU,&rdquo; harap Ketua Panitia Felix Idwan.</p>\r\n\r\n<p style=\"margin-left:35.45pt\"><strong>Redaktur : Yulia Putri Hadi</strong></p>\r\n', '2021-11-25 04:29:42', 1, 2),
(13, 'Digelar Secara Hybrid, PIMNAS ke-34 USU Resmi Dibuka!', 2, 'pimnas-34 resmi dibuka (berita acara 3).jpeg', '<p style=\"margin-left:35.45pt\"><strong>Suara USU, MEDAN.&nbsp;</strong>Berlokasi di Gedung Biro Rektorat pada Selasa (26/10) malam, Pekan Ilmiah Nasional Ke-34 resmi dibuka. Pada gelaran kali ini, dilaksanakan secara hybrid dimana selain dari lokasi yang disebutkan, acara juga ditayangkan dan digelar di Zoom Meetings dan Youtube PIMNAS Ke-34.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">Dalam pembukaan PIMNAS Ke-34 ini, hadir beberapa tokoh dari berbagai latar belakang mulai dari Rektor dan jajarannya, Wali Kota Medan Bobby Nasution, PLT Kepala Pusat Prestasi Nasional Asep Sukmayadi, Ketua Dewan Juri PIMNAS ke-34 Prof Dr Ir Nuni Gofar dari Universitas Sriwijaya dan Menteri Pendidikan dan Kebudayaan yang juga hadir dan memberikan kata sambutan secara virtual.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">Acara diawali dengan 8 tarian khas Sumatera Utara, yang kemudian dilanjutkan dengan kata sambutan Edy Ikhsan selaku Ketua Umum PIMNAS Ke-34. Dalam Kata Sambutannya, Edy menyampaikan sejumlah keterangan terkait statistik PIMNAS kali ini. Ia juga berharap agar PIMNAS kali ini bisa berjalan dengan lancar dan tertib.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">&ldquo;PIMNAS Ke-34 diikuti oleh 3.126 mahasiswa, yang tergabung 735 kelompok PKM berasal dari 108 Perguruan Tinggi seluruh Indonesia. jumlah 35 kelas penjurian, dimana 18 kelas dari FASILKOM-TI dan 17 kelas di Fakultas Kedokteran Gigi. Tim juri berjumlah 107 orang, hadir luring 98 orang dan hadir daring 9 orang. Kami berharap PIMNAS Ke-34 ini berlangsung dengan sukses, lancar, aman dan tertib,&rdquo; papar dosen Fakultas Hukum ini.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">&nbsp;</p>\r\n\r\n<p style=\"margin-left:35.45pt\">Rektor Universitas Sumatera Utara, Muryanto Amin pun tak luput memberikan kata sambutan. Ia menyatakan kesiapan USU dalam melaksanakan amanah yang telah diberikan.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">&ldquo;Sesaat lagi akan kita mulai dan semua rangkaian acaranya dilaksanakan. Terimakasih atas amanah yang telah diberikan. Insyaallah kami siap melaksanakan amanah dan tugas yang diberikan sebaik-baiknya,&rdquo; ucap mantan Dekan FISIP ini.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">Lebih lanjut, Rektor menyebutkan bahwa PIMNAS ini merupakan kontribusi nyata USU dalam perwujudan Tri Dharma Perguruan Tinggi.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">&ldquo;PIMNAS ini merupakan salah satu bentuk kontribusi dari Tri dharma Perguruan Tinggi. PIMNAS Ke-34 ini memfasilitasi seluruh ide, dan kita harus semangat untuk terus melangkah bersama berjuang mengupayakan kesuksesannya. Berbagai macam perubahan dan saat ini dunia sangat membutuhkan kontribusi kita semua menjadi yang lebih baik dan mampu memberikan solusi berbagai masalah kemanusiaan dan berkontribusi untuk kemajuan negara,&rdquo; terang Rektor.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">Lebih lanjut Rektor berharap ini merupakan langkah dan jembatan untuk seluruh peserta meraih prestasi atas nama USU</p>\r\n\r\n<p style=\"margin-left:35.45pt\">&ldquo;Semoga bisa menjadi jembatan emas yang memediasi seluruh upaya para peserta untuk meraih prestasi atas nama seluruh civitas akademika Universitas Sumatera Utara,&rdquo; pungkasnya.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">&nbsp;</p>\r\n\r\n<p style=\"margin-left:35.45pt\">Acara kemudian dilanjutkan dengan berbagai pertunjukan seperti parade para kontingen seluruh Indonesia, penyerahan piala PIMNAS Ke-34 kepada tuan rumah dari pemenang sebelumnya, pertunjukan&nbsp;<em>mapping artworks&nbsp;</em>dan tradisi lompat batu dari Nias.</p>\r\n\r\n<p style=\"margin-left:35.45pt\"><strong>Redaktur: Yulia Putri Hadi</strong></p>\r\n', '2021-11-25 04:30:21', 4, 0);
INSERT INTO `berita` (`id_berita`, `judul`, `id_kategori`, `gambar`, `teks_berita`, `tgl_posting`, `id_admin`, `dilihat`) VALUES
(14, 'Kementerian Unit Kegiatan Mahasiswa Adakan Open Recruitment Panitia Duta Mahasiswa USU', 2, 'open recruitment panitia duta mahasiswa (berita acara 4).jpg', '<p style=\"margin-left:35.45pt\"><strong>Suara USU, MEDAN</strong>. Kementerian Unit Kegiatan Mahasiswa mengadakan o<em>pen recruitment</em>&nbsp;Panitia Duta Mahasiswa USU. o<em>pen recruitment</em>&nbsp;Panitia Duta Mahasiswa USU dimulai dari tahap pendaftaran online 9 s.d 13 Oktober 2021, pengumuman seleksi berkas 14 Oktober 2021, kemudian tahap wawancara 16 s.d 17 Oktober 2021, dan tahap yang terakhir adalah pengumuman akhir pada 19 Oktober 2021.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">Divisi yang dibutuhkan pada kepanitiaan Duta Mahasiswa USU ini adalah Divisi Acara, PDD, PTT, Administrasi, Humas, Keamanan &amp; P3K, Konsumsi, dan Sponsorship.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">Syarat untuk menjadi panitia Duta Mahasiswa USU adalah mahasiswa aktif USU stambuk 2018-2020, berkomitmen dan bertanggung jawab, berdomisili di Medan, wajib mengikuti akun Instagram @official.pemausu, @kemen_ukm.pemausu, dan @dutamahasiswa.usu; Khusus untuk Divisi PDD harus melampirkan portofolio, dan minimal sudah mendaptkan vaksin pertama.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">Nazura Octaprilia, mahasiswa jurusan Biologi stambuk 2018 mengatakan bahwa ia sangat berharap semua panitia Duta Mahasiswa USU memiliki semangat yang tinggi, berkomitmen, dan bertanggung jawab dalam melaksanakan kegiatan ini, &ldquo;Yang pasti kami mengharapkan semua panitia memiliki semangat yang tinggi, berkomitmen, dan bertanggung jawab dalam menjalankan kepanitiaan ini nantinya,&rdquo; ungkapnya.</p>\r\n\r\n<p style=\"margin-left:35.45pt\"><strong>Redaktur : Wiranto Asruri Siregar</strong></p>\r\n', '2021-11-25 04:31:03', 1, 6),
(15, 'Puncak Dies Natalis ke-69, USU Adakan Sidang Terbuka dan Luncurkan Telemedicine!', 2, 'puncak dies natalis ke-69 (berita acara 5).jpeg', '<p style=\"margin-left:35.45pt\">Universitas Sumatera Utara mengadakan Sidang Terbuka sebagai acara puncak Dies Natalis ke 69 Universitas Sumatera Utara pada Selasa (21/09). Acara ini menampilkan orasi ilmiah oleh Prof. Dr. dr Arman Bhakti Pulungan, Executive Director International Pediatric Association.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">Acara yang diselenggarakan secara hybrid ini mengusung tema &ldquo;Working Together to Protect Our Health Against COVID-19&rdquo;. Dengan makna USU mengedepankan peran kampus dalam penanggulangan Covid-19 di Indonesia dan Sumatera Utara secara khusus.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">Presiden Joko Widodo yang hadir turut memberikan sambutan berharap USU menjadikan usia 69 Tahun sebagai momentum yang tepat untuk memantapkan langkah internasionalisasi agar USU menjadi pusat pengembangan ilmu pengetahuan, teknologi, inovasi yang unggul.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">Selain itu, Menko Maritim dan Investasi Luhut B. Pandjaitan, Mendikbudristek Nadiem Makarim, Gubernur Sumatera Utara Edy Rahmayadi, Wakil Gubernur Sumatera Utara Musa Rajekshah dan Wali Kota Medan Bobby Nasution juga berhadir dan memberikan selamat.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">Rektor Universitas Sumatera Utara, Dr. Muryanto Amin, dalam sambutannya mengatakan, &ldquo;USU telah berkontribusi dalam membantu Pemerintah menangani Covid-19 dengan memberikan pelayanan melalui Rumah Sakit Umum USU,&rdquo;</p>\r\n\r\n<p style=\"margin-left:35.45pt\">&ldquo;RS USU juga telah mengadakan vaksinasi massal kepada masyarakat dengan memberikan vaksin kepada remaja, ibu hamil, lansia, pasien rentan dan umum,&rdquo; lanjut Rektor.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">Muryanto Amin juga mengajak seluruh masyarakat Sumut untuk berdoa agar pandemi segera berlalu dan meminta masyarakat agar tetap mematuhi Prokes.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">&ldquo;Mari kita terus mendoakan agar pandemi segera berlalu dan kita dapat bangkit membangun kejayaan dan kemajuan bangsa di masa-masa mendatang,&rdquo; ujar Rektor.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">Dalam acara puncak Dies Natalis ke-69 USU, USU juga meluncurkan Telemedicine, platform layanan kesehatan jarak jauh (<em>online</em>) kepada penderita Covid-19 yang menjalani isolasi mandiri. Telemedicine ini adalah bentuk pengabdian masyarakat USU untuk membantu pasien Covid-19. Dengan layanan ini, pasien bisa berkonsultasi secara online serta mendapatkan obat yang diantar langsung ke alamat pasien.</p>\r\n\r\n<p style=\"margin-left:35.45pt\"><strong>Redaktur: Muhammad Fadhlan Amri</strong></p>\r\n\r\n<p style=\"margin-left:35.45pt\">&nbsp;</p>\r\n', '2021-11-25 04:31:45', 5, 15);

-- --------------------------------------------------------

--
-- Table structure for table `buku_tamu`
--

CREATE TABLE `buku_tamu` (
  `komentar_id` int(11) NOT NULL,
  `komentar_pengirim` varchar(100) NOT NULL,
  `komentar_email` varchar(100) NOT NULL,
  `komentar_isi` text NOT NULL,
  `komentar_status` enum('ya','tidak') NOT NULL DEFAULT 'tidak',
  `komentar_tgl` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `buku_tamu`
--

INSERT INTO `buku_tamu` (`komentar_id`, `komentar_pengirim`, `komentar_email`, `komentar_isi`, `komentar_status`, `komentar_tgl`) VALUES
(1, 'steven', 'steven@gmail.com', 'beritanya sangat update! mantap!', 'ya', '2021-01-18 06:40:04'),
(2, 'luis', 'luis0208@gmail.com', 'kategori beritanya kurang banyak! semoga kontennya diperbanyak!', 'ya', '2021-01-19 19:30:35'),
(3, 'Johansen', 'johansensihombing099@gmail.com', 'Sangat bagus beritanya', 'ya', '2021-11-02 09:37:26'),
(4, 'beatric', 'beatric88@gmail.com', 'Saya sangat senang membaca beritanya', 'ya', '2021-11-25 07:50:20'),
(5, 'luis', 'luis@gmail.com', 'web nya sangat bermanfaat untuk pelajar', 'tidak', '2021-12-13 17:54:36');

-- --------------------------------------------------------

--
-- Table structure for table `halaman`
--

CREATE TABLE `halaman` (
  `id_hal` int(11) NOT NULL,
  `nm_halaman` varchar(30) NOT NULL,
  `link` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `halaman`
--

INSERT INTO `halaman` (`id_hal`, `nm_halaman`, `link`) VALUES
(1, 'Hubungi', 'contact.php'),
(2, 'Tentang Kami', 'about.php'),
(3, 'Komentar', 'buku-tamu.php');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(11) NOT NULL,
  `kategori` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `kategori`) VALUES
(1, 'Prestasi'),
(2, 'Acara'),
(3, 'Beasiswa');

-- --------------------------------------------------------

--
-- Table structure for table `pesan`
--

CREATE TABLE `pesan` (
  `pesan_id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `pengirim` varchar(50) NOT NULL,
  `subjek` varchar(100) NOT NULL,
  `pesan_isi` text NOT NULL,
  `status` varchar(5) NOT NULL,
  `tanggal` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pesan`
--

INSERT INTO `pesan` (`pesan_id`, `email`, `pengirim`, `subjek`, `pesan_isi`, `status`, `tanggal`) VALUES
(1, 'windy@gmail.com', 'windy', 'konten berita', 'hendaknya konten beritanya ditambah lagi supaya lebih bervariasi', 'dibac', '2021-01-18 06:38:09'),
(2, 'ilham@gmail.com', 'ilham', 'lowongan pekerjaan', 'saya ingin menjadi penulis artikel untuk website ini', 'dibac', '2021-01-19 19:28:48'),
(3, 'luis@gmail.com', 'Luis', 'Permintaan Kerja sama ', 'Saya ingin memasang iklan pada website anda', 'belum', '2021-12-13 17:46:12'),
(4, 'luis@gmail.com', 'Luis', 'Permintaan Kerja sama Iklan', 'Saya ingin memasang iklan di website anda', 'belum', '2021-12-13 17:48:29'),
(5, 'johansen@gmail.com', 'Johansen', 'Iklan', 'Saya ingin memasang iklan', 'belum', '2021-12-13 18:01:57');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `berita`
--
ALTER TABLE `berita`
  ADD PRIMARY KEY (`id_berita`);

--
-- Indexes for table `buku_tamu`
--
ALTER TABLE `buku_tamu`
  ADD PRIMARY KEY (`komentar_id`);

--
-- Indexes for table `halaman`
--
ALTER TABLE `halaman`
  ADD PRIMARY KEY (`id_hal`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `pesan`
--
ALTER TABLE `pesan`
  ADD PRIMARY KEY (`pesan_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `berita`
--
ALTER TABLE `berita`
  MODIFY `id_berita` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `buku_tamu`
--
ALTER TABLE `buku_tamu`
  MODIFY `komentar_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `halaman`
--
ALTER TABLE `halaman`
  MODIFY `id_hal` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `pesan`
--
ALTER TABLE `pesan`
  MODIFY `pesan_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- Database: `lab7`
--
CREATE DATABASE IF NOT EXISTS `lab7` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `lab7`;

-- --------------------------------------------------------

--
-- Table structure for table `todo`
--

CREATE TABLE `todo` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `deskripsi` text NOT NULL,
  `tempat` varchar(100) NOT NULL,
  `waktu` datetime NOT NULL,
  `kategori` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `todo`
--

INSERT INTO `todo` (`id`, `id_user`, `judul`, `deskripsi`, `tempat`, `waktu`, `kategori`, `status`) VALUES
(1, 13, 'test', 'test', 'test', '2021-11-24 10:05:37', 'test', 'selesai'),
(2, 14, 'coba 2', '<p>Keterangan Kegiatan</p>', 'test', '2021-11-24 10:05:00', 'Magang', 'selesai');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `foto` varchar(100) DEFAULT NULL,
  `level` varchar(5) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `nama`, `email`, `foto`, `level`, `password`) VALUES
(14, 'wanda khalishah', 'wanda@gmail.com', '', 'user', 'b1462dec5dc2e177741c6f24e303d2d2'),
(15, 'administrator', 'admin@gmail.com', ' ', 'admin', 'b1462dec5dc2e177741c6f24e303d2d2');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `todo`
--
ALTER TABLE `todo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `todo`
--
ALTER TABLE `todo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- Database: `labpw`
--
CREATE DATABASE IF NOT EXISTS `labpw` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `labpw`;

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `user_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` text NOT NULL,
  `gender` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `user_details`
--

CREATE TABLE `user_details` (
  `user_id` int(11) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `status` tinyint(10) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_details`
--

INSERT INTO `user_details` (`user_id`, `username`, `first_name`, `last_name`, `gender`, `password`, `status`) VALUES
(1, 'rogers63', 'david', 'john', 'Female', 'e6a33eee180b07e563d74fee8c2c66b8', 1),
(2, 'mike28', 'rogers', 'paul', 'Male', '2e7dc6b8a1598f4f75c3eaa47958ee2f', 1),
(3, 'rivera92', 'david', 'john', 'Male', '1c3a8e03f448d211904161a6f5849b68', 1),
(4, 'ross95', 'maria', 'sanders', 'Male', '62f0a68a4179c5cdd997189760cbcf18', 1),
(5, 'paul85', 'morris', 'miller', 'Female', '61bd060b07bddfecccea56a82b850ecf', 1),
(6, 'smith34', 'daniel', 'michael', 'Female', '7055b3d9f5cb2829c26cd7e0e601cde5', 1),
(7, 'james84', 'sanders', 'paul', 'Female', 'b7f72d6eb92b45458020748c8d1a3573', 1),
(8, 'daniel53', 'mark', 'mike', 'Male', '299cbf7171ad1b2967408ed200b4e26c', 1),
(9, 'brooks80', 'morgan', 'maria', 'Female', 'aa736a35dc15934d67c0a999dccff8f6', 1),
(10, 'morgan65', 'paul', 'miller', 'Female', 'a28dca31f5aa5792e1cefd1dfd098569', 1),
(11, 'sanders84', 'david', 'miller', 'Female', '0629e4f9f0e01e6f20bc2066175e09f7', 1),
(12, 'maria40', 'chrishaydon', 'bell', 'Female', '17f286a78c74db7ee24374c608a2f20c', 1),
(13, 'brown71', 'michael', 'brown', 'Male', 'fa0c46cc4339a8a51a7da1b33e9d2831', 1),
(14, 'james63', 'morgan', 'james', 'Male', 'b945416fa907fac533d94efe1974ec07', 1),
(15, 'jenny0993', 'rogers', 'chrishaydon', 'Female', '388823cb9249d4cebc9d677a99e1d79d', 1),
(16, 'john96', 'morgan', 'wright', 'Male', 'd0bb977705c3cdad1e346c898f32a1b7', 1),
(17, 'miller64', 'morgan', 'wright', 'Male', '58b207ee33794b046511203967c8e0d7', 1),
(18, 'mark46', 'david', 'ross', 'Female', '21cdcb68a932871524e16680fac72e18', 1),
(19, 'jenny0988', 'maria', 'morgan', 'Female', 'ec9ed18ae2a13fef709964af24bb60e6', 1),
(20, 'mark80', 'mike', 'bell', 'Male', '084489b355edd349bca1c798788de19a', 1),
(21, 'morris72', 'miller', 'michael', 'Male', 'bdb047eb9ea511052fc690a8ac72a7d3', 1),
(22, 'wright39', 'ross', 'rogers', 'Female', '1b6859df2da2a416c5b0fa044b1c6a75', 1),
(23, 'paul68', 'brooks', 'mike', 'Male', '12d836bf64839f987338414ccbec657f', 1),
(24, 'smith60', 'miller', 'daniel', 'Male', '494610644518624d05e2bdc8b9df3c36', 1),
(25, 'bell43', 'mike', 'wright', 'Male', '2bd4e16a15f5527cb43282ee0ef94619', 1),
(26, 'rogers79', 'wright', 'smith', 'Female', '4df306580eed9e0758a759e8c54cc0d7', 1),
(27, 'daniel56', 'david', 'morgan', 'Male', 'c374aac91fe75e5ca9d4d46351c90291', 1),
(28, 'brooks85', 'smith', 'bell', 'Female', '5160256831bf840f1d0af550dce108cf', 1),
(29, 'mike30', 'paul', 'wright', 'Female', '44cd7d4f05cd775b99d2f68b169d2764', 1),
(30, 'paul92', 'michael', 'james', 'Female', '06a8728ad70c4ba4d298650d6f68d62c', 1),
(31, 'bell96', 'michael', 'sanders', 'Female', 'da77805fb5b220853e9ee1a888ea4870', 1),
(32, 'john8', 'john', 'rivera', 'Female', '8f4eedbae6486c91521dcc9e2e746978', 1),
(33, 'chrishaydon12', 'paul', 'michael', 'Male', '341f71ff99f299c10b7bd10bb0ffd5c0', 1),
(34, 'morgan13', 'ross', 'mark', 'Female', '8f9ecff6d4562e1f2d344f753c0d540e', 1),
(35, 'james83', 'brooks', 'smith', 'Female', '4180a37ebe6c56665ecc0c09f97749bc', 1),
(36, 'chrishaydon8', 'cooper', 'brown', 'Female', '48655cff7595c40da5309e9ed6c41095', 1),
(37, 'ross85', 'ross', 'daniel', 'Male', 'a2088dbb45598312937f9c2b39d76b6b', 1),
(38, 'ross46', 'cooper', 'miller', 'Male', 'ccbffd8ac04c96f4a19b8987221f389c', 1),
(39, 'smith4', 'jenny09', 'maria', 'Female', '61210cd033e05eefd7904582f42bd9f3', 1),
(40, 'paul4', 'paul', 'rivera', 'Female', '1f76110a33d9fe38bffcbd6d6dd49a29', 1),
(41, 'daniel26', 'maria', 'sanders', 'Male', 'c2b161779bf8f62752b8cdcfeabcb952', 1),
(42, 'chrishaydon2', 'bell', 'david', 'Female', 'aae5b1e30f985f2f6eedc4eec8dd2de8', 1),
(43, 'david82', 'rivera', 'cooper', 'Male', '10752c85ab371579e5744ecce8b8dfc0', 1),
(44, 'john97', 'mark', 'david', 'Female', '8eb2c044f3d3215c910973fded3718f9', 1),
(45, 'david57', 'paul', 'cooper', 'Male', '218a9c83939355cb9b81036857412d7f', 1),
(46, 'rivera100', 'brooks', 'david', 'Male', 'eefc9091a99e39015b020af27c2e80a6', 1),
(47, 'bell13', 'james', 'maria', 'Male', '90687b869096ea955b55a88a55b0b982', 1),
(48, 'brooks65', 'john', 'mark', 'Female', 'ac3a36b10fad8f53b5b0a3d5c4aab9de', 1),
(49, 'daniel40', 'rivera', 'jenny09', 'Female', '25c8261763223229a55949b9cbaac0c6', 1),
(50, 'cooper100', 'chrishaydon', 'sanders', 'Female', '9b86a2c6fa37f5842c75dcb6aa43453d', 1),
(51, 'morris14', 'bell', 'david', 'Female', '1b8e375c5826da045b4b80cbeaffb281', 1),
(52, 'smith82', 'morris', 'brooks', 'Female', '8f9459d4946b4025c0fc92a319f62769', 1),
(53, 'cooper35', 'cooper', 'mark', 'Male', 'b87551b47f0515089a0e6c197a0524c7', 1),
(54, 'morgan94', 'james', 'brooks', 'Male', '6cd7ed7e8f66ed1154abfe390c18b271', 1),
(55, 'michael92', 'brooks', 'morris', 'Male', 'c6e7402e9de6381fd6ee0936ae304bd4', 1),
(56, 'sanders48', 'morgan', 'sanders', 'Female', '1606ebcb8b02982109e5a9ad6817d93c', 1),
(57, 'brown76', 'rivera', 'cooper', 'Female', '45903192c7e1eae93463b4881aaf3d3e', 1),
(58, 'james16', 'bell', 'john', 'Female', '2b3f531f9940613c33217c4756844069', 1),
(59, 'michael26', 'wright', 'brown', 'Male', '3c86daac8f13d18f3da5f0fef72d2d41', 1),
(60, 'wright57', 'wright', 'sanders', 'Male', 'b6b283c151b7c2f8bd6307867fac6207', 1),
(61, 'wright68', 'smith', 'michael', 'Female', 'b6d7044f51097af805a29408ab2aa895', 1),
(62, 'brooks1', 'bell', 'rivera', 'Male', '87037e26aacc077d41d83f8d6c91a95c', 1),
(63, 'bell2', 'rivera', 'david', 'Female', '0479c8271fb4dbe47106570c92abbb74', 1),
(64, 'miller100', 'brooks', 'wright', 'Male', '39e5cddf9d6fe5c39d348b5e2d45c07d', 1),
(65, 'rogers53', 'chrishaydon', 'brown', 'Male', '0377bf6ebd9bacfbe96a492c532f0e3b', 1),
(66, 'mike1', 'michael', 'sanders', 'Male', 'b9ff9aa4450707644faf5cf872a57f41', 1),
(67, 'cooper57', 'daniel', 'mark', 'Female', 'adab67243e70ed8d0938696ba1dfdabe', 1),
(68, 'daniel38', 'bell', 'michael', 'Male', '753bd83042af00c1af6af82ae4236726', 1),
(69, 'mark2', 'brown', 'bell', 'Female', '5160c711eb1a1fb416cb296cfa30d3c6', 1),
(70, 'daniel79', 'rogers', 'john', 'Male', '97dbce061c4488e48613a6d66e57c1e1', 1),
(71, 'wright4', 'paul', 'smith', 'Female', 'be2fb6743dd0c143427d6fdbb61d82ab', 1),
(72, 'brown84', 'john', 'ross', 'Male', '738cb4da81a2790a9a845f902a811ea2', 1),
(73, 'paul41', 'wright', 'brooks', 'Male', '3ce24a34ab204d82e12e60e205ff5ede', 1),
(74, 'mark5', 'brooks', 'brown', 'Male', '751933d2077ded39b30aac68060b71c5', 1),
(75, 'jenny0994', 'brown', 'morgan', 'Male', '59bb0aea62b70ddc63832302636c713c', 1),
(76, 'morris53', 'chrishaydon', 'brown', 'Male', '422bc412471dd80dc4f174c2d9a7e021', 1),
(77, 'paul68', 'mark', 'smith', 'Female', '313afaad7095a093eea942a0da8398ee', 1),
(78, 'brooks86', 'brooks', 'ross', 'Male', '73bbba08c3776debd5837a2c0dfe1e8b', 1),
(79, 'james54', 'jenny09', 'morris', 'Male', '7f686fb7a9ba33dfee86197c127365f5', 1),
(80, 'rogers58', 'morgan', 'maria', 'Female', 'f1b9d20083738141fb8c72c4d3364b4f', 1),
(81, 'maria31', 'rogers', 'brooks', 'Male', '328bb700b7eee8e5cbb15839243d327b', 1),
(82, 'david5', 'rivera', 'brown', 'Male', '14ab3096cfe6e150a56280c789e6e1e1', 1),
(83, 'mark21', 'wright', 'maria', 'Female', '442eff629cdd5657580d8c6205050e19', 1),
(84, 'jenny0932', 'mike', 'brooks', 'Female', 'a45d934a95f56a43ad85752800cfa859', 1),
(85, 'john92', 'sanders', 'mike', 'Male', 'b945d691d0ffe06cb8a6a520119a90ef', 1),
(86, 'rogers98', 'james', 'jenny09', 'Male', '79c89f1132cc08e88456b035f12d0097', 1),
(87, 'rogers95', 'jenny09', 'bell', 'Female', 'f318e4c186ab19e3d3d3591a2e075d03', 1),
(88, 'james50', 'chrishaydon', 'mark', 'Male', 'ef650493f25a16d7f4ef206cd5354f9f', 1),
(89, 'miller80', 'sanders', 'chrishaydon', 'Male', '8d0027ca30d88ad9a9880d35174919d9', 1),
(90, 'mark29', 'bell', 'paul', 'Female', '21698003655695103412c11ffe08a118', 1),
(91, 'cooper77', 'michael', 'maria', 'Male', '101faf06bcf8140ead914fbe116c941a', 1),
(92, 'john24', 'brown', 'paul', 'Male', '93a5fe6210bfcdb573ccd348e19e6a56', 1),
(93, 'chrishaydon32', 'john', 'ross', 'Female', '5c6f05dfb66be73f1a6e8e48fabcfe44', 1),
(94, 'bell41', 'morris', 'chrishaydon', 'Female', 'd5273c01c17187153a1e725d27d51034', 1),
(95, 'ross99', 'wright', 'brown', 'Male', '2b27aec5a1caf4d613a8eb8154560f49', 1),
(96, 'smith9', 'miller', 'morris', 'Male', '97ee0765b9c05d35b53769a3c4133b13', 1),
(97, 'miller73', 'chrishaydon', 'morgan', 'Male', '6c4283471ace6b4af590c180bd13b1bf', 1),
(98, 'michael44', 'cooper', 'maria', 'Female', 'dd4d053a12a3d8450166dba9177bac2c', 1),
(99, 'michael36', 'miller', 'cooper', 'Female', '36ab21ccb2a64acd5351bbb59753df9d', 1),
(100, 'smith93', 'bell', 'mike', 'Female', '8fbfdb81391ef264ae8b0df7e7e91d25', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `user_details`
--
ALTER TABLE `user_details`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `user_details`
--
ALTER TABLE `user_details`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10001;
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin DEFAULT NULL,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"ada_apa_dengan_usu\",\"table\":\"admin\"},{\"db\":\"portalberita\",\"table\":\"admin\"},{\"db\":\"portalberita\",\"table\":\"berita\"},{\"db\":\"portalberita\",\"table\":\"kategori\"},{\"db\":\"beritapelajar\",\"table\":\"berita\"},{\"db\":\"portalberita\",\"table\":\"buku_tamu\"},{\"db\":\"portalberita\",\"table\":\"halaman\"},{\"db\":\"todolist\",\"table\":\"user\"},{\"db\":\"todolist\",\"table\":\"todo\"},{\"db\":\"labpw\",\"table\":\"produk\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin DEFAULT NULL,
  `data_sql` longtext COLLATE utf8_bin DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2021-12-21 15:12:33', '{\"Console\\/Mode\":\"collapse\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `portalberita`
--
CREATE DATABASE IF NOT EXISTS `portalberita` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `portalberita`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `username` varchar(40) NOT NULL,
  `password` varchar(100) NOT NULL,
  `nama_lengkap` varchar(50) NOT NULL,
  `foto` varchar(100) NOT NULL,
  `deskripsi` text NOT NULL,
  `level` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id_admin`, `username`, `password`, `nama_lengkap`, `foto`, `deskripsi`, `level`) VALUES
(1, 'johansen', 'johansen123', 'Johansen Sihombing', 'johansenn.jpg', 'penyuka makan dan rebahan', 'admin'),
(2, 'beatric', 'beatric123', 'Beatrics Sahcahyani Purba', 'beatricss.jpg', 'suka ati', 'admin'),
(3, 'luis', 'luis123', 'Luis Christoryan Silalahi', 'luiss.jpeg', 'penyuka game dan wanita', 'admin'),
(4, 'ilham', 'ilham123', 'Muhammad Ilham', 'ilhamm.jpeg', 'suka dia', 'admin'),
(5, 'steven', 'steven123', 'Steven Valentino', 'stevenn.jpg', 'penyuka ninja', 'admin'),
(6, 'windy', 'windy123', 'Windy Nabila', 'windyy.jpg', 'suka alam', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `berita`
--

CREATE TABLE `berita` (
  `id_berita` int(11) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `gambar` varchar(100) NOT NULL,
  `teks_berita` text NOT NULL,
  `tgl_posting` datetime NOT NULL,
  `id_admin` int(11) NOT NULL,
  `dilihat` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `berita`
--

INSERT INTO `berita` (`id_berita`, `judul`, `id_kategori`, `gambar`, `teks_berita`, `tgl_posting`, `id_admin`, `dilihat`) VALUES
(35, 'Simak Tips dan Trik dari Penerima Beasiswa Karya Salemba Empat!', 9, 'beasiswa karya salemba empat (berita beasiswa 1).jpg', '<p style=\"margin-left:35.45pt; margin-right:0cm; text-align:justify\"><strong><span style=\"color:#666666\">Suara USU, Medan.&nbsp;</span></strong><span style=\"color:#666666\">Yayasan Karya Salemba kembali membuka pendaftaran. Setiap tahun, ada puluhan ribu mahasiswa yang mendaftar, tetapi hanya 10% yang diterima. Terbayang bukan bagaimana sulitnya mendapat beasiswa ini? Salah seorang penerima beasiswa KSE, Andreas Sitompul membagikan tips sederhana untuk melewati berbagai tahap seleksi beasiswa ini.</span></p>\r\n\r\n<p style=\"margin-left:35.45pt; margin-right:0cm; text-align:justify\"><span style=\"color:#666666\">Karya Salemba Empat (KSE) membuka registrasi mulai awal hingga akhir April selama lima hari per gelombang. USU mendapat gelombang pada tanggal 14-19 April 2021. Untuk mendaftarnya kamu bisa mengakses link&nbsp;</span><span style=\"color:black\"><a href=\"http://www.beasiswa.or.id/\"><span style=\"color:#BB1919\">http://www.beasiswa.or.id/</span></a></span><span style=\"color:#666666\">.</span></p>\r\n\r\n<p style=\"margin-left:35.45pt; margin-right:0cm; text-align:justify\"><span style=\"color:#666666\">Andreas mengatakan bahwa pendaftar harus memastikan berkas administrasi yang lengkap, membuat essay semenarik mungkin dan dapat dipertanggungjawabkan saat wawancara nantinya. Kamu tidak perlu pusing untuk mencari judul essay, karena Yayasan Karya Salemba Empat yang akan menentukan judulnya. Saat mengikuti seleksi, Andreas mengerjakan delapan essay, seperti alasan mengapa layak diterima di beasiswa KSE ini, alasan kenapa memilih jurusan ini dan judul lain yang tertera di website pendaftaran. Jadi, dari delapan judul tadi dirangkum menjadi satu essay.</span></p>\r\n\r\n<p style=\"margin-left:35.45pt; margin-right:0cm; text-align:justify\"><span style=\"color:#666666\">&ldquo;Yang pastinya memperhatikan semua berkas administrasi, kemudian membuat essay yang menarik dan bisa juga&nbsp;<em>sharing</em>&nbsp;pengalaman dalam essay, latihan wawancara, dan yang terakhir memprediksi pertanyaan dari pihak yayasan,&rdquo; tutur mahasiswa Sosiologi itu.</span></p>\r\n\r\n<p style=\"margin-left:35.45pt; margin-right:0cm; text-align:justify\"><span style=\"color:#666666\">Menurut Andreas, bahan pertanyaan saat wawancara itu dari essay yang dibuat. Jadi, kamu harus menguasai essay yang kamu buat, agar tidak bingung untuk menjawab pertanyaannya. Dari situ kamu bisa mempelajari semua kemungkinan pertanyaan saat wawancara. Lebih baik lagi, persiapkan jawabannya dan latihan berulang-ulang. Kamu juga harus pandai mengatur bahasa tubuh maupun ekspresi karena merupakan salah satu penilaian.</span></p>\r\n\r\n<p style=\"margin-left:35.45pt; margin-right:0cm; text-align:justify\"><span style=\"color:#666666\">Andreas berharap semoga ke depannya beasiswa KSE ini dapat memperluas cakupan baik di PTN maupun PTS lain, sehingga bisa menambah kuota penerimaan beasiswa.</span></p>\r\n\r\n<p style=\"margin-left:35.45pt; margin-right:0cm; text-align:justify\"><span style=\"color:#666666\">Setiap penerima beasiswa memiliki pengalaman yang berkesan di setiap kegiatannya. Seperti itu juga yang dirasakan oleh Andreas. Menurutnya, pengalaman yang berkesan dari program beasiswa ini sangat banyak, seperti Kegiatan Bina Desa yang saat ini sedang berjalan, kegiatan Kawasan Rumah Pangan Lestari (KRPL), dan juga Bina Panti. Kamu juga akan diberi fasilitas untuk kuliah dari pihak yayasan yang bekerja sama dengan Inalum. Akan tetapi, belum semua terjun ke desa, hanya beberapa tim saja.</span></p>\r\n\r\n<p style=\"margin-left:35.45pt; margin-right:0cm; text-align:justify\"><span style=\"color:#666666\">&ldquo;Tetap semanagat dan isi berkas dan essay dengan baik dan jujur. Semangat!&rdquo; pesan Andreas untuk teman-teman yang mendaftar beasiswa KSE.</span></p>\r\n\r\n<p style=\"margin-left:35.45pt; margin-right:0cm; text-align:justify\"><strong><span style=\"color:#666666\">Redaktur: Yulia Putri Hadi</span></strong></p>\r\n\r\n<p style=\"margin-left:35.45pt; margin-right:0cm; text-align:justify\"><strong><span style=\"color:#666666\">&nbsp;</span></strong></p>\r\n', '2021-11-25 04:20:30', 1, 0),
(36, 'Sosialisasi Beasiswa LPDP: Siapkan Amunisi Terbaik', 9, 'sosialisasi beasiswa lpdp (berita beasiswa 2).jpeg', '<p style=\"margin-left:35.45pt; margin-right:0cm; text-align:justify\"><strong><span style=\"color:#666666\">Suara&nbsp;USU, MEDAN.&nbsp;</span></strong><span style=\"color:#666666\">Unit Pengembangan Pendidikan Universitas Sumatera Utara (UPP USU) menyelenggarakan sosialisasi bertajuk Mengenal Lebih Dekat Beasiswa LPDP&nbsp;pada Kamis (15/07). Webinar ini dilaksanakan melalui zoom meeting Narasumber diwebinar kali ini adalah seorang&nbsp;<em>executive secretary to president director of</em>&nbsp;LPDP, Trio Susilo.</span></p>\r\n\r\n<p style=\"margin-left:35.45pt; margin-right:0cm; text-align:justify\"><span style=\"color:#666666\">Beasiswa LPDP adalah program beasiswa yang dibiayai oleh pemerintah Indonesia melalui pemanfaatan Dana Pengembangan Pendidikan Nasional (DPPN). Dikelola oleh LPDP untuk pembiayaan studi lanjut pada program Magister atau S2 maupun program Doktoral atau S3 di Perguruan Tinggi terbaik di dalam dan di luar negeri.</span></p>\r\n\r\n<p style=\"margin-left:35.45pt; margin-right:0cm; text-align:justify\"><span style=\"color:#666666\">LPDP berdiri sejak tahun 2012 dengan tiga kor layanan utama yaitu 1)&nbsp;pengembangan dana, yang artinya menjamin keberlangsungan pendanaan pendidikan bagi generasi berikutnya melalui pengelolaan dana abadi pendidikan yang optimal, 2) beasiswa, yang artinya mempersiapkan pemimpin dan profesional masa depan indonesia melalui pembiayaan pendidikan, 3) riset, yang artinya mendorong riset strategis dan/atau inovatif yang implementatif dan menciptakan nilai tambah melalui pendanaan riset.</span></p>\r\n\r\n<p style=\"margin-left:35.45pt; margin-right:0cm; text-align:justify\"><span style=\"color:#666666\">Dalam webinar tersebut,&nbsp;Tri Susilo menjelaskan beberapa jenis beasiswa yang LPDP keluarkan yaitu Beasiswa Afirmasi, Beasiswa Targeted Group dan Beasiswa Umum. Dijelaskan juga, untuk mendukung kelancaran dan keberhasilan studi lanjut pada program magister atau S1 maupun program Doktoral atau S3 di Perguruan Tinggi tujuan, kepada penerima beasiswa diberikan dana yang meliputi beberapa komponen yaitu dana pendidikan, dana pendukung, dana tambahan khusus beasiswa pendidikan dokter spesialis, dan dana tambahan khusus beasiswa penyandang disabilitas.</span></p>\r\n\r\n<p style=\"margin-left:35.45pt; margin-right:0cm; text-align:justify\"><span style=\"color:#666666\">Tri Susilo menjawab salah satu pertanyaan dari peserta mengenai syarat mengambil beasiswa doktoral dari dalam negeri.</span></p>\r\n\r\n<p style=\"margin-left:35.45pt; margin-right:0cm; text-align:justify\"><span style=\"color:#666666\">&ldquo;Bisa disesuaikan jalurnya apa, apakah afirmasi, targeted atau reguler bisa dilihat di website LPDP. Yang harus disiapkan adalah kesiapan administrasi sama yakin apa yang mau diambil. Apakah harus mendaftar telebih dahulu ke universitas nya, tidak harus. Boleh daftar LPDP dulu baru daftar universitas atau dapar LOA dulu baru daftar universitas,&ldquo; jelasnya.</span></p>\r\n\r\n<p style=\"margin-left:35.45pt; margin-right:0cm; text-align:justify\"><span style=\"color:#666666\">Tri Susilo juga memberikan wejangan kepada teman-teman yang melamar beasiswa LPDP ini.</span></p>\r\n\r\n<p style=\"margin-left:35.45pt; margin-right:0cm; text-align:justify\"><span style=\"color:#666666\">&ldquo;Teman-teman jangan pernah meminta&nbsp;<em>excuses</em>&nbsp;untuk syarat-syarat yang memang sudah jelas abcd nya seperti apa&nbsp;<em>whats is kind white or black</em>&nbsp;ya. Siapkan dengan baik tidak perlu buru-buru ya, dilengkapi dengan baik. Kalau sudah melengkapi dengan baik persyaratan administrasi,&nbsp;<em>i do belive&nbsp;</em>kamu punya amunisi yang cukup untuk&nbsp;<em>the next step</em>,&nbsp;<em>when you have the ammunition i</em>ntinya. The perfect one gitu amunisi yang&nbsp;bagus dan lengkap, teman-teman bisa masuk ke tahapan selanjutnya.&rdquo;</span></p>\r\n\r\n<p style=\"margin-left:35.45pt; margin-right:0cm; text-align:justify\"><span style=\"color:#666666\">Mengenai persyaratan maupun penjelasan yang lebih detail, kamu bisa kunjungi web LPDP yaitu&nbsp;</span><span style=\"color:black\"><a href=\"http://www.lpdp.kemenkeu.go.id/\"><span style=\"color:#BB1919\">www.lpdp.kemenkeu.go.id</span></a></span><span style=\"color:#666666\">&nbsp;. Untuk teman-teman yang ingin menonton ulang webinar pada hari ini, kamu bisa menonton di Youtube UPP USU!</span></p>\r\n\r\n<p style=\"margin-left:35.45pt; margin-right:0cm; text-align:justify\"><strong><span style=\"color:#666666\">Redaktur: Yulia Putri Hadi</span></strong></p>\r\n', '2021-11-25 04:22:07', 1, 0),
(37, 'Beasiswa PSBB 2021 Sedang Membuka Pendaftaran Angkatan Ketiga, Buruan Cek Ketentuannya!', 9, 'beasiswa psbb 2021 (berita beasiswa 3)jpg.jpg', '<p style=\"margin-left:35.45pt\"><strong>Suara USU, MEDAN</strong>. Beasiswa Pemuda Semangat Bantu Bangsa (PSBB) sedang membuka pendaftaran angkatan ketiga sampai dengan 15 November 2021. Beasiswa PSBB ini merupakan bagian dari semangat bantu serta beasiswa ini juga sering mengadakan kegiatan bersedekah.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">Adapun beberapa syarat umum dari beasiswa ini sebagai berikut:</p>\r\n\r\n<ol>\r\n	<li>Mahasiswa muslim.</li>\r\n	<li>Maksimal berumur 21 tahun.</li>\r\n	<li>Mahasiswa aktif minimal semester 3 dengan IPK minimal 3.00.</li>\r\n	<li>Dapat membaca Al-quran dengan lancar, tidak merokok, tidak berpacaran, dan belum menikah.</li>\r\n	<li>Tidak sedang menerima beasiswa sejenis.</li>\r\n	<li>Aktif dalam kegiatan kampus dan sosial.</li>\r\n	<li>Memiliki dan aktif di akun media sosial.</li>\r\n	<li>Memiliki salah satu kemampuan: menulis, nge-vlog, desain, fotografi, dan videografi.</li>\r\n	<li>Bersedia aktif secara rutin setiap pekan untuk program sosial.</li>\r\n	<li>Bersedia mengikuti segala rangkaian program selama satu tahun.</li>\r\n</ol>\r\n\r\n<p style=\"margin-left:35.45pt\">Dava Warsyahdana selaku koordinator PSBB 2021/2021 mengatakan bahwa ketika mendaftar beasiswa PSBB ada beberpa berkas yang perlu dipersiapkan, diantaranya mengisi form pendaftaran, scan KTP/KTM, foto 4&times;3 (dalam bentuk JPG/PNG), scan KK, scan transkrip nilai, CV terbaru, surat keterangan aktif dalam organisasi, scan sertifikat prestasi, dan&nbsp;<em>screenshoot broadcast</em>&nbsp;informasi pendaftaran kelima grup Whatsapp.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">Mahasiswa Fakultas Pertanian ini juga mengatakan alasan utamanya tertarik mengikuti beasiswa ini karena pada dasarnya beasiswa PSBB mengajarkan untuk senantiasa bisa bermanfaat bukan hanya untuk diri sendiri, tetapi orang banyak khususnya orang yang membutuhkan. Dava juga menambahkan, selain bisa bermanfaat untuk sesama, banyak sekali pembelajaran yang ia dapatkan.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">Dalam program Beasiswa PSBB, setiap bulannya mengadakan gerak terjun langsung ke masyarakat untuk memberikan paket nutrisi dan sembako ke masyarakat yang membutuhkan, seperti para pejuang nafkah di pagi hari, orang yang kurang dalam finansial (miskin), orang yang terkena musibah atau bencana alam pada suatu daerah (banjir, longsor, gempa dll). Program rutin Beasiswa PSBB ini adalah kegiatan mentoring yang diadakan setiap pekan. Kegiatan mentoring ini seperti pembentukan karakter baik itu&nbsp;<em>softskill</em>&nbsp;maupun&nbsp;<em>hardskill</em>&nbsp;kita.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">&ldquo;Hampir semua kegiatan PSBB sangat berkesan, karena saya melihat senyuman mereka yang sangat tulus dan ikhlas ketika kita memberikan rezeki kepada yang membutuhkan,&rdquo; ungkapnya.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">Selain memiliki program kerja yang sangat menguntung kan untuk sesama, Beasiswa PSBB juga memberi keuntungan pada para penerimanya, seperti relasi nasional, memiliki mentor nasional dan internasional, mendapatkan pelatihan peningkatan kapasitas diri, berperan aktif melaksanakan program sosial, mendapat uang binaan pribadi Rp.400.000/bulan, dan banyak keuntungan lainnya.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">Koordinator Nasional PSBB ini berpesan untuk mahasiswa yang tertarik mendaftar Beasiswa PSBB, &ldquo;Semoga tetap semangat mengikuti tahap seleksinya, harus optimis bahwa kalianlah yang terbaik, jika belum bergabung dengan PSBB, masih banyak wadah untuk terus belajar dan senantiasa memberikan kebermanfaatan kepada banyak orang,&rdquo; ujarnya.</p>\r\n\r\n<p style=\"margin-left:35.45pt\"><strong>Redaktur: Wiranto Asruri Siregar</strong></p>\r\n', '2021-11-25 04:22:58', 1, 0),
(38, 'SEMBEA 2021 Kembali Digelar, Gudang Informasi Seputar Beasiswa', 9, 'SEMBEA 2021 (berita beasiswa 4).png', '<p style=\"margin-left:35.45pt\"><strong>Suara USU, MEDAN</strong>. SEMBEA (Seminar Beasiswa) 2021 kembali digelar untuk menyampaikan berbagai informasi mengenai beasiswa secara online melalui media Zoom Meeting, Sabtu (6/11/2021). SEMBEA kali ini mengangkat tema&nbsp;<em>&ldquo;Achieving Your Dream by Challenging Yourself with Scholarship&rdquo;.</em></p>\r\n\r\n<p style=\"margin-left:35.45pt\">Acara yang diadakan oleh UKMI As-Siyasah FISIP USU ini dihadiri oleh berbagai pemateri yang pernah menerima beasiswa, seperti Fadhillah Arafah dari Beasiswa Unggulan Kemendikbud, Miranda Lufti Nasution dari Beasiswa Tanoto Foundation, Kustiningsih Dwi dari Beasiswa Bank Indonesia, dan Muhammad Fachri Pradana dari Beasiswa Rumah Kepemimpinan.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">Acara dibuka dengan&nbsp;<em>opening ceremony,&nbsp;</em>kemudian dilanjutkan dengan kata sambutan Ketua UKMI As-Siyasah FISIP USU serta Ketua Pelaksana SEMBEA 2021. Setelah itu, acara dilanjutkan dengan pemaran berbagai materi yang menarik serta tips-tips untuk mendapatkan beasiswa. Sesi berlangsung sebanyak 4 kali. Setiap sesinya akan disuguhkan mengenai motivasi serta ilmu oleh para pemateri.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">Azhar Riadi sebagai ketua pelaksana SEMBEA 2021 mengungkapkan bahwa dengan memilih keempat pemateri berbeda dan telah pernah menerima beasiswa maka acara ini akan lebih menarik. Beasiswa yang dibahas juga sangat dikenal di lingkungan mahasiswa, &ldquo;Kenapa memilih keempat beasiswa tersebut untuk SEMBEA tahun ini, karena keempat beasiswa tersebut yang banyak diketahui oleh para mahasiswa dan terkenal dikalangan mahasiswa serta merupakan beasiswa yang bergengsi. Nah, dengan begitu dapat menarik para mahasiswa untuk mengetahui bagaimana sih cara supaya bisa dapat beasiswa tersebut.&rdquo;</p>\r\n\r\n<p style=\"margin-left:35.45pt\">Bukan hanya sekedar materi yang disampaikan dalam acara tersebut, tetapi di sela-sela sesi diadakan&nbsp;<em>ice breaking</em>&nbsp;untuk para peserta agar peserta bisa tetap fokus sekaligus rileks dalam mengikuti materi di setiap sesinya.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">Miranda Lufti Nasution salah satu pemateri berpesan kepada semua peserta agar tidak menjadi mahasiswa kupu-kupu. Tetapi, harus memiliki&nbsp;<em>planning</em>&nbsp;di setiap tahunnya untuk memotivasi diri sendiri dengan begitu mimpi-mimpi yang ingin dicapai dapat tercapai dan terealisasikan.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">Azhar berharap SEMBEA ini akan terus terlaksana kedepannya dalam memberikan informasi seputar beasiswa, &ldquo;Harapan saya yah, semoga SEMBEA tahun kedepannya tetap terlaksana sampai tiada akhirnya, agar bisa terus memberikan informasi seputar beasiswa lainnya dan menjadi bekal bagi para peserta yang ikut untuk menggapai cita-citanya,&rdquo; ungkapnya.</p>\r\n\r\n<p style=\"margin-left:35.45pt\"><strong>Redaktur: Wiranto Asruri Siregar</strong></p>\r\n', '2021-11-25 04:24:02', 1, 0),
(39, 'Rektor: USU Janjikan Beasiswa S2 dan Jadi Dosen bagi Mahasiswa yang Juara di PIMNAS', 9, 'rektor usu janjikan beasiswa (berita beasiswa 5).jpg', '<p style=\"margin-left:35.45pt\"><strong>Suara USU, MEDAN</strong>. Rektor USU, Muryanto Amin janjikan beasiswa S2 untuk mahasiswa USU yang nantinya meraih juara di ajang PIMNAS ke-34. Hal ini diungkapkan dalam kegiatan Konferensi Pers yang diselenggarakan di Gedung Biro Rektorat Universitas Sumatera Utara, Kamis (16/9/2021).</p>\r\n\r\n<p style=\"margin-left:35.45pt\">&ldquo;Harus ada harapan untuk semua orang, kalau ada yang juara, pasti kita berikan apresiasi. Untuk dia lanjutkan S2 nya dan untuk dia jadi dosen,&rdquo; ungkap pria yang akrab disapa Mury ini.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">Rektor juga menjelaskan bahwasanya, ini merupakan terobosan baru yang sedang dicoba USU dalam mengapresiasi mahasiswa S1 atau sarjana yang memiliki prestasi luar biasa selama aktif berkuliah.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">&ldquo;Ini bisa dicatat ya, kalau ada yang nanti mahasiswa USU yang bisa juara, kita janjikan dia beasiswa, tapi dengan perjanjian dia menjadi dosen. Karena kita ada program yang memberikan beasiswa S2 kepada mahasiswa yang luar biasa prestasinya dan kita langsung dia kontrakan untuk perjanjian dosen setelah dia tamat S2,&rdquo; terangnya di depan pers.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">Mury berharap 36 karya perwakilan USU bisa menang dan memberikan hasil positif untuk membawa nama baik USU di level nasional.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">&ldquo;Mudah-mudahan yang 36 ini menang semua, tapi ini beregu dan juga berkelompok. Mudah-mudahan ini bisa mendapatkan piala semua. Sehingga membawa nama baik kita di nasional,&rdquo; pungkasnya.</p>\r\n\r\n<p style=\"margin-left:35.45pt\"><strong>Redaktur: Wiranto Asruri Siregar</strong></p>\r\n', '2021-11-25 04:25:00', 1, 13),
(40, 'Raih Prestasi dengan Game, E-Sport USU Vine Juara 3 GAYATAMA ke-2', 7, 'e-sport vine juara 3 gayatama (berita prestasi 1).jpeg', '<p style=\"margin-left:35.45pt\"><strong>Suara USU, Medan</strong>. Mengharumkan nama besar Universitas Sumatera Utara, tim E-Sport USU Vine berhasil mendapatkan juara 3 PUBG dalam turnamen GAYATAMA yang diselenggarakan oleh UNESA. Terdapat 5 mahasiswa dalam tim USU Vine yakni, Iqbal (AET stambuk 20), Fauzi (Antropologi stambuk 19), Benjie (Akuntansi stambuk 18), Kevin (Pariwisata stambuk 19), dan Paul (MSP stambuk 20).</p>\r\n\r\n<p style=\"margin-left:35.45pt\">Gelar Karya dan Prestasi Mahasiswa (GAYATAMA) ke-2 merupakan agenda rutin yang diselenggarakan oleh Bidang Kemahasiswaan dan Alumni, Universitas Negeri Surabaya (UNESA). GAYATAMA ini ialah kegiatan tingkat nasional&nbsp;dan bertujuan untuk memberikan wadah kepada mahasiswa di seluruh Indonesia&nbsp;untuksemangat berkarya dan berpretasi di bidang akademis, seni, maupun olahraga dengan mengedepankan dan menjunjung tinggi sikap sportifitas dalam pengembangan diri secara optimal.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">Saat diwawancarai oleh Kru Suara USU pada Sabtu (06/11).Salah satu anggota tim USU Vine, Iqbal, mengaku bahwa ego dan strategi merupakan salah satu rintangan mereka dalam lomba ini.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">&ldquo;Ego antar&nbsp;<em>player</em>&nbsp;harus disatuin, kemudian&nbsp;<em>gameplay</em>&nbsp;kampus lain yang berbeda-beda dan baru pertama kali bertanding melawan kampus lain, mau ga mau dari strategi harus berdaptasi dengan&nbsp;<em>gameplay&nbsp;</em>kampus lain. Untuk rintangannya nya ya itu, ego masing-masing&nbsp;<em>player</em>&nbsp;harus saling mengalah, saling mengerti supaya&nbsp;<em>chemistry&nbsp;</em>nya bisa menyatu,&rdquo; jelas Iqbal.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">Manager USU Vine Hulwa Sefianggi&nbsp;menceritakan&nbsp;panjangnya proses dan perjuangan mereka di turnamen UNESA ini, mulai dari perdebatan antar pemain, latihan dan evaluasi. &ldquo;Mereka berlima ini punya sifat yang berbeda-beda tapi Alhamdulillah bisa bersatu dalam satu tim berkat&nbsp;<em>chemistry</em>&nbsp;dan juga cita-cita yang sama,&rdquo; ucapnya.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">Banyak harapan yang disampaikan oleh Hulwa sebagai manager untuk tim USU Vine agar semangat dalam mengejar serta mengukir prestasi di bidang E-Sport ini.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">&ldquo;Harapannya semoga USU Vine bisa membawa nama USU lebih sering lagi, kalo bisa sampai ke tahap&nbsp;<em>Internasional</em>,&rdquo; tutupnya.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">Stigma negatif memang selama ini masih melekat pada game karena masyarakat hanya mengetahui game itu &nbsp;sebagai suatu permainan yang menghabiskan waktu dan tidak bermanfaat, padahal game bisa menghasilkan prestasi seperti halnya tim USU Vine ini. Mengingat perkembangan zaman dan teknologi yang terus meningkat,&nbsp;membuat E-Sport selalu ada dalam setiap perlombaaan resmi.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">Dalam waktu dekat ini USU Vine akan bertanding kembali di Turnamen Nasional PUBG Mobile Campus Championship (PMCC) dan akan di ikuti oleh seluruh Universitas di Indonesia.</p>\r\n\r\n<p style=\"margin-left:35.45pt\"><strong>Redaktur: Yulia Putri Had</strong>i</p>\r\n', '2021-11-25 04:25:42', 1, 0),
(41, 'Tiga Mahasiswa USU Berhasil Torehkan Prestasi Pada Ajang Duta Bahasa Sumatera Utara 2021', 7, 'prestasi ajang duta bahasa (berita prestasi 2).jpeg', '<p style=\"margin-left:35.45pt\"><strong>Suara USU, Medan.&nbsp;</strong>Genap seminggu lebih satu hari, acara puncak pemilihan Duta Bahasa Sumatera Utara 2021 telah resmi berlalu. Acara puncak tersebut digelar pada 30 Mei 2021 lalu oleh Balai Bahasa Sumatera Utara di hotel Emerald Garden, Medan. Tidak disangka, diantara para finalis yang berkompetisi terdapat tiga mahasiswa Universtitas Sumatera Utara berhasil meraih gelar juara. Mereka adalah Ananda Rizqullah sebagai Duta Bahasa Utama (Mahasiswa Arsitektur USU 2020), Shevilla Mayori sebagai Wakil I Duta Bahasa (Mahasiswi Ilmu Komunikasi 2019), dan Haisyah Hani sebagai Duta Bahasa Favorit (Mahasiswi Biologi 2018).</p>\r\n\r\n<p style=\"margin-left:35.45pt\">Pemilihan Duta Bahasa Provinsi Sumatera Utara merupakan ajang tahunan yang rutin dilaksanakan. Para duta yang terpilih diseleksi berdasarkan kegiatan saat karantina dan kemampuan berbahasa, baik bahasa Indonesia yang diukur menggunakan Uji Kemahiran Berbahasa Indonesia (UKBI), kemampuan berbahasa daerah, maupun kemampuan berbahasa asing. Setiap tahun, Sumatera Utara menyumbang peserta untuk melaju ke ajang Duta Bahasa Nasional, yakni pemenang I dengan predikat Duta Utama, yang pada tahun ini jatuh kepada Ananda Rizqullah, seorang mahasiswa di Universitas Sumatera Utara</p>\r\n\r\n<p style=\"margin-left:35.45pt\">Mengikuti ajang Nasional merupakan kebanggaan yang luar biasa bagi setiap orang, tidak terkecuali bagi Ananda Rizqullah. Hal ini diperkuat oleh pernyataan Ananda seusai acara puncak dilaksanakan. Ia mengungkapkan merupakan sebuah kehormatan menjadi peraih duta bahasa utama.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">&ldquo;Ini adalah suatu kehormatan bagi Saya untuk bisa membawa nama Sumatera Utara di tingkat Nasional. Ini bukan amanah berat tapi besar, karena kalau berat itu soal rasa dan cara pandang. Namun kalau besar berarti ada ukurannya. Saya yakin dengan dukungan orang-orang terdekat saya, seperti Tresia sebagai pasangan dan 18 teman teman dubas 2021, balai bahasa, doa keluarga dan teman-teman semua yang mengetahui ini, Insya Allah amanah ini akan tuntas dikerjakan,&rdquo; ucapnya</p>\r\n\r\n<p style=\"margin-left:35.45pt\">Hal yang sama juga dilontarkan oleh Shevilla Mayori, Wakil I Duta Bahasa Sumatera Utara 2021 dari jurusan Ilmu Komunikasi USU. Baginya, mengikuti ajang Duta Bahasa telah adalah bagian dari pengalaman yang luar biasa. Pembekalan yang diberikan sangat bermanfaat, apalagi materi kebahasaan sesuai dengan jurusannya, Ilmu Komunikasi.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">&ldquo;Biarpun tidak menjadi Duta Utama, saya bangga dan bersyukur atas pencapaian ini. Saya sangat senang bisa melihat Ananda maju sebagai perwakilan dari Sumatera Utara. Kami disini akan terus menyokong keberhasilan mereka dan menjalankan amanah untuk menyosialisasikan bahasa yang baik dan benar di Sumatera Utara,&rdquo; papar Shevilla.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">Dan tidak ketinggalan, ada satu lagi mahasiswi USU yang meraih gelar juara Duta Bahasa Favorit Sumut 2021 yaitu Haisyah Hani. Ia mengaku sangat bangga dan bersyukur mendapatkan gelar baru sebagai Duta favorit. Hani juga berharap gelarnya bukan hanya sekedar julukan tetapi dapat memberikan manfaat bagi banyak orang.</p>\r\n\r\n<p style=\"margin-left:35.45pt\"><strong>Redaktur: Muhammad Fadhlan Amri</strong></p>\r\n', '2021-11-25 04:26:25', 1, 0),
(42, 'FASILKOM-TI Kukuhkan Khairul Imam Jadi Mahasiswa Berprestasi Utama di Kontestasi PILMAPRES', 7, 'fasilkom-ti kukuhkan mapres (berita prestasi 3).jpeg', '<p style=\"margin-left:35.45pt\">Pilmapres atau Pemilihan Mahasiswa Berprestasi adalah kontestasi tahunan untuk menyaring mahasiswa-mahasiswa terbaik USU setiap tahunnya. Nantinya usai digelar di fakultas, akan segera dilanjutkan ke level USU, dan nasional. Beberapa waktu lalu Pilmapres Fakultas sudah mulai digelar dan mengukuhkan beberapa nama sebagai juara.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">Di FASILKOM-TI contohnya,&nbsp; pada (02/03) Khairul Imam dari Ilmu Komputer 2019 mampu keluar sebagai MAWAPRES (Mahasiswa) Utama Fakultas yang terletak di pintu 1 USU ini. Kepada Suara USU, Imam menjelaskan bahwa proses dan persiapannya menjadi MAWAPRES telah dipersiapkannya dari jauh-jauh hari.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">&ldquo;Persiapan saya itu sudah sejak tahun lalu. Ada namanya tahun lalu itu Sekolah MAWAPRES, dari PEMA Fakultas, dan disitulah nampaklah konsepnya itu bagaimana yang dilakukan untuk ikut seleksi MAWAPRES, jadi dari Sekolah Mawapres saya ada rencana kedepannya bagaimana,&rdquo; ungkapnya pada Suara USU.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">Imam juga menjelaskan bahwa mahasiswa ini aktif di beberapa organisasi selama persiapan sebelum menjadi MAWAPRES Utama FASILKOM-TI.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">&ldquo;Jadi sudah ikut beberapa organisasi sejak dari tahun lalu, saat ini saya ikut aktif di 5 (lima) organisasi dari komunitas, untuk melatih saya berbicara, sempat juga menjadi&nbsp;<em>speaker&nbsp;</em>di&nbsp;<em>Webinar&nbsp;</em>kemarin, jadi&nbsp;<em>feeling,&nbsp;</em>untuk memulai organisasi itu sudah ada,&rdquo; tuturnya.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">&ldquo;Juga ikut duta Green Campus yang diangkat Universitas, dan itu dihitung di Pilmapres, jadi poin. Saya juga jadi asisten lab di ilmu komputer, di jurusan. Saya juga merupakan anggota UKMI bidang akademi dan kompetensi. Kegiatan kemasyarakatan juga sebagai bendahara umum di remaja mesjid, sebelumnya ketua umum,&rdquo; ungkap Imam,</p>\r\n\r\n<p style=\"margin-left:35.45pt\">Imam juga menjelaskan bahwa ada beberapa perbedaan di Pilmapres kali ini.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">&ldquo;Tahun lalu masih&nbsp;<em>offline,&nbsp;</em>tatap muka jadi penjuriannya di fakultas kemarin. Tahun ini secara&nbsp;<em>online</em>. Bedanya sangat terasa. Kalo&nbsp;<em>offline</em>&nbsp;penilaiannya banyak, dari&nbsp;<em>gesture&nbsp;</em>karena langsung terlihat. Kita sebagai peserta juga merasakan perbedaannya, ada kawan-kawan yang mendukung, lebih meriah&nbsp;<em>lah</em>&nbsp;bisa dibilang. Di&nbsp;<em>online&nbsp;</em>&nbsp;yang terlihat hanya kepala dan bahu, namun kita harus mampu membuat itu terlihat lebih interaktif,&rdquo; ucapnya.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">Imam menjelaskan bahwa ada 5 kriteria untuk menjadi MAWAPRES. Yaitu kepemimpinan, berpikir untuk maju, percaya diri, mengambil kesempatan dan inovatif.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">&ldquo;Aku rangkum ada 5 ya, yang pertama itu kepemimpinan, bisa dari organsiasi, baik menjadi ketua umum maupun staf, yang kedua itu berpikir untuk maju. Kita selama ini kuliah nanti mau ngapain aja, dan di Sekolah MAWAPRES ini saya dapet gambarannya jadi tahu apa yang mau dikerjakan, kemudian percaya diri, harus percaya diri dulu kalo ga, ya ga akan maju.&rdquo;</p>\r\n\r\n<p style=\"margin-left:35.45pt\">Keempat mengambil kesempatan, sangat banyak peluang yang tersebar selama pandemi, yaitu semua&nbsp;<em>webinar</em>, semua pelatihan, lomba-lomba itu berserakan di&nbsp;<em>instagram,&nbsp;</em>dan media sosial. Kemudian tiap tahun harus diambil dan kita coba terus, jadi kesalahan yang lalu kita perbaiki. Dan yang kelima inovatif, untuk kita mengerjakan&nbsp; KTI kita yang bermanfaat dan realistis untuk dikerjakan.&rdquo;</p>\r\n\r\n<p style=\"margin-left:35.45pt\">Terkait poin-poin dalam penilaian selama seleksi MAWAPRES, menurut Imam adalah prestasi dan organisasi menjadi kunci utama dan poin penting.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">&ldquo;Juara poster nasional Fakultas Psikologi USU, duta Green Campus, dan yang ketiga adalah IPK. IPK ini cukup baik lah Alhamdulillah. Semua pengalaman tadi itu karena berkat dukungan dari organisasi dan komunitas yang aku jalani selama ini, orang-orang yang mendukung aku, mewujudkan ide itu tadi.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">Kepada Suara USU Imam mengungkapkan bahwa beliau belum mengetahui pasti kapan Pilmapres USU terselenggara, namun menurutnya, universitas masih menunggu nama-nama dari fakultas.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">&ldquo;Belum ada, ini mungkin universitas masih nunggu nama-nama dari fakultas,&rdquo; jelasnya.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">Kepada para mahasiswa baru, Imam juga membagikan beberapa tips terkait bagaimana menjadi mahasiswa berprestasi.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">&ldquo;Nah untuk mahasiswa baru aku ada 5 poin yang harus kalian lakukan untuk jadi MAWAPRES. Yang pertama ikut organisasi atau komunitas, mulai dari jurusan kemudian nasional ataupun internasional. Yang kedua mengikuti lomba, dari yang kecil hingga ke internasional. Coba mulai lomba, mulai dari yang kecil-kecil dulu. Yang ketiga berada di lingkungan yang maju, jangan hanya begibah sana-sini atau nongki-nongki.&rdquo;</p>\r\n\r\n<p style=\"margin-left:35.45pt\">&ldquo;Keempat, jangan hanya terlena dengan hiburan.&nbsp;<em>Games&nbsp;</em>sana-sini, nongki sana-sini, padahal banyak waktu untuk kegiatan positif, organisasi itu bagus itu, hiburan boleh sesekali. Yang terakhir jangan lupa beribadah, ingat bahwa segala kesuksesan itu berkat dari Allah SWT, jangan sempat MAWAPRES ini menjadi sebuah kesombongan yang dibawa-bawa dan menyepelekan orang lain,&rdquo; tutup Imam di akhir wawancara.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">Penyunting: Yulia Putri Hadi</p>\r\n', '2021-11-25 04:27:08', 1, 0),
(43, 'Angkat Isu Solar Sel, Tim Gantari USU Rengkuh Juara III di Kompetisi LKTIN Unsyiah', 7, 'tim gantari usu juara 3 lktin (berita prestasi 4).jpeg', '<p style=\"margin-left:35.45pt\"><strong>Suara USU, MEDAN.&nbsp;</strong>Lomba Karya Tulis Ilmiah Nasional (LKTIN) yang diadakan oleh Himpunan Mahasiswa Teknik Kimia Universitas Syiah Kuala bertema &ldquo;Enhancing of Youth Innovation to Face the Modernization of Science and Technology&rdquo; membawa berkah bagi tim Gantari Teknik Kimia Universitas Sumatera Utara.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">Pasalnya dalam lomba ini mereka menyandang gelar juara III. Tim yang beranggotakan 3 orang ini, diantaranya yaitu Aravi Zalsa Ramadhan (Teknik Kimia 2020), Muhammad Rafli Derriansyah (Teknik Kimia 2019), dan Viqry Pramananda (Teknik Kimia 2017). Dan dosen pembimbing yaitu Ir. Erni Misran, S.T., M.T., Ph.D. Mengangkat subtema&nbsp;<em>Renewable Energy</em>&nbsp;dengan Judul paper &ldquo;Sintesis Karbon Aktif Pelepah Kelapa Sawit Sebagai Material Counter Electrode Platina Pada Pembuatan Dye Sensitized Solar Cell&rdquo;.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">Melalui tahapan yang panjang yaitu: pendaftaran, seleksi abstrak, seleksi full paper, hingga sampai final tim Gantari menjelaskan proses yang panjang ini merupakan buah dari hasil perjuangan penelitian selama ini, dari tanggal 20 Agustus 2021-7 November 2021.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">Selama penelitian berlangsung, menurut Viqry kendala yang dihadapi tim tidak terlalu berat, terlebih dengan hadirnya dukungan dari elemen dekanat, dosen dan beberapa fasilitas pendukung lainnya.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">&ldquo;Departemen Teknik Kimia mendukung penuh dalam rangka penelitian lomba seperti ini. Mulai dari dosen pembimbing, WD 1, serta kajur juga memberikan semangat. Fasilitas seperti lab pun juga terbuka luang mendukung setiap proses penelitian,&rdquo; ungkap Viqry.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">Ungkapan Viqry juga selaras dengan Rafli, mahasiswa berprestasi I FT USU. Rafli menambahkan bahwa yang paling menyulitkan di gelaran kali ini adalah proses pembuatan DSSC.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">&ldquo;Untuk duka nya, mungkin karena harus berjuang dengan bolak-balik ke lab sewaktu pembuatan DSSC,&rdquo; tambah Rafli.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">Aravi yang merupakan stambuk termuda di tim mengungkapkan bahwa kendala yang paling besar ia temui ada di domisilinya yang jauh dari kampus dan harus beberapa kali menempuh perjalanan jauh.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">&ldquo;Untuk kendala dari saya yaitu karena saya sedang tidak di Medan dan harus beberapa kali pulang balik ke Medan,&rdquo; ucap mahasiswa yang berdomisili di Kisaran ini.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">Berbekal semangat yang tinggi dan ide yang inovatif, tim Gantari pun memberikan secerca tips dan trik dalam mengikuti LKTI. Rafli memberikan tips bahwa dalam mengikuti lomba LKTI, pemilik ide pun harus kritis dalam mencari celah karyanya.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">&ldquo;Mahasiswa yang ingin mengikuti LKTI wajib kritis terhadap karya sendiri, mengalisa celah kekurangan ide, serta mempertanyakan kekuatan ide sendiri. Sumber pustaka yang digunakan usahakan selengkap dan sebaru mungkin. Dan terakhir, latihan presentasi se-intens mungkin dengan tim, karena jikalaupun ide nya bagus tapi pada saat presentasi nya tidak baik ,aksud dan tujuan ide nya tidak akan tersampaikan pada juri,&rdquo; papar Rafli.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">Aravi sendiri, menyampaikan bahwa ini adalah kali pertama dia mengikuti LKTI. Menurutnya, yang paling penting dalam LKTI adalah pengujian langsung dan studi literatur.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">&ldquo;Nah tips dari saya di&nbsp;<em>paper</em>&nbsp;nya sendiri kita nentuin itu dia pengujian langsung atau hanya studi literatur jadi saat presentasi itu kita tidak kebingungan jika ada pertanyaan seperti itu. Terus melakukan pengujian, tidak spek data karena akan berakibat fatal dan itu menjadi penilaian yang signifikan dari jurinya,&rdquo; terangnya.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">Viqry pun sepakat dengan Aravi. Menurutnya ada beberapa tambahan tips dalam mengikuti LKTI. Mulai dari menghasilkan Karya Tulis Ilmiah yang berbasis penelitian, kerja sama tim, hingga menggali potensi lokal yang ada di daerah kita sendiri.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">&ldquo;Nah ada beberapa hal yang perlu dicatat bagi teman teman yang mau ikutan LKTI. Pertama, selalu hasilkan KTI berbebasis penelitian (ada data primer yang diperoleh sendiri, bukan sekedar studi literatur). Ini untuk membantu mengasah&nbsp;<em>research skill</em>&nbsp;kita dan membuktikan apakah gagasan di KTI kita emang bisa dibuktikan apa engga. Kedua, kerja sama tim. Disini kita harus percaya sama kemampuan tim kita. Meskipun mungkin posisinya kita sebagai senior, bukan berarti kita tau semua. Bisa saja ada anggota tim yang lebih muda dari kita tapi punya pengetahuan/skill yang juga mumpuni. Jadi harus kolaboratif. Ketiga, usahakan untuk menggali potensi lokal daerah kita. Contohnya dalam penelitian ini kami pakai pelepah kelapa sawit yang notabene nya adalah potensi lokal Sumatera Utara,&rdquo; sambung Viqry.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">Rafli menutup dengan menyampaikan pesannya pada seluruh mahasiswa Universitas Sumatera Utara. Dimana lomba-lomba ilimiah ini yang mampu memaksimalkan potensi diri dan berkontribusi untuk bangsa dan tanah air.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">&ldquo;Lomba-lomba ilmiah seperti LKTI ini merupakan peluang untuk kita dapat memaksimalkan potensi diri dan juga berkontribusi terhadap bangsa. Harapannya ide-ide yang di gagaskan menjadi KTI terus diperjuangkan agar dapat di implementasikan. Tidak hanya berhenti menjadi KTI. Setiap mahasiswa memiliki kemampuan untuk berpikir kritis, lomba-lomba keilmiahan seperti inilah yang menjadi wadah untuk menyalurkannya,&rdquo; papar Rafli</p>\r\n\r\n<p style=\"margin-left:35.45pt\">Viqry juga menambahkan bahwa mahasiswa USU tak boleh berkecil hati apalagi minder. Viqry juga mengingatkan kepada mahasiswa USU agar selektif dalam mengikuti perlombaan karena diluar sana ada banyak ajang perlombaan predator yang hanya menginginkan uang.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">&ldquo;Tetap semangat untuk semua mahasiswa USU. Jangan minder dengan kampus-kampus lain karena sudah banyak bukti kalau kita bisa sejajar dengan mereka. Tetap selektif memilih ajang perlombaan, jangan sembarang ikutan karena banyak&nbsp;<em>event predator</em>&nbsp;dengan embel-embel internasional di luar sana yang tidak memberikan esensi penelitian ke kita,&rdquo; pungkasnya.</p>\r\n\r\n<p style=\"margin-left:35.45pt\"><strong>Redaktur: Muhammad Fadhlan Amri</strong></p>\r\n', '2021-11-25 04:27:52', 1, 0),
(44, 'Keren! Ahmad Maulana Berhasil Menjadi Juara 1 Lomba Poster Ilmiah pada Online National IYSA Sumatera', 7, 'juara 1 lomba poster ilmiah (berita prestasi 5).jpg', '<p style=\"margin-left:35.45pt\"><strong>Suara USU, MEDAN</strong>. Kabar baik datang dari Ahmad Maulana Surbakti, mahasiswa USU stambuk 2019 yang belum lama ini mendapatkan juara 1 pada kategori lomba poster ilmiah di Online National IYSA Sumatera Competition (ONIC) 2021. ONIC 2021 merupakan suatu kompetisi ilmiah yang diadakan oleh organisasi Indonesia Young Scientist Association (IYSA) regional Sumatera pada 24 Juli s.d 31 Agustus 2021. Kompetisi ini dapat diikuti oleh pelajar dengan rentang usia 15-25 tahun.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">Terdapat 3 kategori lomba pada ONIC 2021 ini, yaitu poster ilmiah, karya tulis ilmiah, dan esai. Ahmad sendiri hanya mengikuti satu kategori lomba, yaitu poster ilmiah. Ia juga tergabung dalam komunitas yang bergerak di bidang prestasi, pembinaan, dan pengabdian. Di dalam komunitas tersebut, para anggota saling mengikuti kompetisi yang berbeda dan juga berhasil mendapat juara 1. Komunitas tersebut menjadi wadah bagi Ahmad dalam mengikuti lomba ini.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">Ahmad mendapatkan pengalaman yang berkesan selama mengikuti lomba ONIC 2021. Mengingat lomba poster ilmiah merupakan yang pertama kali untuknya, ia bisa mendapat wawasan lebih mengenai bagaimana pembuatan poster ilmiah dan kriterianya.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">Ahmad memaparkan manfaat positif yang ia dapatkan setelah mengikuti lomba ini, salah satunya menambah wawasan dan mengasah kemampuan desainnya.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">&ldquo;Manfaat yang pertama, saya jadi punya pengalaman yang berarti selain dari bangku perkuliahan, di luar menang atau kalahnya. Manfaat kedua, saya merasa semakin bertambahnya wawasan dan kemampuan saya dalam desain setelah saya mengikuti berbagai perlombaan, termasuk perlombaan ini. Karena ketika kita membuat suatu karya dalam perlombaan, umumnya kita akan berliterasi untuk mencari dan mengembangkan sebuah ide, dan ketika berliterasi maka kita akan semakin memperkaya diri akan wawasan.&rdquo;</p>\r\n\r\n<p style=\"margin-left:35.45pt\">Ahmad juga menceritakan usahanya dalam mengikuti lomba ini. Dimulai dari mencari ide yang cocok dan mendengarkan masukan dan saran revisi dari teman-temannya. Selain itu, ia juga melihat beberapa karya poster orang lain yang pernah menang, dengan tujuan meningkatkan standar desainnya.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">&ldquo;Kalau usaha saat membuat karya, sih. Harus nyari ide yang cocok dulu, terus sering minta saran berulang-ulang kepada teman-teman. Kalau ada saran revisi lagi dan lagi, sampai desainnya&nbsp;<em>bener-bener</em>&nbsp;kelihatan bagus di banyak mata. Selain itu, ada satu hal lagi,&nbsp;<em>gatau</em>&nbsp;ini usaha atau&nbsp;<em>gak.</em>&nbsp;Jadi, setiap mau lomba desain saya ada kebiasaan untuk cari-cari karya poster orang lain juga yang pernah juara. Tujuannya untuk&nbsp;<em>ningkatin</em>&nbsp;standar desain saya, kalau sering liat desain yang bagus, kita juga punya standar yang bagus untuk desain sendiri,&rdquo; paparnya.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">Ia berharap, tahun depan lomba ini dapat terlaksana kembali dengan lebih baik dan mahasiswa USU dapat mempertahankan prestasinya. Baginya tidak ada yang perlu diperbaiki, ia hanya memberi masukan agar ada presentasi dalam lomba posternya.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">&ldquo;Harapannya untuk acara lomba ini, semoga tahun depan dapat terlaksana kembali dan semakin baik, serta mahasiswa USU masih dapat mempertahankan prestasi di&nbsp;<em>event</em>&nbsp;ini maupun&nbsp;<em>event</em>&nbsp;lain. Untuk yang perlu diperbaiki tidak ada sih, tapi ingin kalau cabang lomba posternya ada presentasi juga gitu.&rdquo;</p>\r\n\r\n<p style=\"margin-left:35.45pt\"><strong>Redaktur: Wiranto Asruri Siregar</strong></p>\r\n', '2021-11-25 04:28:29', 1, 3),
(45, 'Kabar Gembira! USU Akan Gelar Wisuda Luring', 8, 'usu akan gelar wisuda luring (berita acara 1) .jpg', '<p style=\"margin-left:35.45pt\"><strong>Suara USU, Medan.&nbsp;</strong>Universitas Sumatera Utara akhirnya adakan wisuda luring pertama selama masa pandemi ini. Beberapa waktu lalu akun Instagram @official.usu memposting surat edaran perihal wisuda luring bagi wisudawan periode I TA. 2021/2022. Pada surat edaran tersebut diberitahukan bahwa untuk mengikuti acara wisuda luring, wisudawan harus menyertakan bukti tes hasil Swab PCR yang sampelnya diambil maksimal 3&times;24 jam.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">&nbsp;</p>\r\n\r\n<p style=\"margin-left:35.45pt\">Berita ini mengundang banyak tanggapan dari mahasiswa yang akan wisuda di periode I TA. 2021/2022. Momen sakral ini telah ditunggu-tunggu oleh mahasiswa, lantaran USU hanya melakukan wisuda secara online sejak masuknya pandemi ke Indonesia.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">Salah satu wisudawan periode I TA 2021/2022, Annisa Zahara mengungkapkan kebahagiaannya dengan wisuda luring ini, terlebih lagi Annisa mendapatkan gelar cumlaude tertinggi di fakultasnya pada wisuda periode ini.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">&ldquo;Jujur wisuda luring sudah ditunggu-tunggu wisudawan, begitu ada kabar akan wisuda luring seluruh wisudawan merasa senang. Mungkin ada sedikit kecewa karena orangtua tidak boleh ikut tapi hal tersebut bisa dimaklumi karena kondisi sedang pandemi Covid-19,&rdquo; ujar mahasiswa Fakultas Kesehatan Masyarakat itu.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">Di sisi lain, salah satu mahasiswa dari FISIP menyatakan keterkejutannya lantaran pemberitahuan mendadak tentang wisuda luring membuat para mahasiswa kurang persiapan.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">&ldquo;Senang ya kan bisa join bareng kawan gitu kan. Keselnya ya tiba-tiba offline. Aku mikir, kalian semua pada gak konfirmasi duluan gitu, kesepakatan mau buat wisuda offline atau online. Mana SK gak langsung&nbsp;keluar,&rdquo; ujar Jee.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">Jee juga berpesan,&nbsp;USU dapat lebih bijak menanggapi kemajuan yang ada. &ldquo;Harapan untuk USU kedepannya semoga lebih baik lagi, makin bijak dengan segala kemajuan ya ada, biar gak ngeribetin lagi untuk ngelakuin segala sesuatu itu dua kali,&rdquo; tutup mahasiswa FISIP itu.</p>\r\n\r\n<p style=\"margin-left:35.45pt\"><strong>Redaktur: Yulia Putri Hadi</strong></p>\r\n', '2021-11-25 04:29:09', 1, 1),
(46, 'Adakan Aksi Donor Darah, KMB-USU: Drop of Blood, Million of Hopes', 8, 'aksi donor darah (berita acara 2).jpeg', '<p style=\"margin-left:35.45pt\">Dalam rangka untuk meningkatkan kesadaran masyarakat tentang pentingnya donor darah dalam segi saintifik maupun sosial, pada Minggu&nbsp;(31/10),&nbsp;KMB-USU kembali menyelenggarakan donor darah. Acara donor darah ini diadakan setiap tahun. Tahun ini KMB-USU mengangkat tema &ldquo;Drop of Blood, Million of Hopes&rdquo;.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">Donor darah ini terbuka untuk umum dengan jumlah&nbsp;71&nbsp;peserta. Acara donor darah ini dilaksakan di Cambridge City&nbsp;Square Lt.2 dengan tetap mengikuti protokol kesehatan.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">KMB-USU berharap&nbsp;dengan diadakannya acara donor darah dapat menambah stok darah PMI dan dapat digunakan dalam situasi urgen sesuai dengan tujuan yang ada.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">&ldquo;Semoga kedepannya masyarakat lebih antusias untuk menghadiri acara donor darah, baik diadakan oleh pihak manapun, serta masyarakat umum dapat lebih mengenal KMB &ndash; USU,&rdquo; harap Ketua Panitia Felix Idwan.</p>\r\n\r\n<p style=\"margin-left:35.45pt\"><strong>Redaktur : Yulia Putri Hadi</strong></p>\r\n', '2021-11-25 04:29:42', 1, 3),
(47, 'Digelar Secara Hybrid, PIMNAS ke-34 USU Resmi Dibuka!', 8, 'pimnas-34 resmi dibuka (berita acara 3).jpeg', '<p style=\"margin-left:35.45pt\"><strong>Suara USU, MEDAN.&nbsp;</strong>Berlokasi di Gedung Biro Rektorat pada Selasa (26/10) malam, Pekan Ilmiah Nasional Ke-34 resmi dibuka. Pada gelaran kali ini, dilaksanakan secara hybrid dimana selain dari lokasi yang disebutkan, acara juga ditayangkan dan digelar di Zoom Meetings dan Youtube PIMNAS Ke-34.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">Dalam pembukaan PIMNAS Ke-34 ini, hadir beberapa tokoh dari berbagai latar belakang mulai dari Rektor dan jajarannya, Wali Kota Medan Bobby Nasution, PLT Kepala Pusat Prestasi Nasional Asep Sukmayadi, Ketua Dewan Juri PIMNAS ke-34 Prof Dr Ir Nuni Gofar dari Universitas Sriwijaya dan Menteri Pendidikan dan Kebudayaan yang juga hadir dan memberikan kata sambutan secara virtual.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">Acara diawali dengan 8 tarian khas Sumatera Utara, yang kemudian dilanjutkan dengan kata sambutan Edy Ikhsan selaku Ketua Umum PIMNAS Ke-34. Dalam Kata Sambutannya, Edy menyampaikan sejumlah keterangan terkait statistik PIMNAS kali ini. Ia juga berharap agar PIMNAS kali ini bisa berjalan dengan lancar dan tertib.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">&ldquo;PIMNAS Ke-34 diikuti oleh 3.126 mahasiswa, yang tergabung 735 kelompok PKM berasal dari 108 Perguruan Tinggi seluruh Indonesia. jumlah 35 kelas penjurian, dimana 18 kelas dari FASILKOM-TI dan 17 kelas di Fakultas Kedokteran Gigi. Tim juri berjumlah 107 orang, hadir luring 98 orang dan hadir daring 9 orang. Kami berharap PIMNAS Ke-34 ini berlangsung dengan sukses, lancar, aman dan tertib,&rdquo; papar dosen Fakultas Hukum ini.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">&nbsp;</p>\r\n\r\n<p style=\"margin-left:35.45pt\">Rektor Universitas Sumatera Utara, Muryanto Amin pun tak luput memberikan kata sambutan. Ia menyatakan kesiapan USU dalam melaksanakan amanah yang telah diberikan.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">&ldquo;Sesaat lagi akan kita mulai dan semua rangkaian acaranya dilaksanakan. Terimakasih atas amanah yang telah diberikan. Insyaallah kami siap melaksanakan amanah dan tugas yang diberikan sebaik-baiknya,&rdquo; ucap mantan Dekan FISIP ini.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">Lebih lanjut, Rektor menyebutkan bahwa PIMNAS ini merupakan kontribusi nyata USU dalam perwujudan Tri Dharma Perguruan Tinggi.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">&ldquo;PIMNAS ini merupakan salah satu bentuk kontribusi dari Tri dharma Perguruan Tinggi. PIMNAS Ke-34 ini memfasilitasi seluruh ide, dan kita harus semangat untuk terus melangkah bersama berjuang mengupayakan kesuksesannya. Berbagai macam perubahan dan saat ini dunia sangat membutuhkan kontribusi kita semua menjadi yang lebih baik dan mampu memberikan solusi berbagai masalah kemanusiaan dan berkontribusi untuk kemajuan negara,&rdquo; terang Rektor.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">Lebih lanjut Rektor berharap ini merupakan langkah dan jembatan untuk seluruh peserta meraih prestasi atas nama USU</p>\r\n\r\n<p style=\"margin-left:35.45pt\">&ldquo;Semoga bisa menjadi jembatan emas yang memediasi seluruh upaya para peserta untuk meraih prestasi atas nama seluruh civitas akademika Universitas Sumatera Utara,&rdquo; pungkasnya.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">&nbsp;</p>\r\n\r\n<p style=\"margin-left:35.45pt\">Acara kemudian dilanjutkan dengan berbagai pertunjukan seperti parade para kontingen seluruh Indonesia, penyerahan piala PIMNAS Ke-34 kepada tuan rumah dari pemenang sebelumnya, pertunjukan&nbsp;<em>mapping artworks&nbsp;</em>dan tradisi lompat batu dari Nias.</p>\r\n\r\n<p style=\"margin-left:35.45pt\"><strong>Redaktur: Yulia Putri Hadi</strong></p>\r\n', '2021-11-25 04:30:21', 1, 0);
INSERT INTO `berita` (`id_berita`, `judul`, `id_kategori`, `gambar`, `teks_berita`, `tgl_posting`, `id_admin`, `dilihat`) VALUES
(48, 'Kementerian Unit Kegiatan Mahasiswa Adakan Open Recruitment Panitia Duta Mahasiswa USU', 8, 'open recruitment panitia duta mahasiswa (berita acara 4).jpg', '<p style=\"margin-left:35.45pt\"><strong>Suara USU, MEDAN</strong>. Kementerian Unit Kegiatan Mahasiswa mengadakan o<em>pen recruitment</em>&nbsp;Panitia Duta Mahasiswa USU. o<em>pen recruitment</em>&nbsp;Panitia Duta Mahasiswa USU dimulai dari tahap pendaftaran online 9 s.d 13 Oktober 2021, pengumuman seleksi berkas 14 Oktober 2021, kemudian tahap wawancara 16 s.d 17 Oktober 2021, dan tahap yang terakhir adalah pengumuman akhir pada 19 Oktober 2021.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">Divisi yang dibutuhkan pada kepanitiaan Duta Mahasiswa USU ini adalah Divisi Acara, PDD, PTT, Administrasi, Humas, Keamanan &amp; P3K, Konsumsi, dan Sponsorship.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">Syarat untuk menjadi panitia Duta Mahasiswa USU adalah mahasiswa aktif USU stambuk 2018-2020, berkomitmen dan bertanggung jawab, berdomisili di Medan, wajib mengikuti akun Instagram @official.pemausu, @kemen_ukm.pemausu, dan @dutamahasiswa.usu; Khusus untuk Divisi PDD harus melampirkan portofolio, dan minimal sudah mendaptkan vaksin pertama.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">Nazura Octaprilia, mahasiswa jurusan Biologi stambuk 2018 mengatakan bahwa ia sangat berharap semua panitia Duta Mahasiswa USU memiliki semangat yang tinggi, berkomitmen, dan bertanggung jawab dalam melaksanakan kegiatan ini, &ldquo;Yang pasti kami mengharapkan semua panitia memiliki semangat yang tinggi, berkomitmen, dan bertanggung jawab dalam menjalankan kepanitiaan ini nantinya,&rdquo; ungkapnya.</p>\r\n\r\n<p style=\"margin-left:35.45pt\"><strong>Redaktur : Wiranto Asruri Siregar</strong></p>\r\n', '2021-11-25 04:31:03', 1, 6),
(49, 'Puncak Dies Natalis ke-69, USU Adakan Sidang Terbuka dan Luncurkan Telemedicine!', 8, 'puncak dies natalis ke-69 (berita acara 5).jpeg', '<p style=\"margin-left:35.45pt\">Universitas Sumatera Utara mengadakan Sidang Terbuka sebagai acara puncak Dies Natalis ke 69 Universitas Sumatera Utara pada Selasa (21/09). Acara ini menampilkan orasi ilmiah oleh Prof. Dr. dr Arman Bhakti Pulungan, Executive Director International Pediatric Association.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">Acara yang diselenggarakan secara hybrid ini mengusung tema &ldquo;Working Together to Protect Our Health Against COVID-19&rdquo;. Dengan makna USU mengedepankan peran kampus dalam penanggulangan Covid-19 di Indonesia dan Sumatera Utara secara khusus.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">Presiden Joko Widodo yang hadir turut memberikan sambutan berharap USU menjadikan usia 69 Tahun sebagai momentum yang tepat untuk memantapkan langkah internasionalisasi agar USU menjadi pusat pengembangan ilmu pengetahuan, teknologi, inovasi yang unggul.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">Selain itu, Menko Maritim dan Investasi Luhut B. Pandjaitan, Mendikbudristek Nadiem Makarim, Gubernur Sumatera Utara Edy Rahmayadi, Wakil Gubernur Sumatera Utara Musa Rajekshah dan Wali Kota Medan Bobby Nasution juga berhadir dan memberikan selamat.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">Rektor Universitas Sumatera Utara, Dr. Muryanto Amin, dalam sambutannya mengatakan, &ldquo;USU telah berkontribusi dalam membantu Pemerintah menangani Covid-19 dengan memberikan pelayanan melalui Rumah Sakit Umum USU,&rdquo;</p>\r\n\r\n<p style=\"margin-left:35.45pt\">&ldquo;RS USU juga telah mengadakan vaksinasi massal kepada masyarakat dengan memberikan vaksin kepada remaja, ibu hamil, lansia, pasien rentan dan umum,&rdquo; lanjut Rektor.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">Muryanto Amin juga mengajak seluruh masyarakat Sumut untuk berdoa agar pandemi segera berlalu dan meminta masyarakat agar tetap mematuhi Prokes.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">&ldquo;Mari kita terus mendoakan agar pandemi segera berlalu dan kita dapat bangkit membangun kejayaan dan kemajuan bangsa di masa-masa mendatang,&rdquo; ujar Rektor.</p>\r\n\r\n<p style=\"margin-left:35.45pt\">Dalam acara puncak Dies Natalis ke-69 USU, USU juga meluncurkan Telemedicine, platform layanan kesehatan jarak jauh (<em>online</em>) kepada penderita Covid-19 yang menjalani isolasi mandiri. Telemedicine ini adalah bentuk pengabdian masyarakat USU untuk membantu pasien Covid-19. Dengan layanan ini, pasien bisa berkonsultasi secara online serta mendapatkan obat yang diantar langsung ke alamat pasien.</p>\r\n\r\n<p style=\"margin-left:35.45pt\"><strong>Redaktur: Muhammad Fadhlan Amri</strong></p>\r\n\r\n<p style=\"margin-left:35.45pt\">&nbsp;</p>\r\n', '2021-11-25 04:31:45', 1, 10);

-- --------------------------------------------------------

--
-- Table structure for table `buku_tamu`
--

CREATE TABLE `buku_tamu` (
  `komentar_id` int(11) NOT NULL,
  `komentar_pengirim` varchar(100) NOT NULL,
  `komentar_email` varchar(100) NOT NULL,
  `komentar_isi` text NOT NULL,
  `komentar_status` enum('ya','tidak') NOT NULL DEFAULT 'tidak',
  `komentar_tgl` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `buku_tamu`
--

INSERT INTO `buku_tamu` (`komentar_id`, `komentar_pengirim`, `komentar_email`, `komentar_isi`, `komentar_status`, `komentar_tgl`) VALUES
(17, 'johnny', 'johnny@gmail.com', 'beritanya sangat update! mantap!', 'ya', '2021-01-18 06:40:04'),
(18, 'mark', 'mark0208@gmail.com', 'kategori beritanya kurang banyak! semoga kontennya diperbanyak!', 'ya', '2021-01-19 19:30:35'),
(19, 'Johansen', 'johansensihombing099@gmail.com', 'Sangat bagus beritanya', 'ya', '2021-11-02 09:37:26'),
(20, 'dimas', 'dimas88@gmail.com', 'Saya sangat senang membaca beritanya', 'tidak', '2021-11-25 07:50:20');

-- --------------------------------------------------------

--
-- Table structure for table `halaman`
--

CREATE TABLE `halaman` (
  `id_hal` int(11) NOT NULL,
  `nm_halaman` varchar(30) NOT NULL,
  `link` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `halaman`
--

INSERT INTO `halaman` (`id_hal`, `nm_halaman`, `link`) VALUES
(1, 'Hubungi', 'contact.php'),
(2, 'Tentang Kami', 'about.php'),
(3, 'Komentar', 'buku-tamu.php');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(11) NOT NULL,
  `kategori` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `kategori`) VALUES
(7, 'Prestasi'),
(8, 'Acara'),
(9, 'Beasiswa');

-- --------------------------------------------------------

--
-- Table structure for table `pesan`
--

CREATE TABLE `pesan` (
  `pesan_id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `pengirim` varchar(50) NOT NULL,
  `subjek` varchar(100) NOT NULL,
  `pesan_isi` text NOT NULL,
  `status` varchar(5) NOT NULL,
  `tanggal` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pesan`
--

INSERT INTO `pesan` (`pesan_id`, `email`, `pengirim`, `subjek`, `pesan_isi`, `status`, `tanggal`) VALUES
(14, 'sarah@gmail.com', 'Sarah', 'konten berita', 'hendaknya konten beritanya ditambah lagi supaya lebih bervariasi', 'dibac', '2021-01-18 06:38:09'),
(15, 'wati789@gmail.com', 'wati', 'lowongan pekerjaan', 'saya ingin melamar pekerjaan sebagai penulis di web ini', 'dibac', '2021-01-19 19:28:48');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `berita`
--
ALTER TABLE `berita`
  ADD PRIMARY KEY (`id_berita`);

--
-- Indexes for table `buku_tamu`
--
ALTER TABLE `buku_tamu`
  ADD PRIMARY KEY (`komentar_id`);

--
-- Indexes for table `halaman`
--
ALTER TABLE `halaman`
  ADD PRIMARY KEY (`id_hal`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `pesan`
--
ALTER TABLE `pesan`
  ADD PRIMARY KEY (`pesan_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `berita`
--
ALTER TABLE `berita`
  MODIFY `id_berita` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `buku_tamu`
--
ALTER TABLE `buku_tamu`
  MODIFY `komentar_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `halaman`
--
ALTER TABLE `halaman`
  MODIFY `id_hal` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `pesan`
--
ALTER TABLE `pesan`
  MODIFY `pesan_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- Database: `portal_berita`
--
CREATE DATABASE IF NOT EXISTS `portal_berita` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `portal_berita`;
--
-- Database: `proweb`
--
CREATE DATABASE IF NOT EXISTS `proweb` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `proweb`;

-- --------------------------------------------------------

--
-- Table structure for table `biodata`
--

CREATE TABLE `biodata` (
  `id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `biodata`
--

INSERT INTO `biodata` (`id`, `username`, `password`, `nama`, `email`) VALUES
(1, 'beatrics11', 'archana', 'beatrics', 'beatricsspurba@gmail.com'),
(2, 'giovianny10', 'sunjay', 'giovianny', 'gioviannypurba1012@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `posting`
--

CREATE TABLE `posting` (
  `id` int(11) DEFAULT NULL,
  `username` varchar(20) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `konten` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `posting`
--

INSERT INTO `posting` (`id`, `username`, `tanggal`, `konten`) VALUES
(1, 'archana3', '2021-10-02', 'Technology For A Better Future\r\nnnkzknzncfincniznkLNdienflcnnsd\r\njfnniierba mxziwrbzklDs'),
(2, 'gio1012', '2021-10-03', 'Microsoft resmi mengumumkan kehadiran Windows 11. Ada sejumlah fitur baru yang diberikan pada penerus Windows 10 ini. Fitur Baru Windows 11 .\r\n'),
(3, 'natan04', '2021-10-02', 'Di zaman perkembangan teknologi digital, banyak istilah-istilah baru yang asing dan tidak kita pahami, contohnya adalah Artificial Intelligence.\r\nLalu apasih Artificial Intelligence itu ? Apa pengaruhnya bagi kehidupan kita ? Dan apa saja dampak yang mungkin dapat ditimbulkannya ?\r\n\r\n');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `biodata`
--
ALTER TABLE `biodata`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `biodata`
--
ALTER TABLE `biodata`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
--
-- Database: `todolist`
--
CREATE DATABASE IF NOT EXISTS `todolist` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `todolist`;

-- --------------------------------------------------------

--
-- Table structure for table `todo`
--

CREATE TABLE `todo` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `deskripsi` text NOT NULL,
  `tempat` varchar(100) NOT NULL,
  `waktu` datetime NOT NULL,
  `kategori` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `foto` varchar(100) DEFAULT NULL,
  `level` varchar(5) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `todo`
--
ALTER TABLE `todo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `todo`
--
ALTER TABLE `todo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
