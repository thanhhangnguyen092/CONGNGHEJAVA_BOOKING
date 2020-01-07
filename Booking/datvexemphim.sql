-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th1 07, 2020 lúc 06:17 AM
-- Phiên bản máy phục vụ: 10.1.39-MariaDB
-- Phiên bản PHP: 7.1.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `datvexemphim`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoadon`
--

CREATE TABLE `hoadon` (
  `MaHD` varchar(20) COLLATE utf8_vietnamese_ci NOT NULL,
  `MaKH` varchar(20) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `MaPhim` varchar(20) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `MaPhong` varchar(20) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `MaSuat` varchar(20) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `Soluongve` float NOT NULL,
  `Thoigiandat` datetime NOT NULL,
  `vitringoi` varchar(50) COLLATE utf8_vietnamese_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `hoadon`
--

INSERT INTO `hoadon` (`MaHD`, `MaKH`, `MaPhim`, `MaPhong`, `MaSuat`, `Soluongve`, `Thoigiandat`, `vitringoi`) VALUES
('1', '1', '1', '1', 'A5', 1, '2020-01-07 00:00:00', 'A7'),
('32588015', '1', '1', '1', 'A1', 1, '2020-01-06 23:01:11', 'ABC'),
('35059235', '29861552', '1', '1', 'A1', 1, '2020-01-07 00:55:50', 'ABC'),
('4506592', '29861552', '1', '1', 'A1', 1, '2020-01-07 01:04:56', 'ABC');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khachhang`
--

CREATE TABLE `khachhang` (
  `MaKH` varchar(20) COLLATE utf8_vietnamese_ci NOT NULL,
  `HotenKH` varchar(50) CHARACTER SET utf8 NOT NULL,
  `DiachiKH` varchar(50) CHARACTER SET utf8 NOT NULL,
  `SdtKH` varchar(10) COLLATE utf8_vietnamese_ci NOT NULL,
  `TentruycapKH` varchar(20) COLLATE utf8_vietnamese_ci NOT NULL,
  `MatkhauKH` varchar(20) COLLATE utf8_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `khachhang`
--

INSERT INTO `khachhang` (`MaKH`, `HotenKH`, `DiachiKH`, `SdtKH`, `TentruycapKH`, `MatkhauKH`) VALUES
('', '', '', '', '', ''),
('1', 'Ai Nhi', 'Quy Nhơn', '0928486929', 'Ai Nhi', '12345'),
('29861552', 'Thanh Háº±ng', 'Quy NhÆ¡n', '0929389839', 'Thanh Hang', '123');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `lichchieu`
--

CREATE TABLE `lichchieu` (
  `Malichchieu` varchar(20) COLLATE utf8_vietnamese_ci NOT NULL,
  `Ngaychieu` date NOT NULL,
  `MaSuat` varchar(20) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `MaPhong` varchar(20) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `MaPhim` varchar(20) COLLATE utf8_vietnamese_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `lichchieu`
--

INSERT INTO `lichchieu` (`Malichchieu`, `Ngaychieu`, `MaSuat`, `MaPhong`, `MaPhim`) VALUES
('1', '2020-01-07', 'A1', '1', '1'),
('10', '2020-01-07', 'B4', '2', '2'),
('11', '2020-01-07', 'C3', '3', '2'),
('12', '2020-01-07', 'C4', '3', '2'),
('2', '2020-01-07', 'A2', '1', '1'),
('3', '2020-01-07', 'B1', '2', '1'),
('4', '2020-01-07', 'B2', '2', '1'),
('5', '2020-01-07', 'C1', '3', '1'),
('6', '2020-01-07', 'C2', '3', '1'),
('7', '2020-01-07', 'A3', '1', '2'),
('8', '2020-01-07', 'A4', '1', '2'),
('9', '2020-01-07', 'B3', '2', '2');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loaive`
--

CREATE TABLE `loaive` (
  `Maloaive` varchar(20) COLLATE utf8_vietnamese_ci NOT NULL,
  `Tenloaive` varchar(20) COLLATE utf8_vietnamese_ci NOT NULL,
  `Gialoaive` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `loaive`
--

INSERT INTO `loaive` (`Maloaive`, `Tenloaive`, `Gialoaive`) VALUES
('A', '2D', 45000),
('B', '3D', 55000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phim`
--

CREATE TABLE `phim` (
  `MaPhim` varchar(20) COLLATE utf8_vietnamese_ci NOT NULL,
  `TenPhim` varchar(50) CHARACTER SET utf8 NOT NULL,
  `Theloai` varchar(50) CHARACTER SET utf8 NOT NULL,
  `Daodien` varchar(50) CHARACTER SET utf8 NOT NULL,
  `Noidung` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Ngaykhoichieu` date NOT NULL,
  `Linktrailer` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `Thoiluong` varchar(20) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `Hinhanh` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `phim`
--

INSERT INTO `phim` (`MaPhim`, `TenPhim`, `Theloai`, `Daodien`, `Noidung`, `Ngaykhoichieu`, `Linktrailer`, `Thoiluong`, `Hinhanh`) VALUES
('1', 'Mắt Biếc', 'Tình Cảm', 'Victor Vũ', 'Co chang trai viết lên cây', '2020-01-07', 'https://www.youtube.com/watch?v=ITlQ0oU7tDA', '117 phút', 'MatBiec-Char-HaLan-teenage_680x0.jpg'),
('2', 'Pháp Sư Mù', 'Kinh dị hài', 'Huỳnh Lập', 'Thế giới tâm linh trong phim vô cùng kỳ bí, đầy đủ pháp sư, ma, quỷ, cô hồn...là nơi thiện ác đối đầu, nơi lựa chọn giữa tình cảm, niềm tin và lương tâm cũng chính là sự lựa chọn sinh tử.', '2020-01-08', 'https://www.youtube.com/watch?v=t7srZZh9lxY', '120 phút', 'slide-1.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phong`
--

CREATE TABLE `phong` (
  `MaPhong` varchar(20) COLLATE utf8_vietnamese_ci NOT NULL,
  `TenPhong` varchar(50) CHARACTER SET utf8 NOT NULL,
  `Soghe` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `phong`
--

INSERT INTO `phong` (`MaPhong`, `TenPhong`, `Soghe`) VALUES
('1', 'Phong 1', 60),
('2', 'Phong 2', 60),
('3', 'Phong 3', 60);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `suatchieu`
--

CREATE TABLE `suatchieu` (
  `MaSuat` varchar(20) COLLATE utf8_vietnamese_ci NOT NULL,
  `Giobatdau` varchar(20) COLLATE utf8_vietnamese_ci NOT NULL,
  `Gioketthuc` varchar(20) COLLATE utf8_vietnamese_ci NOT NULL,
  `MaPhong` varchar(20) COLLATE utf8_vietnamese_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `suatchieu`
--

INSERT INTO `suatchieu` (`MaSuat`, `Giobatdau`, `Gioketthuc`, `MaPhong`) VALUES
('A1', '9h', '11h', '1'),
('A2', '11h15', '13h15', '1'),
('A3', '13h30', '15h30', '1'),
('A4', '18h45', '20h45', '1'),
('A5', '21h', '23h', '1'),
('B1', '9h30', '11h30', '2'),
('B2', '11h45', '13h45', '2'),
('B3', '14h', '16h', '2'),
('B4', '16h30', '18h30', '2'),
('B5', '20h30', '22h30', '2'),
('C1', '9h45', '11h45', '3'),
('C2', '11h15', '13h15', '3'),
('C3', '14h15', '16h15', '3'),
('C4', '17h', '19h', '3'),
('C5', '19h30', '21h30', '3');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `taikhoan`
--

CREATE TABLE `taikhoan` (
  `MaTK` varchar(20) COLLATE utf8_vietnamese_ci NOT NULL,
  `TentruycapTK` varchar(20) COLLATE utf8_vietnamese_ci NOT NULL,
  `MatkhauTK` varchar(20) COLLATE utf8_vietnamese_ci NOT NULL,
  `Phanquyen` varchar(20) COLLATE utf8_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `taikhoan`
--

INSERT INTO `taikhoan` (`MaTK`, `TentruycapTK`, `MatkhauTK`, `Phanquyen`) VALUES
('1', 'ainhi', 'ainhi', 'admin'),
('2', 'hang', 'hang', 'nhanvien');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ve`
--

CREATE TABLE `ve` (
  `MaVe` varchar(20) COLLATE utf8_vietnamese_ci NOT NULL,
  `Maloaive` varchar(20) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `MaPhim` varchar(20) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `MaPhong` varchar(20) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `MaSuat` varchar(20) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `Vitringoi` varchar(10) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `Ngayban` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `ve`
--

INSERT INTO `ve` (`MaVe`, `Maloaive`, `MaPhim`, `MaPhong`, `MaSuat`, `Vitringoi`, `Ngayban`) VALUES
('1', 'A', '1', '3', 'C3', 'A1', '2020-01-02');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  ADD PRIMARY KEY (`MaHD`),
  ADD KEY `MaKH` (`MaKH`),
  ADD KEY `MaPhim` (`MaPhim`),
  ADD KEY `MaPhong` (`MaPhong`),
  ADD KEY `MaSuat` (`MaSuat`);

--
-- Chỉ mục cho bảng `khachhang`
--
ALTER TABLE `khachhang`
  ADD PRIMARY KEY (`MaKH`);

--
-- Chỉ mục cho bảng `lichchieu`
--
ALTER TABLE `lichchieu`
  ADD PRIMARY KEY (`Malichchieu`),
  ADD KEY `MaSuat` (`MaSuat`),
  ADD KEY `MaPhong` (`MaPhong`),
  ADD KEY `MaPhim` (`MaPhim`);

--
-- Chỉ mục cho bảng `loaive`
--
ALTER TABLE `loaive`
  ADD PRIMARY KEY (`Maloaive`);

--
-- Chỉ mục cho bảng `phim`
--
ALTER TABLE `phim`
  ADD PRIMARY KEY (`MaPhim`);

--
-- Chỉ mục cho bảng `phong`
--
ALTER TABLE `phong`
  ADD PRIMARY KEY (`MaPhong`);

--
-- Chỉ mục cho bảng `suatchieu`
--
ALTER TABLE `suatchieu`
  ADD PRIMARY KEY (`MaSuat`),
  ADD KEY `MaPhong` (`MaPhong`);

--
-- Chỉ mục cho bảng `taikhoan`
--
ALTER TABLE `taikhoan`
  ADD PRIMARY KEY (`MaTK`);

--
-- Chỉ mục cho bảng `ve`
--
ALTER TABLE `ve`
  ADD PRIMARY KEY (`MaVe`),
  ADD KEY `Maloaive` (`Maloaive`),
  ADD KEY `MaPhim` (`MaPhim`),
  ADD KEY `MaPhong` (`MaPhong`),
  ADD KEY `MaSuat` (`MaSuat`);

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  ADD CONSTRAINT `hoadon_ibfk_1` FOREIGN KEY (`MaKH`) REFERENCES `khachhang` (`MaKH`),
  ADD CONSTRAINT `hoadon_ibfk_2` FOREIGN KEY (`MaPhim`) REFERENCES `phim` (`MaPhim`),
  ADD CONSTRAINT `hoadon_ibfk_3` FOREIGN KEY (`MaPhong`) REFERENCES `phong` (`MaPhong`),
  ADD CONSTRAINT `hoadon_ibfk_4` FOREIGN KEY (`MaSuat`) REFERENCES `suatchieu` (`MaSuat`);

--
-- Các ràng buộc cho bảng `lichchieu`
--
ALTER TABLE `lichchieu`
  ADD CONSTRAINT `lichchieu_ibfk_1` FOREIGN KEY (`MaSuat`) REFERENCES `suatchieu` (`MaSuat`),
  ADD CONSTRAINT `lichchieu_ibfk_2` FOREIGN KEY (`MaPhong`) REFERENCES `phong` (`MaPhong`),
  ADD CONSTRAINT `lichchieu_ibfk_3` FOREIGN KEY (`MaPhim`) REFERENCES `phim` (`MaPhim`);

--
-- Các ràng buộc cho bảng `suatchieu`
--
ALTER TABLE `suatchieu`
  ADD CONSTRAINT `suatchieu_ibfk_1` FOREIGN KEY (`MaPhong`) REFERENCES `phong` (`MaPhong`);

--
-- Các ràng buộc cho bảng `ve`
--
ALTER TABLE `ve`
  ADD CONSTRAINT `ve_ibfk_1` FOREIGN KEY (`Maloaive`) REFERENCES `loaive` (`Maloaive`),
  ADD CONSTRAINT `ve_ibfk_2` FOREIGN KEY (`MaPhim`) REFERENCES `phim` (`MaPhim`),
  ADD CONSTRAINT `ve_ibfk_3` FOREIGN KEY (`MaPhong`) REFERENCES `phong` (`MaPhong`),
  ADD CONSTRAINT `ve_ibfk_4` FOREIGN KEY (`MaSuat`) REFERENCES `suatchieu` (`MaSuat`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
