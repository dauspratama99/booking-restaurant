-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 06 Jul 2022 pada 14.22
-- Versi server: 10.3.35-MariaDB-cll-lve
-- Versi PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `privatco_gaji`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'admin', '25d55ad283aa400af464c76d713c07ad');

-- --------------------------------------------------------

--
-- Struktur dari tabel `basket`
--

CREATE TABLE `basket` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `reserve_id` int(11) NOT NULL,
  `customer_name` varchar(50) NOT NULL,
  `contact_number` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `total` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL,
  `date_made` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `basket`
--

INSERT INTO `basket` (`id`, `customer_id`, `reserve_id`, `customer_name`, `contact_number`, `address`, `email`, `total`, `status`, `date_made`) VALUES
(1, 30, 1, 'Kaqa', '089776628861', 'BK1', 'kokamlegends@gmail.com', '30000', 'pending', '2022-06-23 15:21:25'),
(2, 30, 2, 'Kaqa', '089776628861', 'BK2', 'kokamlegends@gmail.com', '36000', 'pending', '2022-06-23 15:23:06'),
(3, 30, 3, 'Kaqa', '089776628861', 'BK3', 'kokamlegends@gmail.com', '101000', 'pending', '2022-06-23 15:24:45'),
(4, 31, 6, 'vab asdn', '08383321822', 'BK6', 'joni2@mail.com', '12000', 'pending', '2022-07-01 09:47:50'),
(5, 31, 7, 'vab asdn', '08383321822', 'BK7', 'joni2@mail.com', '24000', 'pending', '2022-07-01 09:49:31'),
(6, 31, 13, 'vab asdn', '08383321822', 'BK13', 'joni2@mail.com', '12000', 'pending', '2022-07-01 10:56:50'),
(7, 31, 13, 'vab asdn', '08383321822', 'BK13', 'joni2@mail.com', '12000', 'pending', '2022-07-01 10:56:50'),
(8, 19, 16, 'sidik', '08653716312', 'BK16', 'sidik@gmail.com', '36000', 'pending', '2022-07-01 11:03:09'),
(9, 19, 17, 'sidik', '08653716312', 'BK17', 'sidik@gmail.com', '59000', 'pending', '2022-07-01 11:21:51'),
(10, 31, 18, 'vab asdn', '08383321822', 'BK18', 'joni2@mail.com', '12000', 'pending', '2022-07-05 08:50:26'),
(11, 31, 20, 'vab asdn', '08383321822', 'BK20', 'joni2@mail.com', '12000', 'pending', '2022-07-05 18:29:22'),
(12, 31, 22, 'vab asdn', '08383321822', 'BK22', 'joni2@mail.com', '70000', 'pending', '2022-07-05 18:50:28'),
(13, 31, 23, 'vab asdn', '08383321822', 'BK23', 'joni2@mail.com', '54000', 'pending', '2022-07-05 18:58:32'),
(14, 31, 25, 'vab asdn', '08383321822', 'BK25', 'joni2@mail.com', '18000', 'pending', '2022-07-05 19:10:38'),
(15, 31, 26, 'vab asdn', '08383321822', 'BK26', 'joni2@mail.com', '12000', 'pending', '2022-07-05 19:12:18'),
(16, 31, 27, 'vab asdn', '08383321822', 'BK27', 'joni2@mail.com', '12000', 'pending', '2022-07-05 19:18:22'),
(17, 31, 27, 'vab asdn', '08383321822', 'BK27', 'joni2@mail.com', '12000', 'pending', '2022-07-05 19:18:22'),
(18, 0, 31, 'vab asdn', '08383321822', 'BK31', 'joni2@mail.com', '50000', 'pending', '2022-07-05 01:35'),
(19, 0, 32, 'sidik', '08653716312', 'BK32', 'sidik@gmail.com', '50000', 'pending', '2022-07-06 21:45'),
(20, 0, 33, 'sidik', '08653716312', 'BK33', 'sidik@gmail.com', '50000', 'pending', '2022-07-14 21:58'),
(21, 32, 34, 'topek', '08978788879', 'BK34', 'topek@gmail.com', '90000', 'pending', '2022-07-05 23:58:57');

-- --------------------------------------------------------

--
-- Struktur dari tabel `customers`
--

CREATE TABLE `customers` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `contact_number` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `address` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `customers`
--

INSERT INTO `customers` (`id`, `name`, `contact_number`, `email`, `password`, `address`) VALUES
(19, 'sidik', '08653716312', 'sidik@gmail.com', '202cb962ac59075b964b07152d234b70', 'jl. merpati 2'),
(20, 'agus', '08256765897', 'agus@gmail.com', '202cb962ac59075b964b07152d234b70', 'jl. Merapi 8'),
(21, 'dayat', '087627852612', 'dayat@gmail.com', '202cb962ac59075b964b07152d234b70', 'jl. Anggrek 6'),
(22, 'ikhsan', '081276876356', 'ikhsan@gmail.com', '202cb962ac59075b964b07152d234b70', 'jl. Merpati 3'),
(23, 'topik', '097267517267', 'topik@gmail.com', '202cb962ac59075b964b07152d234b70', 'jl. Merapi 2'),
(24, 'alim', '08762715267', 'alim@gmail.com', '202cb962ac59075b964b07152d234b70', 'jl. Semeru 2'),
(25, 'Anju', '087286561765', 'anju@gmail.com', '202cb962ac59075b964b07152d234b70', 'jl. Marapalam 3'),
(26, 'eko', '08273816287', 'eko@gmail.com', '202cb962ac59075b964b07152d234b70', 'jl.R.a Kartini'),
(27, 'wawan', '087261876187', 'wawan@gmail.com', '202cb962ac59075b964b07152d234b70', 'jl. Kamboja'),
(28, 'andi', '081271898765', 'andi@gmail.com', '202cb962ac59075b964b07152d234b70', 'jl. Cempaka'),
(29, 'aldi', '082285456090', 'aldi@gmail.com', '202cb962ac59075b964b07152d234b70', 'jl.R.a Kartini'),
(30, 'Kaqa', '089776628861', 'kokamlegends@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'Jl.Terusan Larwotherhood'),
(31, 'vab asdn', '08383321822', 'joni2@mail.com', '25d55ad283aa400af464c76d713c07ad', 'csdcds, csdcs, csdcs'),
(32, 'topek', '08978788879', 'topek@gmail.com', '202cb962ac59075b964b07152d234b70', 'jl. Merpati');

-- --------------------------------------------------------

--
-- Struktur dari tabel `food`
--

CREATE TABLE `food` (
  `id` int(11) NOT NULL,
  `food_name` varchar(50) NOT NULL,
  `food_category` varchar(50) NOT NULL,
  `food_price` varchar(50) NOT NULL,
  `food_description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `food`
--

INSERT INTO `food` (`id`, `food_name`, `food_category`, `food_price`, `food_description`) VALUES
(14, 'Ayam Goreng Kampung', 'Makanan', '24000', 'Ayam Goreng asli ayam kampung'),
(15, 'Gurame Goreng', 'Makanan', '12000', 'Gurame Goreng Crispy'),
(16, 'Nasi Goreng Seafood', 'Makanan', '24000', 'Nasi Goreng dengan toping Seafood'),
(26, 'Cumi Saos Tiram', 'Makanan', '30000', 'Olahan cumi dengan saos tiram'),
(27, 'Nasi Timbal Komplit', 'Makanan', '35000', 'Nasi Timbel Menu Komplit'),
(28, 'Cah Kangkung Polos', 'Makanan', '17000', 'Sayur Kangkung polos'),
(29, 'Es Teh Manis', 'Minuman', '6000', 'Teh manis dingin'),
(30, 'Juice Alpukat', 'Minuman', '12000', 'jus buah alpukat manis'),
(31, 'Juice Jeruk', 'Minuman', '12000', 'Jus buah jeruk manis');

-- --------------------------------------------------------

--
-- Struktur dari tabel `items`
--

CREATE TABLE `items` (
  `item_id` int(11) NOT NULL,
  `order_id` varchar(50) NOT NULL,
  `food` varchar(50) NOT NULL,
  `qty` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `items`
--

INSERT INTO `items` (`item_id`, `order_id`, `food`, `qty`) VALUES
(1, '1', 'Es Teh Manis', '1'),
(2, '1', ' Ayam Goreng Kampung', '1'),
(3, '2', 'Es Teh Manis', '1'),
(4, '2', ' Cumi Saos Tiram', '1'),
(5, '3', 'Nasi Timbal Komplit', '1'),
(6, '3', ' Es Teh Manis', '3'),
(7, '3', ' Ayam Goreng Kampung', '1'),
(8, '3', ' Nasi Goreng Seafood', '1'),
(9, '4', 'Gurame Goreng', '1'),
(10, '5', 'Nasi Goreng Seafood', '1'),
(11, '6', 'Gurame Goreng', '1'),
(12, '7', 'Gurame Goreng', '1'),
(13, '8', 'Ayam Goreng Kampung', '1'),
(14, '8', ' Gurame Goreng', '1'),
(15, '9', 'Cah Kangkung Polos', '1'),
(16, '9', ' Es Teh Manis', '1'),
(17, '9', ' Ayam Goreng Kampung', '1'),
(18, '9', ' Gurame Goreng', '1'),
(19, '10', 'Gurame Goreng', '1'),
(20, '11', 'Gurame Goreng', '1'),
(21, '12', 'Gurame Goreng', '3'),
(22, '12', ' Cah Kangkung Polos', '2'),
(23, '13', 'Nasi Goreng Seafood', '1'),
(24, '13', ' Cumi Saos Tiram', '1'),
(25, '14', 'Juice Alpukat', '1'),
(26, '14', ' Es Teh Manis', '1'),
(27, '15', 'Gurame Goreng', '1'),
(28, '16', 'Gurame Goreng', '1'),
(29, '21', 'Gurame Goreng', '5'),
(30, '21', ' Es Teh Manis', '5');

-- --------------------------------------------------------

--
-- Struktur dari tabel `reservation`
--

CREATE TABLE `reservation` (
  `reserve_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `no_of_guest` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `date_res` varchar(50) NOT NULL,
  `time` varchar(50) NOT NULL,
  `suggestions` varchar(100) NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `reservation`
--

INSERT INTO `reservation` (`reserve_id`, `name`, `no_of_guest`, `email`, `phone`, `date_res`, `time`, `suggestions`, `status`) VALUES
(1, 'Kaqa', '1', 'kokamlegends@gmail.com', '08963534638', '2022-06-23', '15:27', '1', 'confirmed'),
(2, 'Kaqa', '1', 'p@gmail.com', '2121', '2022-06-23', '15:28', '2', 'confirmed'),
(3, 'Kaqa', '3', 'faisaldany63@gmail.com', '32324', '2022-07-07', '15:27', '3', 'confirmed'),
(4, 'vab asdn', '1', 'joni2@mail.com', '08383321822', '2022-07-08', '09:33', 'cscsd', '0'),
(5, 'vab asdn', '3', 'joni2@mail.com', '08383321822', '2022-07-04', '09:44', 'fsfsd', '0'),
(6, 'vab asdn', '3', 'joni2@mail.com', '08383321822', '2022-07-16', '09:50', 'few', '0'),
(7, 'vab asdn', '3', 'joni2@mail.com', '08383321822', '2022-06-27', '09:53', 'csdcsd', '0'),
(8, 'vab asdn', '3', 'joni2@mail.com', '08383321822', '2022-07-16', '09:59', 'c', '0'),
(9, 'vab asdn', '4', 'joni2@mail.com', '08383321822', '2022-07-02', '10:07', 'cxv', '0'),
(10, 'vab asdn', '32', 'joni2@mail.com', '08383321822', '2022-07-06', '13:30', 'cds', '0'),
(11, 'vab asdn', '3', 'joni2@mail.com', '08383321822', '2022-07-23', '10:36', 'dsfvsdv', '0'),
(12, 'vab asdn', '3232', 'joni2@mail.com', '08383321822', '2022-07-08', '10:44', 'dsf', '0'),
(13, 'vab asdn', '3', 'joni2@mail.com', '08383321822', '2022-07-21', '10:58', 'csd', '0'),
(14, 'sidik', '3', 'sidik@gmail.com', '08653716312', '2022-07-08', '11:00', 'Ghg', '0'),
(15, 'sidik', '2', 'sidik@gmail.com', '08653716312', '2022-07-08', '11:01', 'Tt', '0'),
(16, 'sidik', '3', 'sidik@gmail.com', '08653716312', '2022-07-08', '12:02', 'Gg', '0'),
(17, 'sidik', '2', 'sidik@gmail.com', '08653716312', '2022-07-08', '11:21', 'Qq', '0'),
(18, 'vab asdn', '4', 'joni2@mail.com', '08383321822', '2022-07-06', '08:52', 'fsdfsd', '0'),
(19, 'vab asdn', '1', 'joni2@mail.com', '08383321822', '2022-07-07', '18:27', 'sddsf', '0'),
(20, 'vab asdn', '4', 'joni2@mail.com', '08383321822', '2022-07-08', '18:31', 'gfdgf', '0'),
(21, 'vab asdn', '4', 'joni2@mail.com', '08383321822', '2022-07-06', '18:37', 'dsv', 'confirmed'),
(22, 'vab asdn', '3', 'joni2@mail.com', '08383321822', '2022-07-07', '18:52', 'cds', 'pending'),
(23, 'vab asdn', '4', 'joni2@mail.com', '08383321822', '2022-07-07', '18:01', 'ferfer', 'pending'),
(24, 'vab asdn', '2', 'joni2@mail.com', '08383321822', '2022-07-06', '19:06', 'cds', 'pending'),
(25, 'vab asdn', '6', 'joni2@mail.com', '08383321822', '2022-07-14', '19:12', 'dsf', 'pending'),
(26, 'vab asdn', '3', 'joni2@mail.com', '08383321822', '2022-07-14', '19:14', 'dffs', 'pending'),
(27, 'vab asdn', '1', 'joni2@mail.com', '08383321822', '2022-07-05', '19:20', 'cscds', 'pending'),
(28, 'vab asdn', '12', 'joni2@mail.com', '08383321822', '2022-07-13', '19:24', 'dewdew', 'pending'),
(29, 'sidik', '5', 'sidik@gmail.com', '08653716312', '2022-07-06', '19:22', 'Kk', 'pending'),
(30, 'vab asdn', '3', 'joni2@mail.com', '08383321822', '2022-07-14', '21:32', 'fewf', 'pending'),
(31, 'vab asdn', '1', 'joni2@mail.com', '08383321822', '2022-07-05', '01:35', 'fsfsd', 'pending'),
(32, 'sidik', '5', 'sidik@gmail.com', '08653716312', '2022-07-06', '21:45', 'Bb', 'pending'),
(33, 'sidik', '5', 'sidik@gmail.com', '08653716312', '2022-07-14', '21:58', 'O', 'pending'),
(34, 'topek', '5', 'topek@gmail.com', '08978788879', '2022-07-07', '12:00', 'gg', 'confirmed');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `basket`
--
ALTER TABLE `basket`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `food`
--
ALTER TABLE `food`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`item_id`);

--
-- Indeks untuk tabel `reservation`
--
ALTER TABLE `reservation`
  ADD PRIMARY KEY (`reserve_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `basket`
--
ALTER TABLE `basket`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT untuk tabel `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT untuk tabel `food`
--
ALTER TABLE `food`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT untuk tabel `items`
--
ALTER TABLE `items`
  MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT untuk tabel `reservation`
--
ALTER TABLE `reservation`
  MODIFY `reserve_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
