-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 29, 2024 lúc 04:56 AM
-- Phiên bản máy phục vụ: 10.4.32-MariaDB
-- Phiên bản PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `librarymanagement`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `books`
--

CREATE TABLE `books` (
  `id` int(11) NOT NULL,
  `bookName` varchar(255) DEFAULT NULL,
  `author` varchar(255) DEFAULT NULL,
  `datePublish` datetime DEFAULT NULL,
  `genre` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `books`
--

INSERT INTO `books` (`id`, `bookName`, `author`, `datePublish`, `genre`, `description`, `quantity`, `img`, `status`, `createdAt`, `updatedAt`) VALUES
(783, 'Harry Potter and the Deathly Hallows', 'J.K.Rowling', '2007-07-21 00:00:00', 'Kỳ ảo', 'Khi trèo lên thùng xe gắn máy của Hagrid và bay lên trời, rời khỏi Privet Drive lần cuối, Harry Potter biết rằng Chúa tể Voldemort và Tử thần Thực tử không còn xa nữa. Bùa hộ mệnh bảo vệ Harry cho đến bây giờ đã bị phá vỡ, nhưng cậu không thể tiếp tục ẩn náu. Chúa tể Bóng tối đang thổi nỗi sợ hãi vào mọi thứ Harry yêu quý, và để ngăn chặn hắn, Harry sẽ phải tìm và phá hủy những Trường sinh linh giá còn lại. Trận chiến cuối cùng phải bắt đầu - Harry phải đứng lên và đối mặt với kẻ thù của mình.', 30, 'https://static.wikia.nocookie.net/harrypotter/images/d/da/Deathly_Hallows_New_Cover.jpg/revision/latest/scale-to-width-down/1000?cb=20170109054859', 'Available', '2024-11-28 18:36:00', '2024-11-28 18:36:00'),
(973, 'Fundamental of Database systems 7th Edition', 'Elmasri & Navathe', '2015-06-08 00:00:00', 'Học tập', 'Cuốn sách này giới thiệu các khái niệm cơ bản cần thiết cho việc thiết kế, sử dụng và triển khai các hệ thống cơ sở dữ liệu và ứng dụng cơ sở dữ liệu. Nội dung nhấn mạnh các nguyên tắc cơ bản của mô hình hóa và thiết kế cơ sở dữ liệu, các ngôn ngữ và mô hình do hệ thống quản lý cơ sở dữ liệu cung cấp và các kỹ thuật triển khai hệ thống cơ sở dữ liệu.', 30, 'https://covers.vitalsource.com/vbid/9780133971224/width/720', 'Available', '2024-11-28 18:30:57', '2024-11-28 18:30:57');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sequelizemeta`
--

CREATE TABLE `sequelizemeta` (
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sequelizemeta`
--

INSERT INTO `sequelizemeta` (`name`) VALUES
('20241026143354-create-user.js'),
('20241026144308-create-user.js'),
('20241128174503-create-book.js'),
('20241128182752-create-book.js');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `phoneNum` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `name`, `gender`, `address`, `phoneNum`, `status`, `role`, `createdAt`, `updatedAt`) VALUES
(1302073, 'nguyenvana@gmail.com', '1234', 'Nguyen Van A', 'Nam', 'Binh Duong', '54684965', 'Normal', 'Staff', '2024-11-28 15:04:31', '2024-11-28 15:04:31'),
(2318399, 'phuongbinh.conan@gmail.com', '1234', 'Hoang Phuong Binh', 'Nam', 'Dong Nai', '3952587932', 'Normal', 'Student', '2024-11-06 05:40:36', '2024-11-06 05:40:36');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `sequelizemeta`
--
ALTER TABLE `sequelizemeta`
  ADD PRIMARY KEY (`name`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2318400;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
