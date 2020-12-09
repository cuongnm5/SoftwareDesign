-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost:3306
-- Thời gian đã tạo: Th12 09, 2020 lúc 01:43 PM
-- Phiên bản máy phục vụ: 5.7.31-0ubuntu0.18.04.1
-- Phiên bản PHP: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `pttk`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblDiaChi`
--

CREATE TABLE `tblDiaChi` (
  `id` int(11) NOT NULL,
  `soNha` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `xomPho` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phuongXa` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quanHuyen` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tinhThanh` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tblDiaChi`
--

INSERT INTO `tblDiaChi` (`id`, `soNha`, `xomPho`, `phuongXa`, `quanHuyen`, `tinhThanh`) VALUES
(1, '13', 'Đội Cấn', 'Trần Hưng Đạo', 'Hà Nội', 'Hà Nội'),
(2, '122', 'Tố Hữu', 'Hà Đông', 'Hà Nội', 'Hà Nội'),
(3, '43A', 'Trường Chinh', 'Thanh Xuân', 'Hà Nội', 'Hà Nội'),
(4, '99B', 'Tam Giang', 'Trần Hưng Đạo', 'Hải Dương', 'Hải Dương'),
(5, '123', 'Roman Plaza', 'Hà Đông', 'Hà Đông', 'Hà Nội'),
(6, '2H', 'Roman Plaza 2', 'Đại Mỗ', 'Hà Đông', 'Hà Nội'),
(7, '2412A', 'Roman Plaza', 'Đại Mỗ', 'Hà Đông', 'Hà Nội'),
(8, '7B', 'Ngõ 5 Mộ Lao', 'Mỗ Lao', 'Hà Đông', 'Hà Nội'),
(9, '14', 'Ngõ 9 Mộ Lao', 'Mộ Lao', 'Hà Đông', 'Hà Nội'),
(20, '1111', 'Thanh Xuân', 'Thanh Xuân', 'Thanh Xuân', 'Hà Nội'),
(21, '2412B', 'Mo Lao', 'Dai Mo', 'Ha Dong', 'Ha Noi'),
(22, '98', NULL, 'Trần Duy Hưng', 'Thanh Xuân', 'Hà Nội');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblDoiTac`
--

CREATE TABLE `tblDoiTac` (
  `id` int(10) NOT NULL,
  `ngaySinh` date NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `SDT` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tblDiaChiid` int(11) NOT NULL,
  `tblHoTenid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tblDoiTac`
--

INSERT INTO `tblDoiTac` (`id`, `ngaySinh`, `email`, `SDT`, `tblDiaChiid`, `tblHoTenid`) VALUES
(1, '1999-12-05', 'dodo@gmail.com', '0988765456', 5, 5),
(3, '1980-07-08', 'vip@gmail.com', '0988888888', 7, 7),
(4, '1990-03-15', 'orange@gmail.com', '0965676727', 8, 8),
(7, '1999-05-12', 'abc@gmail.com', '0985128738', 1, 1),
(8, '1999-05-12', 'abc@gmail.com', '0985128738', 1, 1),
(9, '1999-05-12', 'abc@gmail.com', '0985128738', 1, 1),
(10, '1999-05-12', 'abc@gmail.com', '0985128738', 1, 1),
(11, '1999-05-12', 'abc@gmail.com', '0985128738', 1, 1),
(12, '1999-05-12', 'abc@gmail.com', '0985128738', 1, 1),
(13, '1999-05-12', 'quocbaok1b@gmail.com', '0985128738', 1, 1),
(14, '1999-05-12', 'quocbaok1b@gmail.com', '0985128738', 1, 1),
(17, '1999-05-12', 'abc@gmail.com', '0985128738', 20, 19),
(18, '1999-05-12', 'dodo.proptit.99@gmail.com', '0985178298', 21, 20),
(19, '1999-01-05', 'lkta@gmail.com', '0985128738', 22, 21);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblHoaDon`
--

CREATE TABLE `tblHoaDon` (
  `id` int(11) NOT NULL,
  `giaTien` float NOT NULL,
  `moTa` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thoiGianThanhToan` date NOT NULL,
  `tblDoiTacid` int(11) NOT NULL,
  `tblHopDongid` int(11) NOT NULL,
  `tblNhanVienid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tblHoaDon`
--

INSERT INTO `tblHoaDon` (`id`, `giaTien`, `moTa`, `thoiGianThanhToan`, `tblDoiTacid`, `tblHopDongid`, `tblNhanVienid`) VALUES
(3, 1400000, 'Screenshot from 2020-12-08 00-13-45.png', '2020-12-08', 8, 6, 3),
(4, 800000, 'sau.jpeg', '2020-12-08', 19, 7, 3),
(6, 400000, '', '2020-12-08', 18, 5, 3),
(7, 1100000, 'README.md', '2020-12-08', 9, 14, 3),
(8, 1100000, 'README.md', '2020-12-08', 9, 14, 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblHopDong`
--

CREATE TABLE `tblHopDong` (
  `id` int(11) NOT NULL,
  `moTa` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ngayTao` date DEFAULT NULL,
  `noiDung` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trangThai` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thongTinThanhToan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tblThanhVienid` int(11) NOT NULL,
  `tblDoiTacid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tblHopDong`
--

INSERT INTO `tblHopDong` (`id`, `moTa`, `ngayTao`, `noiDung`, `trangThai`, `thongTinThanhToan`, `tblThanhVienid`, `tblDoiTacid`) VALUES
(5, NULL, '2020-12-07', NULL, 'da thanh toan', 'Vietcombank-4324324', 2, 18),
(6, NULL, '2020-12-08', NULL, 'da thanh toan', 'Vietcombank-213123', 2, 8),
(7, NULL, '2020-12-08', NULL, 'da thanh toan', 'Techcombank-6876768', 2, 19),
(8, NULL, '2020-12-08', NULL, 'Chua thanh toan', 'Vietcombank-7656576', 2, 17),
(9, NULL, '2020-12-08', NULL, 'Chua thanh toan', 'Vietcombank-68768132', 2, 4),
(10, NULL, '2020-12-08', NULL, 'Chua thanh toan', 'Vietcombank-123213', 2, 4),
(11, NULL, '2020-12-08', NULL, 'Chua thanh toan', 'Agribank-719283721', 2, 1),
(12, NULL, '2020-12-08', NULL, 'Chua thanh toan', 'Agribank-128390', 2, 11),
(13, NULL, '2020-12-08', NULL, 'Chua thanh toan', 'Techcombank-68768132', 2, 11),
(14, NULL, '2020-12-08', NULL, 'da thanh toan', 'Vietcombank-213213', 2, 9);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblHoTen`
--

CREATE TABLE `tblHoTen` (
  `id` int(255) NOT NULL,
  `ho` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tenDem` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ten` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tblHoTen`
--

INSERT INTO `tblHoTen` (`id`, `ho`, `tenDem`, `ten`) VALUES
(1, 'Nguyễn', 'Mạnh', 'Cường'),
(2, 'Nguyễn', 'Như', 'Quỳnh'),
(3, 'Nguyễn', 'Vũ Diệp', 'Chi'),
(4, 'Cao', 'Diệp', 'Thảo'),
(5, 'Nguyễn', 'Hải', 'Trung'),
(6, 'Tran', 'Bình', 'Trọng'),
(7, 'Nguyễn ', 'Vũ Hải', 'Quang'),
(8, 'Vũ', 'Minh', 'Trung'),
(9, 'Nguyễn', 'Mạnh', 'Cường'),
(19, 'Đoàn', 'Anh', 'Khải'),
(20, 'Lê', 'Minh', 'Cường'),
(21, 'Lê', 'Khắc Tuấn', 'Anh');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblNhanVien`
--

CREATE TABLE `tblNhanVien` (
  `viTri` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tblThanhVienid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tblNhanVien`
--

INSERT INTO `tblNhanVien` (`viTri`, `tblThanhVienid`) VALUES
('nhân viên quản lý', 1),
('lễ tân', 2),
('nhân viên thu ngân', 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblThanhVien`
--

CREATE TABLE `tblThanhVien` (
  `id` int(10) NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `SDT` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ngaySinh` date NOT NULL,
  `vaiTro` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tblDiaChiid` int(11) NOT NULL,
  `tblHoTenid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tblThanhVien`
--

INSERT INTO `tblThanhVien` (`id`, `username`, `password`, `email`, `SDT`, `ngaySinh`, `vaiTro`, `tblDiaChiid`, `tblHoTenid`) VALUES
(1, 'nvql', 'nvql', 'quynhnq@gmail.com', '0982655678', '2000-07-14', 'nvql', 1, 2),
(2, 'letan', 'letan', 'thaocd@gmail.com', '0985999999', '1999-01-01', 'letan', 2, 4),
(3, 'nvtn', 'nvtn', 'thungan@gmail.com', '09881234123', '2001-06-03', 'nvtn', 3, 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblXe`
--

CREATE TABLE `tblXe` (
  `id` int(11) NOT NULL,
  `tenHang` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `loai` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `namSX` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `soDangKy` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bienSoXe` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tblXe`
--

INSERT INTO `tblXe` (`id`, `tenHang`, `loai`, `namSX`, `soDangKy`, `bienSoXe`) VALUES
(1, 'Yamaha', 'Xe ga', '2018', 'B723-CYXA', '34B1-19599'),
(2, 'Honda', 'Xe số', '1016', '87BS-JJUA', '29I8-20000'),
(3, 'Honda', 'Airblade', '2019', 'BSJDKZ', '34B2-19513'),
(4, 'Honda', 'Airblade', '2019', 'BSJDKZ', '34B2-19513'),
(5, 'Honda', 'Airblade', '2019', 'BSJDKZ', '34B2-19513'),
(6, 'Yamaha', 'Sirius', '2020', 'AJSASH', '29B2-9999'),
(7, 'Yamaha', 'Sirius', '2020', 'AJSASH', '29B2-9999'),
(8, 'Honda', 'Vespa', '2020', 'AJSASH', '17B2-KKSJS'),
(9, 'Honda', 'Vespa', '2020', 'AJSASH', '17B2-KKSJS'),
(10, 'Yamaha', 'Sirius', '2015', 'JJSDLK', '30B2-9832'),
(11, 'Honda', 'Dream', '2010', 'FSDKJH', '19B9-79832'),
(12, 'Honda', 'Dream', '2010', 'FSDKJH', '19B9-79832'),
(13, 'Honda', 'Vespa', '2015', 'FSDKJH', '30B2-9832'),
(14, 'Honda', 'Dream', '2010', 'FSDKJH', '19B9-79832'),
(15, 'Honda', 'Vespa', '2015', 'FSDKJH', '30B2-9832'),
(16, 'Yamaha', 'Dream', '2020', 'BSJDKZ', '30B2-9832'),
(17, 'Yamaha', 'GPX', '2020', 'AJSKJA', '99LX-9999'),
(18, 'Yamaha', 'GPX', '2020', 'AJSKJA', '99LX-9999'),
(19, 'Yamaha', 'Sirius', '2020', 'AJSASH', '34B2-19513'),
(20, 'Honda', 'Airblade', '2019', 'BSJDKZ', '34B2-19513'),
(21, 'Yamaha', 'Vespa', '2020', 'FSDKJH', '30B2-9832');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblXeThueLai`
--

CREATE TABLE `tblXeThueLai` (
  `id` int(11) NOT NULL,
  `ngayBatDau` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ngayKetThuc` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `giaThue` float DEFAULT NULL,
  `tblHopDongid` int(11) DEFAULT NULL,
  `tblXeid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tblXeThueLai`
--

INSERT INTO `tblXeThueLai` (`id`, `ngayBatDau`, `ngayKetThuc`, `giaThue`, `tblHopDongid`, `tblXeid`) VALUES
(3, '2020-01-03', '2020-01-10', 400000, 5, 5),
(4, '2020-01-01', '2020-01-31', 700000, 6, 6),
(5, '2020-01-01', '2020-01-31', 700000, 6, 7),
(6, '2020-01-01', '2020-01-30', 800000, 7, 8),
(7, '2020-01-01', '2020-01-30', 800000, 8, 9),
(8, '2020-01-20', '2020-01-31', 600000, 8, 10),
(9, '2020-01-07', '2020-01-31', 600000, 9, 11),
(10, '2020-01-07', '2020-01-31', 600000, 10, 12),
(11, '2019-01-01', '2020-01-10', 800000, 10, 13),
(12, '2020-01-07', '2020-01-31', 600000, 11, 14),
(13, '2019-01-01', '2020-01-10', 800000, 11, 15),
(14, '2020-01-01', '2020-01-30', 800000, 11, 16),
(15, '2020-01-10', '2021-01-01', 800000, 12, 17),
(16, '2020-01-10', '2021-01-01', 800000, 13, 18),
(17, '2021-01-01', '2022-01-11', 500000, 13, 19),
(18, '2020-01-06', '2021-01-01', 400000, 14, 20),
(19, '2020-01-02', '2020-01-18', 700000, 14, 21);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `tblDiaChi`
--
ALTER TABLE `tblDiaChi`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tblDoiTac`
--
ALTER TABLE `tblDoiTac`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tblDiaChiid` (`tblDiaChiid`),
  ADD KEY `tblHoTenid` (`tblHoTenid`);

--
-- Chỉ mục cho bảng `tblHoaDon`
--
ALTER TABLE `tblHoaDon`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tblDoiTacid` (`tblDoiTacid`),
  ADD KEY `tblHopDongid` (`tblHopDongid`),
  ADD KEY `tblNhanVienid` (`tblNhanVienid`);

--
-- Chỉ mục cho bảng `tblHopDong`
--
ALTER TABLE `tblHopDong`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tblDoiTacid` (`tblDoiTacid`),
  ADD KEY `tblHopDong_ibfk_1` (`tblThanhVienid`);

--
-- Chỉ mục cho bảng `tblHoTen`
--
ALTER TABLE `tblHoTen`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tblNhanVien`
--
ALTER TABLE `tblNhanVien`
  ADD PRIMARY KEY (`tblThanhVienid`);

--
-- Chỉ mục cho bảng `tblThanhVien`
--
ALTER TABLE `tblThanhVien`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tblDiaChiid` (`tblDiaChiid`),
  ADD KEY `tblHoTenid` (`tblHoTenid`);

--
-- Chỉ mục cho bảng `tblXe`
--
ALTER TABLE `tblXe`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tblXeThueLai`
--
ALTER TABLE `tblXeThueLai`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tblHopDongid` (`tblHopDongid`),
  ADD KEY `tblXeid` (`tblXeid`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `tblDiaChi`
--
ALTER TABLE `tblDiaChi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT cho bảng `tblDoiTac`
--
ALTER TABLE `tblDoiTac`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT cho bảng `tblHoaDon`
--
ALTER TABLE `tblHoaDon`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT cho bảng `tblHopDong`
--
ALTER TABLE `tblHopDong`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT cho bảng `tblHoTen`
--
ALTER TABLE `tblHoTen`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT cho bảng `tblNhanVien`
--
ALTER TABLE `tblNhanVien`
  MODIFY `tblThanhVienid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT cho bảng `tblThanhVien`
--
ALTER TABLE `tblThanhVien`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT cho bảng `tblXe`
--
ALTER TABLE `tblXe`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT cho bảng `tblXeThueLai`
--
ALTER TABLE `tblXeThueLai`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `tblDoiTac`
--
ALTER TABLE `tblDoiTac`
  ADD CONSTRAINT `tblDoiTac_ibfk_1` FOREIGN KEY (`tblDiaChiid`) REFERENCES `tblDiaChi` (`id`),
  ADD CONSTRAINT `tblDoiTac_ibfk_2` FOREIGN KEY (`tblHoTenid`) REFERENCES `tblHoTen` (`id`);

--
-- Các ràng buộc cho bảng `tblHoaDon`
--
ALTER TABLE `tblHoaDon`
  ADD CONSTRAINT `tblHoaDon_ibfk_1` FOREIGN KEY (`tblDoiTacid`) REFERENCES `tblDoiTac` (`id`),
  ADD CONSTRAINT `tblHoaDon_ibfk_2` FOREIGN KEY (`tblHopDongid`) REFERENCES `tblHopDong` (`id`),
  ADD CONSTRAINT `tblHoaDon_ibfk_3` FOREIGN KEY (`tblNhanVienid`) REFERENCES `tblNhanVien` (`tblThanhVienid`);

--
-- Các ràng buộc cho bảng `tblHopDong`
--
ALTER TABLE `tblHopDong`
  ADD CONSTRAINT `tblHopDong_ibfk_1` FOREIGN KEY (`tblThanhVienid`) REFERENCES `tblThanhVien` (`id`),
  ADD CONSTRAINT `tblHopDong_ibfk_2` FOREIGN KEY (`tblDoiTacid`) REFERENCES `tblDoiTac` (`id`);

--
-- Các ràng buộc cho bảng `tblNhanVien`
--
ALTER TABLE `tblNhanVien`
  ADD CONSTRAINT `tblNhanVien_ibfk_1` FOREIGN KEY (`tblThanhVienid`) REFERENCES `tblThanhVien` (`id`);

--
-- Các ràng buộc cho bảng `tblThanhVien`
--
ALTER TABLE `tblThanhVien`
  ADD CONSTRAINT `tblThanhVien_ibfk_1` FOREIGN KEY (`tblDiaChiid`) REFERENCES `tblDiaChi` (`id`),
  ADD CONSTRAINT `tblThanhVien_ibfk_2` FOREIGN KEY (`tblHoTenid`) REFERENCES `tblHoTen` (`id`);

--
-- Các ràng buộc cho bảng `tblXeThueLai`
--
ALTER TABLE `tblXeThueLai`
  ADD CONSTRAINT `tblXeThueLai_ibfk_1` FOREIGN KEY (`tblHopDongid`) REFERENCES `tblHopDong` (`id`),
  ADD CONSTRAINT `tblXeThueLai_ibfk_2` FOREIGN KEY (`tblXeid`) REFERENCES `tblXe` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
