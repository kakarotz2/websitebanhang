-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 29, 2020 lúc 05:51 PM
-- Phiên bản máy phục vụ: 10.4.14-MariaDB
-- Phiên bản PHP: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `store`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `about`
--

CREATE TABLE `about` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `content` text NOT NULL,
  `images` varchar(200) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `about`
--

INSERT INTO `about` (`id`, `name`, `content`, `images`, `created_at`) VALUES
(1, 'humg', 'jsjcdjwdf', ' image/sv6.jpg', '2020-11-28 09:01:30'),
(2, 'huy', 'chán', ' image/footer.jpg', '2020-11-28 10:42:22'),
(3, 'cân view', 'team', ' image/d222.jpg', '2020-11-28 11:31:06'),
(4, 'chán', 'lh', ' image/cloudcomputing.jpg', '2020-11-28 11:32:28');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dbl_danhmuc`
--

CREATE TABLE `dbl_danhmuc` (
  `id_danhMuc` int(11) NOT NULL,
  `name_danhMuc` varchar(255) NOT NULL,
  `TenKhongDau` varchar(100) NOT NULL,
  `parent_id` int(10) NOT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `dbl_danhmuc`
--

INSERT INTO `dbl_danhmuc` (`id_danhMuc`, `name_danhMuc`, `TenKhongDau`, `parent_id`, `created_at`) VALUES
(17, 'Trang Chủ', 'Trang-Chu', 0, NULL),
(18, 'Giới Thiệu', 'Gioi-Thieu', 0, NULL),
(19, 'Dịch Vụ', 'Dich-Vu', 0, NULL),
(20, 'Bộ Sưu Tập', 'Bo-Suu-Tap', 0, NULL),
(21, 'Blog', 'Blog', 0, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dichvu`
--

CREATE TABLE `dichvu` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `content` text NOT NULL,
  `images` text NOT NULL,
  `giaCa` int(11) NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `dichvu`
--

INSERT INTO `dichvu` (`id`, `name`, `content`, `images`, `giaCa`, `created_at`) VALUES
(4, 'Khoai Lang', 'Rau củ hữu cơ', ' ../images/sv-f2.jpg', 40000, '0000-00-00 00:00:00'),
(5, 'Bí Đao', 'Rau củ hữu cơ', ' ../images/sv-f3.jpg', 20000, '0000-00-00 00:00:00'),
(6, 'Cà rốt', 'Rau củ hữu cơ', ' ../images/sv-f4.jpg', 15000, '0000-00-00 00:00:00'),
(7, 'Viêt quất', 'Rau củ hữu cơ', ' ../images/sv-f5.jpg', 50000, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `gallery`
--

CREATE TABLE `gallery` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `images` text NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `gallery`
--

INSERT INTO `gallery` (`id`, `name`, `images`, `created_at`) VALUES
(15, 'huy', 'https://www.google.com/search?q=qu%E1%BA%A3+t%C3%A1o&sxsrf=ALeKk02Y9AjLtU-_S_g2m-vhv08i9f9XvQ:1606406364602&tbm=isch&source=iu&ictx=1&fir=fe0DueM40E9MIM%252CsQQw1HPPmxloBM%252C_&vet=1&usg=AI4_-kTMgPChTPM_7V2KG5oi6roN3dAbqg&sa=X&ved=2ahUKEwjWg-iFyqDtAhXEPXAKHftBDXcQ9QF6BAgCEEY#imgrc=fe0DueM40E9MIM', '2020-11-26 23:00:41'),
(16, 'hđv', 'https://www.google.com/search?q=qu%E1%BA%A3+t%C3%A1o&sxsrf=ALeKk02Y9AjLtU-_S_g2m-vhv08i9f9XvQ:1606406364602&tbm=isch&source=iu&ictx=1&fir=fe0DueM40E9MIM%252CsQQw1HPPmxloBM%252C_&vet=1&usg=AI4_-kTMgPChTPM_7V2KG5oi6roN3dAbqg&sa=X&ved=2ahUKEwjWg-iFyqDtAhXEPXAKHftBDXcQ9QF6BAgCEEY#imgrc=fe0DueM40E9MIM', '2020-11-24 21:35:32'),
(20, 'hbfhdv', 'https://www.google.com/search?q=qu%E1%BA%A3+t%C3%A1o&sxsrf=ALeKk02Y9AjLtU-_S_g2m-vhv08i9f9XvQ:1606406364602&tbm=isch&source=iu&ictx=1&fir=fe0DueM40E9MIM%252CsQQw1HPPmxloBM%252C_&vet=1&usg=AI4_-kTMgPChTPM_7V2KG5oi6roN3dAbqg&sa=X&ved=2ahUKEwjWg-iFyqDtAhXEPXAKHftBDXcQ9QF6BAgCEEY#imgrc=fe0DueM40E9MIM', '2020-11-26 23:03:05'),
(22, 'humg', 'image/About2.jpg', '0000-00-00 00:00:00'),
(31, 'hoi cham', ' image/ga1.jpg', '0000-00-00 00:00:00'),
(32, 'met ghe', ' image/sv6.jpg', '0000-00-00 00:00:00'),
(35, 'h', ' image/About1.jpg', '0000-00-00 00:00:00'),
(36, 'm', ' image/About1.jpg', '0000-00-00 00:00:00'),
(37, '...', ' image/footer.jpg', '0000-00-00 00:00:00'),
(38, 'seach', ' image/ga3.jpg', '0000-00-00 00:00:00'),
(39, 'seach', ' image/ga3.jpg', '0000-00-00 00:00:00'),
(42, 'hhc', ' image/About2.jpg', '0000-00-00 00:00:00'),
(50, 'l', ' image/About2.jpg', '0000-00-00 00:00:00'),
(51, 't', ' image/ga3.jpg', '0000-00-00 00:00:00'),
(52, 'h', ' image/d222.jpg', '0000-00-00 00:00:00'),
(53, 'h', ' image/footer.jpg', '0000-00-00 00:00:00'),
(54, 'h', ' image/blog3.jpg', '0000-00-00 00:00:00'),
(55, 'l', ' image/d222.jpg', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `first` varchar(50) NOT NULL,
  `last` varchar(50) NOT NULL,
  `phone` int(10) NOT NULL,
  `email` varchar(250) NOT NULL,
  `meassage` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`id`, `first`, `last`, `phone`, `email`, `meassage`) VALUES
(1, 'humg', 'L?', 368949274, 'lehuy987651234@gmail.com', 'nj'),
(2, 'humg', 'L?', 368949274, 'lehuy987651234@gmail.com', ''),
(22, '', '', 0, '', ''),
(24, 'huy', 'L?', 368949274, 'lehuy987651234@gmail.com', 'hello'),
(27, 'huy', 'L?', 368949274, 'lehuy987651234@gmail.com', 'hbjh');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `about`
--
ALTER TABLE `about`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `dbl_danhmuc`
--
ALTER TABLE `dbl_danhmuc`
  ADD PRIMARY KEY (`id_danhMuc`);

--
-- Chỉ mục cho bảng `dichvu`
--
ALTER TABLE `dichvu`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `about`
--
ALTER TABLE `about`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `dbl_danhmuc`
--
ALTER TABLE `dbl_danhmuc`
  MODIFY `id_danhMuc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT cho bảng `dichvu`
--
ALTER TABLE `dichvu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
