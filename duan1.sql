-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 09, 2021 lúc 08:25 AM
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
  `ngayBL` datetime NOT NULL
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
  `ngayDH` datetime NOT NULL
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
  `soLuotXem` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thongsokythuat`
--

CREATE TABLE `thongsokythuat` (
  `maTS` int(10) NOT NULL,
  `maSP` int(10) NOT NULL,
  `manHinh` varchar(50) NOT NULL,
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
  `mauManHinh` varchar(50) NOT NULL,
  `chatLieuManHinh` varchar(50) NOT NULL,
  `TyLeKhungHinh` varchar(50) NOT NULL,
  `GPU` varchar(50) NOT NULL,
  `RAM` varchar(50) NOT NULL,
  `RAMTYPE` varchar(50) NOT NULL,
  `boNhoTrong` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
  MODIFY `maDM` int(10) NOT NULL AUTO_INCREMENT;

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
  MODIFY `maSP` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `thongsokythuat`
--
ALTER TABLE `thongsokythuat`
  MODIFY `maTS` int(10) NOT NULL AUTO_INCREMENT;

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
