-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th6 22, 2023 lúc 04:08 PM
-- Phiên bản máy phục vụ: 10.4.28-MariaDB
-- Phiên bản PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `du_an_1`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bill`
--

CREATE TABLE `bill` (
  `bill_id` int(11) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `total_money` int(100) NOT NULL,
  `pttt` tinyint(1) NOT NULL DEFAULT 1 COMMENT '0.Thanh toán khi nhận hàng\r\n1.Thanh toán bằng Paypal\r\n',
  `status` tinyint(1) DEFAULT 0 COMMENT '0.Đơn hàng mới 1.Đang xử lý 2.Đang giao hàng 3.Đã hoàn thành',
  `user_id` int(11) DEFAULT NULL,
  `ngaydathang` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `bill`
--

INSERT INTO `bill` (`bill_id`, `fullname`, `email`, `address`, `phone`, `total_money`, `pttt`, `status`, `user_id`, `ngaydathang`) VALUES
(92, 'admin1', 'tungntph19820@fpt.edu.vn', 'Nam Tu Liem', '0869888319', 446, 1, 3, 11, '08/12/2022'),
(93, 'admin1', 'tungntph19820@fpt.edu.vn', 'Nam Tu Liem', '0869888319', 250, 1, 3, 11, '10/12/2022'),
(94, 'admin1', 'tungntph19820@fpt.edu.vn', 'Nam Tu Liem', '0869888319', 850, 0, 0, 11, '10/12/2022'),
(95, 'admin1', 'tungntph19820@fpt.edu.vn', 'Nam Tu Liem', '0869888319', 450, 1, 0, 11, '12/12/2022'),
(96, 'admin1', 'tungntph19820@fpt.edu.vn', 'Nam Tu Liem', '0869888319', 250, 1, 0, 11, '12/12/2022'),
(97, 'Phanluan112', 'luanpvph19819@fpt.edu.vn', 'Thành phố Hà Nội, Quận Nam Từ Liêm, Phường Tây Mỗ', '0968768464', 1160, 1, 0, 15, '12/12/2022'),
(98, 'tung1', 'tung@gmail.com', 'Nam Tu Liem', '0869888319', 272, 1, 0, 10, '12/12/2022');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cart`
--

CREATE TABLE `cart` (
  `order_id` int(11) NOT NULL,
  `user_id` int(10) NOT NULL,
  `price` double(10,2) NOT NULL,
  `amount` int(10) NOT NULL,
  `product_id` int(11) NOT NULL,
  `size_id` int(11) NOT NULL,
  `bill_id` int(11) NOT NULL,
  `product_name` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `cart`
--

INSERT INTO `cart` (`order_id`, `user_id`, `price`, `amount`, `product_id`, `size_id`, `bill_id`, `product_name`) VALUES
(106, 11, 198.00, 2, 93, 38, 92, 'giày nike spide 648'),
(107, 11, 200.00, 1, 123, 38, 93, 'giày adidas chuẩn form limited'),
(108, 11, 200.00, 4, 122, 37, 94, 'giày adidas chuẩn form limited'),
(109, 11, 200.00, 2, 121, 36, 95, 'giày adidas chuẩn form limited'),
(110, 11, 200.00, 1, 119, 36, 96, 'giày adidas chuẩn form limited'),
(111, 15, 222.00, 2, 136, 42, 97, 'vanz of the wall logitech nam'),
(112, 15, 333.00, 2, 131, 39, 97, 'vanz of the wall logitech nam'),
(113, 10, 222.00, 1, 136, 42, 98, 'vanz of the wall logitech nam');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categori`
--

CREATE TABLE `categori` (
  `categori_id` int(11) NOT NULL,
  `categori_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `categori`
--

INSERT INTO `categori` (`categori_id`, `categori_name`) VALUES
(2, 'giày nữ'),
(4, 'giày nam');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comment`
--

CREATE TABLE `comment` (
  `comment_id` int(11) NOT NULL,
  `content` varchar(255) NOT NULL,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `date_comment` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `comment`
--

INSERT INTO `comment` (`comment_id`, `content`, `product_id`, `user_id`, `date_comment`) VALUES
(10, 'giày này khá là ok  đấy =))', 93, 11, '10:22:03 pm - 08/12/2022'),
(12, 'hello\r\n', 123, 11, '12:43:38 am - 12/12/2022');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `price` double(10,2) NOT NULL,
  `img` varchar(255) NOT NULL,
  `mo_ta` varchar(255) NOT NULL,
  `number_of_view` int(11) DEFAULT NULL,
  `categori_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`product_id`, `product_name`, `price`, `img`, `mo_ta`, `number_of_view`, `categori_id`) VALUES
(70, 'Giày adidas Supernova+ ', 110.00, 'p1.jpg', 'giày adidas nam trắng đen phiên bản giới hạn', NULL, 2),
(71, 'Giày adidas Dual + Superstar', 120.00, 'p2.jpg', 'giày đẹp', NULL, 2),
(72, 'giày adidas duramo đen đỏ', 90.00, 'p3.jpg', 'giày nữ', NULL, 2),
(73, 'giày adidas adventure base ', 130.00, 'p4.jpg', 'giày da lộn', NULL, 2),
(74, 'giày adidas hoops detech', 123.00, 'p5.jpg', 'giày nữ ', NULL, 2),
(75, 'giày adidas questar evolution', 230.00, 'p6.jpg', 'giày da lộn chính hãng', NULL, 2),
(76, 'giày adidas bản evolution limited', 135.00, 'p7.jpg', 'giày adidas nữ hàng real', NULL, 2),
(77, 'giày adidas terrex ', 160.00, 'p8.jpg', 'bản khủng long bạo chúa', NULL, 2),
(78, 'giày adidas grand count ', 320.00, 'p8.jpg', 'giày nam ', NULL, 4),
(79, 'giày adidas adizero boot', 320.00, 'p7.jpg', 'giày hot trend ', NULL, 4),
(80, 'giày adidas adizero RC t4', 230.00, 'p6.jpg', 'giày nam bản limited', NULL, 4),
(81, 'giày adidas chuẩn form limited', 143.00, 'p5.jpg', 'giày dành cho mọi lứa tuổi', NULL, 4),
(82, 'giày adidas superstar', 411.00, 'p4.jpg', 'giày nam đẹp', NULL, 4),
(83, 'giày vanz of the wall', 134.00, 'p3.jpg', 'giày vanz rẻ vô địch', NULL, 4),
(84, 'giày lacosse xanh đính đá', 320.00, 'p2.jpg', 'đẹp không tì vết chuẩn cho các dân chơi ', NULL, 4),
(85, 'giày puma serie 3', 245.00, 'p1.jpg', 'giày này rất là đẹp', NULL, 4),
(86, 'giày puma collection ', 125.00, 'p6.jpg', 'giày nữ bản giới hạn q', NULL, 2),
(87, 'giày lacosse svc', 420.00, 'p4.jpg', 'giày da bóng lộn', NULL, 2),
(88, 'giày convesse 5 star', 357.00, 'p7.jpg', 'giày nữ', NULL, 2),
(89, 'giày nike cổ cao ', 230.00, 'p2.jpg', 'giày cổ cao + đế air', NULL, 2),
(96, 'giày puma collection', 230.00, 'p3.jpg', 'giày đẹp', NULL, 2),
(97, 'giày adidas evoluton', 240.00, 'p6.jpg', 'ok', NULL, 2),
(98, 'giày nike air force 1 ', 256.00, 'p6.jpg', 'ok', NULL, 2),
(99, 'giày clownz  fullsize', 546.00, 'p8.jpg', 'quá đẹp', NULL, 2),
(100, 'giày adidas clownz abs', 123.00, 'p6.jpg', 'giày adidas clownz abs', NULL, 2),
(101, 'giày adidas clownz abs', 300.00, 'p4.jpg', 'giày adidas clownz abs', NULL, 2),
(102, 'giày adidas clownz abs', 200.00, 'p1.jpg', 'giày adidas clownz abs', NULL, 2),
(103, 'giày adidas clownz abs', 100.00, 'p5.jpg', 'giày adidas clownz abs', NULL, 2),
(104, 'giày adidas clownz abs', 154.00, 'p5.jpg', 'giày adidas clownz abs', NULL, 4),
(105, 'giày adidas clownz abs', 140.00, 'p3.jpg', 'giày adidas clownz abs', NULL, 4),
(106, 'giày adidas clownz abs', 420.00, 'p8.jpg', 'giày adidas clownz abs', NULL, 4),
(107, 'giày adidas clownz abs', 111.00, 'p7.jpg', 'giày adidas clownz abs', NULL, 4),
(108, 'giày adidas clownz abs', 222.00, 'p8.jpg', 'giày adidas clownz abs', NULL, 4),
(109, 'giày adidas clownz abs', 222.00, 'p1.jpg', 'giày adidas clownz abs', NULL, 4),
(110, 'giày vanz of the wall', 333.00, 'p5.jpg', 'giày vanz of the wall', NULL, 4),
(111, 'giày vanz of the wall', 444.00, 'p5.jpg', 'giày vanz of the wall', NULL, 4),
(112, 'giày adidas chuẩn form limited', 200.00, 'p7.jpg', 'quá ok', NULL, 4),
(113, 'giày adidas chuẩn form limited', 200.00, 'p7.jpg', 'quá ok', NULL, 4),
(114, 'giày adidas chuẩn form limited', 200.00, 'p2.jpg', 'quá ok', NULL, 4),
(115, 'giày adidas chuẩn form limited', 200.00, 'p1.jpg', 'quá ok', NULL, 4),
(116, 'giày adidas chuẩn form limited', 200.00, 'p8.jpg', 'quá ok', NULL, 4),
(117, 'giày adidas chuẩn form limited', 200.00, 'p5.jpg', 'quá ok', NULL, 4),
(118, 'giày adidas chuẩn form limited', 200.00, 'p4.jpg', 'quá ok', NULL, 4),
(119, 'giày adidas chuẩn form limited', 200.00, 'p3.jpg', 'quá ok', NULL, 4),
(120, 'giày adidas chuẩn form limited', 200.00, 'p2.jpg', 'quá ok', NULL, 4),
(121, 'giày adidas chuẩn form limited', 200.00, 'p4.jpg', 'quá ok', NULL, 4),
(122, 'giày adidas chuẩn form limited', 200.00, 'p1.jpg', 'quá ok', NULL, 4),
(123, 'giày adidas chuẩn form limited', 200.00, 'p6.jpg', 'quá ok', NULL, 4),
(124, 'vanz of the wall logitech nam', 222.00, 'p5.jpg', 'Giày thể thao nam', NULL, 4),
(125, 'vanz z nữ', 122.00, 'p7.jpg', 'Giày thể thao nữ', NULL, 2),
(126, 'vanz of the wall logitech nam', 222.00, 'p4.jpg', 'Giày thể thao nam', NULL, 4),
(127, 'vanz of the wall logitech nam', 1222.00, 'p5.jpg', 'Giày thể thao nam', NULL, 4),
(128, 'vanz of the wall logitech nam', 222.00, 'p1.jpg', 'Giày thể thao nam', NULL, 4),
(129, 'vanz z nữ', 211.00, 'p8.jpg', 'Giày thể thao nữ', NULL, 2),
(130, 'vanz z nữ', 222.00, 'p5.jpg', 'Giày thể thao nữ', NULL, 2),
(131, 'vanz of the wall logitech nam', 333.00, 'p3.jpg', 'Giày thể thao nam', NULL, 4),
(132, 'vanz z nữ', 231.00, 'p7.jpg', 'Giày thể thao nữ', NULL, 2),
(133, 'vanz of the wall logitech nam', 222.00, 'p4.jpg', 'Giày thể thao nam', NULL, 4),
(134, 'Sneaker Nam', 321.00, 'p4.jpg', 'Giày thể thao nam', NULL, 4),
(135, 'vanz of the wall logitech nam', 122.00, 'p1.jpg', 'Giày thể thao nam', NULL, 4),
(136, 'vanz of the wall logitech nam', 222.00, 'p4.jpg', 'Giày thể thao nam', NULL, 4);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `size`
--

CREATE TABLE `size` (
  `size_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `pr_size` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `size`
--

INSERT INTO `size` (`size_id`, `product_id`, `pr_size`) VALUES
(127, 70, 36),
(128, 70, 37),
(129, 70, 38),
(130, 70, 39),
(131, 71, 37),
(132, 71, 38),
(133, 71, 40),
(134, 71, 41),
(135, 72, 38),
(136, 72, 39),
(137, 72, 40),
(138, 72, 41),
(139, 72, 42),
(140, 73, 38),
(141, 73, 39),
(142, 73, 40),
(143, 73, 41),
(144, 74, 36),
(145, 74, 37),
(146, 74, 38),
(147, 75, 37),
(148, 75, 39),
(149, 75, 41),
(150, 75, 42),
(151, 76, 37),
(152, 76, 38),
(153, 76, 39),
(154, 76, 40),
(155, 77, 38),
(156, 77, 39),
(157, 77, 40),
(158, 78, 38),
(159, 78, 39),
(160, 78, 40),
(161, 78, 41),
(162, 78, 42),
(163, 79, 37),
(164, 79, 39),
(165, 79, 41),
(166, 79, 42),
(167, 80, 38),
(168, 80, 39),
(169, 80, 40),
(170, 81, 36),
(171, 81, 38),
(172, 81, 39),
(173, 82, 36),
(174, 82, 37),
(175, 82, 39),
(176, 82, 41),
(177, 83, 39),
(178, 83, 40),
(179, 83, 41),
(180, 84, 36),
(181, 84, 37),
(182, 84, 38),
(183, 84, 40),
(184, 84, 41),
(185, 85, 36),
(186, 85, 37),
(187, 85, 39),
(188, 85, 40),
(189, 85, 42),
(190, 86, 37),
(191, 86, 39),
(192, 86, 41),
(193, 87, 38),
(194, 87, 40),
(195, 87, 42),
(196, 88, 37),
(197, 88, 38),
(198, 88, 41),
(199, 89, 37),
(200, 89, 39),
(201, 89, 40),
(202, 89, 41),
(203, 89, 42),
(227, 96, 37),
(228, 96, 39),
(229, 96, 40),
(230, 97, 38),
(231, 97, 39),
(232, 97, 42),
(233, 98, 39),
(234, 98, 41),
(235, 98, 42),
(236, 99, 38),
(237, 99, 40),
(238, 99, 42),
(239, 100, 37),
(240, 100, 39),
(241, 100, 41),
(242, 101, 36),
(243, 101, 37),
(244, 101, 39),
(245, 102, 37),
(246, 102, 39),
(247, 102, 41),
(248, 103, 37),
(249, 103, 40),
(250, 103, 42),
(251, 104, 37),
(252, 104, 40),
(253, 104, 42),
(254, 105, 36),
(255, 105, 38),
(256, 105, 40),
(257, 106, 36),
(258, 106, 38),
(259, 106, 40),
(260, 107, 36),
(261, 107, 38),
(262, 107, 40),
(263, 108, 36),
(264, 108, 38),
(265, 108, 40),
(266, 109, 36),
(267, 109, 38),
(268, 110, 36),
(269, 110, 38),
(270, 111, 36),
(271, 111, 38),
(272, 112, 36),
(273, 112, 37),
(274, 112, 38),
(275, 112, 39),
(276, 112, 40),
(277, 112, 41),
(278, 112, 42),
(279, 113, 36),
(280, 113, 37),
(281, 113, 38),
(282, 113, 39),
(283, 113, 40),
(284, 113, 41),
(285, 113, 42),
(286, 114, 36),
(287, 114, 37),
(288, 114, 38),
(289, 114, 39),
(290, 114, 40),
(291, 114, 41),
(292, 114, 42),
(293, 115, 36),
(294, 115, 37),
(295, 115, 38),
(296, 115, 39),
(297, 115, 40),
(298, 115, 41),
(299, 115, 42),
(300, 116, 36),
(301, 116, 37),
(302, 116, 38),
(303, 116, 39),
(304, 116, 40),
(305, 116, 41),
(306, 116, 42),
(307, 117, 36),
(308, 117, 37),
(309, 117, 38),
(310, 117, 39),
(311, 117, 40),
(312, 117, 41),
(313, 117, 42),
(314, 118, 36),
(315, 118, 37),
(316, 118, 38),
(317, 118, 39),
(318, 118, 40),
(319, 118, 41),
(320, 118, 42),
(321, 119, 36),
(322, 119, 37),
(323, 119, 38),
(324, 119, 39),
(325, 119, 40),
(326, 119, 41),
(327, 119, 42),
(335, 121, 36),
(336, 121, 37),
(337, 121, 38),
(338, 121, 39),
(339, 121, 40),
(340, 121, 41),
(341, 121, 42),
(342, 122, 36),
(343, 122, 37),
(344, 122, 38),
(345, 122, 39),
(346, 122, 40),
(347, 122, 41),
(348, 122, 42),
(356, 124, 36),
(357, 124, 37),
(358, 124, 38),
(359, 125, 36),
(360, 125, 38),
(361, 125, 39),
(362, 126, 37),
(363, 126, 39),
(364, 126, 40),
(365, 127, 37),
(366, 127, 38),
(367, 127, 39),
(368, 127, 40),
(369, 128, 37),
(370, 128, 38),
(371, 128, 40),
(372, 129, 36),
(373, 129, 38),
(374, 129, 42),
(375, 130, 37),
(376, 130, 40),
(377, 130, 41),
(378, 130, 42),
(379, 131, 37),
(380, 131, 39),
(381, 131, 41),
(382, 131, 42),
(383, 132, 36),
(384, 132, 37),
(385, 132, 38),
(386, 132, 41),
(387, 133, 38),
(388, 133, 40),
(389, 133, 41),
(390, 133, 42),
(391, 134, 37),
(392, 134, 38),
(393, 134, 40),
(394, 134, 41),
(395, 134, 42),
(396, 135, 38),
(397, 135, 39),
(398, 135, 42),
(399, 136, 37),
(400, 136, 40),
(401, 136, 42);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `avatar` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `address` varchar(255) NOT NULL,
  `role` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0.user\r\n1.admin\r\n',
  `status` varchar(10) NOT NULL DEFAULT 'true'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`user_id`, `username`, `password`, `avatar`, `email`, `phone`, `address`, `role`, `status`) VALUES
(10, 'tung1', '1', '../upload/1632527371706.jpg', 'tung@gmail.com', '0869888319', 'Nam Tu Liem', 1, 'true'),
(11, 'admin1', '1', '../upload/download.jpg', 'tungntph19820@fpt.edu.vn', '0869888319', 'Nam Tu Liem', 1, 'true'),
(16, 'admin', '1', '../upload/review-1.png', 'luanpvph19819@fpt.edu.vn', '0968768464', 'Phường Tây Mỗ, Quận Nam Từ Liêm, Thành phố Hà Nội', 0, 'true');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `bill`
--
ALTER TABLE `bill`
  ADD PRIMARY KEY (`bill_id`);

--
-- Chỉ mục cho bảng `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `lk_user` (`user_id`),
  ADD KEY `lk_bill` (`bill_id`);

--
-- Chỉ mục cho bảng `categori`
--
ALTER TABLE `categori`
  ADD PRIMARY KEY (`categori_id`);

--
-- Chỉ mục cho bảng `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`comment_id`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`);

--
-- Chỉ mục cho bảng `size`
--
ALTER TABLE `size`
  ADD PRIMARY KEY (`size_id`),
  ADD KEY `lk_size` (`product_id`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `bill`
--
ALTER TABLE `bill`
  MODIFY `bill_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- AUTO_INCREMENT cho bảng `cart`
--
ALTER TABLE `cart`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=114;

--
-- AUTO_INCREMENT cho bảng `categori`
--
ALTER TABLE `categori`
  MODIFY `categori_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `comment`
--
ALTER TABLE `comment`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=137;

--
-- AUTO_INCREMENT cho bảng `size`
--
ALTER TABLE `size`
  MODIFY `size_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=402;

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `lk_bill` FOREIGN KEY (`bill_id`) REFERENCES `bill` (`bill_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
