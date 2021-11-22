-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 22, 2021 lúc 05:25 PM
-- Phiên bản máy phục vụ: 10.4.20-MariaDB
-- Phiên bản PHP: 7.3.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `duan1`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `binhluan`
--

CREATE TABLE `binhluan` (
  `maBL` int(10) NOT NULL,
  `noiDung` varchar(255) NOT NULL,
  `maSP` int(10) NOT NULL,
  `maKH` int(10) NOT NULL,
  `ngayBL` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitietdonhang`
--

CREATE TABLE `chitietdonhang` (
  `maSP` int(10) NOT NULL,
  `maDH` int(10) NOT NULL,
  `donGia` float NOT NULL,
  `soLuongMua` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danhmuc`
--

CREATE TABLE `danhmuc` (
  `maDM` int(10) NOT NULL,
  `tenDM` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `danhmuc`
--

INSERT INTO `danhmuc` (`maDM`, `tenDM`) VALUES
(1, 'Iphone'),
(2, 'Xiaomi'),
(3, 'Oppo'),
(4, 'SamSung'),
(5, 'ViVo'),
(6, 'realme');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `donhang`
--

CREATE TABLE `donhang` (
  `maDH` int(10) NOT NULL,
  `maKH` int(10) NOT NULL,
  `maTT` int(10) NOT NULL,
  `tenKH` varchar(50) NOT NULL,
  `diaChi` varchar(50) NOT NULL,
  `SDT` int(10) NOT NULL,
  `ghiChu` varchar(255) NOT NULL,
  `trangThai` bit(2) NOT NULL DEFAULT b'0',
  `ngayDH` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khachhang`
--

CREATE TABLE `khachhang` (
  `maKH` int(10) NOT NULL,
  `tenDN` varchar(50) NOT NULL,
  `matKhau` varchar(50) NOT NULL,
  `tenKH` varchar(50) NOT NULL,
  `hinhAnh` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `diaChi` varchar(50) NOT NULL,
  `trangThai` bit(2) NOT NULL DEFAULT b'0',
  `vaiTro` bit(2) NOT NULL DEFAULT b'0',
  `SDT` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `maSP` int(10) NOT NULL,
  `tenSP` varchar(50) NOT NULL,
  `hinhAnh` varchar(50) NOT NULL,
  `donGia` float NOT NULL,
  `giamGia` int(10) NOT NULL,
  `maDM` int(10) NOT NULL,
  `ngayNhap` datetime NOT NULL,
  `soLuong` int(10) NOT NULL,
  `moTa` varchar(255) NOT NULL,
  `luotXem` int(11) NOT NULL DEFAULT 0,
  `trangThai` bit(2) NOT NULL DEFAULT b'0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`maSP`, `tenSP`, `hinhAnh`, `donGia`, `giamGia`, `maDM`, `ngayNhap`, `soLuong`, `moTa`, `luotXem`, `trangThai`) VALUES
(1, 'iphone 12', 'iphone_12.jpg', 22000000, 2, 1, '2021-11-16 08:43:12', 10, 'iphone 12 ', 31, b'00'),
(2, 'Samsung Galaxy S21 Ultra', '', 30990000, 5, 4, '2021-11-16 08:47:37', 10, 'Samsung Galaxy S21 Ultra', 5, b'00'),
(3, 'OPPO A55', 'OPPO_A55.jpg', 4990000, 10, 3, '2021-11-16 08:49:21', 10, 'OPPO A55\r\n', 8, b'00'),
(4, 'Realme C21y', '', 3490000, 5, 6, '2021-11-16 08:50:12', 10, 'Realme C21y\r\n', 7, b'00'),
(5, 'Vivo Y21s', '', 5290000, 5, 5, '2021-11-16 08:50:58', 10, 'Vivo Y21s', 2, b'00'),
(6, 'Xiaomi 11T Pro', '', 14990000, 2, 2, '2021-11-16 08:51:56', 15, 'Xiaomi 11T Pro\r\n', 1, b'00'),
(12, 'Iphone 12 pro max', '', 30390000, 10, 1, '2021-11-21 08:10:28', 20, 'iphone 12 pro max', 0, b'00'),
(13, 'iphone 13 mini ', '', 22590000, 25, 1, '2021-11-21 08:11:41', 30, 'iphone 13 mini \r\n', 0, b'00'),
(14, 'iphone 13 pro max', '', 34390000, 30, 1, '2021-11-21 08:16:20', 15, 'iphone 13 pro max\r\n', 0, b'00'),
(15, 'iphone XR', '', 8990000, 25, 1, '2021-11-21 08:24:00', 18, 'Iphone XR', 0, b'00'),
(16, 'Samsung Galaxy A72', '', 11490000, 5, 4, '2021-11-21 08:24:46', 10, 'Samsung Galaxy A72', 0, b'00'),
(17, 'Samsung Galaxy A22 ', '', 6090000, 0, 4, '2021-11-21 08:26:49', 30, 'Samsung Galaxy A22 5G\r\n', 0, b'00'),
(18, 'Samsung Galaxy A52', '', 9290000, 0, 4, '2021-11-21 08:28:44', 30, 'Samsung Galaxy A52\r\n', 0, b'00'),
(19, 'Samsung Galaxy S20 FE ', '', 15490000, 0, 4, '2021-11-21 08:29:26', 0, 'Samsung Galaxy S20 FE \r\n', 0, b'00'),
(20, 'Samsung Galaxy Z Flip3 5G', '', 24990000, 5, 4, '2021-11-21 08:33:22', 20, 'Samsung Galaxy Z Flip3 5G\r\n', 0, b'00'),
(21, 'Samsung Galaxy Z Fold3 5G ', '', 41990000, 15, 4, '2021-11-21 08:34:10', 20, 'Samsung Galaxy Z Fold3 5G \r\n', 0, b'00'),
(22, 'Samsung Galaxy S21+', '', 25990000, 10, 4, '2021-11-21 08:36:44', 15, 'Samsung Galaxy S21+\r\n', 0, b'00'),
(23, 'Samsung Galaxy A03s', '', 3690000, 0, 4, '2021-11-21 08:37:25', 30, 'Samsung Galaxy A03s\r\n', 0, b'00'),
(24, 'Samsung Galaxy A12', '', 4290000, 0, 4, '2021-11-21 08:37:59', 20, 'Samsung Galaxy A12', 0, b'00'),
(26, 'OPPO Find X3 Pro 5G', '', 26990000, 5, 3, '2021-11-21 08:40:44', 10, 'OPPO Find X3 Pro 5G\r\n', 0, b'00'),
(27, 'OPPO A74', '', 6690000, 2, 3, '2021-11-21 08:42:22', 15, 'OPPO A74\r\n', 0, b'00'),
(28, 'Oppo Reno6 5G', '', 12990000, 0, 3, '2021-11-21 08:43:06', 10, 'Oppo Reno6 5G\r\n', 0, b'00'),
(29, 'OPPO A15s', '', 4290000, 0, 3, '2021-11-21 08:43:38', 15, 'OPPO A15s\r\n', 0, b'00'),
(30, 'OPPO Reno6 Z 5G', '', 9490000, 5, 3, '2021-11-21 08:44:06', 11, 'OPPO Reno6 Z 5G\r\n', 0, b'00'),
(31, 'OPPO A94', '', 7690000, 0, 3, '2021-11-21 08:48:32', 13, 'OPPO A94\r\n', 0, b'00'),
(32, 'OPPO A93', '', 6490000, 5, 3, '2021-11-21 08:49:01', 26, 'OPPO A93\r\n', 0, b'00'),
(36, 'Realme Narzo 30A', '', 3990000, 0, 6, '2021-11-21 08:54:52', 20, 'Realme Narzo 30A\r\n', 0, b'00'),
(38, 'Realme 8', '', 7290000, 0, 6, '2021-11-21 09:10:37', 15, 'Realme 8\r\n', 0, b'00'),
(39, 'Realme 8 Pro', '', 8690000, 25, 6, '2021-11-21 09:12:11', 30, 'Realme 8 Pro\r\n', 0, b'00'),
(40, 'Realme C11 2021', '', 2990000, 0, 6, '2021-11-21 09:14:21', 10, 'Realme C11 2021\r\n', 0, b'00'),
(41, 'Realme C25', '', 4690000, 0, 6, '2021-11-21 09:14:51', 15, 'Realme C25\r\n', 0, b'00'),
(43, 'Vivo Y12s 2021', '', 3290000, 0, 5, '2021-11-21 09:15:54', 20, 'Vivo Y12s 2021\r\n', 0, b'00'),
(44, 'Vivo Y53s ', '', 6990000, 10, 5, '2021-11-21 09:17:26', 20, 'Vivo Y53s \r\n', 0, b'00'),
(45, 'Vivo V23e ', '', 6690000, 0, 5, '2021-11-21 09:17:57', 15, 'Vivo V23e \r\n', 0, b'00'),
(46, 'Vivo X70 Pro', '', 19990000, 5, 5, '2021-11-21 09:18:29', 33, 'Vivo X70 Pro\r\n', 0, b'00'),
(47, 'Xiaomi 11T Pro', '', 14990000, 5, 2, '2021-11-21 09:18:57', 30, 'Xiaomi 11T Pro\r\n', 0, b'00'),
(48, 'Xiaomi 11 Lite 5G NE', '', 10490000, 10, 2, '2021-11-21 09:20:52', 30, 'Xiaomi 11 Lite 5G NE\r\n', 0, b'00'),
(49, 'Xiaomi Redmi 10 ', '', 4290000, 0, 2, '2021-11-21 09:21:50', 20, 'Xiaomi Redmi 10 \r\n', 0, b'00'),
(50, 'Xiaomi Mi 10T Lite 5G', '', 7990000, 10, 2, '2021-11-21 09:22:26', 20, 'Xiaomi Mi 10T Lite 5G\r\n', 0, b'00'),
(51, 'Xiaomi POCO X3 Pro NFC', '', 7990000, 10, 2, '2021-11-21 09:22:52', 30, 'Xiaomi POCO X3 Pro NFC\r\n', 0, b'00'),
(52, 'Xiaomi Redmi Note 10 Pro', '', 7490000, 10, 2, '2021-11-21 10:05:19', 20, 'Xiaomi Redmi Note 10 Pro\r\n', 0, b'00'),
(53, 'Xiaomi Redmi 9C', '', 3490000, 0, 2, '2021-11-21 10:08:50', 15, 'Xiaomi Redmi 9C\r\n', 0, b'00'),
(54, 'Xiaomi Redmi 9A', '', 2290000, 0, 2, '2021-11-21 10:10:31', 20, 'Xiaomi Redmi 9A\r\n', 0, b'00'),
(55, 'Vivo Y51', '', 6290000, 25, 5, '2021-11-21 16:37:00', 30, 'Vivo Y51\r\n', 0, b'00'),
(56, 'Vivo Y20s', '', 4990000, 10, 5, '2021-11-21 16:37:37', 15, 'Vivo Y20s\r\n', 0, b'00'),
(57, 'Vivo Y72 5G', '', 7990000, 10, 5, '2021-11-21 16:38:11', 20, 'Vivo Y72 5G\r\n', 0, b'00'),
(59, 'Realme C17', '', 5290000, 25, 6, '2021-11-21 17:10:05', 20, 'Realme C17\r\n', 0, b'00'),
(60, 'Realme C25y', '', 4990000, 15, 6, '2021-11-21 17:10:44', 22, 'Realme C25y\r\n', 0, b'00'),
(61, 'Realme C11', '', 2690000, 0, 6, '2021-11-21 17:11:42', 30, 'Realme C11\r\n', 0, b'00'),
(62, 'iPhone 13 ', '', 24990000, 25, 1, '2021-11-21 17:13:14', 18, 'iPhone 13 \r\n', 0, b'00'),
(64, 'iPhone SE (2020)', '', 11999000, 10, 1, '2021-11-21 17:14:38', 30, 'iPhone SE (2020)\r\n', 0, b'00'),
(65, 'iPhone 12 Mini', '', 18999000, 10, 1, '2021-11-21 17:15:29', 15, 'iPhone 12 Mini\r\n', 0, b'00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thongsokythuat`
--

CREATE TABLE `thongsokythuat` (
  `maTS` int(10) NOT NULL,
  `maSP` int(10) NOT NULL,
  `cameraSau` varchar(50) NOT NULL,
  `cameraTruoc` varchar(50) NOT NULL,
  `phienBan` varchar(50) NOT NULL,
  `CPU` varchar(50) NOT NULL,
  `soNhanCPU` varchar(50) NOT NULL,
  `tocDoToiDa` varchar(50) NOT NULL,
  `64Bits` bit(2) NOT NULL DEFAULT b'1',
  `congNgheManHinh` varchar(50) NOT NULL,
  `kichThươc` varchar(50) NOT NULL,
  `chuanManHinh` varchar(50) NOT NULL,
  `doPhanGiai` varchar(50) NOT NULL,
  `chatLieuManHinh` varchar(50) NOT NULL,
  `GPU` varchar(50) NOT NULL,
  `RAM` varchar(50) NOT NULL,
  `boNhoTrong` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `thongsokythuat`
--

INSERT INTO `thongsokythuat` (`maTS`, `maSP`, `cameraSau`, `cameraTruoc`, `phienBan`, `CPU`, `soNhanCPU`, `tocDoToiDa`, `64Bits`, `congNgheManHinh`, `kichThươc`, `chuanManHinh`, `doPhanGiai`, `chatLieuManHinh`, `GPU`, `RAM`, `boNhoTrong`) VALUES
(1, 1, ' 12 MP', ' 12 MP', 'A14 Bionic', '2 x Firestorm 3.1 GHz + 4 x Icestorm 1.8 GHz', '6', '3.10 GHz', b'01', 'OLED', '6.7\"', 'Super Retina RDX', '2532 x 1170 Pixel', 'Phủ Ceramic', 'Apple GPU 4 nhân', '4GB', '64GB'),
(2, 2, '108.0 MP', '40.0 MP', 'Exynos 2100', 'Exynos 2100', 'Octa-Core', '8', b'01', 'Dynamic AMOLED 2X', '6.8\"', 'WQHD+', '1440 x 3200 Pixel', 'Gorilla Glass Victus', 'ARM Mali-G78 MP14', '12GB', '128GB'),
(3, 3, '50.0 MP', '16.0 MP', 'Mediatek Helio G35', 'Octa-Core', '8', '2.30 GHz', b'01', 'LCD', '6.5\"', 'HD+', '720 x 1600 Pixel', 'Kính cường lực', 'IMG PowerVR GE8320', '4GB', '64GB'),
(4, 4, '13.0 MP', '5.0 MP', 'Unisoc T610', 'Octa-Core', '8', '1.80 GHz', b'01', 'IPS LCD', '6.5\"', 'HD+', '720 x 1600 Pixel', 'Gorilla Glass 3', 'Mali-G52', '3GB', '32GB'),
(5, 5, '50.0 MP', '8.0 MP', 'Helio G80', 'Octa-Core', '8', '2.0 GHz', b'01', 'IPS LCD', '6.51\"', 'HD+', '720 x 1600 Pixel', 'Gorilla Glass 3', 'IMG PowerVR GE8320', '4GB + 1GB', '128 GB'),
(6, 6, '108.0 MP', '16.0 MP', 'Snapdragon 888', 'Octa-Core', '8', 'none', b'00', 'AMOLED DotDisplay', '6.67\"', 'FHD+', '1080 x 2400 Pixel', 'Gorilla Glass Victus', 'none', '12GB', '256GB'),
(7, 12, ' 12 MP', ' 12 MP', 'A14 Bionic', '2 x Firestorm 3.1 GHz + 4 x Icestorm 1.8 GHz', '6', '3.10 GHz', b'00', 'OLED', '6.7\"', 'Super Retina RDX', '2778 x 1284 Pixel', 'Phủ Ceramic', 'Apple GPU 4 nhân', '6GB', '128GB'),
(8, 13, ' 12 MP', ' 12 MP', 'A15 Bionic', '2 x Firestorm 3.1 GHz + 4 x Icestorm 1.8 GHz', '6', '3.10 GHz', b'00', 'OLED', '5.4\"', 'Super Retina RDX', '1080 x 2340 Pixel', 'Phủ Ceramic', 'Apple GPU 4 nhân', '4GB', '128GB'),
(9, 14, ' 12 MP', ' 12 MP', 'A15 Bionic', '3 x Firestorm 3.1 GHz + 4 x Icestorm 1.8 GHz', '6', '3.10 GHz', b'00', 'OLED', '6.7\"', 'Super Retina RDX', '2778 x 1284 Pixel', 'Phủ Ceramic', 'Apple GPU 5 nhân', '6GB', '128GB'),
(10, 15, ' 12 MP', ' 12 MP', 'A15 Bionic', '4 x 2.5 GHz Vortex + 4 x 1.6 GHz Tempest', '6', '2.50 GHz', b'00', 'IPS LCD', '6.1\"', 'Liquid Rentina HD', '828 x 1792 Pixel', 'Phủ Oleophobic', 'Apple GPU 4 nhân', '3GB', '64GB'),
(11, 62, '12.0 MP', ' 12 MP', 'A15 Bionic', '2 x Firestorm 3.1 GHz + 4 x Icestorm 1.8 GHz', '6', '3.10 GHz', b'01', 'OLED', '6.1\"', 'Super Retina RDX', '2532 x 1170 Pixel', 'Phủ Ceramic', 'Apple GPU 4 nhân', '4 GB', '128 GB'),
(12, 64, '12.0 MP', '7 MP', 'A13 Bionic', 'Hexa-Core', '6', '2.65 GHz', b'01', 'IPS LCD', '4.7\"', 'Retina HD', '750 x 1334 Pixel', 'Phủ Oleophobic', 'Apple GPU 4 nhân', '3 GB', '64 GB'),
(13, 65, ' 12 MP', ' 12 MP', 'A14 Bionic', 'Hexa-Core', '6', '3.10 GHz', b'00', 'OLED', '5.4\"', 'Super Retina RDX', '1080 x 2240 Pixel', 'Phủ Ceramic', 'Apple GPU 4 nhân', '4 GB', '64GB'),
(14, 16, '64.0 MP', '32.0 MP', 'Snapdragon 720G', 'Octa-Core', '8', '2.30 GHz', b'01', 'Super AMOLED', '6.7\"', 'FHD+', '1080 x 2400 Pixel', 'Gorilla Glass 5', 'Adreno 618', '8GB', '256GB'),
(15, 17, '48.0 MP', '8.0 MP', 'MediaTek Dimensity 700', 'Octa-Core', '8', '2.20 GHz', b'00', 'TFT LCD', '6.6\"', 'FHD+', '1080 x 2400 Pixel', 'Gorilla Glass 5', 'ARM Mali-G57 MC2', '6GB', '128GB'),
(16, 18, '64.0 MP', '32.0 MP', 'Snapdragon 720G', 'Octa-Core', '8', '2.30 GHz', b'00', 'TFT LCD', '6.5\"', 'FHD+', '1080 x 2400 Pixel', 'Gorilla Glass 6', 'Adreno 618', '8GB', '128GB'),
(17, 19, '12.0 MP', '32.0 MP', 'Snapdragon 865G', 'Octa-Core', '8', '2.30 GHz', b'00', 'Super AMOLED', '6.5\"', 'FHD+', '1080 x 2400 Pixel', 'Gorilla Glass 3', 'Adreno 618', '8GB', '256GB'),
(18, 20, '12.0 MP', '10.0 MP', 'Snapdragon 888', 'Octa-Core', '8', '2.30 GHz', b'00', 'Super AMOLED', 'Mh chính: 6.7”, Mh phụ: 1.9”', 'FHD+', '1080 x 2636 Pixel', 'Gorilla Glass 6', 'Adreno 619', '8GB', '128GB'),
(19, 21, '12.0 MP', '10.0 MP', 'Snapdragon 888', 'Octa-Core', '8', '2.30 GHz', b'00', 'Dynamic AMOLED 2X', 'Mh chính: 7.6”, Mh phụ: 6.2”', 'HD+', '1768 x 2208 Pixel', 'Gorilla Glass Victus', 'Adreno 620', '12GB', '256GB'),
(20, 22, ' 12 MP', '10.0 MP', 'Exynos 2100', 'Octa-Core', '8', '2.20 GHz', b'00', 'Dynamic AMOLED 2X', '6.7\"', 'FHD+', '1080 x 2400 Pixel', 'Gorilla Glass Victus', 'ARM Mali-G78 MP14', '8GB', '128GB'),
(21, 23, '12.0 MP', '5.0 MP', 'MediaTek MT6765', 'Octa-Core', '8', '2.35 GHz', b'00', 'PLS TFT LCD', '6.5\"', 'HD+', '1081 x 2400 Pixel', 'Mặt kính cong 3D', 'IMG PowerVR GE8320', '4GB', '64 GB'),
(22, 24, '48.0 MP', '8.0 MP', 'Helio G35/Exynos 850', 'Octa-Core', '8', '2.30 GHz', b'01', 'TFT LCD', '6.5\"', 'HD+', '720 x 1600 Pixel', 'Kính cường lực', 'IMG PowerVR GE8321', '4 GB', '64GB'),
(23, 26, '50.0 MP', '32.0 MP', 'Snapdragon 888', 'Octa-Core', '8', '2.80 GHz', b'00', 'AMOLED', '6.7\"', 'QHD+', '1440 x 3216 Pixel', 'Gorilla Glass 5', 'Adreno 660', '12GB', '256GB'),
(24, 27, '48.0 MP', '16.0 MP', 'Snapdragon 662', 'Octa-Core', '8', '2.20 GHz', b'01', 'AMOLED', '6.43\"', 'FHD+', '1080 x 2400 Pixel', 'Schott Xensation UP', 'Adreno 610', '8GB', '128 GB'),
(25, 28, '64.0 MP', '32.0 MP', 'MediaTek Dimensity 900 5G', 'Octa-Core', '8', '2.40 GHz', b'00', 'AMOLED', '6.43\"', 'FHD+', '1080 x 2400 Pixel', 'Gorilla Glass 5', 'ARM Mali-G68 MC4', '8GB', '128GB'),
(26, 29, '13.0 MP', '8.0 MP', 'MediaTek Helio P35', 'Octa-Core', '8', '2.30 GHz', b'01', 'LCD', '6.52\"', 'HD+', '720 x 1600 Pixel', 'Gorilla Glass 3', 'ARM Mali-G57 MC3', '4GB', '64 GB'),
(27, 30, '64.0 MP', '32.0 MP', 'MediaTek Dimensity 800U', 'Octa-Core', '8', '2.40 GHz', b'00', 'AMOLED', '6.43\"', 'FHD+', '1080 x 2400 Pixel', 'Gorilla Glass 5', 'ARM Mali-G57 MC3', '8GB', '128GB'),
(28, 31, '48.0 MP', '32.0 MP', 'Helio P95', 'Octa-Core', '8', '2.20 GHz', b'00', 'AMOLED', '6.43\"', 'FHD+', '1080 x 2400 Pixel', 'Kính cường lực', 'IMG PowerVR GM9446', '8GB', '128GB'),
(29, 32, '48.0 MP', '16.0 MP', 'Mediatek Helio P95', 'Octa-Core', '8', '2.20 GHz', b'00', 'AMOLED', '6.43\"', 'FHD+', '1080 x 2400 Pixel', 'Kính cường lực', 'IMG PowerVR GM9447', '8GB', '129 GB'),
(30, 36, '13.0 MP', '8.0 MP', 'Helio G85', 'Octa-Core', '8', '2.0 GHz', b'01', 'IPS LCD', '6.5\"', 'HD+', '720 x 1600 Pixel', 'Gorilla Glass 4', 'Mali-G53', '4GB', '64GB'),
(31, 38, '64.0 MP', '16.0 MP', 'MediaTek Helio G95', 'Octa-Core', '8', '2.05 GHz', b'01', 'Super AMOLED', '6.4\"', 'FHD+', '1080 x 2400 Pixel', 'Schott Xensation UP', 'Mali-G76 MC4', '8 GB', '128 GB'),
(32, 39, '108.0 MP', '16.0 MP', 'Snapdragon 720G', 'Octa-Core', '8', '2.30 GHz', b'01', 'Super AMOLED', '6.4\"', 'FHD+', '1080 x 2400 Pixel', 'Schott Xensation UP', 'Adreno 618', '8GB', '128GB'),
(33, 40, '8.0 MP', '5.0 MP', 'SC9863A', 'Octa-Core', '8', '2.30 GHz', b'00', 'IPS LCD', '6.5\"', 'HD+', '720 x 1600 Pixel', 'Gorilla Glass 3', 'Mali-G52 MC2', '2GB', '32GB'),
(34, 41, '8.0 MP', '5.0 MP', 'SC9863A', 'Octa-Core', '8', '2.30 GHz', b'00', 'IPS LCD', '6.5\"', 'HD+', '720 x 1600 Pixel', 'Gorilla Glass 3', 'Mali-G52 MC2', '2GB', '32GB'),
(35, 43, '13.0 MP', '8.0 MP', 'Snapdragon 439', 'Octa-Core', '8', '1.95 GHz', b'01', 'IPS ', '6.5\"', 'HD+', '721 x 1600 Pixel', 'Kính cường lực', 'Adreno 505', '2 GB', '32 GB'),
(36, 44, '64.0 MP', '16.0 MP', 'Helio G80', 'Octa-Core', '8', '2.0 GHz', b'00', 'IPS LCD', '6.58\"', 'FHD+', '2408 x 1080 Pixel', 'Kính cường lực', 'Mali-G52', '8GB + 3GB', '128 GB'),
(37, 45, '64.0 MP', '50 MP', 'Mediatek Helio G96', '2 x Cortex A76 2.05 GHz + 6 x Cortex A55 1 GHz', '8', '2.0 GHz', b'00', 'AMOLED', '6.44\"', 'FHD+', '1080 x 2400 Pixel', 'Kính cường lực', 'ARM Mali-G57 MC2', '8GB + 4GB', '128 GB'),
(38, 46, '50.0 MP', '32.0 MP', 'MediaTek Dimensity 1200', '1 x Cortex A78 3.0 GHz + 3 x Cortex A78 2.6 GHz + ', '8', '3.0 GHz', b'00', 'AMOLED', '6.56\"', 'FHD+', '1080 x 2376 Pixel', 'Schott Xensation UP', 'ARM Mali-G77 MP9', '12GB + 4GB', '256 GB'),
(39, 47, '108.0 MP', '16.0 MP', 'Snapdragon 888', 'Octa-Core', '8', 'none', b'01', 'AMOLED DotDisplay', '6.67\"', 'FHD+', '1080 x 2400 Pixel', 'Gorilla Glass Victus', 'none', '12GB', '256GB'),
(40, 48, ' 64.0 MP', '20.0 MP', 'Snapdragon 778G', 'Octa-Core', '8', '2.0 GHz', b'01', 'AMOLED DotDisplay', '6.55\"', 'FHD+', '1080 x 2400 Pixel', 'Gorilla Glass 5', 'none', '8 GB', '256 GB'),
(41, 49, '50.0 MP', '8.0 MP', 'MediaTek Helio G88', 'Octa-Core', '8', '2.20 GHz', b'01', 'IPS LCD', '6.5\"', 'FHD+', '1080 x 2400 Pixel', 'Gorilla Glass 3', 'ARM Mali-G52 MC2', '4 GB', '128GB'),
(42, 50, '64.0 MP', '16.0 MP', 'Snapdragon 750G', 'Octa-Core', '8', '2.0 GHz', b'01', 'IPS LCD', '6.5\"', 'FHD+', '1079 x 2400 Pixel', 'Gorilla Glass 5', 'Adreno 619', '6 GB', '128GB'),
(43, 51, '48.0 MP', '20.0 MP', 'Snapdragon 860', 'Octa-Core', '8', '2.96 GHz', b'00', 'IPS LCD', '6.67\"', 'FHD+', '1080 x 2400 Pixel', 'Gorilla Glass 6', 'Adreno 640', '8 GB', '256 GB'),
(44, 52, '108.0 MP', '16.0 MP', 'Snapdragon 861', 'Octa-Core', '8', '2.30 GHz', b'01', 'AMOLED', '6.67\"', 'FHD+', '1081 x 2400 Pixel', 'Gorilla Glass 5', 'Adreno 618', '8 GB', '128GB'),
(45, 53, '13.0 MP', '5.0 MP', 'MediaTek Helio G35', '4 x Cortex A53 2.3 GHz + 4 x Cortex A53 1.8 GHz', '8', '2.30 GHz', b'00', 'IPS LCD', '6.53\"', 'HD+', '720 x 1600 Pixel', 'Gorilla Glass 3', 'IMG PowerVR GE8320', '4 GB', '128 GB'),
(46, 54, '13.0 MP', '5.0 MP', 'Helio G25', '8 x Cortex A53 2.0 GHz', '8', '2.0 GHz', b'00', 'IPS LCD', '6.53\"', 'HD+', '720 x 1600 Pixel', 'Gorilla Glass 3', 'IMG GE8320', '2 GB', '32 GB'),
(47, 55, '48.0 MP', '16.0 MP', 'Snapdragon 662', 'Octa-Core', '8', '2.0 GHz', b'00', 'IPS LCD', '6.58\"', 'FHD+', '1080 x 2400 Pixel', 'Kính cường lực', 'Adreno 610', '8 GB', '128 GB'),
(48, 56, '13.0 MP', '8.0 MP', 'Snapdragon 460', 'Octa-Core', '8', '1.80 GHz', b'00', 'IPS LCD', '6.51\"', 'HD+', '720 x 1600 Pixel', 'Kính cường lực', 'Adreno 610', '6 GB', '128 GB'),
(49, 57, '64.0 MP', '16.0 MP', 'MediaTek Dimensity 700', '2 x Cortex A75 2.2 GHz + 6 x Cortex A55 2.0 GHz', '8', '2.20 GHz', b'00', 'IPS LCD', '6.58\"', 'FHD+', '2340 x 1080 Pixel', 'Kính cường lực', 'ARM Mali-G57 MC2', '8 GB', '130 GB'),
(50, 59, '48.0 MP', '8.0 MP', 'Snapdragon 460', 'Octa-Core', '8', '2.0 GHz', b'00', 'LCD', '6.5\"', 'HD+', '721 x 1600 Pixel', 'Gorilla Glass 3', 'Adreno 610', '6 GB', '128 GB'),
(51, 60, '50.0 MP', '8.0 MP', 'Unisoc T618', '2 x Cortex A75 2.0 GHz + 6 x Cortex A55 1.8 GHz', '8', '2.0 GHz', b'01', 'LCD', '6.5\"', 'HD+', '722 x 1600 Pixel', 'Gorilla Glass 3', 'ARM Mali-G52 MC2', '4 GB', '128 GB'),
(52, 61, '13.0 MP', '5.0 MP', 'Mediatek Helio G35', '8 x Cortex A53 2.3 GHz', '8', '2.30 GHz', b'01', 'IPS LCD', '6.5\"', 'HD+', '723 x 1600 Pixel', 'Gorilla Glass 3', 'IMG PowerVR GE8320', '2 GB', '32 GB');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `binhluan`
--
ALTER TABLE `binhluan`
  ADD PRIMARY KEY (`maBL`),
  ADD KEY `fk_maSP1` (`maSP`),
  ADD KEY `fk_maKH` (`maKH`);

--
-- Chỉ mục cho bảng `chitietdonhang`
--
ALTER TABLE `chitietdonhang`
  ADD PRIMARY KEY (`maDH`),
  ADD KEY `fk_maSP2` (`maSP`);

--
-- Chỉ mục cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  ADD PRIMARY KEY (`maDM`);

--
-- Chỉ mục cho bảng `donhang`
--
ALTER TABLE `donhang`
  ADD PRIMARY KEY (`maDH`),
  ADD KEY `fk_maKH1` (`maKH`);

--
-- Chỉ mục cho bảng `khachhang`
--
ALTER TABLE `khachhang`
  ADD PRIMARY KEY (`maKH`);

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`maSP`),
  ADD KEY `fk_maDM` (`maDM`);

--
-- Chỉ mục cho bảng `thongsokythuat`
--
ALTER TABLE `thongsokythuat`
  ADD PRIMARY KEY (`maTS`),
  ADD KEY `fk_maSP` (`maSP`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `binhluan`
--
ALTER TABLE `binhluan`
  MODIFY `maBL` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  MODIFY `maDM` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `donhang`
--
ALTER TABLE `donhang`
  MODIFY `maDH` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `khachhang`
--
ALTER TABLE `khachhang`
  MODIFY `maKH` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `maSP` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT cho bảng `thongsokythuat`
--
ALTER TABLE `thongsokythuat`
  MODIFY `maTS` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `binhluan`
--
ALTER TABLE `binhluan`
  ADD CONSTRAINT `fk_maKH` FOREIGN KEY (`maKH`) REFERENCES `khachhang` (`maKH`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_maSP1` FOREIGN KEY (`maSP`) REFERENCES `sanpham` (`maSP`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Các ràng buộc cho bảng `chitietdonhang`
--
ALTER TABLE `chitietdonhang`
  ADD CONSTRAINT `fk_maDH` FOREIGN KEY (`maDH`) REFERENCES `donhang` (`maDH`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_maSP2` FOREIGN KEY (`maSP`) REFERENCES `sanpham` (`maSP`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Các ràng buộc cho bảng `donhang`
--
ALTER TABLE `donhang`
  ADD CONSTRAINT `fk_maKH1` FOREIGN KEY (`maKH`) REFERENCES `khachhang` (`maKH`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Các ràng buộc cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `fk_maDM` FOREIGN KEY (`maDM`) REFERENCES `danhmuc` (`maDM`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Các ràng buộc cho bảng `thongsokythuat`
--
ALTER TABLE `thongsokythuat`
  ADD CONSTRAINT `fk_maSP` FOREIGN KEY (`maSP`) REFERENCES `sanpham` (`maSP`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
