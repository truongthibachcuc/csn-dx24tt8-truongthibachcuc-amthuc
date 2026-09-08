-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th9 08, 2026 lúc 06:10 PM
-- Phiên bản máy phục vụ: 10.4.32-MariaDB
-- Phiên bản PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `db_amthuc_nambo`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danhmuc`
--

CREATE TABLE `danhmuc` (
  `id` int(11) NOT NULL,
  `ten_danh_muc` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `danhmuc`
--

INSERT INTO `danhmuc` (`id`, `ten_danh_muc`) VALUES
(1, 'Món nước'),
(2, 'Món cuốn'),
(3, 'Bánh dân gian');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `diaphuong`
--

CREATE TABLE `diaphuong` (
  `id` int(11) NOT NULL,
  `ten_dia_phuong` varchar(255) NOT NULL,
  `mo_ta` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `diaphuong`
--

INSERT INTO `diaphuong` (`id`, `ten_dia_phuong`, `mo_ta`) VALUES
(1, 'Tây Ninh', 'Nổi tiếng với các món ăn dân dã và các loại bánh tráng.'),
(2, 'Cần Thơ', 'Đặc trưng văn hóa miệt vườn sông nước.'),
(3, 'Bến Tre', 'Xứ sở của dừa và các món ăn từ dừa.'),
(4, 'An Giang', 'Giao thoa văn hóa ẩm thực độc đáo.');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `monan`
--

CREATE TABLE `monan` (
  `id` int(11) NOT NULL,
  `ten_mon` varchar(255) NOT NULL,
  `hinh_anh` varchar(255) DEFAULT NULL,
  `nguyen_lieu` text NOT NULL,
  `cach_che_bien` text NOT NULL,
  `id_dia_phuong` int(11) NOT NULL,
  `id_danh_muc` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `monan`
--

INSERT INTO `monan` (`id`, `ten_mon`, `hinh_anh`, `nguyen_lieu`, `cach_che_bien`, `id_dia_phuong`, `id_danh_muc`) VALUES
(1, 'Bánh canh Trảng Bàng', 'https://danviet-24h.ex-cdn.com/files/upload/2-2021/images/2021-05-24/1-1621843914-1-width960height720.jpg', 'Bánh canh, giò heo, huyết, gia vị...', 'Ninh nước dùng xương và giò heo, trụng bánh canh và chan nước dùng.', 1, 1),
(2, 'Bánh tráng phơi sương', 'https://luhanhvietnam.com.vn/du-lich/vnt_upload/news/09_2022/banh-trang-phoi-suong-tay-ninh.jpg', 'Bánh tráng, thịt heo luộc, rau rừng...', 'Cuốn bánh tráng với thịt luộc và rau rừng, chấm nước mắm chua ngọt.', 1, 2),
(3, 'Bò tơ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRLxryO2QQOyCag24RzAUKFU9dJrT1qGBxAx1VJQp1BVqDH3yCyezofWFw&s=10', 'Thịt bò tơ, rau thơm, khế, chuối chát...', 'Nướng hoặc luộc thịt bò tơ chấm mắm nêm.', 1, 2),
(4, 'Bánh xèo', 'https://i.ytimg.com/vi/ZDBhadEPxVg/maxresdefault.jpg', 'Bột gạo, nước cốt dừa, tôm, thịt băm...', 'Đổ bánh trên chảo nóng với nhân tôm thịt, giá đỗ.', 2, 3),
(5, 'Lẩu mắm U Minh', 'https://mia.vn/media/uploads/blog-du-lich/lau-mam-u-minh-vang-danh-dac-san-mien-dat-bun-xu-mui-01-1663704486.jpeg', 'Mắm cá sặc, thịt ba rọi, tôm, mực, rau miền Tây...', 'Nấu nước dùng từ mắm, nhúng kèm hải sản và rau đồng.', 2, 1),
(6, 'Cá lóc nướng trui', 'https://cdn.hstatic.net/files/200000700229/article/cach-lam-ca-loc-nuong-1_9b6e2c6db9e245f3b8668646238415de.jpg', 'Cá lóc đồng tươi, rơm khô, rau sống, bánh tráng...', 'Thui cá chín thơm, ăn kèm rau sống cuốn bánh tráng nước mắm me.', 2, 3),
(7, 'Chuột nướng lu Cao Lãnh', 'https://vietnamtourism.vn/imguploads/news/2025CNMN/Thang12/1012Dac-san-Dong-Thap-khong-phai-ai-cung-dam-thu-khach-sanh-an-khen-gion-rum-ngon-2.jpg', 'Thịt chuột đồng, gia vị sả ớt, ngũ vị hương...', 'Nướng chín bằng lu đất đậy kín với than hồng.', 4, 3),
(8, 'Gỏi ngó sen tôm thịt', 'https://cdn.pastaxi-manager.onepas.vn/content/uploads/articles/hoamkt35/Blog/cach-lam-goi-ngo-sen-tom-thit%20(2).jpg', 'Ngó sen, tôm sú, thịt ba rọi, đậu phộng...', 'Trộn ngó sen với tôm thịt và nước mắm chua ngọt.', 3, 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `quantrivien`
--

CREATE TABLE `quantrivien` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `quantrivien`
--

INSERT INTO `quantrivien` (`id`, `username`, `password`) VALUES
(1, 'admin', '$2y$10$92IXUNpkj00r0Q5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `diaphuong`
--
ALTER TABLE `diaphuong`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `monan`
--
ALTER TABLE `monan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_dia_phuong` (`id_dia_phuong`),
  ADD KEY `id_danh_muc` (`id_danh_muc`);

--
-- Chỉ mục cho bảng `quantrivien`
--
ALTER TABLE `quantrivien`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `diaphuong`
--
ALTER TABLE `diaphuong`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `monan`
--
ALTER TABLE `monan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `quantrivien`
--
ALTER TABLE `quantrivien`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `monan`
--
ALTER TABLE `monan`
  ADD CONSTRAINT `monan_ibfk_1` FOREIGN KEY (`id_dia_phuong`) REFERENCES `diaphuong` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `monan_ibfk_2` FOREIGN KEY (`id_danh_muc`) REFERENCES `danhmuc` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
