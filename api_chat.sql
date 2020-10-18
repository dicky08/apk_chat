-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 19 Okt 2020 pada 01.05
-- Versi server: 10.3.15-MariaDB
-- Versi PHP: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `api_chat`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `message`
--

CREATE TABLE `message` (
  `id` int(11) NOT NULL,
  `sender` varchar(255) NOT NULL,
  `receiver` varchar(255) NOT NULL,
  `message` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `message`
--

INSERT INTO `message` (`id`, `sender`, `receiver`, `message`, `created_at`) VALUES
(25, 'Mang oleh', 'Angling darma', 'oke', '2020-10-07 09:03:35'),
(26, 'Angling darma', 'Mang oleh', 'apa mang', '2020-10-07 09:12:33'),
(27, 'Mang oleh', 'Angling darma', 'gapapa darma hehhe', '2020-10-07 09:16:10'),
(28, 'Angling darma', 'Mang oleh', 'yeh si mang oleh sok kitu da', '2020-10-07 09:16:22'),
(30, 'jaka tingkir', 'Mang oleh', 'naon mang oleh', '2020-10-07 09:17:12'),
(32, 'Mang oleh', 'kesayangan', 'beb lagi dimana?', '2020-10-07 09:22:28'),
(33, 'kesayangan', 'Mang oleh', 'ih apa si mang manggil\" beb. risih tau...!!!', '2020-10-07 09:23:27'),
(34, 'Mang oleh', 'kesayangan', 'ya gapapa dong kan kamu masih sendiri ini emng salah?', '2020-10-07 09:25:21'),
(35, 'kesayangan', 'Mang oleh', 'salah mang, malu sama umur ihhh....', '2020-10-07 09:26:20'),
(36, 'Mang oleh', 'kesayangan', 'ko bawa bawa umur si beb, kan katamu kamu cari yg dewasa', '2020-10-07 09:27:21'),
(37, 'kesayangan', 'Mang oleh', 'cari yg dewasa tpi bukan kelewat TUA mang !!!', '2020-10-07 09:27:44'),
(38, 'kesayangan', 'Mang oleh', 'eh mang tapi aku mau pesen odading dong yg rasanya anjimm banget ada?', '2020-10-07 09:28:05'),
(39, 'Mang oleh', 'kesayangan', 'ada ko beb mau pesen rasa yg pernah ada juga siap wkkwk', '2020-10-07 09:28:33'),
(40, 'kesayangan', 'Mang oleh', 'ih gombal. cowo modus dasar gasuka!!!', '2020-10-07 09:28:49'),
(44, 'kesayangan', 'Mang oleh', 'mang mana ga sampe sampe ihhh', '2020-10-07 10:04:31'),
(45, 'Mang oleh', 'kesayangan', 'eh iya maaf lupa odadingnya udh amang makan biar kuat seperti ironman', '2020-10-07 10:05:27'),
(46, 'Mang oleh', 'rosida', 'hai', '2020-10-07 10:33:49'),
(47, 'rosida', 'Mang oleh', 'hai juga', '2020-10-07 10:34:02'),
(48, 'Mang oleh', 'Angling darma', 'yu', '2020-10-07 15:38:17'),
(49, 'Mang oleh', 'kesayangan', 'yang', '2020-10-07 15:38:37'),
(51, 'jaka tingkir', 'Mang oleh', 'mang', '2020-10-08 10:03:17'),
(52, 'jaka tingkir', 'Mang oleh', 'naon oleh', '2020-10-08 10:05:10'),
(53, 'Mang oleh', 'jaka tingkir', 'woyyy', '2020-10-08 10:07:18'),
(54, 'Mang oleh', 'jaka tingkir', 'aw', '2020-10-08 10:07:53'),
(55, 'Mang oleh', 'jaka tingkir', 'jak gmna', '2020-10-08 10:18:12'),
(56, 'jaka tingkir', 'Mang oleh', 'apa', '2020-10-08 10:18:51'),
(57, 'Mang oleh', 'jaka tingkir', 'jak bantuan', '2020-10-08 10:23:41'),
(58, 'Mang oleh', 'jaka tingkir', 'asdasd', '2020-10-08 10:24:23'),
(59, 'jaka tingkir', 'Mang oleh', ':(', '2020-10-08 10:24:48'),
(60, 'Mang oleh', 'jaka tingkir', 'ey', '2020-10-08 10:25:13'),
(61, 'Dicky Firmansyah', 'jaka tingkir', 'JAK', '2020-10-08 10:51:19'),
(62, 'Dicky Firmansyah', 'jaka tingkir', 'p', '2020-10-08 10:58:49'),
(63, 'jaka tingkir', 'Dicky Firmansyah', 'apa', '2020-10-08 10:59:07'),
(64, 'Dicky Firmansyah', 'jaka tingkir', 'iya', '2020-10-08 10:59:31'),
(65, 'Dicky Firmansyah', 'jaka tingkir', 'jak', '2020-10-08 11:15:56'),
(66, 'Dicky Firmansyah', 'jaka tingkir', 'woyy', '2020-10-08 11:16:22'),
(67, 'jaka tingkir', 'Dicky Firmansyah', 'apa', '2020-10-08 11:16:36'),
(68, 'Dicky Firmansyah', 'jaka tingkir', 'hai', '2020-10-08 11:24:01'),
(69, 'jaka tingkir', 'Dicky Firmansyah', 'iya', '2020-10-08 11:24:13'),
(70, 'Mang oleh', 'jaka tingkir', 'mang sedih euy urang', '2020-10-08 12:06:47'),
(71, 'Mang oleh', 'jaka tingkir', 'mang ih', '2020-10-08 12:07:59'),
(72, 'Mang oleh', 'jaka tingkir', '', '2020-10-08 12:07:59'),
(73, 'Mang oleh', 'jaka tingkir', 'zs', '2020-10-08 12:08:58'),
(74, 'Mang oleh', 'jaka tingkir', 'mang jaka ih', '2020-10-08 12:10:44'),
(75, 'jaka tingkir', 'Mang oleh', 'p', '2020-10-08 12:13:03'),
(76, 'Mang oleh', 'jaka tingkir', 'mang', '2020-10-08 12:16:38'),
(77, 'Mang oleh', 'jaka tingkir', 'aw', '2020-10-08 12:21:38'),
(78, 'Mang oleh', 'jaka tingkir', 'ar', '2020-10-08 12:23:32'),
(79, 'Mang oleh', 'jaka tingkir', 'mang dimana', '2020-10-08 12:24:52'),
(80, 'kesayangan', 'rosida', 'rosida', '2020-10-08 12:26:20'),
(81, 'kesayangan', 'rosida', 'rosida', '2020-10-08 12:35:11'),
(82, 'kesayangan', 'rosida', '', '2020-10-08 12:35:11'),
(83, 'rosida', 'kesayangan', 'apa', '2020-10-08 12:35:22'),
(84, 'kesayangan', 'rosida', 'rosida lgi apa', '2020-10-08 12:40:45'),
(85, 'kesayangan', 'rosida', 'p', '2020-10-08 12:44:11'),
(86, 'kesayangan', 'rosida', 'ase', '2020-10-08 12:45:12'),
(87, 'kesayangan', 'rosida', 'sa', '2020-10-08 12:45:37'),
(88, 'kesayangan', 'rosida', 'rosidaaaaa', '2020-10-08 12:46:06'),
(89, 'Mang oleh', 'kesayangan', 'bila', '2020-10-08 13:05:23'),
(90, 'kesayangan', 'Mang oleh', 'iya mang', '2020-10-08 13:05:57'),
(91, 'Mang oleh', 'kesayangan', 'gapapa bil', '2020-10-08 13:06:16'),
(92, 'Mang oleh', 'kesayangan', 'siang', '2020-10-08 13:08:23'),
(93, 'kesayangan', 'Mang oleh', 'siang juga', '2020-10-08 13:08:44'),
(94, 'Mang oleh', 'kesayangan', 'bila', '2020-10-08 13:10:11'),
(95, 'Mang oleh', 'rosida', 'rosida', '2020-10-08 13:10:37'),
(96, 'Mang oleh', 'rosida', 'rosida lgi apa', '2020-10-08 13:10:45'),
(97, 'Mang oleh', 'rosida', 'ko ga dibales si', '2020-10-08 13:10:52'),
(98, 'Mang oleh', 'rosida', 'apasi mang', '2020-10-08 13:11:41'),
(99, 'rosida', 'Mang oleh', 'wkwk', '2020-10-08 13:11:58'),
(100, 'Mang oleh', 'rosida', 'rosida', '2020-10-08 13:13:29'),
(101, 'rosida', 'Mang oleh', 'apa mang', '2020-10-08 13:13:50'),
(102, 'Mang oleh', 'rosida', 'selamat siang', '2020-10-08 13:22:38'),
(103, 'rosida', 'Mang oleh', 'selamat siang juga', '2020-10-08 13:22:57'),
(104, 'Mang oleh', 'rosida', 'haiii', '2020-10-08 13:23:57'),
(105, 'Mang oleh', 'kesayangan', 'uy', '2020-10-16 09:03:56'),
(106, 'Mang oleh', 'kesayangan', 'sada', '2020-10-16 10:00:32'),
(107, 'Mang oleh', 'kesayangan', 'asdasdsad', '2020-10-16 10:08:41'),
(108, 'Mang oleh', 'kesayangan', 'sad', '2020-10-16 10:11:43'),
(109, 'Mang oleh', 'kesayangan', 'asd', '2020-10-16 10:14:47'),
(110, 'Mang oleh', 'kesayangan', '', '2020-10-16 10:14:47'),
(111, 'Mang oleh', 'kesayangan', 'asd', '2020-10-16 10:16:59'),
(112, 'Mang oleh', 'kesayangan', 'yang', '2020-10-16 10:17:36'),
(113, 'kesayangan', 'Mang oleh', 'apamang', '2020-10-16 10:17:53'),
(114, 'Mang oleh', 'kesayangan', 'uy', '2020-10-16 10:18:08'),
(115, 'kesayangan', 'Mang oleh', 'as', '2020-10-16 10:18:15'),
(116, 'Mang oleh', 'kesayangan', 'sad', '2020-10-16 10:18:31'),
(117, 'kesayangan', 'Mang oleh', 'asd', '2020-10-16 10:18:38'),
(118, 'kesayangan', 'Mang oleh', 'asd', '2020-10-16 10:19:03'),
(119, 'Mang oleh', 'kesayangan', 'asd', '2020-10-16 10:19:19'),
(120, 'Mang oleh', 'kesayangan', 'asd', '2020-10-16 10:22:41'),
(121, 'kesayangan', 'Mang oleh', 'asd', '2020-10-16 10:22:48'),
(122, 'Mang oleh', 'kesayangan', 'asd', '2020-10-16 10:24:32'),
(123, 'Mang oleh', 'kesayangan', '', '2020-10-16 10:24:33'),
(124, 'Mang oleh', 'kesayangan', 'sad', '2020-10-16 10:24:55'),
(125, 'kesayangan', 'Mang oleh', 'asd', '2020-10-16 10:25:00'),
(126, 'kesayangan', 'Mang oleh', '', '2020-10-16 10:25:00'),
(127, 'Mang oleh', 'kesayangan', 'dsf', '2020-10-16 10:32:32'),
(128, 'Mang oleh', 'kesayangan', 'sd', '2020-10-16 10:34:38'),
(129, 'kesayangan', 'Mang oleh', 'sdsd', '2020-10-16 10:34:45'),
(130, 'kesayangan', 'Mang oleh', 'sd', '2020-10-16 10:35:32'),
(131, 'Mang oleh', 'kesayangan', 'sad', '2020-10-16 10:35:40'),
(132, 'kesayangan', 'Mang oleh', 'asd', '2020-10-16 10:36:04'),
(133, 'Mang oleh', 'kesayangan', 'sad', '2020-10-16 10:37:14'),
(134, 'Mang oleh', 'kesayangan', '', '2020-10-16 10:37:14'),
(135, 'Mang oleh', 'kesayangan', 'sd', '2020-10-16 10:37:43'),
(136, 'kesayangan', 'Mang oleh', 'f', '2020-10-16 10:39:41'),
(137, 'Mang oleh', 'kesayangan', 'df', '2020-10-16 10:39:51'),
(138, 'kesayangan', 'Mang oleh', 'df', '2020-10-16 10:40:01'),
(139, 'Mang oleh', 'kesayangan', 'sd', '2020-10-16 10:40:12'),
(140, 'Mang oleh', 'kesayangan', 'sd', '2020-10-16 10:40:44'),
(141, 'Mang oleh', 'kesayangan', 'sdsd', '2020-10-16 10:40:55'),
(142, 'kesayangan', 'Mang oleh', 'asd', '2020-10-16 10:41:38'),
(143, 'kesayangan', 'Mang oleh', '', '2020-10-16 10:41:38'),
(144, 'Mang oleh', 'kesayangan', 'asd', '2020-10-16 10:41:52'),
(145, 'kesayangan', 'Mang oleh', 'asd', '2020-10-16 10:42:16'),
(146, 'Mang oleh', 'kesayangan', 'asd', '2020-10-16 10:42:35'),
(147, 'Mang oleh', 'kesayangan', 'asd', '2020-10-16 10:44:03'),
(148, 'kesayangan', 'Mang oleh', 'asd', '2020-10-16 10:44:17'),
(149, 'Mang oleh', 'kesayangan', 'asd', '2020-10-16 10:44:27'),
(150, 'kesayangan', 'Mang oleh', 'asd', '2020-10-16 10:44:57'),
(151, 'kesayangan', 'Mang oleh', 'asd', '2020-10-16 10:45:05'),
(152, 'kesayangan', 'Mang oleh', 'asd', '2020-10-16 10:45:07'),
(153, 'kesayangan', 'Mang oleh', 'asd', '2020-10-16 10:45:09'),
(154, 'Mang oleh', 'kesayangan', 'asd', '2020-10-16 10:45:14'),
(155, 'Mang oleh', 'kesayangan', 'dsf', '2020-10-16 10:49:53'),
(156, 'Mang oleh', 'kesayangan', 'asd', '2020-10-16 10:51:39'),
(157, 'Mang oleh', 'kesayangan', 'asd', '2020-10-16 10:52:36'),
(158, 'Mang oleh', 'kesayangan', 'sad', '2020-10-16 10:53:24'),
(159, 'kesayangan', 'Mang oleh', 'asd', '2020-10-16 10:54:02'),
(160, 'Mang oleh', 'kesayangan', 'dsf', '2020-10-16 10:54:41'),
(161, 'Mang oleh', 'kesayangan', 'asd', '2020-10-16 10:55:13'),
(162, 'Mang oleh', 'kesayangan', '', '2020-10-16 10:55:13'),
(163, 'Mang oleh', 'kesayangan', 'asd', '2020-10-16 10:56:25'),
(164, 'Mang oleh', 'kesayangan', 'asd', '2020-10-16 10:58:17'),
(165, 'kesayangan', 'Mang oleh', 'asdasd', '2020-10-16 10:58:27'),
(166, 'kesayangan', 'Mang oleh', 'asdad', '2020-10-16 10:58:36'),
(167, 'Mang oleh', 'kesayangan', 'asdad', '2020-10-16 10:58:43'),
(168, 'kesayangan', 'Mang oleh', 'asdasd', '2020-10-16 10:58:50'),
(169, 'kesayangan', 'Mang oleh', '', '2020-10-16 10:58:50'),
(170, 'Mang oleh', 'kesayangan', 'asd', '2020-10-16 10:58:54'),
(171, 'Mang oleh', 'rosida', 'a', '2020-10-16 14:01:41'),
(172, 'Mang oleh', 'jaka tingkir', 'asd', '2020-10-16 14:01:58'),
(173, 'rosida', 'Mang oleh', 'aew', '2020-10-16 14:02:12'),
(174, 'jaka tingkir', 'Mang oleh', 'apa', '2020-10-16 14:02:26'),
(175, 'jaka tingkir', 'Mang oleh', 'sda', '2020-10-16 14:07:40'),
(176, 'rosida', 'Mang oleh', 'asd', '2020-10-16 14:07:49'),
(177, 'jaka tingkir', 'Mang oleh', 'sd', '2020-10-16 14:08:51'),
(178, 'rosida', 'Mang oleh', 'sd', '2020-10-16 14:08:58'),
(179, 'rosida', 'Mang oleh', 'fdg', '2020-10-16 14:13:53'),
(180, 'jaka tingkir', 'Mang oleh', 'dfg', '2020-10-16 14:14:02'),
(181, 'rosida', 'Mang oleh', 'asd', '2020-10-16 14:19:19'),
(182, 'jaka tingkir', 'Mang oleh', 'asd', '2020-10-16 14:19:22'),
(183, 'jaka tingkir', 'Mang oleh', '', '2020-10-16 14:19:22'),
(184, 'jaka tingkir', 'Mang oleh', 'asd', '2020-10-16 14:20:15'),
(185, 'rosida', 'Mang oleh', 'asd', '2020-10-16 14:20:18'),
(186, 'jaka tingkir', 'Mang oleh', 'asd', '2020-10-16 14:32:22'),
(187, 'rosida', 'Mang oleh', 'asd', '2020-10-16 14:32:26'),
(188, 'kesayangan', 'Mang oleh', 'a', '2020-10-17 06:30:49'),
(189, 'rosida', 'Mang oleh', 'a', '2020-10-17 06:30:57'),
(190, 'kesayangan', 'Mang oleh', 'a', '2020-10-17 06:31:11'),
(191, 'rosida', 'Mang oleh', 'a', '2020-10-17 06:31:18'),
(192, 'rosida', 'Mang oleh', 'a', '2020-10-17 07:12:16'),
(193, 'kesayangan', 'Mang oleh', 'a', '2020-10-17 07:12:18'),
(194, 'rosida', 'Mang oleh', 'a', '2020-10-17 07:13:15'),
(195, 'kesayangan', 'Mang oleh', 'a', '2020-10-17 07:13:20'),
(196, 'rosida', 'Mang oleh', 'a', '2020-10-17 07:14:36'),
(197, 'kesayangan', 'Mang oleh', 'a', '2020-10-17 07:15:00'),
(198, 'rosida', 'Mang oleh', 'a', '2020-10-17 07:18:25'),
(199, 'kesayangan', 'Mang oleh', 'as', '2020-10-17 07:18:35'),
(200, 'kesayangan', 'Mang oleh', 'as', '2020-10-17 07:18:56'),
(201, 'kesayangan', 'Mang oleh', 'sa', '2020-10-17 07:19:13'),
(202, 'kesayangan', 'Mang oleh', 'aw', '2020-10-17 08:01:04'),
(203, 'rosida', 'Mang oleh', 'aw', '2020-10-17 08:01:18'),
(204, 'rosida', 'Mang oleh', 'asd', '2020-10-17 08:01:28'),
(205, 'kesayangan', 'Mang oleh', 'ade', '2020-10-17 08:02:24'),
(206, 'rosida', 'Mang oleh', 'afe', '2020-10-17 08:02:35'),
(207, 'rosida', 'Mang oleh', 'ade', '2020-10-17 08:33:52'),
(208, 'kesayangan', 'Mang oleh', 'as', '2020-10-17 08:34:06'),
(209, 'kesayangan', 'Mang oleh', 'aw', '2020-10-17 08:35:39'),
(210, 'rosida', 'Mang oleh', 'aw', '2020-10-17 08:35:57'),
(211, 'kesayangan', 'Mang oleh', 'aw', '2020-10-17 08:38:51'),
(212, 'kesayangan', 'Mang oleh', 'asd', '2020-10-17 08:39:06'),
(213, 'kesayangan', 'Mang oleh', '', '2020-10-17 08:39:06'),
(214, 'rosida', 'Mang oleh', 'aw', '2020-10-17 08:39:19'),
(215, 'kesayangan', 'Mang oleh', 'asd', '2020-10-17 08:39:28'),
(216, 'kesayangan', 'Mang oleh', 'asd', '2020-10-17 08:39:34'),
(217, 'rosida', 'Mang oleh', 'asd', '2020-10-17 08:40:02'),
(218, 'rosida', 'Mang oleh', 'a', '2020-10-17 08:40:54'),
(219, 'rosida', 'Mang oleh', 'asd', '2020-10-17 08:41:26'),
(220, 'rosida', 'Mang oleh', 'as', '2020-10-17 08:42:29'),
(221, 'rosida', 'Mang oleh', 'asdads', '2020-10-17 08:46:13'),
(222, 'rosida', 'Mang oleh', 'asd', '2020-10-17 08:46:36'),
(223, 'rosida', 'Mang oleh', 'asd', '2020-10-17 08:48:14'),
(224, 'rosida', 'Mang oleh', 's', '2020-10-17 08:50:52'),
(225, 'rosida', 'Mang oleh', 'asd', '2020-10-17 08:53:05'),
(226, 'rosida', 'Mang oleh', 'sad', '2020-10-17 08:56:18'),
(227, 'rosida', 'Mang oleh', 'asd', '2020-10-17 08:56:55'),
(228, 'rosida', 'Mang oleh', 'asd', '2020-10-17 08:57:14'),
(229, 'rosida', 'Mang oleh', 'asdasd', '2020-10-17 08:57:51'),
(230, 'rosida', 'Mang oleh', 'asd', '2020-10-17 08:58:23'),
(231, 'rosida', 'Mang oleh', 'asd', '2020-10-17 09:01:32'),
(232, 'kesayangan', 'Mang oleh', 'sda', '2020-10-17 09:02:51'),
(233, 'rosida', 'Mang oleh', 'j', '2020-10-17 09:13:31'),
(234, 'kesayangan', 'Mang oleh', 'd', '2020-10-17 09:14:07'),
(235, 'rosida', 'Mang oleh', 'sad', '2020-10-17 09:26:42'),
(236, 'kesayangan', 'Mang oleh', 'asd', '2020-10-17 09:28:36'),
(237, 'rosida', 'Mang oleh', 'asd', '2020-10-17 09:40:29'),
(238, 'rosida', 'Mang oleh', 'sdf', '2020-10-17 09:40:41'),
(239, 'kesayangan', 'Mang oleh', 'dsf', '2020-10-17 09:40:55'),
(240, 'rosida', 'Mang oleh', 'as', '2020-10-17 09:43:39'),
(241, 'rosida', 'Mang oleh', 'asd', '2020-10-17 09:43:48'),
(242, 'rosida', 'Mang oleh', '', '2020-10-17 09:43:49'),
(243, 'rosida', 'Mang oleh', '', '2020-10-17 09:43:53'),
(244, 'rosida', 'Mang oleh', '', '2020-10-17 09:43:53'),
(245, 'rosida', 'Mang oleh', '', '2020-10-17 09:43:53'),
(246, 'rosida', 'Mang oleh', 'dfs', '2020-10-17 09:44:23'),
(247, 'rosida', 'Mang oleh', 'asd', '2020-10-17 09:45:42'),
(248, 'kesayangan', 'Mang oleh', 'asd', '2020-10-17 09:45:51'),
(249, 'kesayangan', 'Mang oleh', 'AS', '2020-10-17 09:46:55'),
(250, 'rosida', 'Mang oleh', 'as', '2020-10-17 09:47:03'),
(251, 'rosida', 'Mang oleh', 'asd', '2020-10-17 12:23:11'),
(252, 'rosida', 'Mang oleh', 'asd', '2020-10-17 12:23:39'),
(253, 'kesayangan', 'Mang oleh', 'asd', '2020-10-17 12:24:13'),
(254, 'rosida', 'Mang oleh', 'aw', '2020-10-17 21:30:06'),
(255, 'kesayangan', 'Mang oleh', 'asd', '2020-10-17 21:30:16'),
(256, 'rosida', 'Mang oleh', 'asd', '2020-10-17 21:34:21'),
(257, 'kesayangan', 'Mang oleh', 'asd', '2020-10-17 21:34:50'),
(258, 'Mang oleh', 'jaka tingkir', 'sd', '2020-10-17 21:36:21');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `city` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `phone` char(12) DEFAULT NULL,
  `bio` varchar(255) DEFAULT NULL,
  `status` int(1) NOT NULL,
  `user_key` varchar(255) DEFAULT NULL,
  `refreshtoken` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `full_name`, `email`, `username`, `image`, `password`, `city`, `address`, `phone`, `bio`, `status`, `user_key`, `refreshtoken`, `created_at`) VALUES
(30, 'Mang oleh', 'dickyf147@gmail.com', 'oleh00312', 'image-1602090622910.jpg', '$2b$10$FCJ2/K74XsvIV/1VZzYbPumm79vmFQRZlhMHELK7IWn7dwXrmDsJm', 'Karawang', 'Karawang, Indonesia', '+62877208337', 'Web Developer', 1, NULL, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MzAsImVtYWlsIjoiZGlja3lmMTQ3QGdtYWlsLmNvbSIsImlhdCI6MTYwMzA1Nzg3NH0.uundhcpdT6blDIzDOwVhiP2LIwkBoalnOiTq4CuNMww', '2020-10-04 21:53:20'),
(31, 'jaka tingkir', 'tingkir@gmail.com', 'jaka04127', 'image-1601941779644.png', '$2b$10$vjAHCHjyocncytoykQo0QuHNv7qnhjVT1d.1oBD85cqhWMgCTtiHW', 'baghdad', 'purwakarta, Indonesia', '+62809898789', 'web developer', 1, NULL, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MzEsImVtYWlsIjoidGluZ2tpckBnbWFpbC5jb20iLCJpYXQiOjE2MDI4MzE2NzB9.o_5sOAEIDLgD--tnefNhxXUGtvgPNoqome1xDrOQKN0', '2020-10-06 06:41:44'),
(32, 'kesayangan', 'nabilah@gmail.com', 'kesayangan36564', 'image-1602037318585.jpg', '$2b$10$Rxz6OfYeN0fYzDjqQWbX3OBVqD6hLY6MqX52EU7yeOwy8oDoWWGMO', 'Cikampek', 'Karawang, Indonesia', '+62854345678', 'Aku sayang kamu', 1, NULL, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MzIsImVtYWlsIjoibmFiaWxhaEBnbWFpbC5jb20iLCJpYXQiOjE2MDI5NDQ5OTJ9.qk7vPos9a0SfOJ-U-cOXuAb13SRmpyaVmD0L31g1vx8', '2020-10-07 09:20:36'),
(33, 'rosida', 'rosida@gmail.com', 'rosida68257', 'image-1602124934818.jpg', '$2b$10$2.SdKwF6Fu/qnQLqKusYju98f9F3qhM.qQKLYeVnfHQN/E.edG/F.', 'ponorogo', 'ponorogo, Indonesia', '+62865456788', 'Aku rosida', 1, NULL, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MzMsImVtYWlsIjoicm9zaWRhQGdtYWlsLmNvbSIsImlhdCI6MTYwMjk0NDk4MX0.P1hqYhlFNddKYDZ3bKQSqqB_OmAn0i35KwgDKByoWQ4', '2020-10-07 09:36:08'),
(39, 'arah', 'arah.gt09@gmail.com', 'arah97892', 'image-1602138082083.jpg', '$2b$10$jDSubddjtttkSp7v6pu/pueJ7vQAEcBm7e9f3Rivv/2RcJvrbJOsC', 'Karawang', 'Karawang, Indonesia', '+88654456733', 'Web Developer', 1, NULL, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MzksImVtYWlsIjoiYXJhaC5ndDA5QGdtYWlsLmNvbSIsImlhdCI6MTYwMjc1NDMxNX0.OVBY_EFWem_u6lnFMFOmIa0Hx4XcOnqaz6egoV0jhh4', '2020-10-08 13:19:57'),
(40, 'asik', 'arah.gt08@gmail.com', 'asik53893', 'default.jpg', '$2b$10$NiOxWGWrZtrP9lGXoOY6Y.03jOqSdLXfUx3hY95krSLwt8Ja2ZmbW', NULL, NULL, NULL, NULL, 0, NULL, NULL, '2020-10-15 16:30:53');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `message`
--
ALTER TABLE `message`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=259;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
