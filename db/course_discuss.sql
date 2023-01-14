-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 14 Jan 2023 pada 16.08
-- Versi server: 10.4.22-MariaDB
-- Versi PHP: 8.0.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `course_discuss`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `comment`
--

CREATE TABLE `comment` (
  `id` int(11) NOT NULL,
  `id_topic` int(11) NOT NULL,
  `from_id_user` int(11) NOT NULL,
  `to_id_user` int(11) NOT NULL,
  `description` longtext NOT NULL,
  `image` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `comment`
--

INSERT INTO `comment` (`id`, `id_topic`, `from_id_user`, `to_id_user`, `description`, `image`, `created_at`, `updated_at`) VALUES
(1, 3, 2, 1, 'oke', '', '2023-01-08 14:34:40', '2023-01-08 14:34:40'),
(2, 3, 2, 1, 'aduch\nklo udah nipis kopi pinggir jalan ', 'image_picker8851053734145243856.jpg', '2023-01-08 14:56:06', '2023-01-08 14:56:06'),
(3, 11, 2, 2, 'hijhh', '', '2023-01-08 15:06:45', '2023-01-08 15:06:45');

-- --------------------------------------------------------

--
-- Struktur dari tabel `follow`
--

CREATE TABLE `follow` (
  `id` int(11) NOT NULL,
  `from_id_user` int(11) NOT NULL,
  `to_id_user` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `follow`
--

INSERT INTO `follow` (`id`, `from_id_user`, `to_id_user`, `created_at`, `updated_at`) VALUES
(5, 1, 2, '2023-01-08 10:42:01', '2023-01-08 10:42:01'),
(6, 2, 1, '2023-01-08 13:40:34', '2023-01-08 13:40:34');

-- --------------------------------------------------------

--
-- Struktur dari tabel `topic`
--

CREATE TABLE `topic` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `description` longtext NOT NULL,
  `images` text NOT NULL,
  `id_user` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `topic`
--

INSERT INTO `topic` (`id`, `title`, `description`, `images`, `id_user`, `created_at`, `updated_at`) VALUES
(2, 'tes kecepatan tinggi ', '123bhjh jkjb selamat selamat selamat selamat selamat selamat selamat selamat selamat selamat selamat selamat selamat selamat selamat selamat pagi itu yg pntng kmu udah berusaha ', '[\"image_picker4925741650430237838.jpg\",\"image_picker4463067828585295230.jpg\"]', 1, '2023-01-05 08:20:42', '2023-01-05 15:03:39'),
(3, 'topik yang dibahas dalam pertemuan itu kerana dia tidak akan pernah bisa menang lawan yang tidak bisa ', 'oo gitu selamat hari natal dan tahun baru ', '[\"image_picker2570323260099830291.jpg\",\"image_picker5407898493992869333.jpg\"]', 1, '2023-01-05 09:05:56', '2023-01-05 15:08:14'),
(11, 'tes', 'ffgyuiihhgghuuhhhgg', '[\"image_picker6212733829683576749.jpg\"]', 2, '2023-01-06 02:44:43', '2023-01-06 02:44:43');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `image` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `image`, `created_at`, `updated_at`) VALUES
(1, 'amir', '202cb962ac59075b964b07152d234b70', 'image_picker5689746651246562965.jpg', '2023-01-04 07:46:24', '2023-01-05 09:18:01'),
(2, 'kopet', '202cb962ac59075b964b07152d234b70', 'user.png', '2023-01-04 08:21:50', '2023-01-04 08:21:50'),
(3, 'yvyvuvyv', '202cb962ac59075b964b07152d234b70', 'user.png', '2023-01-04 08:24:11', '2023-01-04 08:24:11');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `follow`
--
ALTER TABLE `follow`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `topic`
--
ALTER TABLE `topic`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `follow`
--
ALTER TABLE `follow`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `topic`
--
ALTER TABLE `topic`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
