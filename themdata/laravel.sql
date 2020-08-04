-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th8 04, 2020 lúc 09:42 AM
-- Phiên bản máy phục vụ: 10.4.13-MariaDB
-- Phiên bản PHP: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `laravel`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admins`
--

CREATE TABLE `admins` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1 là Hiện, 0 là Ẩn',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `password`, `status`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'tranhoan.dz98@geail.com', '$2y$10$6IvbmKBpDc7FHq8RDYpUZutInKdR7nfgnJzrilKb1AsohzQTWwC/y', 1, '2020-07-23 19:18:45', '2020-07-23 19:18:45'),
(2, 'admin2', 'tranhoan.dz@geail.com', '$2y$10$vCHAcdEgyLq8FK17Zp.q6OiVWUJv1GUn1z5fD57rq3F1it.r8YOWq', 1, '2020-07-29 13:45:39', '2020-07-29 13:45:39');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `attrs`
--

CREATE TABLE `attrs` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `attrs`
--

INSERT INTO `attrs` (`id`, `name`, `value`, `created_at`, `updated_at`) VALUES
(1, 'khoi-luong', '100', '2020-07-23 20:15:53', '2020-07-23 20:15:53'),
(2, 'khoi-luong', '200', '2020-07-23 20:15:59', '2020-07-23 20:15:59');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `banners`
--

CREATE TABLE `banners` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1 là Hiện, 0 là Ẩn',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `banners`
--

INSERT INTO `banners` (`id`, `name`, `slug`, `title`, `image`, `content`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Lá chè xanh', 'la-che-xanh', NULL, 'Banners/e578511cd12bcb-bannervechungtoi.jpg', NULL, 1, '2020-07-25 21:03:13', '2020-08-01 06:52:57'),
(2, 'Banner2', 'banner2', NULL, 'Banners/banner1.jpg', NULL, 1, '2020-07-25 21:05:50', '2020-08-01 06:50:04'),
(3, 'Trà hương thơm', 'tra-huong-thom', NULL, 'Banners/banner3.jpg', NULL, 1, '2020-07-25 21:17:05', '2020-08-01 06:50:18'),
(5, 'banner6', 'banner6', NULL, 'Banners/banner2.jpg', NULL, 1, '2020-07-29 16:04:42', '2020-08-01 06:50:35');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `blogs`
--

CREATE TABLE `blogs` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_cate` int(10) UNSIGNED NOT NULL,
  `id_admin` int(10) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keyword` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_desc` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1 là Hiện, 0 là Ẩn',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `blogs`
--

INSERT INTO `blogs` (`id`, `name`, `slug`, `id_cate`, `id_admin`, `image`, `content`, `meta_title`, `meta_keyword`, `meta_desc`, `status`, `created_at`, `updated_at`) VALUES
(1, '10 Công dụng tuyệt vời của hoa cúc', '10-cong-dung-tuyet-voi-cua-hoa-cuc', 5, 1, 'Blogs/tra-hoa-cuc.png', '<p>Tr&agrave; hoa c&uacute;c &ndash; Thức uống thần kỳ cho sức khỏe người Việt<br />\r\nTr&agrave; hoa ch&uacute;ng e xin gửi tới bạn c&aacute;c c&ocirc;ng dụng tuyệt vời:</p>\r\n\r\n<p>𝟏. 𝐂𝐚̉𝐢 𝐭𝐡𝐢𝐞̣̂𝐧 𝐬𝐮̛́𝐜 𝐤𝐡𝐨̉𝐞 𝐭𝐢𝐦 𝐦𝐚̣𝐜𝐡</p>\r\n\r\n<p>Tr&agrave; hoa c&uacute;c c&oacute; nhiều flavones, một lớp chất chống oxy h&oacute;a. Theo nghi&ecirc;n cứu, flavones c&oacute; khả năng l&agrave;m giảm huyết &aacute;p v&agrave; mức cholesterol, l&agrave; những dấu hiệu quan trọng của nguy cơ mắc bệnh tim của bạn.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://forgetmenotmart.com/wp-content/uploads/2020/04/10-cong-dung-tuyet-voi-cua-hoa-cuc-19011-800x533.jpg\" style=\"height:533px; width:800px\" /></p>\r\n\r\n<p>Th&ecirc;m v&agrave;o đ&oacute;, c&aacute;c nghi&ecirc;n cứu gần đ&acirc;y c&ograve;n chứng minh rằng chất chống oxy h&oacute;a trong hoa c&uacute;c kh&aacute; c&ocirc;ng hiệu trong việc điều trị chứng đau thắt ngực hoặc l&agrave;m dịu những cơn đau ngực xuất ph&aacute;t từ bệnh động mạch v&agrave;nh.</p>\r\n\r\n<p>Ngo&agrave;i ra, hoa c&uacute;c c&ograve;n c&oacute; t&aacute;c dụng l&agrave;m giảm huyết &aacute;p v&agrave; ngăn ngừa c&aacute;c triệu chứng li&ecirc;n quan như ch&oacute;ng mặt, mất ngủ v&agrave; nhức đầu.</p>\r\n\r\n<p>𝟐. 𝐆𝐢𝐚̉𝐢 𝐜𝐚̉𝐦</p>\r\n\r\n<p>Theo tạp ch&iacute; sức khỏe Natural Health, c&aacute;c thầy thuốc cổ truyền Trung Quốc đ&atilde; sử dụng tr&agrave; hoa c&uacute;c để chữa phong h&agrave;n hoặc cảm lạnh k&egrave;m sốt cao, sưng tấy v&agrave; nhức đầu. Nhờ v&agrave;o t&iacute;nh m&aacute;t của loại thảo dược n&agrave;y m&agrave; ch&uacute;ng được d&ugrave;ng để hạ sốt rất hiệu quả.</p>\r\n\r\n<p>Để chế biến ra những t&aacute;ch tr&agrave; hoa c&uacute;c gi&uacute;p giải cảm, bạn h&atilde;y cho v&agrave;o ấm tr&agrave; một th&igrave;a c&agrave; ph&ecirc; tr&agrave; hoa c&uacute;c kh&ocirc; với hoa kim ng&acirc;n v&agrave; l&aacute; bạc h&agrave; kh&ocirc;, sau đ&oacute; r&oacute;t một l&iacute;t nước s&ocirc;i v&agrave;o v&agrave; đợi tr&agrave; nguội dần.</p>\r\n\r\n<p>Uống một t&aacute;ch tr&agrave; hoa c&uacute;c mỗi hai giờ sẽ gi&uacute;p l&agrave;m dịu c&aacute;c triệu chứng cảm lạnh kh&oacute; chịu trong cơ thể.</p>\r\n\r\n<p><img alt=\"\" src=\"https://forgetmenotmart.com/wp-content/uploads/2020/04/69697717_1674777072654651_5958192887454760960_o-800x533.jpg\" style=\"height:533px; width:800px\" /></p>\r\n\r\n<p>𝟑. 𝐋𝐚̀𝐦 𝐝𝐢̣𝐮 𝐦𝐚̂̉𝐧 đ𝐨̉ 𝐝𝐨 𝐧𝐨́𝐧𝐠 𝐭𝐫𝐨𝐧𝐠 𝐧𝐠𝐮̛𝐨̛̀𝐢</p>\r\n\r\n<p>C&aacute;c b&aacute;c sĩ Đ&ocirc;ng y khẳng định rằng việc ph&aacute;t ban l&agrave; do cơ thể bị nhiệt g&acirc;y n&ecirc;n. Với t&iacute;nh giải nhiệt, tr&agrave; hoa c&uacute;c c&oacute; thể sử dụng để điều trị bệnh ban đỏ. Nếu bị ph&aacute;t ban, bạn h&atilde;y uống tr&agrave; hoa c&uacute;c mỗi 2&ndash;3 giờ v&agrave; uống tr&agrave; cho đến khi c&aacute;c vết ban biến mất.</p>\r\n\r\n<p><img alt=\"\" src=\"https://forgetmenotmart.com/wp-content/uploads/2020/04/69911933_1674776509321374_1752116699924004864_n-1-400x600.jpg\" style=\"height:600px; width:400px\" /></p>\r\n\r\n<p>C&aacute;c b&aacute;c sĩ cũng khuy&ecirc;n rằng bạn n&ecirc;n tr&aacute;nh ăn c&aacute;c loại thức ăn nhiều gia vị hoặc đồ cay, n&oacute;ng v&igrave; ch&uacute;ng sẽ g&oacute;p phần l&agrave;m bạn bị n&oacute;ng trong người.</p>\r\n\r\n<p>𝟒. 𝐂𝐚̉𝐢 𝐭𝐡𝐢𝐞̣̂𝐧 𝐬𝐮̛́𝐜 𝐤𝐡𝐨̉𝐞 đ𝐨̂𝐢 𝐦𝐚̆́𝐭</p>\r\n\r\n<p>Tr&agrave; hoa c&uacute;c đem lại nhiều lợi &iacute;ch cho &ldquo;cửa sổ t&acirc;m hồn&rdquo; của bạn, bao gồm t&aacute;c dụng cải thiện thị lực đối với những người&nbsp;mắt mờ, tầm nh&igrave;n yếu. Nếu mắt hay bị đau, kh&ocirc; hoặc đỏ do đọc s&aacute;ch hoặc l&agrave;m việc với m&aacute;y t&iacute;nh trong một khoảng thời gian d&agrave;i, tr&agrave; hoa c&uacute;c ch&iacute;nh l&agrave; lựa chọn ho&agrave;n hảo để bảo vệ sức khỏe đ&ocirc;i mắt.</p>\r\n\r\n<p><img alt=\"\" src=\"https://forgetmenotmart.com/wp-content/uploads/2020/04/10-cong-dung-tuyet-voi-cua-hoa-cuc-74381-606x600.jpg\" style=\"height:600px; width:606px\" />&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;</p>\r\n\r\n<p>𝟓. 𝐍𝐠𝐚̆𝐧 𝐧𝐠𝐮̛̀𝐚 𝐮𝐧𝐠 𝐭𝐡𝐮̛</p>\r\n\r\n<p>Nghi&ecirc;n cứu tại Mỹ ph&aacute;t hiện chất apigenin trong tr&agrave; hoa c&uacute;c c&oacute; t&aacute;c dụng ngăn ngừa tế b&agrave;o ung thư lan rộng v&agrave; gi&uacute;p c&aacute;c thuốc trị ung thư ph&aacute;t huy t&aacute;c dụng hơn.</p>\r\n\r\n<p>Trong c&aacute;c nghi&ecirc;n cứu ống nghiệm, apigenin đ&atilde; được chứng minh l&agrave; chống lại c&aacute;c tế b&agrave;o ung thư, đặc biệt l&agrave; c&aacute;c tế b&agrave;o v&uacute;, đường ti&ecirc;u h&oacute;a, da, tuyến tiền liệt v&agrave; tử cung.</p>\r\n\r\n<p>Ngo&agrave;i ra, một nghi&ecirc;n cứu tr&ecirc;n 537 người đ&atilde; quan s&aacute;t thấy rằng những người uống tr&agrave; hoa c&uacute;c 2 &ndash; 6 lần mỗi tuần c&oacute; khả năng mắc ung thư tuyến gi&aacute;p &iacute;t hơn đ&aacute;ng kể so với những người kh&ocirc;ng uống tr&agrave; hoa c&uacute;c.</p>\r\n\r\n<p><img alt=\"\" src=\"https://forgetmenotmart.com/wp-content/uploads/2020/04/69654810_1674777825987909_6626776350340415488_o-800x533.jpg\" style=\"height:533px; width:800px\" /></p>\r\n\r\n<p>𝟔. 𝐓𝐫𝐢̣ 𝐦𝐚̂́𝐭 𝐧𝐠𝐮̉, 𝐡𝐚̣ 𝐡𝐮𝐲𝐞̂́𝐭 𝐚́𝐩</p>\r\n\r\n<p>Tr&agrave; hoa c&uacute;c được mệnh danh l&agrave; liều thuốc ngủ tự nhi&ecirc;n tốt nhất. Uống một cốc tr&agrave; hoa c&uacute;c trước khi đi ngủ sẽ gi&uacute;p bạn c&oacute; một giấc ngủ ngon hơn.</p>\r\n\r\n<p>B&ecirc;n cạnh đ&oacute;, một số nghi&ecirc;n cứu cho thấy tr&agrave; hoa c&uacute;c c&ograve;n c&oacute; t&aacute;c dụng kh&aacute;ng khuẩn g&acirc;y cảm c&uacute;m v&agrave; gi&uacute;p l&agrave;m gi&atilde;n mạch m&aacute;u, hạ huyết &aacute;p, giảm mỡ trong m&aacute;u, đặc biệt l&agrave; l&agrave;m dịu bớt căng thẳng thần kinh, gi&uacute;p bạn ngủ ngon giấc m&agrave; kh&ocirc;ng bị trằn trọc.</p>\r\n\r\n<p><img alt=\"\" src=\"https://forgetmenotmart.com/wp-content/uploads/2020/04/10-cong-dung-tuyet-voi-cua-hoa-cuc-95854-598x600.jpg\" style=\"height:600px; width:598px\" /></p>\r\n\r\n<p>𝟕. 𝐆𝐢𝐚̉𝐢 𝐧𝐡𝐢𝐞̣̂𝐭</p>\r\n\r\n<p>T&aacute;c dụng giải nhiệt hiệu quả của hoa c&uacute;c rất tốt cho những người thường xuy&ecirc;n bị nhiệt, n&oacute;ng bức do l&agrave;m việc trong m&ocirc;i trường chật hẹp, như văn ph&ograve;ng, c&ocirc;ng xưởng&hellip;</p>\r\n\r\n<p>Bạn c&oacute; thể kết hợp loại tr&agrave; n&agrave;y với tr&agrave; xanh v&agrave; hoa h&ograve;e để tăng cường sức đề kh&aacute;ng, thanh nhiệt, giải độc, l&agrave;m s&aacute;ng mắt, gi&uacute;p ph&ograve;ng ngừa v&agrave; chữa trị chứng nhức đầu do sốc nhiệt.</p>\r\n\r\n<p><img alt=\"\" src=\"https://forgetmenotmart.com/wp-content/uploads/2020/04/69912530_1674777012654657_4004581228517785600_o-800x533.jpg\" style=\"height:533px; width:800px\" /></p>\r\n\r\n<p>𝟖. 𝐓𝐢𝐞̂𝐮 đ𝐨̣̂𝐜, 𝐧𝐡𝐮𝐚̣̂𝐧 𝐠𝐚𝐧</p>\r\n\r\n<p>Tr&agrave; hoa c&uacute;c kết hợp với hoa kim ng&acirc;n v&agrave; bồ c&ocirc;ng anh l&agrave; một b&agrave;i thuốc gi&uacute;p ti&ecirc;u độc, nhuận gan, chữa mụn nhọt, ghẻ ngứa v&agrave; vi&ecirc;m gan cấp t&iacute;nh. Bạn cũng c&oacute; thể d&ugrave;ng hoa c&uacute;c kết hợp với nấm phục linh để gi&uacute;p sắc mặt tươi tắn hơn với l&agrave;n da s&aacute;ng mịn.</p>\r\n\r\n<p><img alt=\"\" src=\"https://forgetmenotmart.com/wp-content/uploads/2020/04/69798986_1674777379321287_4688602680765972480_o-800x533.jpg\" style=\"height:533px; width:800px\" /></p>\r\n\r\n<p>𝟗. 𝐂𝐡𝐮̛̃𝐚 đ𝐚𝐮 𝐛𝐮̣𝐧𝐠 𝐤𝐢𝐧𝐡 𝐧𝐠𝐮𝐲𝐞̣̂𝐭</p>\r\n\r\n<p>Tr&agrave; hoa c&uacute;c l&agrave;m tăng hoạt chất gi&uacute;p giảm co thắt cơ tử cung trong thời kỳ &ldquo;đ&egrave;n đỏ&rdquo;, từ đ&oacute; l&agrave;m dịu c&aacute;c cơn đau bụng kinh kh&oacute; chịu.</p>\r\n\r\n<p>Bạn cũng c&oacute; thể d&ugrave;ng dầu chiết xuất từ hoa c&uacute;c thoa v&agrave;o bụng dưới để xoa dịu chứng đau bụng kinh. Tuy nhi&ecirc;n, c&aacute;c mẹ bầu n&ecirc;n cẩn thận khi sử dụng tr&agrave; hoa c&uacute;c bởi loại thảo dược n&agrave;y c&oacute; thể t&aacute;c động tới b&agrave;o thai trong bụng.</p>\r\n\r\n<p><img alt=\"\" src=\"https://forgetmenotmart.com/wp-content/uploads/2020/04/10-cong-dung-tuyet-voi-cua-hoa-cuc-65867-600x600.jpg\" style=\"height:547px; width:547px\" /></p>\r\n\r\n<p><strong>N&ecirc;n uống tr&agrave; hoa c&uacute;c v&agrave;o thời điểm n&agrave;o?</strong></p>\r\n\r\n<p>Việc thưởng tr&agrave; hoa c&uacute;c đ&ocirc;i khi l&agrave; do sở th&iacute;ch. Tuy nhi&ecirc;n, để ph&aacute;t huy t&aacute;c dụng của tr&agrave; hoa c&uacute;c bạn n&ecirc;n ch&uacute; &yacute; đến thời điểm uống để đạt c&ocirc;ng dụng cao nhất.</p>\r\n\r\n<p>&ndash; Uống tr&agrave; hoa c&uacute;c sau c&aacute;c bữa ăn ch&iacute;nh: Nhiều người thưởng tr&agrave; hoa c&uacute;c sau bữa ăn chừng 20 ph&uacute;t. Th&oacute;i quen đ&oacute; ho&agrave;n to&agrave;n đ&uacute;ng đắn v&agrave; c&oacute; lợi bởi n&oacute; hỗ trợ ti&ecirc;u h&oacute;a tốt hơn, khi uống v&agrave;o bữa tối c&oacute; thể gi&uacute;p định t&acirc;m, an thần, tạo giấc ngủ s&acirc;u v&agrave; thức dậy khoan kho&aacute;i.</p>\r\n\r\n<p>&ndash; Uống tr&agrave; hoa c&uacute;c v&agrave;o c&aacute;c m&ugrave;a trong năm: Ri&ecirc;ng về c&aacute;c m&ugrave;a, bạn c&oacute; thể chọn lựa uống tr&agrave; hoa c&uacute;c quanh năm khi n&oacute; đều ph&aacute;t huy c&ocirc;ng dụng của m&igrave;nh. M&ugrave;a h&egrave; c&oacute; thể l&agrave;m m&aacute;t cơ thể, thanh nhiệt v&agrave; giải độc. M&ugrave;a đ&ocirc;ng uống tr&agrave; hoa c&uacute;c gi&uacute;p giữ ấm cơ thể, tạo độ ẩm cho da, l&agrave;m giảm vết nhăn do thời tiết.</p>', NULL, NULL, '🍃🍃𝟏𝟎 𝐭𝐚́𝐜 𝐝𝐮̣𝐧𝐠 𝐭𝐮𝐲𝐞̣̂𝐭 𝐯𝐨̛̀𝐢 𝐜𝐮̉𝐚 𝐭𝐫𝐚̀ 𝐡𝐨𝐚 𝐜𝐮́𝐜🍃🍃\r\n\r\nTrà hoa cúc – Thức uống thần kỳ cho sức khỏe người Việt....', 1, '2020-07-29 14:41:45', '2020-07-30 08:49:59'),
(4, 'Hướng dẫn thanh toán', 'huong-dan-thanh-toan', 8, 1, 'Blogs/article_1581935677_367.png', '<p><strong>C&aacute;c h&igrave;nh thức thanh to&aacute;n của FORGET ME NOT MART</strong></p>\r\n\r\n<p>Ngay sau khi qu&yacute; kh&aacute;ch h&agrave;ng đặt h&agrave;ng th&agrave;nh c&ocirc;ng một vấn đề kh&aacute;c m&agrave; c&aacute;c bạn đang quan t&acirc;m đ&oacute; ch&iacute;nh l&agrave; h&igrave;nh thức thanh to&aacute;n phải kh&ocirc;ng n&agrave;o? Nắm được t&acirc;m l&yacute; đ&oacute;, sau đ&acirc;y ch&uacute;ng t&ocirc;i xin ph&eacute;p được giới thiệu&nbsp;<strong>03 h&igrave;nh thức thanh to&aacute;n</strong>&nbsp;đang được &aacute;p dụng tại FORGET ME NOT MART.</p>\r\n\r\n<h4><strong>&nbsp;</strong></h4>\r\n\r\n<h4><strong>1. H&igrave;nh thức thứ nhất: Thanh to&aacute;n tiền mặt tại nh&agrave; khi nhận h&agrave;ng th&ocirc;ng qua h&igrave;nh thức chuyển ph&aacute;t nhanh, COD hay giao h&agrave;ng trực tuyến.</strong></h4>\r\n\r\n<p>Ngay sau khi nh&acirc;n vi&ecirc;n giao h&agrave;ng đến, kh&aacute;ch h&agrave;ng c&oacute; thể kiểm tra sản phẩm về h&igrave;nh thức đảm bảo c&oacute; đảm bảo hay kh&ocirc;ng. Nếu đảm bảo kh&aacute;ch h&agrave;ng nhận h&agrave;ng v&agrave; thanh to&aacute;n trực tiếp cho nh&acirc;n vi&ecirc;n giao h&agrave;ng theo gi&aacute; trị tiền tr&ecirc;n h&oacute;a đơn v&agrave; ph&iacute; vận chuyển (nếu c&oacute;).</p>\r\n\r\n<p>Ngo&agrave;i ra, kh&aacute;ch h&agrave;ng kh&ocirc;ng phải thanh to&aacute;n bất kỳ 1 chi ph&iacute; n&agrave;o kh&aacute;c.</p>\r\n\r\n<h4><strong>&nbsp;</strong></h4>\r\n\r\n<h4><strong>2. H&igrave;nh thức thứ hai: Chuyển khoản qua ng&acirc;n h&agrave;ng trong trường hợp h&agrave;ng h&oacute;a l&agrave;m qu&agrave; tặng qu&agrave; biếu.&nbsp;</strong></h4>\r\n\r\n<p>Trường hợp n&agrave;y &aacute;p dụng với đối tượng kh&aacute;ch h&agrave;ng muốn mua h&agrave;ng để l&agrave;m qu&agrave; tặng qu&agrave; biếu cho người th&acirc;n v&agrave; đồng nghiệp của m&igrave;nh. Kh&aacute;ch h&agrave;ng sẽ chuyển khoản trước cho FORGET ME NOT MART 100% gi&aacute; trị đơn h&agrave;ng v&agrave; ph&iacute; vận chuyển (nếu c&oacute;).</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Khi chuyển khoản, phần nội dung chuyển khoản bạn vui l&ograve;ng:<br />\r\n1.GHI R&Otilde; T&Ecirc;N FACEBOOK<br />\r\n2.số điện thoại<br />\r\nđể tiện cho việc đối chiếu bạn nh&eacute;</p>\r\n\r\n<p>C&aacute;c t&agrave;i khoản ng&acirc;n h&agrave;ng hiện tại của FORGET ME NOT MART như sau:</p>\r\n\r\n<h2><em><strong>T&agrave;i khoản ng&acirc;n h&agrave;ng Techcombank</strong></em></h2>\r\n\r\n<ul>\r\n	<li>Ng&acirc;n h&agrave;ng Techcombank:</li>\r\n	<li>19027382293017</li>\r\n	<li>chi nh&aacute;nh L&yacute; Th&aacute;i Tổ</li>\r\n	<li>Chủ t&agrave;i khoản: Trần Ngọc Anh</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><em>Sau khi qu&yacute; kh&aacute;ch chuyển khoản, Qu&yacute; kh&aacute;ch vui l&ograve;ng chụp lại bi&ecirc;n lai chuyển tiền, x&aacute;c nhận chuyển khoản th&agrave;nh c&ocirc;ng&nbsp;</em><em>v&agrave; li&ecirc;n hệ tới số Hotline&nbsp;<strong>0902293313</strong>&nbsp;để được hỗ trợ.&nbsp;</em></p>\r\n\r\n<h4><strong>&nbsp;</strong></h4>\r\n\r\n<h4><strong>3. H&igrave;nh thức thứ ba: Thanh to&aacute;n tiền mặt tại cơ sở của&nbsp;</strong>FORGET ME NOT MART</h4>\r\n\r\n<p>Trường hợp n&agrave;y &aacute;p dụng đối với kh&aacute;ch h&agrave;ng c&oacute; nhu cầu đến trực tiếp xem chất lượng của sản phẩm. Kh&aacute;ch h&agrave;ng đến trực tiếp cơ sở để mua h&agrave;ng v&agrave; thanh to&aacute;n trực tiếp bằng tiền mặt tại cơ sở.</p>\r\n\r\n<p><em>Để biết th&ecirc;m th&ocirc;ng tin chi tiết, Qu&yacute; kh&aacute;ch vui l&ograve;ng li&ecirc;n hệ trực tiếp với nh&acirc;n vi&ecirc;n tư vấn b&aacute;n h&agrave;ng hoặc li&ecirc;n hệ&nbsp;</em><strong><em>HOTLINE&nbsp;0902293313</em></strong><em>&nbsp;để được hỗ trợ. Xin tr&acirc;n trọng cảm ơn!</em></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h1><a href=\"https://www.beemart.vn/phan-nan-khieu-nai\">PH&Agrave;N N&Agrave;N &amp; KHIẾU NẠI</a></h1>\r\n\r\n<p>Ch&uacute;ng t&ocirc;i biết rằng một doanh nghiệp chỉ c&oacute; thể ph&aacute;t triển bền vững nếu mang lại gi&aacute; trị cho kh&aacute;ch h&agrave;ng, được ch&iacute;nh kh&aacute;ch h&agrave;ng thừa nhận gi&aacute; trị ấy.</p>\r\n\r\n<p>V&igrave; vậy FORGET ME NOT MART lu&ocirc;n lắng nghe v&agrave; tiếp thu mọi &nbsp;&yacute; kiến từ kh&aacute;ch h&agrave;ng. Nếu trong qu&aacute; tr&igrave;nh phục vụ, c&oacute; điểm n&agrave;o chưa chu đ&aacute;o để qu&yacute; kh&aacute;ch chưa h&agrave;i l&ograve;ng, rất mong qu&yacute; kh&aacute;ch phản hồi lại cho FORGET ME NOT&nbsp; MART để ch&uacute;ng t&ocirc;i c&oacute; thể phục vụ tốt hơn.</p>', NULL, NULL, 'Ngay sau khi quý khách hàng đặt hàng thành công một vấn đề khác mà các bạn đang quan tâm đó chính là hình thức thanh toán phải không nào? Nắm được tâm lý đó, sau đây chúng tôi xin phép được giới thiệu 03 hình thức thanh toán đang được áp dụng tại FORGET ME NOT MART....', 1, '2020-07-29 16:19:11', '2020-07-30 08:49:30'),
(7, '“TÔI KHÔNG BIẾT LOẠI TRÀ NÀO PHÙ HỢP VỚI TÔI”', '“toi-khong-biet-loai-tra-nao-phu-hop-voi-toi”', 5, 1, 'Blogs/106113078_1515137431989599_8603990580089223301_n_f588b9a3f84647cdb71e3c62d3319d28_grande.jpg', '<p>&ldquo;T&ocirc;i kh&ocirc;ng biết loại tr&agrave; n&agrave;o ph&ugrave; hợp với t&ocirc;i&rdquo;<br />\r\n☛ h&atilde;y để t&ocirc;i n&oacute;i cho bạn biết<br />\r\n-------------------<br />\r\nTr&agrave; c&oacute; nhiều chức năng d&agrave;nh cho sức khỏe. S&aacute;u loại tr&agrave; ch&iacute;nh c&oacute; nguồn gốc từ việc chế biến l&aacute; tươi của c&acirc;y tr&agrave;. Ch&uacute;ng c&oacute; c&aacute;c thuộc t&iacute;nh cơ bản tốt cho sức khỏe như nhau nhau.<br />\r\n---------------------<br />\r\nTuy nhi&ecirc;n, do nguy&ecirc;n liệu th&ocirc; kh&aacute;c nhau v&agrave; quy tr&igrave;nh kh&aacute;c nhau, s&aacute;u loại tr&agrave; ch&iacute;nh c&oacute; sự kh&aacute;c biệt r&otilde; r&agrave;ng về chất lượng v&agrave; th&agrave;nh phần chức năng. Do đ&oacute;, ảnh hưởng sức khỏe của c&aacute;c loại tr&agrave; kh&aacute;c nhau trở th&agrave;nh n&eacute;t đặc trưng<br />\r\n1. Tr&agrave; xanh:<br />\r\nTr&agrave; xanh c&oacute; nhiều t&aacute;c dụng kh&aacute;c nhau như tr&igrave; ho&atilde;n l&atilde;o h&oacute;a, l&agrave;m mới, l&agrave;m mới l&agrave;n da, l&agrave;m đẹp da, lợi tiểu v&agrave; mệt mỏi.<br />\r\nTr&agrave; xanh chứa chất chống oxy h&oacute;a mạnh mẽ v&agrave; vitamin C, c&oacute; thể loại bỏ c&aacute;c gốc tự do trong cơ thể v&agrave; tiết ra c&aacute;c hormone chống lại căng thẳng.<br />\r\nMột lượng nhỏ caffeine trong n&oacute; c&oacute; thể k&iacute;ch th&iacute;ch hệ thống trung t&acirc;m v&agrave; tiếp th&ecirc;m sinh lực cho tinh thần.</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000224227/file/106113078_1515137431989599_8603990580089223301_n_f588b9a3f84647cdb71e3c62d3319d28_grande.jpg\" /></p>\r\n\r\n<p>2. Tr&agrave; &Ocirc; long: Tr&agrave; giảm b&eacute;o v&agrave; giảm b&eacute;o<br />\r\nTr&agrave; oolong chứa hơn 450 th&agrave;nh phần h&oacute;a học hữu cơ v&agrave; hơn 40 nguy&ecirc;n tố kho&aacute;ng v&ocirc; cơ.<br />\r\nUống tr&agrave; &ocirc; long thường c&oacute; thể loại bỏ oxy hoạt động g&acirc;y hại cho sắc đẹp v&agrave; sức khỏe, n&oacute; cũng c&oacute; thể giảm b&eacute;o v&agrave; chống khối u.<br />\r\nSo với tr&agrave; đen v&agrave; tr&agrave; xanh, tr&agrave; &ocirc; long c&oacute; thể k&iacute;ch th&iacute;ch hoạt động của enzyme lipolytic tụy.<br />\r\nNgo&agrave;i việc giảm hấp thu thức ăn c&oacute; đường v&agrave; chất b&eacute;o, n&oacute; cũng c&oacute; thể th&uacute;c đẩy qu&aacute; tr&igrave;nh đốt ch&aacute;y chất b&eacute;o v&agrave; giảm sự t&iacute;ch tụ mỡ bụng.</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000224227/file/104872088_1515136665323009_6325290927955548638_n_6d78f07aa79f4214862b04451a304975_grande.jpg\" /></p>\r\n\r\n<p>3. Tr&agrave; trắng: C&oacute; thể hạ đường huyết<br />\r\nTr&agrave; trắng l&agrave; một loại tr&agrave; bắt buộc phải c&oacute; ở nhiều khu vực v&agrave;o m&ugrave;a h&egrave;, c&oacute; thể ngăn ngừa ung thư, say nắng, giải độc v&agrave; đau răng.<br />\r\nNgo&agrave;i c&aacute;c chất dinh dưỡng kh&aacute;c vốn c&oacute; trong tr&agrave;, tr&agrave; trắng c&ograve;n chứa c&aacute;c enzyme hoạt động cần thiết cho cơ thể để th&uacute;c đẩy c&acirc;n bằng lượng đường trong m&aacute;u.<br />\r\nTr&agrave; trắng c&oacute; t&aacute;c dụng đối với ba loại kh&aacute;ng thể (chống bức xạ, chống oxy h&oacute;a, chống khối u) v&agrave; ba hạ (hạ huyết &aacute;p, hạ mỡ m&aacute;u, hạ đường huyết), cũng như nu&ocirc;i dưỡng tim, nu&ocirc;i dưỡng gan, nu&ocirc;i dưỡng mắt, nu&ocirc;i dưỡng tinh thần. Chức năng cơ thể.</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000224227/file/104430427_1515136718656337_6495858920196047384_n_984f1e99c562483791f25e4d6e4f9c49_grande.jpg\" /></p>\r\n\r\n<p>4. Hồng tr&agrave;: Điều chỉnh l&aacute; l&aacute;ch v&agrave; dạ d&agrave;y<br />\r\nHồng tr&agrave; c&oacute; t&aacute;c dụng l&agrave;m ấm dạ d&agrave;y, l&agrave;m mới suy nghĩ, loại bỏ mệt mỏi, loại bỏ ph&ugrave; nề, chống ti&ecirc;u chảy, kh&aacute;ng khuẩn v&agrave; tăng cường khả năng miễn dịch.<br />\r\nHồng tr&agrave; c&oacute; t&iacute;nh chất nhẹ v&agrave; vị &ecirc;m dịu. Uống tr&agrave; đen thường xuy&ecirc;n với đường hoặc sữa kh&ocirc;ng chỉ c&oacute; thể l&agrave;m ấm dạ d&agrave;y m&agrave; c&ograve;n giảm vi&ecirc;m v&agrave; bảo vệ ni&ecirc;m mạc dạ d&agrave;y. N&oacute; cũng c&oacute; t&aacute;c dụng nhất định trong điều trị lo&eacute;t.<br />\r\nHồng tr&agrave; gi&uacute;p đường ti&ecirc;u h&oacute;a, th&uacute;c đẩy sự th&egrave;m ăn, c&oacute; thể ngăn ngừa hiệu quả bệnh nhồi m&aacute;u cơ tim, tăng cường chức năng của cơ tim, hạ đường huyết v&agrave; tăng huyết &aacute;p, ngăn ngừa s&acirc;u răng v&agrave; ngộ độc thực phẩm.</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000224227/file/104890374_1515136755323000_5994767695482445168_n_84babded126b42ffa91b93c99be7d239_grande.jpg\" /></p>\r\n\r\n<p>5. Tr&agrave; v&agrave;ng:<br />\r\nTr&agrave; v&agrave;ng thuộc về loại tr&agrave; l&ecirc;n men. Sản xuất tr&agrave; v&agrave;ng tương tự như tr&agrave; xanh.<br />\r\nQu&aacute; tr&igrave;nh nh&agrave;m ch&aacute;n n&agrave;y l&agrave; t&iacute;nh năng ch&iacute;nh của phương ph&aacute;p sản xuất tr&agrave; v&agrave;ng, v&agrave; n&oacute; cũng l&agrave; điểm kh&aacute;c biệt cơ bản của tr&agrave; xanh.<br />\r\nTr&agrave; v&agrave;ng rất gi&agrave;u chất dinh dưỡng phong ph&uacute; như polyphenol trong tr&agrave;, axit amin, đường h&ograve;a tan v&agrave; vitamin, rất c&oacute; lợi cho cơ thể con người.</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000224227/file/105571678_1515136811989661_3147572879712633764_n_1b8751de228a4c50a3b59dc303514468_grande.jpg\" /></p>\r\n\r\n<p>6.Tr&agrave; đen:<br />\r\nUống tr&agrave; đen v&agrave;o m&ugrave;a h&egrave; kh&ocirc;ng chỉ c&oacute; thể l&agrave;m giảm nhiệt, giảm kh&aacute;t, lợi tiểu v&agrave; giải độc, m&agrave; c&ograve;n loại bỏ dầu mỡ v&agrave; ph&acirc;n hủy chất b&eacute;o.<br />\r\nC&aacute;c flavonoid, catechin v&agrave; vitamin C v&agrave; E trong tr&agrave; đen c&oacute; thể đ&oacute;ng vai tr&ograve; chống oxy h&oacute;a. Ngo&agrave;i ra, theanine trong tr&agrave; đen c&oacute; t&aacute;c dụng hạ huyết &aacute;p tốt.</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000224227/file/105707211_1515136855322990_1074114304639130480_n_1e61df2d035e434d96d6f3bc5402475a_grande.jpg\" /></p>\r\n\r\n<p>T&aacute;c dụng của c&aacute;c loại tr&agrave; nổi tiếng kh&aacute;c nhau:</p>\r\n\r\n<p>****Tr&agrave; thiết quan &acirc;m<br />\r\nNgo&agrave;i chức năng chăm s&oacute;c sức khỏe n&oacute;i chung của tr&agrave;, n&oacute; c&ograve;n c&oacute; t&aacute;c dụng chống l&atilde;o h&oacute;a, chống ung thư, chống xơ cứng động mạch, ph&ograve;ng ngừa v&agrave; điều trị bệnh tiểu đường, giảm c&acirc;n v&agrave; tập thể h&igrave;nh, hạ hỏa, ti&ecirc;u chảy.</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000224227/file/105495875_1515136905322985_558853079199474106_n_5b203de184544889900314538c90b3ad_grande.jpg\" /></p>\r\n\r\n<p>****Tr&agrave; Vũ Di Nham:<br />\r\nChứa nhiều th&agrave;nh phần h&oacute;a học v&agrave; caffeine, polyphenol trong tr&agrave;, lipopolysacarit, v.v ... T&iacute;nh chất dược l&yacute; của n&oacute; đặc biệt quan trọng.&nbsp;</p>\r\n\r\n<p>N&oacute; kh&ocirc;ng chỉ c&oacute; thể l&agrave;m mới t&acirc;m tr&iacute; của bạn, cải thiện thị lực, cải thiện sức khỏe của bạn, giảm lo lắng, l&agrave;m dịu cơn kh&aacute;t, khử tr&ugrave;ng, l&agrave;m sạch, lợi tiểu, giảm nhiệt v&agrave; tỉnh t&aacute;o.</p>\r\n\r\n<p>Ngo&agrave;i ra c&ograve;n c&oacute; t&aacute;c dụng chống tăng huyết &aacute;p, giảm c&acirc;n, chống bức xạ, chống ung thư, chống l&atilde;o h&oacute;a v&agrave; c&aacute;c t&aacute;c dụng k&eacute;o d&agrave;i tuổi thọ kh&aacute;c.</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000224227/file/104868759_1515137035322972_5184036918094104103_n_9a12ba90e2fb42e9adfc8ca1808c8a7f_grande.jpg\" /></p>\r\n\r\n<p>*****Tr&agrave; Long Tĩnh :<br />\r\nC&oacute; thể thanh lọc mạch m&aacute;u, ngăn ngừa đột quỵ v&agrave; bệnh tim<br />\r\n*****Tr&agrave; B&iacute;ch Loa Xu&acirc;n:<br />\r\nThuộc loại tr&agrave; xanh c&oacute; t&aacute;c dụng chống l&atilde;o h&oacute;a, kh&aacute;ng khuẩn, chống ung thư v&agrave; giảm mỡ m&aacute;u, giảm b&eacute;o v&agrave; giảm mỡ, chống s&acirc;u răng, h&ocirc;i miệng, chống ung thư, l&agrave;m trắng v&agrave; chống tia cực t&iacute;m.<br />\r\nN&oacute; kh&ocirc;ng chỉ c&oacute; thể l&agrave;m mới t&acirc;m tr&iacute; của bạn, cải thiện thị lực, cải thiện sức khỏe của bạn, giảm lo lắng, l&agrave;m dịu cơn kh&aacute;t, khử tr&ugrave;ng, l&agrave;m sạch, lợi tiểu, giảm nhiệt v&agrave; tỉnh t&aacute;o.<br />\r\nNgo&agrave;i ra c&ograve;n c&oacute; t&aacute;c dụng chống tăng huyết &aacute;p, giảm c&acirc;n, chống bức xạ, chống ung thư, chống l&atilde;o h&oacute;a v&agrave; c&aacute;c t&aacute;c dụng k&eacute;o d&agrave;i tuổi thọ kh&aacute;c.<br />\r\n*****Tr&agrave; Ho&agrave;ng Sơn Mao Phong<br />\r\nC&oacute; một số lợi &iacute;ch nhất định cho việc l&agrave;m cạn kiệt lưu th&ocirc;ng m&aacute;u, giảm cholesterol, tăng mao mạch đơn v&agrave; tăng cường chống đ&ocirc;ng m&aacute;u.<br />\r\nĐồng thời, Ho&agrave;ng Sơn Mao Phong cũng c&oacute; thể đ&oacute;ng vai tr&ograve; ngăn ngừa v&agrave; chống ung thư.</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000224227/file/106597672_1515137125322963_6722285263666765895_n_6d8b1cfcdce24ad6a87650e494f27c0c_grande.jpg\" /></p>\r\n\r\n<p>*****Tr&agrave; xanh Lư Sơn V&acirc;n Vụ<br />\r\nC&oacute; s&aacute;u t&aacute;c dụng ch&iacute;nh l&agrave; hạ lipid m&aacute;u, giảm c&acirc;n, hạ huyết &aacute;p v&agrave; chống xơ cứng động mạch.<br />\r\nỨc chế sản xuất tế b&agrave;o khối u, nu&ocirc;i dưỡng dạ d&agrave;y, bảo vệ dạ d&agrave;y, củng cố răng v&agrave; răng, chống vi&ecirc;m, khử tr&ugrave;ng, kiết lỵ, chống l&atilde;o h&oacute;a v&agrave; c&aacute;c t&aacute;c dụng kh&aacute;c.<br />\r\n*****Tr&agrave; Lục An<br />\r\nC&oacute; lợi cho việc ngăn ngừa v&agrave; ngăn chặn ung thư, c&oacute; lợi cho việc điều trị chăm s&oacute;c sức khỏe c&aacute;c bệnh tim mạch, c&oacute; lợi cho việc giảm c&acirc;n v&agrave; l&agrave;m sạch chất b&eacute;o đường ruột, c&oacute; t&aacute;c dụng l&agrave;m sạch nhiệt v&agrave; kh&ocirc;, giải độc v&agrave; l&agrave;m đẹp</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000224227/file/104952266_1515137181989624_8467706366318954837_n_100e609589de4088971de20f7fae1537_grande.jpg\" /></p>\r\n\r\n<p>*****Tr&agrave; Mao Ti&ecirc;m T&iacute;n Dương<br />\r\nKh&ocirc;ng chỉ c&oacute; h&agrave;m lượng chất dinh dưỡng cao, m&agrave; c&ograve;n kh&ocirc;ng c&oacute; tinh thần minh mẫn, tản nhiệt v&agrave; l&agrave;m dịu cơn kh&aacute;t, phiền h&agrave; v&agrave; sảng kho&aacute;i, ti&ecirc;u h&oacute;a v&agrave; l&aacute;ch.<br />\r\n*****Tr&agrave; Th&aacute;i B&igrave;nh Hầu Kh&ocirc;i<br />\r\nBảo vệ bức xạ, hạ huyết &aacute;p, ngăn ngừa s&acirc;u răng, trị h&ocirc;i miệng.</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000224227/file/79303688_1515137221989620_4094120818882606229_n_137e33d690364d069213896874905461_grande.jpg\" /></p>\r\n\r\n<p>*****Tr&agrave; Qu&acirc;n Sơn Ng&acirc;n Ch&acirc;m<br />\r\nC&oacute; lợi &iacute;ch sức khỏe của tr&agrave; n&oacute;i chung.<br />\r\nGiảm mệt mỏi, dễ ti&ecirc;u h&oacute;a, giải độc v&agrave; l&agrave;m dịu cơn kh&aacute;t, thị lực lợi tiểu, tăng dinh dưỡng.<br />\r\nN&oacute; cũng c&oacute; t&aacute;c dụng diệt khuẩn, chống oxy h&oacute;a, chống l&atilde;o h&oacute;a v&agrave; ngăn ngừa ung thư.<br />\r\n*****Tr&agrave; Kỳ M&ocirc;n Hồng Tr&agrave;<br />\r\nC&oacute; thể gi&uacute;p ti&ecirc;u h&oacute;a đường ti&ecirc;u h&oacute;a, th&uacute;c đẩy sự th&egrave;m ăn, lợi tiểu, loại bỏ ph&ugrave; nề, v&agrave; tăng cường chức năng cơ tim.</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000224227/file/106363699_1515137348656274_4164640128900286940_n_058f8f9616a94572bc30aa5332220753_grande.jpg\" /></p>\r\n\r\n<p>*****Tr&agrave; trắng Cống Mi<br />\r\nĐược l&agrave;m từ kỹ thuật chế biến tr&agrave; trắng truyền thống bằng c&aacute;ch sử dụng l&aacute; b&uacute;p ph&ugrave; hợp với c&aacute;c giống tr&agrave; trắng.<br />\r\nH&igrave;nh dạng của chồi v&agrave; l&aacute; được ph&acirc;n nh&aacute;nh v&agrave; c&oacute; một tr&aacute;i tim. S&uacute;p tr&agrave; c&oacute; vị tươi m&aacute;t v&agrave; ngọt ng&agrave;o khi nếm, hương thơm tươi v&agrave; tinh khiết.<br />\r\nTr&agrave; trắng c&oacute; t&aacute;c dụng đối với ba loại kh&aacute;ng thể (chống bức xạ, chống oxy h&oacute;a, chống khối u) v&agrave; ba giọt (hạ huyết &aacute;p, hạ mỡ m&aacute;u, hạ đường huyết), cũng như nu&ocirc;i dưỡng tim, nu&ocirc;i dưỡng gan, nu&ocirc;i dưỡng mắt, nu&ocirc;i dưỡng tinh thần, nu&ocirc;i dưỡng tinh thần. Chức năng cơ thể.</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000224227/file/106414430_1515137395322936_778168989352126567_n_7050edc828af453c895b686db22427b9_grande.jpg\" /></p>\r\n\r\n<p>C&oacute; rất nhiều lợi &iacute;ch của tr&agrave;. Chỉ bằng c&aacute;ch hiểu c&aacute;c chức năng sức khỏe c&oacute; lợi nhất của từng loại tr&agrave;, bạn c&oacute; thể chọn loại tr&agrave; ph&ugrave; hợp với thể chất của m&igrave;nh.<br />\r\nNguồn: ST</p>', NULL, NULL, '“Tôi không biết loại trà nào phù hợp với tôi”\r\n☛ hãy để tôi nói cho bạn biết', 1, '2020-07-29 17:43:03', '2020-07-30 08:51:23'),
(9, 'Chất liệu ấm trà', 'chat-lieu-am-tra', 9, 1, 'Blogs/0c1d54eaaa0b4f55161a_5913908d73394f18b0c4bd3835debc65_9abe850bf051432a9dad3869f15afcd6.jpg', '<h3>Chất liệu ấm tr&agrave;</h3>\r\n\r\n<p>Chất liệu Do h&agrave;m lượng sắt cao, ấm tr&agrave; tử sa thường xuất hiện m&agrave;u n&acirc;u đỏ hoặc m&agrave;u t&iacute;m thấm. V&agrave; đất tử sa c&oacute; t&iacute;nh d&iacute;nh kết cao, điều n&agrave;y khiến cho việc tạo h&igrave;nh ấm tr&agrave; ho&agrave;n hảo rất kh&oacute; khăn. Do đ&oacute;, thậm ch&iacute; nhiều sản phẩm đ&atilde; ho&agrave;n th&agrave;nh vẫn c&oacute; số lỗi.</p>\r\n\r\n<p>Đặc biệt, một ấm tr&agrave; tử sa được nu&ocirc;i dưỡng tốt sẽ trở n&ecirc;n mịn m&agrave;ng v&agrave; b&oacute;ng bẩy hơn khi thời gian tr&ocirc;i qua. Kh&ocirc;ng kh&iacute; rất nhỏ giữa c&aacute;c lớp đấy n&agrave;y l&agrave;m cho ấm tr&agrave; c&oacute; thể thở v&agrave; lưu giữ hương thơm của tr&agrave;. V&igrave; vậy, ch&uacute;ng t&ocirc;i khuy&ecirc;n bạn n&ecirc;n pha một loại tr&agrave; với một ấm tr&agrave;.</p>\r\n\r\n<p>Lưu &yacute;: L&agrave;m ấm ấm tr&agrave; với nước 40oC &ndash; 50oC trước khi đổ nước s&ocirc;i v&agrave;o đ&oacute;, đặc biệt l&agrave; trong m&ugrave;a đ&ocirc;ng lạnh. Bởi v&igrave; Zhuni c&oacute; tỷ lệ co thắt cao v&agrave; kh&ocirc;ng thể chống lại sự thay đổi nhiệt độ tức thời. Ấm tr&agrave; dễ vỡ, xin vui l&ograve;ng xử l&yacute; cẩn thận. Nguồn Gốc Quận Nghi Hưng, thủ đ&ocirc; gốm của Trung Quốc, c&oacute; một lịch sử l&agrave;m gốm rất l&acirc;u đời trong khoảng 6500 năm. Nghi Hưng tự h&agrave;o c&oacute; nguồn t&agrave;i nguy&ecirc;n dồi d&agrave;o của, tr&agrave;, tre v&agrave; than.</p>\r\n\r\n<p>Tất cả đều l&agrave; cơ sở t&agrave;i nguy&ecirc;n quan trọng để l&agrave;m gốm. C&aacute;c sản phẩm l&agrave;m từ đất tử sa Nghi Hưng đ&atilde; được trao nhiều giải thưởng cả trong v&agrave; ngo&agrave;i nước. Một số t&aacute;c phẩm xuất sắc đ&atilde; được trao tặng l&agrave;m qu&agrave; tặng quốc gia trong truyền th&ocirc;ng quốc tế.</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<img alt=\"\" src=\"http://localhost:81/shop_teaa/public/uploads/Blogs/0c1d54eaaa0b4f55161a_5913908d73394f18b0c4bd3835debc65_9abe850bf051432a9dad3869f15afcd6.jpg\" style=\"height:175px; width:250px\" /></p>', NULL, NULL, 'Chất liệu Do hàm lượng sắt cao, ấm trà tử sa thường xuất hiện màu nâu đỏ hoặc màu tím thấm. Và đất tử sa có tính dính kết cao, điều này khiến cho việc tạo hình ấm trà hoàn hảo rất khó khăn. Do đó, thậm chí nhiều sản phẩm đã hoàn thành vẫn có số lỗi.', 1, '2020-07-29 18:10:48', '2020-07-29 18:10:48'),
(10, 'admin', 'admin', 5, 1, 'Banners/banner1.jpg', '<p>ffffffff</p>', NULL, NULL, 'eee', 1, '2020-07-29 19:46:03', '2020-07-30 08:51:43');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1 là Hiện, 0 là Ẩn',
  `type` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1 là Danh mục sản phẩm,0 là Danh mục tin tức',
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `status`, `type`, `parent_id`, `created_at`, `updated_at`) VALUES
(1, 'Trà hoa', 'tra-hoa', 1, 1, 0, '2020-07-23 19:45:25', '2020-07-26 15:51:25'),
(2, 'Trà mix', 'tra-mix', 1, 1, 1, '2020-07-23 19:45:38', '2020-07-23 19:45:38'),
(3, 'Trà mộc', 'tra-moc', 1, 1, 1, '2020-07-23 19:45:54', '2020-07-23 19:45:54'),
(4, 'Dụng cụ pha trà', 'dung-cu-pha-tra', 1, 1, 0, '2020-07-23 19:46:02', '2020-07-26 15:51:33'),
(5, 'Tin tức mới', 'tin-tuc-moi', 1, 0, 0, '2020-07-23 19:46:14', '2020-07-26 15:51:40'),
(6, 'Nguyên liệu nấu chè', 'nguyen-lieu-nau-che', 1, 1, 0, '2020-07-23 19:46:23', '2020-07-26 15:51:47'),
(7, 'Dụng cụ', 'dung-cu', 1, 1, 4, '2020-07-26 19:17:57', '2020-07-26 19:17:57'),
(8, 'Chính sách thanh toán', 'chinh-sach-thanh-toan', 1, 0, 0, '2020-07-29 16:16:29', '2020-07-29 16:16:29'),
(9, 'Đồ gốm', 'do-gom', 1, 0, 0, '2020-07-29 18:04:25', '2020-07-29 18:04:25'),
(10, 'thuy', 'thuy', 1, 0, 8, '2020-07-29 20:44:27', '2020-07-29 20:44:27');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `configs`
--

CREATE TABLE `configs` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` tinyint(4) NOT NULL DEFAULT 1,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1 là Hiện, 0 là Ẩn',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `configs`
--

INSERT INTO `configs` (`id`, `name`, `slug`, `value`, `type`, `status`, `created_at`, `updated_at`) VALUES
(13, 'Ads1', 'ads1', 'Configs/d84a572ea363593d0072-533x800.jpg', 2, 1, '2020-08-01 20:28:38', '2020-08-01 20:28:38'),
(14, 'Ads 2', 'ads-2', 'Configs/a8e5c31b3756cd089447.jpg', 2, 1, '2020-08-01 20:28:55', '2020-08-01 20:28:55'),
(16, 'Ads 3', 'ads-3', 'Configs/69efb216465bbc05e54a.jpg', 2, 1, '2020-08-01 20:31:28', '2020-08-01 20:31:28'),
(18, 'gmap', 'gmap', '<iframe                                             src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3724.725809555813!2d105.80887841388765!3d21.00362539401416!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135ac996d7831ff%3A0xfd2eed2d5abbd7ab!2zUXVhbiBOaMOibiwgSG_DoG4gS2nhur9tLCBIw6AgTuG7mWksIFZp4buHdCBOYW0!5e0!3m2!1svi!2s!4v1596373920297!5m2!1svi!2s\"                                             width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0;\" allowfullscreen=\"\"                                             aria-hidden=\"false\" tabindex=\"0\"></iframe>', 3, 1, '2020-08-02 06:47:33', '2020-08-02 08:29:27'),
(24, 'worktime', 'worktime', 'Monday – Saturday: 08AM – 22PM', 3, 1, '2020-08-02 10:19:02', '2020-08-02 10:19:02'),
(26, 'Logo', 'logo', 'Configs/logo_03.png', 1, 1, '2020-08-02 21:17:53', '2020-08-02 21:17:53'),
(27, 'Logo footer', 'logo-footer', 'Configs/logo_footer.png', 1, 1, '2020-08-02 21:20:21', '2020-08-02 21:20:21'),
(28, 'address', 'address', 'Số 15, ngõ 52 phố Quan Nhân, Hà Nội', 3, 1, NULL, '2020-08-02 23:34:54'),
(29, 'phone', 'phone', '0902.293.313', 3, 1, NULL, '2020-08-03 00:23:08'),
(30, 'email', 'email', 'congtyxnklt@gmail.com', 3, 1, NULL, '2020-08-03 00:19:29'),
(33, 'intro', 'intro', NULL, 3, 1, '2020-08-02 23:04:11', '2020-08-03 00:23:40');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `feedback_pros`
--

CREATE TABLE `feedback_pros` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_product` int(10) UNSIGNED NOT NULL,
  `id_admin` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `id_user` int(10) UNSIGNED NOT NULL,
  `star` int(11) NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1 là Hiện, 0 là Ẩn',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `feedback_pros`
--

INSERT INTO `feedback_pros` (`id`, `id_product`, `id_admin`, `id_user`, `star`, `content`, `parent_id`, `status`, `created_at`, `updated_at`) VALUES
(6, 1, 0, 10, 1, 'n;klsng;', 0, 1, '2020-07-27 17:36:49', '2020-08-03 07:33:17'),
(7, 2, 0, 10, 3, 'bnflnasf\'', 0, 0, '2020-07-27 17:37:20', '2020-08-03 07:33:13'),
(8, 1, 0, 9, 4, 'ơawidfhpa]d.', 0, 1, '2020-07-27 17:43:18', '2020-07-27 17:43:18'),
(9, 2, 0, 9, 5, 'bkbnlknblknblnbnkl', 0, 1, '2020-07-27 17:43:43', '2020-07-27 17:43:43');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `img_pros`
--

CREATE TABLE `img_pros` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_product` int(10) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `img_pros`
--

INSERT INTO `img_pros` (`id`, `id_product`, `image`, `created_at`, `updated_at`) VALUES
(1, 1, 'Products/19-800x804.jpg', '2020-07-23 19:58:57', '2020-07-23 19:58:57'),
(2, 1, 'Products/102945155_1975409749258047_5691047304813554012_n.jpg', '2020-07-23 19:58:57', '2020-07-23 19:58:57'),
(3, 1, 'Products/0e3ae07a19b7e4e9bda6-800x805.jpg', '2020-07-23 19:58:57', '2020-07-23 19:58:57'),
(4, 2, 'Products/91567588_1906252292840460_8245594462445633536_n-800x793.jpg', '2020-07-23 20:05:47', '2020-07-23 20:05:47'),
(5, 2, 'Products/91351666_1906252326173790_5397366108166553600_n-800x802.jpg', '2020-07-23 20:05:47', '2020-07-23 20:05:47'),
(6, 2, 'Products/91323546_1906252249507131_5164058446651195392_n-800x523.jpg', '2020-07-23 20:05:47', '2020-07-23 20:05:47'),
(7, 3, 'Products/92244655_1913382935460729_4601580832258260992_n-800x796.jpg', '2020-07-23 20:15:32', '2020-07-23 20:15:32'),
(8, 3, 'Products/92243745_1913382982127391_4361766729081159680_n-800x803%20(1).jpg', '2020-07-23 20:15:32', '2020-07-23 20:15:32'),
(9, 3, 'Products/92243399_1913382948794061_8034960796574285824_n-800x633.jpg', '2020-07-23 20:15:32', '2020-07-23 20:15:32'),
(10, 4, 'Products/92244655_1913382935460729_4601580832258260992_n-800x796.jpg', '2020-07-25 01:16:04', '2020-07-25 01:16:04'),
(11, 4, 'Products/92243745_1913382982127391_4361766729081159680_n-800x803%20(1).jpg', '2020-07-25 01:16:05', '2020-07-25 01:16:05'),
(12, 4, 'Products/92243399_1913382948794061_8034960796574285824_n-800x633.jpg', '2020-07-25 01:16:05', '2020-07-25 01:16:05'),
(13, 5, 'Products/c%E1%BB%8F-ng%E1%BB%8Dt-2.jpg', '2020-07-25 01:22:54', '2020-07-25 01:22:54'),
(14, 5, 'Products/94385994_1197973197201364_5222489015697014784_n-800x797.jpg', '2020-07-25 01:22:54', '2020-07-25 01:22:54'),
(15, 5, 'Products/94362630_1934385620027127_322923528535932928_n-1-800x800.jpg', '2020-07-25 01:22:54', '2020-07-25 01:22:54'),
(21, 7, 'Products/2.jpg', '2020-07-25 19:58:06', '2020-07-25 19:58:06'),
(22, 7, 'Products/1e97074d9f3662683b27.jpg', '2020-07-25 19:58:06', '2020-07-25 19:58:06'),
(23, 6, 'Products/c%E1%BB%8F-ng%E1%BB%8Dt-2.jpg', '2020-08-03 04:42:42', '2020-08-03 04:42:42'),
(24, 6, 'Products/94385994_1197973197201364_5222489015697014784_n-800x797.jpg', '2020-08-03 04:42:43', '2020-08-03 04:42:43'),
(25, 6, 'Products/94362630_1934385620027127_322923528535932928_n-1-800x800.jpg', '2020-08-03 04:42:43', '2020-08-03 04:42:43');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(65, '2014_10_12_000000_create_users_table', 1),
(66, '2014_10_12_100000_create_password_resets_table', 1),
(67, '2019_08_19_000000_create_failed_jobs_table', 1),
(68, '2020_06_30_032702_create_categories_table', 1),
(69, '2020_06_30_032808_create_attrs_table', 1),
(70, '2020_06_30_033303_create_admins_table', 1),
(71, '2020_06_30_033340_create_blogs_table', 1),
(72, '2020_06_30_033346_create_banners_table', 1),
(73, '2020_06_30_033354_create_configs_table', 1),
(74, '2020_07_16_163415_create_products_table', 1),
(75, '2020_07_16_164157_create_product_details_table', 1),
(76, '2020_07_16_165740_create_img_pros__table', 1),
(77, '2020_07_16_165846_create_feedback_pros_table', 1),
(78, '2020_07_16_170036_create_wishlists_table', 1),
(79, '2020_07_16_170847_create_orders_table', 1),
(80, '2020_07_16_170958_create_order_details_table', 1),
(81, '2014_10_12_000000_create_users_table', 1),
(82, '2014_10_12_100000_create_password_resets_table', 1),
(83, '2019_08_19_000000_create_failed_jobs_table', 1),
(84, '2020_06_30_032702_create_categories_table', 1),
(85, '2020_06_30_032808_create_attrs_table', 1),
(86, '2020_06_30_033303_create_admins_table', 1),
(87, '2020_06_30_033340_create_blogs_table', 1),
(88, '2020_06_30_033346_create_banners_table', 1),
(89, '2020_06_30_033354_create_configs_table', 1),
(90, '2020_07_16_163415_create_products_table', 1),
(91, '2020_07_16_164157_create_product_details_table', 1),
(92, '2020_07_16_165740_create_img_pros__table', 1),
(93, '2020_07_16_165846_create_feedback_pros_table', 1),
(94, '2020_07_16_170036_create_wishlists_table', 1),
(95, '2020_07_16_170847_create_orders_table', 1),
(96, '2020_07_16_170958_create_order_details_table', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_user` int(10) UNSIGNED NOT NULL,
  `total_price` double(16,2) NOT NULL,
  `address_ship` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1 là Hiện, 0 là Ẩn',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id`, `id_user`, `total_price`, `address_ship`, `note`, `status`, `created_at`, `updated_at`) VALUES
(7, 10, 475550.00, 'Phu Cuong, Soc Son, Ha Noi', NULL, 0, '2020-08-03 14:06:47', '2020-08-03 14:06:47'),
(8, 10, 475550.00, 'Phu Cuong, Soc Son, Ha Noi', NULL, 0, '2020-08-03 14:07:46', '2020-08-03 14:07:46'),
(9, 10, 170000.00, 'Phu Cuong, Soc Son, Ha Noi', NULL, 0, '2020-08-03 14:08:51', '2020-08-03 14:08:51'),
(10, 13, 277520.00, 'Hà Nội', NULL, 0, '2020-08-03 16:38:44', '2020-08-03 16:38:44');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_details`
--

CREATE TABLE `order_details` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_order` int(10) UNSIGNED NOT NULL,
  `id_pro_detail` int(10) UNSIGNED NOT NULL,
  `price` double(16,2) NOT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `order_details`
--

INSERT INTO `order_details` (`id`, `id_order`, `id_pro_detail`, `price`, `quantity`, `created_at`, `updated_at`) VALUES
(1, 8, 3, 150000.00, 2, '2020-08-03 14:07:46', '2020-08-03 14:07:46'),
(2, 8, 5, 155550.00, 1, '2020-08-03 14:07:46', '2020-08-03 14:07:46'),
(3, 9, 3, 150000.00, 1, '2020-08-03 14:08:51', '2020-08-03 14:08:51'),
(4, 10, 1, 107520.00, 1, '2020-08-03 16:38:44', '2020-08-03 16:38:44'),
(5, 10, 3, 150000.00, 1, '2020-08-03 16:38:44', '2020-08-03 16:38:44');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sku` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_cate` int(10) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keyword` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_desc` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `featured` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1 là Hiện, 0 là Ẩn',
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1 là Hiện, 0 là Ẩn',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `name`, `slug`, `sku`, `id_cate`, `image`, `description`, `meta_title`, `meta_keyword`, `meta_desc`, `featured`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Trà Ngọt Ngào Xuân Sắc', 'tra-ngot-ngao-xuan-sac', 'TNNXS508', 2, 'Products/13a86eb1957c6822316d-800x800.jpg', '<p>Tr&agrave; &ldquo; 𝓝𝓰𝓸̣𝓽 𝓝𝓰𝓪̀𝓸 𝓧𝓾𝓪̂𝓷 𝓢𝓪̆́𝓬 &rdquo; : đ&uacute;ng với t&ecirc;n gọi tr&agrave; 𝑐𝑜́ 𝑣𝑖̣ 𝑛𝑔𝑜̣𝑡 𝑛ℎ𝑢̛𝑛𝑔 𝑘ℎ𝑜̂𝑛𝑔 𝑏𝑒́𝑜, 𝑚𝑢̀𝑖 𝑡ℎ𝑜̛𝑚 𝑚𝑎́𝑡 𝑐𝑢̉𝑎 𝐻𝑜𝑎 𝐻𝑜̂̀𝑛𝑔, 𝑣𝑖̣ 𝑛𝑔𝑜̣𝑡 𝑐𝑢̉𝑎 𝐷𝑎̂𝑢 𝑇𝑎̆̀𝑚, Đ𝑢̛𝑜̛̀𝑛𝑔 𝑛𝑎̂𝑢, 𝑇𝑎́𝑜 Đ𝑜̉, 𝐿𝑜𝑛𝑔 𝑁ℎ𝑎̃𝑛, 𝐾𝑦̉ 𝑇𝑢̛̉ 𝑣𝑎̀ 𝑞𝑢𝑎̉ 𝑁ℎ𝑜 𝑘ℎ𝑜̂.</p>\r\n\r\n<p>𝑻𝒓𝒂̀ 𝒄𝒐́ 𝒕𝒂́𝒄 𝒅𝒖̣𝒏𝒈 𝒄𝒖𝒏𝒈 𝒄𝒂̂́𝒑 𝒗𝒊𝒕𝒂𝒎𝒊𝒏 𝒄𝒉𝒐 𝒄𝒐̛ 𝒕𝒉𝒆̂̉ 𝒎𝒐̂̃𝒊 𝒏𝒈𝒂̀𝒚; 𝒃𝒐̂̉ 𝒔𝒖𝒏𝒈 𝒗𝒊𝒕𝒂𝒎𝒊𝒏, 𝒂𝒙𝒊𝒕 𝒂𝒎𝒊𝒏, 𝒉𝒖𝒎𝒆𝒏𝒕𝒐𝒔, 𝒌𝒉𝒐𝒂́𝒏𝒈 𝒄𝒉𝒂̂́𝒕, 𝒓𝒆𝒔𝒗𝒆𝒓𝒂𝒕𝒓𝒐𝒍, 𝒂𝒏𝒕𝒉𝒐𝒄𝒚𝒂𝒏𝒊𝒏&hellip; 𝒈𝒊𝒖́𝒑 𝒄𝒉𝒐 𝒄𝒐̛ 𝒕𝒉𝒆̂̉ 𝒌𝒉𝒐̉𝒆 𝒎𝒂̣𝒏𝒉 𝒉𝒐̛𝒏, 𝒄𝒉𝒐̂́𝒏𝒈 𝒍𝒂̃𝒐 𝒉𝒐́𝒂, 𝒍𝒂̀𝒎 𝒎𝒐̛̀ 𝒗𝒆̂́𝒕 𝒏𝒉𝒂̆𝒏.</p>\r\n\r\n<p>Tr&agrave; 𝓝𝓰𝓸̣𝓽 𝓝𝓰𝓪̀𝓸 𝓧𝓾𝓪̂𝓷 𝓢𝓪̆́𝓬 l&agrave; sự kết hợp của 8 loại nguy&ecirc;n liệu: Đường n&acirc;u, Gừng Gi&agrave;, D&acirc;u Tằm, Kỷ Tử, T&aacute;o đỏ, Hồng H&agrave;n, Long nh&atilde;n, quả nho kh&ocirc;.</p>\r\n\r\n<p>&nbsp;𝑲𝒚̉ 𝑻𝒖̛̉ : C&acirc;u kỷ tử được biết đến như l&agrave; c&acirc;y k&eacute;o d&agrave;i tuổi thọ từ thời cổ đại. Trong thời Chiến Quốc, truyền thuyết về c&acirc;y kỷ tử c&oacute; thể k&eacute;o d&agrave;i tuổi thọ, dưỡng nhan được lan truyền. Truyền thuyết thời Bắc Tống, một vị đại nh&acirc;n được lệnh rời Bắc Kinh đi c&ocirc;ng vụ đến Tứ Xuy&ecirc;n. Tr&ecirc;n đường đi, &ocirc;ng ta thấy một c&ocirc; g&aacute;i dung nhan đoan trang, m&aacute;i t&oacute;c mượt m&agrave;, chừng 17 tuổi. Đại nh&acirc;n t&ograve; m&ograve; hỏi: &ldquo;Năm nay n&agrave;ng bao nhi&ecirc;u tuổi?&rdquo;. C&ocirc; g&aacute;i trả lời: &ldquo;Năm nay t&ocirc;i 372 tuổi!&rdquo;. Sau khi nghe, đại nh&acirc;n ngạc nhi&ecirc;n hơn v&agrave; hỏi: &ldquo;L&agrave;m thế n&agrave;o để n&agrave;ng c&oacute; được tuổi thọ?&rdquo;. C&ocirc; g&aacute;i n&oacute;i: &ldquo;T&ocirc;i kh&ocirc;ng c&oacute; phương ph&aacute;p b&iacute; ẩn n&agrave;o. T&ocirc;i chỉ ăn quả c&acirc;u kỷ tử thường xuy&ecirc;n trong năm th&ocirc;i&rdquo;.</p>\r\n\r\n<p>C&ocirc;ng dụng phải kể đến như:</p>\r\n\r\n<p>+ Tăng cường hệ miễn dịch</p>\r\n\r\n<p>+ Chống l&atilde;o h&oacute;a, dưỡng nhan</p>\r\n\r\n<p>+ Bảo vệ tế b&agrave;o gan</p>\r\n\r\n<p>+ Cải thiện thị lực, kh&ocirc; mắt, mờ mắt</p>\r\n\r\n<p>+ Th&uacute;c đẩy chức năng t&aacute;i tạo m&aacute;u</p>\r\n\r\n<p>&nbsp;Đ𝘂̛𝗼̛̀𝗻𝗴 𝗡𝗮̂𝘂 đ&atilde; được xem l&agrave; một vị thuốc c&oacute; t&aacute;c dụng bổ huyết v&agrave; phục hồi sức khỏe tuyệt vời. Ngo&agrave;i t&aacute;c dụng c&oacute; t&aacute;c động tốt đến cơ thể th&igrave; tr&agrave; đường đen c&ograve;n c&oacute; t&aacute;c dụng l&agrave;m đẹp, do đường đen chứa nhiều kho&aacute;ng chất v&agrave; vitamin n&ecirc;n gi&uacute;p cho l&agrave;n da trở n&ecirc;n mịn m&agrave;ng, giảm c&aacute;c v&ugrave;ng da sẫm m&agrave;u do phơi nắng. Ngo&agrave;i ra đường đen c&ograve;n c&oacute; t&aacute;c dụng điều ho&agrave; kinh nguyệt tốt cho phụ nữ.</p>\r\n\r\n<p>&nbsp;𝗗𝗮̂𝘂 𝘁𝗮̆̀𝗺: Quả d&acirc;u tằm ( tang thầm) c&oacute; vị ngọt, t&iacute;nh b&igrave;nh, l&agrave; một vị thuốc qu&yacute; c&oacute; t&aacute;c dụng bồi bổ sức khỏe, hỗ trợ điều trị mất ngủ, bổ thận tr&aacute;ng dương, gi&uacute;p s&aacute;ng mắt, tăng cường ti&ecirc;u h&oacute;a, gi&uacute;p đen t&oacute;c.</p>\r\n\r\n<p>&nbsp;𝑻𝒂́𝒐 Đ𝒐̉ 𝐓𝐚̂𝐧 𝐂𝐮̛𝐨̛𝐧𝐠 C&aacute;c l&aacute;t t&aacute;o được cắt từ t&aacute;o T&acirc;n Cương Ruomei; Da mỏng , ngon, d&agrave;y thịt, v&agrave; c&oacute; tiếng l&agrave; &ldquo;thuốc vitamin tự nhi&ecirc;n&rdquo;, l&agrave;m dịu dạ d&agrave;y, phục hồi sức khoẻ sau ốm, gi&agrave;u phốt pho v&agrave; sắt gi&uacute;p lưu th&ocirc;ng m&aacute;u, tăng cường hệ thống miễn dịch, ức chế sự ph&aacute;t triển của c&aacute;c tế b&agrave;o khối u ung thư v&agrave; c&oacute; thể g&oacute;p phần chống ung thư, gi&uacute;p xương chắc khỏe.</p>\r\n\r\n<p>&nbsp;𝐇𝐨𝐚 𝐇𝐨̂̀𝐧𝐠 𝐇𝐚̀𝐧 𝐐𝐮𝐨̂́𝐜 : Gi&agrave;u vitamin, tốt cho tim mạch, đẹp sắc, dưỡng nhan, điều h&ograve;a kh&iacute; huyết, hỗ trợ hệ ti&ecirc;u h&oacute;a, gi&uacute;p tăng cường hệ miễn dịch</p>\r\n\r\n<p>&ndash; 𝑳𝒐𝒏𝒈 𝑵𝒉𝒂̃𝒏: Tăng sự th&egrave;m ăn, tốt cho hệ ti&ecirc;u h&oacute;a, cải thiện t&aacute;o b&oacute;n, được d&ugrave;ng cho c&aacute;c trường hợp lo &acirc;u, mất ngủ, ngủ m&ecirc;, giảm tr&iacute; nhớ, qu&ecirc;n lẫn, loạn nhịp tim, thiếu m&aacute;u.</p>\r\n\r\n<p>&nbsp;𝑯𝒖̛𝒐̛́𝒏𝒈 𝒅𝒂̂̃𝒏 𝒔𝒖̛̉ 𝒅𝒖̣𝒏𝒈:</p>\r\n\r\n<p>&ndash; Uống n&oacute;ng: Tr&aacute;ng b&igrave;nh/ cốc v&agrave; tr&agrave; bằng nước đun s&ocirc;i trong 30s &ndash; 1 ph&uacute;t sau đ&oacute; gạn bỏ nước. Th&ecirc;m 300ml nước s&ocirc;i v&agrave; đợi khoảng 3-5 ph&uacute;t cho tr&agrave; ngậm nước l&agrave; c&oacute; thể d&ugrave;ng được.</p>\r\n\r\n<p>&ndash; Uống lạnh: Th&ecirc;m đ&aacute; v&agrave; thưởng thức.</p>\r\n\r\n<p>&ndash; Th&ecirc;m đường hoặc mật ong t&ugrave;y khẩu vị mỗi người.</p>\r\n\r\n<p>&ndash; Mỗi ng&agrave;y 1-2 g&oacute;i, c&oacute; thể th&ecirc;m nước 3 &ndash; 5 lần cho đến khi tr&agrave; nhạt.</p>\r\n\r\n<p>&ndash; Sản phẩm được đ&oacute;ng th&agrave;nh c&aacute;c g&oacute;i nhỏ, rất tiện lợi để mang theo b&ecirc;n m&igrave;nh khi đi l&agrave;m, đi chơi..</p>', NULL, NULL, '𝑻𝒓𝒂̀ 𝒄𝒐́ 𝒕𝒂́𝒄 𝒅𝒖̣𝒏𝒈 𝒄𝒖𝒏𝒈 𝒄𝒂̂́𝒑 𝒗𝒊𝒕𝒂𝒎𝒊𝒏 𝒄𝒉𝒐 𝒄𝒐̛ 𝒕𝒉𝒆̂̉ 𝒎𝒐̂̃𝒊 𝒏𝒈𝒂̀𝒚; 𝒃𝒐̂̉ 𝒔𝒖𝒏𝒈 𝒗𝒊𝒕𝒂𝒎𝒊𝒏, 𝒂𝒙𝒊𝒕 𝒂𝒎𝒊𝒏, 𝒉𝒖𝒎𝒆𝒏𝒕𝒐𝒔, 𝒌𝒉𝒐𝒂́𝒏𝒈 𝒄𝒉𝒂̂́𝒕, 𝒓𝒆𝒔𝒗𝒆𝒓𝒂𝒕𝒓𝒐𝒍, 𝒂𝒏𝒕𝒉𝒐𝒄𝒚𝒂𝒏𝒊𝒏… 𝒈𝒊𝒖́𝒑 𝒄𝒉𝒐 𝒄𝒐̛ 𝒕𝒉𝒆̂̉ 𝒌𝒉𝒐̉𝒆 𝒎𝒂̣𝒏𝒉 𝒉𝒐̛𝒏, 𝒄𝒉𝒐̂́𝒏𝒈 𝒍𝒂̃𝒐 𝒉𝒐́𝒂, 𝒍𝒂̀𝒎 𝒎𝒐̛̀ 𝒗𝒆̂́𝒕 𝒏𝒉𝒂̆𝒏.', 1, 1, '2020-07-23 19:58:56', '2020-07-23 20:04:07'),
(2, 'Trà Mộc Dưỡng', 'tra-moc-duong', 'TMD549', 2, 'Products/91007471_1906252259507130_4249340844802310144_n-800x794.jpg', '<p>Tr&agrave; Mộc Dưỡng&nbsp;</p>\r\n\r\n<p>Tr&agrave; đem lại hương vị ngọt c&oacute; m&agrave; lại kh&ocirc;ng ng&aacute;n.<br />\r\nĐ&uacute;ng như t&ecirc;n gọi, Tr&agrave; Mộc Dưỡng kh&ocirc;ng chỉ l&agrave; tr&agrave; m&agrave; c&ograve;n được coi l&agrave; dược tr&agrave; v&igrave; n&oacute; kh&ocirc;ng chỉ l&agrave; thức uống thơm ngon m&agrave; c&ograve;n c&oacute; t&aacute;c dụng l&agrave;m đẹp dung nhan, đẹp da, s&aacute;ng mắt, bổ huyết, an thần&hellip; chăm s&oacute;c sắc đẹp của m&igrave;nh từ b&ecirc;n trong.&nbsp;</p>\r\n\r\n<p>&nbsp;Tr&agrave; Mộc Dưỡng được kết hợp từ C&uacute;c v&agrave;ng, Long nh&atilde;n, Hồng h&agrave;n, T&aacute;o đỏ, Kim quất, Kỷ tử, Nho, Đường Ph&egrave;n.</p>\r\n\r\n<p><img alt=\"\" src=\"https://forgetmenotmart.com/wp-content/uploads/2020/04/91351666_1906252326173790_5397366108166553600_n-599x600.jpg\" style=\"height:600px; width:599px\" /><br />\r\n&ndash; C&uacute;c v&agrave;ng: An thần, trị mất ngủ, giảm stress, ăn uống ngon miệng, giải nhiệt, detox thanh lọc cơ thể, ph&ograve;ng ngừa ung thư.<br />\r\n&ndash; Kỷ tử: giải độc gan v&agrave; thận, l&agrave;m đẹp da, tăng cường tuần ho&agrave;n n&atilde;o v&agrave; chống l&atilde;o ho&aacute;, giữ g&igrave;n tuổi thanh xu&acirc;n cho ph&aacute;i đẹp, giữ g&igrave;n v&oacute;c d&aacute;ng v&agrave; c&acirc;n nặng, chữa can thận &acirc;m suy, chữa yếu lưng mỏi gối, chữa đầu cho&aacute;ng mắt hoa, chữa ho khan, mắt nh&igrave;n kh&ocirc;ng r&otilde;.<br />\r\n&ndash; Hoa hồng H&agrave;n Quốc: Đẹp da, trị mụn, chống l&atilde;o h&oacute;a v&agrave; kiềm chế qu&aacute; tr&igrave;nh l&atilde;o h&oacute;a giảm lượng chất b&eacute;o &ndash; nguy cơ b&eacute;o ph&igrave;, giảm cholesterol trong cơ thể, Bổ sung nhiều vitamin A, B1, C, D, chất xơ, mangan, sắt, mangie v&agrave; đồng, tốt cho đường huyết, giảm mỡ m&aacute;u, chống t&iacute;ch đọng mỡ ở tế b&agrave;o gan.<br />\r\n&ndash; T&aacute;o đỏ: Tốt cho đường huyết, giảm mỡ m&aacute;u, chống t&iacute;ch đọng mỡ ở tế b&agrave;o ga, chữa c&aacute;c bệnh về đường ti&ecirc;u h&oacute;a: đau dạ d&agrave;y, n&ocirc;n mửa, ch&aacute;n ăn, cung cấp năng lượng cho cơ thể.<br />\r\n&ndash; Kim quất: k&iacute;ch th&iacute;ch ti&ecirc;u ho&aacute;, th&ocirc;ng phế kh&iacute;, chống n&ocirc;n, nấc, ti&ecirc;u hạch&hellip; , chữa c&aacute;c bệnh về mắt, vi&ecirc;m họng, chữa nấc, nghẹn, chữa tinh ho&agrave;n sưng to sa xuống dưới, c&oacute; hạch ở cổ, giảm đau bụng hoặc sa dạ con sau sinh, đau dạ d&agrave;y, n&ocirc;n mửa, ch&aacute;n ăn..<br />\r\nDo tr&agrave; được kết hợp từ c&aacute;c loại thảo mộc thi&ecirc;n nhi&ecirc;n n&ecirc;n kh&ocirc;ng c&oacute; cafein, ngược lại c&ograve;n gi&uacute;p an thần giảm stress n&ecirc;n anh chị ho&agrave;n to&agrave;n c&oacute; thể d&ugrave;ng buổi tối được lu&ocirc;n nh&eacute;.</p>\r\n\r\n<p><img alt=\"\" src=\"https://forgetmenotmart.com/wp-content/uploads/2020/04/91323546_1906252249507131_5164058446651195392_n-800x523.jpg\" style=\"height:523px; width:800px\" /><br />\r\n&nbsp;Hướng dẫn sử dụng:<br />\r\n&ndash; Uống n&oacute;ng: Tr&aacute;ng b&igrave;nh/ cốc v&agrave; tr&agrave; bằng nước đun s&ocirc;i trong 30s &ndash; 1 ph&uacute;t sau đ&oacute; gạn bỏ nước. Th&ecirc;m 300ml nước s&ocirc;i v&agrave; đợi khoảng 3-5 ph&uacute;t cho tr&agrave; ngậm nước l&agrave; c&oacute; thể d&ugrave;ng được.<br />\r\n&ndash; Uống lạnh: Th&ecirc;m đ&aacute; v&agrave; thưởng thức.<br />\r\n&ndash; Th&ecirc;m đường hoặc mật ong t&ugrave;y khẩu vị mỗi người.<br />\r\n&ndash; Mỗi ng&agrave;y 1-2 g&oacute;i, c&oacute; thể th&ecirc;m nước 3 &ndash; 5 lần cho đến khi tr&agrave; nhạt.<br />\r\n&ndash; Sản phẩm được đ&oacute;ng th&agrave;nh c&aacute;c g&oacute;i nhỏ, rất tiện lợi để mang theo b&ecirc;n m&igrave;nh khi đi l&agrave;m, đi chơi.. &nbsp;&nbsp;<img alt=\"\" src=\"https://forgetmenotmart.com/wp-content/uploads/2020/04/91567588_1906252292840460_8245594462445633536_n-605x600.jpg\" style=\"height:600px; width:605px\" /></p>', NULL, NULL, 'Trà đem lại hương vị ngọt có mà lại không ngán.\r\nĐúng như tên gọi, Trà Mộc Dưỡng không chỉ là trà mà còn được coi là dược trà vì nó không chỉ là thức uống thơm ngon mà còn có tác dụng làm đẹp dung nhan, đẹp da, sáng mắt, bổ huyết, an thần… chăm sóc sắc đẹp của mình từ bên trong.', 1, 1, '2020-07-23 20:05:47', '2020-07-23 20:05:47'),
(3, 'Trà Ngũ Vị', 'tra-ngu-vi', 'TNV562', 2, 'Products/92020660_1913383002127389_8961377008869179392_n-800x802.jpg', '<p>𝙏𝙧𝙖̀ 𝙉𝙜𝙪̃ 𝙑𝙞̣&nbsp;</p>\r\n\r\n<p>Tr&agrave; vị ngọt thanh, hương thơm nhẹ nh&agrave;ng của c&uacute;c, hồng sẽ đem đến dư vị cực k&igrave; lắng đọng cho qu&yacute; vị n&agrave;o đam m&ecirc; kh&aacute;m ph&aacute; những vị tr&agrave; mới lạ.&nbsp;&nbsp;Nh&acirc;m nhi từng ngụm nhỏ cảm nhận hương thơm dịu d&agrave;ng lan tỏa cộng hưởng vị ngọt thanh khiết luyến lưu m&atilde;i kh&ocirc;ng th&ocirc;i.</p>\r\n\r\n<p>Tr&agrave; gi&uacute;p thanh lọc cơ thể, giải nhiệt, hỗ trợ điều trị t&aacute;o b&oacute;n v&agrave; thải độc tốc, gảm stress sau những ng&agrave;y l&agrave;m việc căng thẳng, m&ugrave;i thơm dễ chịu cực kỳ thoải m&aacute;i, l&agrave;m đẹp da, bổ huyết, dưỡng nhan, gi&uacute;p da hồng h&agrave;o s&aacute;ng khỏ, gi&uacute;p giảm mụn, m&aacute;t trong, tốt cho dạ d&agrave;y v&agrave; hỗ trợ hệ ti&ecirc;u h&oacute;a, cung cấp năng lượng cho cơ thể.&nbsp;</p>\r\n\r\n<p>𝙏𝙧𝙖̀ 𝙉𝙜𝙪̃ 𝙑𝙞̣ l&agrave; sự kết hợp của 5 loại tr&agrave; : 𝑇𝑟𝑎̀ 𝑇𝑎́𝑜 đ𝑜̉, 𝐻𝑜̂̀𝑛𝑔 ℎ𝑎̀𝑛, 𝐿𝑜𝑛𝑔 𝑛ℎ𝑎̃𝑛, 𝐾𝑦̉ 𝑡𝑢̛̉, 𝑁𝑢̣ 𝐶𝑢́𝑐.</p>\r\n\r\n<p><img alt=\"\" src=\"https://forgetmenotmart.com/wp-content/uploads/2020/04/94362630_1934385620027127_322923528535932928_n-1-600x600.jpg\" style=\"height:600px; width:600px\" /></p>\r\n\r\n<p>&ndash;&nbsp;&nbsp;Tr&agrave; hoa C&uacute;c: gi&uacute;p đầu &oacute;c tỉnh t&aacute;o, hai mắt tinh tường, c&oacute; t&aacute;c dụng đặc biệt tốt với những người bị kh&ocirc; mắt do can hoả vượng, lao động thị lực qu&aacute; nhiều; ngo&agrave;i ra những người thường cảm thấy kh&oacute; chịu ở mắt do l&agrave;m việc văn ph&ograve;ng thường xuy&ecirc;n, uống tr&agrave; hoa C&uacute;c sẽ c&oacute; nhiều lợi &iacute;ch tốt. Mắt kh&ocirc;ng bị kh&ocirc; nữa, kh&ocirc;ng cận thị nữa, giống như người ta vẫn n&oacute;i l&agrave; s&aacute;ng mắt chắc răng vậy.</p>\r\n\r\n<p>&ndash;&nbsp;&nbsp;T&aacute;o đỏ: dưỡng gan b&agrave;i trừ độc tố.Thực nghiệm chứng minh, mỗi ng&agrave;y cho người c&oacute; chức năng gan k&eacute;m uống nước t&aacute;o đỏ, cứ uống li&ecirc;n tục trong 1 tuần sẽ gi&uacute;p &iacute;ch tăng protein huyết thanh một c&aacute;ch nhanh ch&oacute;ng, từ đ&oacute; đạt được t&aacute;c dụng bảo vệ gan, b&agrave;i trừ độc tố.</p>\r\n\r\n<p>&ndash;&nbsp;&nbsp;Kỷ tử: c&oacute; vị ngọt dịu c&oacute; t&aacute;c dụng bồi bổ tinh kh&iacute;, hỗ trợ điều trị bệnh tiểu đường, gi&uacute;p l&agrave;m tăng thị lực của mắt v&agrave; chứng t&ecirc; mỏi ch&acirc;n tay ở người gi&agrave;, trị chứng t&aacute;o b&oacute;n, chống oxy h&oacute;a v&agrave; l&agrave;m chậm qu&aacute; tr&igrave;nh l&atilde;o h&oacute;a.</p>\r\n\r\n<p>&ndash;&nbsp;Hoa Hồng H&agrave;n Quốc: kh&ocirc;ng chỉ c&oacute; t&aacute;c dụng trang tr&iacute; m&agrave; c&ograve;n c&oacute; nhiều c&ocirc;ng dụng rất tốt cho sức khỏe của bạn. Với nhiều vitamin C v&agrave; kho&aacute;ng chất, tr&agrave; hoa hồng ch&iacute;nh l&agrave; loại thảo dược c&oacute; thể mang lại cho bạn nhiều lợi &iacute;ch từ da đến t&oacute;c v&agrave; c&aacute;c bộ phận kh&aacute;c b&ecirc;n trong cơ thể.</p>\r\n\r\n<p>&ndash;&nbsp;&nbsp;Long nh&atilde;n l&agrave; một trong những vị thuốc c&oacute; t&aacute;c dụng dưỡng huyết, an thần, &iacute;ch tr&iacute;, bổ n&atilde;o long nh&atilde;n c&oacute; t&aacute;c dụng bổ t&acirc;m tỳ, an thần, lợi kh&iacute;, dưỡng huyết. tốt cho n&atilde;o bộ, hỗ trợ suy giảm tr&iacute; nhớ, chữa hay qu&ecirc;n, rối loạn giấc ngủ, lo &acirc;u, thiếu m&aacute;u, mệt mỏi, suy nhược cơ thể, k&eacute;o d&agrave;i tuổi thọ.</p>\r\n\r\n<p>&nbsp;Hướng dẫn sử dụng</p>\r\n\r\n<p>&ndash; Uống n&oacute;ng: Tr&aacute;ng b&igrave;nh/ cốc v&agrave; tr&agrave; bằng nước đun s&ocirc;i trong 30s &ndash; 1 ph&uacute;t sau đ&oacute; gạn bỏ nước. Th&ecirc;m 300ml nước s&ocirc;i v&agrave; đợi khoảng 3-5 ph&uacute;t cho tr&agrave; ngậm nước l&agrave; c&oacute; thể d&ugrave;ng được.</p>\r\n\r\n<p>&ndash; Uống lạnh: Th&ecirc;m đ&aacute; v&agrave; thưởng thức.</p>\r\n\r\n<p>&ndash; Th&ecirc;m đường hoặc mật ong t&ugrave;y khẩu vị mỗi người.</p>\r\n\r\n<p>&ndash; Mỗi ng&agrave;y 1-2 g&oacute;i, c&oacute; thể th&ecirc;m nước 3 &ndash; 5 lần cho đến khi tr&agrave; nhạt.</p>\r\n\r\n<p>&ndash; Sản phẩm được đ&oacute;ng th&agrave;nh c&aacute;c g&oacute;i nhỏ, rất tiện lợi để mang theo b&ecirc;n mnh khi đi l&agrave;m, đi chơi..</p>', NULL, NULL, 'Trà vị ngọt thanh, hương thơm nhẹ nhàng của cúc, hồng sẽ đem đến dư vị cực kì lắng đọng cho quý vị nào đam mê khám phá những vị trà mới lạ. 🍵☕️ Nhâm nhi từng ngụm nhỏ cảm nhận hương thơm dịu dàng lan tỏa cộng hưởng vị ngọt thanh khiết luyến lưu mãi không thôi.\r\n \r\nTrà giúp thanh lọc cơ thể, giải nhiệt, hỗ trợ điều trị táo bón và thải độc tốc, gảm stress sau những ngày làm việc căng thẳng, mùi thơm dễ chịu cực kỳ thoải mái, làm đẹp da, bổ huyết, dưỡng nhan, giúp da hồng hào sáng khỏ, giúp giảm mụn, mát trong, tốt cho dạ dày và hỗ trợ hệ tiêu hóa, cung cấp năng lượng cho cơ thể.', 1, 1, '2020-07-23 20:15:32', '2020-07-23 20:15:32'),
(4, 'Thanh Can Trà', 'thanh-can-tra', 'TCT827', 2, 'Products/92020660_1913383002127389_8961377008869179392_n-800x802.jpg', '<p>Tr&agrave; c&oacute; vị ngọt dịu của Kỷ Tử v&agrave; đường ph&egrave;n, c&oacute; m&ugrave;i thơm m&aacute;t của Bạc H&agrave;, Kim Ng&acirc;n, Hoa C&uacute;c, c&oacute; vị hơi cay the của Bạc H&agrave;, ch&uacute;t ngọt của Kim Quất, Bồ C&ocirc;ng Anh, Hương vị thanh của &Ocirc; Long.</p>\r\n\r\n<p><img alt=\"\" src=\"https://forgetmenotmart.com/wp-content/uploads/2020/04/92020660_1913383002127389_8961377008869179392_n-599x600.jpg\" style=\"height:600px; width:599px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://forgetmenotmart.com/wp-content/uploads/2020/04/92243399_1913382948794061_8034960796574285824_n-758x600.jpg\" style=\"height:600px; width:758px\" /></p>\r\n\r\n<p>&nbsp;Tr&agrave; c&oacute; t&aacute;c dụng thanh nhiệt giải độc, hạ hỏa, m&aacute;t phổi, giảm mụn nhọt, đẹp da,hơi thở thơm tho, tinh thần sảng kho&aacute;i, tăng sức đề kh&aacute;ng cho cơ thể.<br />\r\n&ndash;&nbsp;Hoa C&uacute;c V&agrave;ng : thanh nhiệt giải độc, m&aacute;t&nbsp;gan, hạ hỏa, s&aacute;ng mắt, giảm mụn nhọt, đẹp da, tăng cường miễn dịch, chống l&atilde;o h&oacute;a, hỗ trợ ti&ecirc;u h&oacute;a, giảm đau đầu, ch&oacute;ng mặt, lo &acirc;u, căng thẳng, cải thiện chất lượng giấc ngủ.<br />\r\n&ndash;&nbsp;Bạc H&agrave; c&oacute; m&ugrave;i thơm, t&iacute;nh m&aacute;t, c&oacute; t&aacute;c dụng thanh lọc phổi, k&iacute;ch th&iacute;ch dạ d&agrave;y, hỗ trợ ti&ecirc;u h&oacute;a, chữa dị ứng, trầm cảm, bảo vệ răng miệng, tăng cường hệ thống miễn dịch, giảm c&acirc;n, giảm stress, l&agrave;m đẹp da&hellip;<br />\r\n&ndash;&nbsp;Kỷ tử: bổ thận, &iacute;ch tinh, dưỡng huyết, minh mục, nhuận phế, c&oacute; thể ph&ograve;ng chữa c&aacute;c chứng bệnh như suy nhược cơ thể sau bệnh nặng, đầu cho&aacute;ng, mắt hoa, nh&igrave;n mờ, tai &ugrave;, tai điếc, lưng đau, gối mỏi, di tinh, liệt dương&hellip;<br />\r\n&ndash;&nbsp;&nbsp;&Ocirc; Long: Tăng sự tỉnh t&aacute;o, Ngừa lo&atilde;ng xương v&agrave; gi&uacute;p xương chắc khoẻ, gi&uacute;p bạn đốt ch&aacute;y mỡ thừa nhanh hơn bằng c&aacute;ch tăng cường sự trao đổi chất, ngừa s&acirc;u răng, bảo vệ răng khỏi axit tiết ra.<br />\r\n&ndash;&nbsp;&nbsp;Kim quất: Cung cấp vitamin C, A, B2, chất xơ, mangan, sắt, magi&ecirc; v&agrave; đồng, chữa ho do phong h&agrave;n, chữa c&aacute;c bệnh đường ti&ecirc;u ho&aacute;: đau dạ d&agrave;y, n&ocirc;n mửa, ch&aacute;n ăn.., điều h&ograve;a, cải thiện chức năng gan, k&iacute;ch th&iacute;ch ti&ecirc;u ho&aacute;, th&ocirc;ng phế kh&iacute;, chống n&ocirc;n, nấc, ti&ecirc;u hạch&hellip; , chữa c&aacute;c bệnh về mắt, vi&ecirc;m họng, chữa nấc, nghẹn, chữa tinh ho&agrave;n sưng to sa xuống dưới, c&oacute; hạch ở c, giảm đau bụng hoặc sa dạ con sau sinh&hellip;<br />\r\n&ndash;&nbsp;&nbsp;Hoa kim ng&acirc;n: kh&aacute;ng khuẩn, kh&aacute;ng vi&ecirc;m, kh&aacute;ng virus, Ti&ecirc;u mụn nhọn, dị ứng, mẩn ngứa. Giải cảm c&uacute;m, trừ vi&ecirc;m họng, đau họng, tăng cường chuyển h&oacute;a chất b&eacute;o, gi&uacute;p giảm c&acirc;n hiệu quả. Th&uacute;c đẩy qu&aacute; tr&igrave;nh trao đổi chất, l&agrave;m chậm sự l&atilde;o h&oacute;a, t&agrave;n nhang<br />\r\n&ndash;&nbsp;&nbsp;Bồ C&ocirc;ng Anh: Giải độc, chữa c&aacute;c bệnh mụn nhọt, lở lo&eacute;t, chữa vi&ecirc;m dạ d&agrave;y &ndash; t&aacute; tr&agrave;ng, chữa vi&ecirc;m gan, tốt cho ti&ecirc;u h&oacute;a.</p>\r\n\r\n<p><img alt=\"\" src=\"https://forgetmenotmart.com/wp-content/uploads/2020/04/92244655_1913382935460729_4601580832258260992_n-603x600.jpg\" style=\"height:600px; width:603px\" /></p>\r\n\r\n<p>Hướng dẫn sử dụng:</p>\r\n\r\n<p>&ndash; Uống n&oacute;ng: Tr&aacute;ng b&igrave;nh/ cốc v&agrave; tr&agrave; bằng nước đun s&ocirc;i trong 30s &ndash; 1 ph&uacute;t sau đ&oacute; gạn bỏ nước. Th&ecirc;m 300ml nước s&ocirc;i v&agrave; đợi khoảng 3-5 ph&uacute;t cho tr&agrave; ngậm nước l&agrave; c&oacute; thể d&ugrave;ng được.<br />\r\n&ndash; Uống lạnh: Th&ecirc;m đ&aacute; v&agrave; thưởng thức.<br />\r\n&ndash; Th&ecirc;m đường hoặc mật ong t&ugrave;y khẩu vị mỗi người.<br />\r\n&ndash; Mỗi ng&agrave;y 1-2 g&oacute;i, c&oacute; thể th&ecirc;m nước 3 &ndash; 5 lần cho đến khi tr&agrave; nhạt.<br />\r\n&ndash; Sản phẩm được đ&oacute;ng th&agrave;nh c&aacute;c g&oacute;i nhỏ, rất tiện lợi để mang theo b&ecirc;n m&igrave;nh khi đi l&agrave;m, đi chơi.</p>\r\n\r\n<p><img alt=\"\" src=\"https://forgetmenotmart.com/wp-content/uploads/2020/04/92243745_1913382982127391_4361766729081159680_n-598x600.jpg\" style=\"height:600px; width:598px\" /></p>', NULL, NULL, 'Trà có vị ngọt dịu của Kỷ Tử và đường phèn, có mùi thơm mát của Bạc Hà, Kim Ngân, Hoa Cúc, có vị hơi cay the của Bạc Hà, chút ngọt của Kim Quất, Bồ Công Anh, Hương vị thanh của Ô Long.\r\n\r\n🎁 Trà có tác dụng thanh nhiệt giải độc, hạ hỏa, mát phổi, giảm mụn nhọt, đẹp da,hơi thở thơm tho, tinh thần sảng khoái, tăng sức đề kháng cho cơ thể.', 1, 1, '2020-07-25 01:16:04', '2020-07-25 01:16:04'),
(5, 'Trà Dưỡng Thanh', 'tra-duong-thanh', 'TDT219', 2, 'Products/94362630_1934385620027127_322923528535932928_n-1-800x800.jpg', '<p>𝑇𝑟𝑎̀ 𝐷𝑢̛𝑜̛̃𝑛𝑔 𝑇ℎ𝑎𝑛ℎ l&agrave; sự kết hợp ho&agrave;n hảo từ vị: 𝑡𝑢̛𝑜̛𝑖 𝑚𝑎́𝑡 𝑐𝑢̉𝑎 𝑡𝑟𝑎́𝑖 𝑙𝑒̂, 𝑏𝑢̀𝑖 𝑏𝑢̀𝑖 𝑛ℎ𝑎̂̀𝑦 𝑁ℎ𝑢̣𝑐 Đ𝑎̣𝑖 𝐻𝑎̉𝑖, 𝑛𝑔𝑜̣𝑡 𝑠𝑎̂𝑢 𝑙𝑎̆́𝑛𝑔 𝑐𝑢̉𝑎 𝑐𝑎𝑚 𝑡ℎ𝑎̉𝑜, 𝑡ℎ𝑜̛𝑚 𝑛𝑔𝑎́𝑡 𝑚𝑢̀𝑖 ℎ𝑜𝑎 𝑚𝑜̣̂𝑐 𝑚𝑦̃, 𝑑𝑖̣𝑢 𝑑𝑎̀𝑛𝑔 ℎ𝑜𝑎 𝑐𝑢́𝑐 𝑣𝑎̀𝑛𝑔 𝑣𝑎̀ 𝑡ℎ𝑎𝑛ℎ 𝑡ℎ𝑎𝑛ℎ ℎ𝑢̛𝑜̛𝑛𝑔 𝑘𝑖𝑚 𝑛𝑔𝑎̂𝑛 ℎ𝑜𝑎̀ 𝑡𝑟𝑜̣̂𝑛 𝑐𝑢̀𝑛𝑔 𝑡𝑟𝑢́𝑐 𝑑𝑖𝑒̣̂𝑝.</p>\r\n\r\n<p><img alt=\"\" src=\"https://forgetmenotmart.com/wp-content/uploads/2020/04/94385994_1197973197201364_5222489015697014784_n-603x600.jpg\" style=\"height:600px; width:603px\" /></p>\r\n\r\n<p>&nbsp;Tr&agrave; c&oacute; t&aacute;c dụng thanh nhiệt, giải độc, nhuận phế, lợi hầu, đẹp da, hỗ trợ ti&ecirc;u h&oacute;a, tăng cường miễn&nbsp;dịch, đặc biệt th&iacute;ch hợp cho những người hay phải l&agrave;m việc khuya, phải tiếp x&uacute;c với m&ocirc;i trường &ocirc; nhiễm, h&uacute;t thuốc, uống rượu, ca sỹ, gi&aacute;o vi&ecirc;n phải n&oacute;i nhiều l&agrave;m khản tiếng ,mất tiếng.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://forgetmenotmart.com/wp-content/uploads/2020/04/tra-duong-thanh-36778-800x503.jpg\" style=\"height:503px; width:800px\" /></p>\r\n\r\n<p>Tr&agrave; được kết hợp từ quả 𝑁ℎ𝑢̣𝑐 Đ𝑎̣𝑖 𝐻𝑎̉𝑖, 𝐶𝑢́𝑐 𝑣𝑎̀𝑛𝑔, 𝐻𝑜𝑎 𝑀𝑜̣̂𝑐 𝑀𝑦̃, 𝐶𝑎𝑚 𝑇ℎ𝑎̉𝑜, 𝑇𝑟𝑢́𝑐 𝐷𝑖𝑒̣̂𝑝, 𝐿𝑒̂.<br />\r\n&ndash;&nbsp;𝑁ℎ𝑢̣𝑐 Đ𝑎̣𝑖 𝐻𝑎̉𝑖 (Qủa đười ươi) : Khi ng&acirc;m, quả sẽ nở ra chất nh&agrave;y nh&agrave;y ( giống hạt &eacute;) kh&aacute;ch c&oacute; thể ăn được lu&ocirc;n ạ. C&ocirc;ng dụng phải kể đến như: gi&uacute;p điều trị chảy m&aacute;u cam, nhuận phế, lợi hầu. điều trị cổ họng sưng đau, khản tiếng, mất tiếng, vi&ecirc;m họng, vi&ecirc;m amidan cấp t&iacute;nh, hạ &aacute;p, lợi tiểu, giảm đau<br />\r\n&ndash;&nbsp;𝘏𝘰𝘢 𝘔𝘰̣̂𝘤 𝘔𝘺̃: nhuận phế (l&agrave;m m&aacute;t phổi), h&oacute;a đ&agrave;m (l&agrave;m tan đ&agrave;m), chỉ kh&aacute;t (l&agrave;m hết kh&aacute;t nước). Tăng cường chức năng miễn dịch của cơ thể, gi&uacute;p giảm lipid m&aacute;u, đẹp da, chống oxy h&oacute;a, chống dị ứng.<br />\r\n&ndash;&nbsp;𝘏𝘰𝘢 𝘬𝘪𝘮 𝘯𝘨𝘢̂𝘯: kh&aacute;ng khuẩn, kh&aacute;ng vi&ecirc;m, kh&aacute;ng virus, ti&ecirc;u mụn nhọn, dị ứng, mẩn ngứa. Giải cảm c&uacute;m, trừ vi&ecirc;m họng, đau họng; hạ cholesterol, tăng cường chuyển h&oacute;a chất b&eacute;o, gi&uacute;p giảm c&acirc;n hiệu quả; th&uacute;c đẩy qu&aacute; tr&igrave;nh trao đổi chất, l&agrave;m chậm sự l&atilde;o h&oacute;a, t&agrave;n nhang<br />\r\n&ndash;&nbsp;𝐻𝑜𝑎 𝑐𝑢́𝑐 𝑣𝑎̀𝑛𝑔 : thanh nhiệt giải độc, hạ hỏa, s&aacute;ng mắt, giảm mụn nhọt, đẹp da. Tăng cường miễn dịch, giảm đau đầu, lo &acirc;u, căng thẳng, cải thiện chất lượng giấc ngủ.<br />\r\n&ndash;&nbsp;𝘊𝘢𝘮 𝘵𝘩𝘢̉𝘰: bổ kh&iacute; huyết, mạnh g&acirc;n cốt, thanh nhiệt, giải độc, kh&aacute;ng vi&ecirc;m, chống dị ứng, chỉ kh&aacute;i h&oacute;a đờm, l&agrave;m chất tạo vị ngọt c&oacute; &iacute;ch cho người bị đ&aacute;i th&aacute;o đường&hellip;<br />\r\n&ndash;&nbsp;𝘛𝘳𝘶́𝘤 𝘋𝘪𝘦̣̂𝘱: Th&agrave;nh phần trong tr&agrave; tr&uacute;c diệp rất giầu silic đi &ocirc; x&iacute;t, gi&uacute;p răng, t&oacute;c, m&oacute;ng, xương chắc khỏe, tăng độ đ&agrave;n hồi cho da, chống l&atilde;o h&oacute;a; Kh&aacute;ng vi&ecirc;m. Giảm đau. Chữa l&agrave;nh c&aacute;c vết thương, lo&eacute;t; Detox l&agrave;m sạch cơ thể. Nhuận gan, giải độc. GIẢM C&Acirc;N; Gi&agrave;u cali, gi&uacute;p ổn định v&agrave; hạ huyết &aacute;p cao; L&agrave; thực phẩm chống oxy h&oacute;a ph&ograve;ng ngừa v&agrave; điều trị bệnh UNG THƯ; Tốt cho tim mạch.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://forgetmenotmart.com/wp-content/uploads/2020/04/433c11326334996ac025-590x600.jpg\" style=\"height:600px; width:590px\" /></p>\r\n\r\n<p><br />\r\n𝗛𝘂̛𝗼̛́𝗻𝗴 𝗱𝗮̂̃𝗻 𝘀𝘂̛̉ 𝗱𝘂̣𝗻𝗴:</p>\r\n\r\n<p>&ndash; Uống n&oacute;ng: Tr&aacute;ng b&igrave;nh/ cốc v&agrave; tr&agrave; bằng nước đun s&ocirc;i trong 30s &ndash; 1 ph&uacute;t sau đ&oacute; gạn bỏ nước. Th&ecirc;m 300ml nước s&ocirc;i v&agrave; đợi khoảng 3-5 ph&uacute;t cho tr&agrave; ngậm nước l&agrave; c&oacute; thể d&ugrave;ng được.<br />\r\n&ndash; Uống lạnh: Th&ecirc;m đ&aacute; v&agrave; thưởng thức.<br />\r\n&ndash; Th&ecirc;m đường hoặc mật ong t&ugrave;y khẩu vị mỗi người.<br />\r\n&ndash; Mỗi ng&agrave;y 1-2 g&oacute;i, c&oacute; thể th&ecirc;m nước 3 &ndash; 5 lần cho đến khi tr&agrave; nhạt.<br />\r\n&ndash; Sản phẩm được đ&oacute;ng th&agrave;nh c&aacute;c g&oacute;i nhỏ, rất tiện lợi để mang theo b&ecirc;n m&igrave;nh khi đi l&agrave;m, đi chơi.</p>', NULL, NULL, '𝑇𝑟𝑎̀ 𝐷𝑢̛𝑜̛̃𝑛𝑔 𝑇ℎ𝑎𝑛ℎ là sự kết hợp hoàn hảo từ vị: 𝑡𝑢̛𝑜̛𝑖 𝑚𝑎́𝑡 𝑐𝑢̉𝑎 𝑡𝑟𝑎́𝑖 𝑙𝑒̂, 𝑏𝑢̀𝑖 𝑏𝑢̀𝑖 𝑛ℎ𝑎̂̀𝑦 𝑁ℎ𝑢̣𝑐 Đ𝑎̣𝑖 𝐻𝑎̉𝑖, 𝑛𝑔𝑜̣𝑡 𝑠𝑎̂𝑢 𝑙𝑎̆́𝑛𝑔 𝑐𝑢̉𝑎 𝑐𝑎𝑚 𝑡ℎ𝑎̉𝑜, 𝑡ℎ𝑜̛𝑚 𝑛𝑔𝑎́𝑡 𝑚𝑢̀𝑖 ℎ𝑜𝑎 𝑚𝑜̣̂𝑐 𝑚𝑦̃, 𝑑𝑖̣𝑢 𝑑𝑎̀𝑛𝑔 ℎ𝑜𝑎 𝑐𝑢́𝑐 𝑣𝑎̀𝑛𝑔 𝑣𝑎̀ 𝑡ℎ𝑎𝑛ℎ 𝑡ℎ𝑎𝑛ℎ ℎ𝑢̛𝑜̛𝑛𝑔 𝑘𝑖𝑚 𝑛𝑔𝑎̂𝑛 ℎ𝑜𝑎̀ 𝑡𝑟𝑜̣̂𝑛 𝑐𝑢̀𝑛𝑔 𝑡𝑟𝑢́𝑐 𝑑𝑖𝑒̣̂𝑝.\r\n🤝 Trà có tác dụng thanh nhiệt, giải độc, nhuận phế, lợi hầu, đẹp da, hỗ trợ tiêu hóa, tăng cường miễn dịch, đặc biệt thích hợp cho những người hay phải làm việc khuya, phải tiếp xúc với môi trường ô nhiễm, hút thuốc, uống rượu, ca sỹ, giáo viên phải nói nhiều làm khản tiếng ,mất tiếng.', 1, 1, '2020-07-25 01:22:54', '2020-08-03 04:41:54'),
(6, 'Trà Ngọc Nữ', 'tra-ngoc-nu', 'TNN58', 2, 'Products/94385994_1197973197201364_5222489015697014784_n-800x797.jpg', '<p>Tr&agrave; c&oacute; m&ugrave;i thơm của 7 loại hoa: Hoa Hồng nguy&ecirc;n b&ocirc;ng ph&uacute; qu&yacute;, hoa hồng H&agrave;n Quốc ki&ecirc;u sa, hoa nh&agrave;i tinh khiết, hoa c&uacute;c thanh tao v&agrave; vỏ qu&yacute;t, c&oacute; sắc đỏ t&iacute;m của sự kết hợp giữa hibiscus v&agrave; kỷ tử đen ho&agrave;n to&agrave;n tự nhi&ecirc;n kh&ocirc;ng nhuộm m&agrave;u, c&oacute; vị chua chua của bụp giấm.</p>\r\n\r\n<p><img alt=\"\" src=\"https://forgetmenotmart.com/wp-content/uploads/2020/04/91437482_1907200319412324_9010676541868212224_n-597x600.jpg\" style=\"height:600px; width:597px\" /></p>\r\n\r\n<p>Tr&agrave; c&oacute; t&aacute;c dụng dưỡng nhan, đẹp sắc, thanh nhiệt, ti&ecirc;u độc, ngăn ngừa mụn, điều h&ograve;a kinh nguyệt, giảm lo &acirc;u, căng thẳng, giảm t&igrave;nh trạng da nhợt nhạt do thiếu m&aacute;u , chống ng&aacute;n do thức ăn dầu mỡ.</p>\r\n\r\n<p>𝑻𝒓𝒂̀ 𝑵𝒈𝒐̣𝒄 𝑵𝒖̛̃ l&agrave; sự kết hợp của tr&agrave; 𝐻𝑖𝑏𝑖𝑠𝑐𝑢𝑠, 𝑉𝑜̉ 𝑐𝑎𝑚, 𝐻𝑜̂̀𝑛𝑔 𝐻𝑎̀𝑛, 𝑁ℎ𝑎̀𝑖, 𝐶𝑢́𝑐 𝐹𝑙𝑜𝑟𝑖𝑠𝑡, 𝐻𝑎̆́𝑐 𝐾𝑦̉ 𝑇𝑢̛̉, 𝐻𝑜𝑎 𝐻𝑜̂̀𝑛𝑔 𝑁𝑔𝑢𝑦𝑒̂𝑛 𝐵𝑜̂𝑛𝑔<br />\r\n&ndash;&nbsp;&nbsp;Hoa c&uacute;c Florist: thanh nhiệt, ti&ecirc;u vi&ecirc;m, giảm mụn nhọt, chống oxy h&oacute;a, chống l&atilde;o h&oacute;a, giảm lo &acirc;u, căng thẳng, cải thiện chất lượng giấc ngủ; hạ huyết &aacute;p, tăng hoạt động của tim; điều h&ograve;a kinh nguyệt<br />\r\n&ndash;&nbsp;&nbsp;Hoa hồng nguy&ecirc;n b&ocirc;ng: chứa nhiều vitamin v&agrave; kho&aacute;ng chất c&oacute; t&aacute;c dụng l&agrave;m đẹp da, ngăn ngừa mụn trứng c&aacute;, giảm tốc độ l&atilde;o h&oacute;a của da, loại bỏ c&aacute;c sắc tố đen v&agrave; nếp nhăn l&agrave;m da trắng hồng, tươi trẻ. Điều h&ograve;a kh&iacute; huyết, th&uacute;c đ&acirc;y lưu th&ocirc;ng m&aacute;u, điều h&ograve;a nội tiết, điều h&ograve;a kinh nguyệt, gi&uacute;p giảm đau bụng tiền kinh nguyệt, cải thiện t&igrave;nh trạng lo &acirc;u, căng thẳng.<br />\r\n&ndash;&nbsp;&nbsp;Hoa Nh&agrave;i: giải độc, kh&aacute;ng khuẩn, trắng da, ngăn ngừa l&atilde;o h&oacute;a, giảm stress, giảm huyết &aacute;p, cholesterol, điều h&ograve;a sự lưu th&ocirc;ng m&aacute;u<br />\r\n&ndash;&nbsp;&nbsp;Hibiscus: giảm c&acirc;n, ph&ograve;ng v&agrave; điều trị bệnh b&eacute;o ph&igrave;, Tăng cường chức năng gan, bảo vệ gan<br />\r\n&ndash;&nbsp;&nbsp;Vỏ cam: giảm ho, vi&ecirc;m họng, gi&uacute;p tăng cường hệ miễn dịch, ngăn ngừa vi khuẩn, giảm nhiễm tr&ugrave;ng đường tiết niệu<br />\r\n&ndash;&nbsp;&nbsp;Hắc Kỷ Tử: chứa nhiều protein, lipid, glucid, c&aacute;c acid amin tự do, acid hữu cơ, kho&aacute;ng chất, c&aacute;c nguy&ecirc;n tố vi lượng, kiềm, Vitamin c, B1, B2&hellip;Kh&ocirc;ng những vậy, Kỷ tử đen c&ograve;n chứa lượng lớn hắc quả sắc tố proanthocyanidines -pc&hellip;c&oacute; t&aacute;c dụng chống l&atilde;o h&oacute;a, an thần, đẹp da, tăng cường miễn dịch, ph&ograve;ng chống ung thư.<br />\r\n&ndash;&nbsp;&nbsp;Hoa Hồng H&agrave;n Quốc: dưỡng nhan đẹp sắc, l&agrave;m trắng da, loại bỏ c&aacute;c nếp nhăn v&agrave; t&agrave;n nhang, l&agrave;m chậm qu&aacute; tr&igrave;nh l&atilde;o h&oacute;a; m&aacute;t gan, giải độc, s&aacute;ng mắt, hoạt huyết, th&ocirc;ng kinh.</p>\r\n\r\n<p><img alt=\"\" src=\"https://forgetmenotmart.com/wp-content/uploads/2020/04/91444633_1907200306078992_7422978908091318272_n-607x600.jpg\" style=\"height:600px; width:607px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://forgetmenotmart.com/wp-content/uploads/2020/04/91601030_1907200312745658_1495754847964626944_n-586x600.jpg\" style=\"height:600px; width:586px\" />&nbsp;<img alt=\"\" src=\"https://forgetmenotmart.com/wp-content/uploads/2020/04/91060609_1907200369412319_4486553460518420480_n-607x600.jpg\" style=\"height:600px; width:607px\" /><br />\r\n&nbsp;𝐻𝑢̛𝑜̛́𝑛𝑔 𝑑𝑎̂̃𝑛 𝑠𝑢̛̉ 𝑑𝑢̣𝑛𝑔:<br />\r\n&ndash; Uống n&oacute;ng: Tr&aacute;ng b&igrave;nh/ cốc v&agrave; tr&agrave; bằng nước đun s&ocirc;i trong 30s &ndash; 1 ph&uacute;t sau đ&oacute; gạn bỏ nước. Th&ecirc;m 300ml nước s&ocirc;i v&agrave; đợi khoảng 3-5 ph&uacute;t cho tr&agrave; ngậm nước l&agrave; c&oacute; thể d&ugrave;ng được.<br />\r\n&ndash; Uống lạnh: Th&ecirc;m đ&aacute; v&agrave; thưởng thức.<br />\r\n&ndash; Th&ecirc;m đường hoặc mật ong t&ugrave;y khẩu vị mỗi người.<br />\r\n&ndash; Mỗi ng&agrave;y 1-2 g&oacute;i, c&oacute; thể th&ecirc;m nước 3 &ndash; 5 lần cho đến khi tr&agrave; nhạt.<br />\r\n&ndash; Sản phẩm được đ&oacute;ng th&agrave;nh c&aacute;c g&oacute;i nhỏ, rất tiện lợi để mang theo b&ecirc;n m&igrave;nh khi đi l&agrave;m, đi chơi..</p>', NULL, NULL, 'Trà có mùi thơm của 7 loại hoa: Hoa Hồng nguyên bông phú quý, hoa hồng Hàn Quốc kiêu sa, hoa nhài tinh khiết, hoa cúc thanh tao và vỏ quýt, có sắc đỏ tím của sự kết hợp giữa hibiscus và kỷ tử đen hoàn toàn tự nhiên không nhuộm màu, có vị chua chua của bụp giấm.\r\n\r\nTrà có tác dụng dưỡng nhan, đẹp sắc, thanh nhiệt, tiêu độc, ngăn ngừa mụn, điều hòa kinh nguyệt, giảm lo âu, căng thẳng, giảm tình trạng da nhợt nhạt do thiếu máu , chống ngán do thức ăn dầu mỡ.', 1, 1, '2020-07-25 01:25:42', '2020-08-03 04:42:42'),
(7, 'Combo giữ dáng', 'combo-giu-dang', 'CGD812', 3, 'Products/0e3ae07a19b7e4e9bda6-800x805.jpg', NULL, NULL, NULL, NULL, 1, 1, '2020-07-25 01:28:26', '2020-07-25 01:28:26');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_details`
--

CREATE TABLE `product_details` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_product` int(10) UNSIGNED NOT NULL,
  `id_attr` int(10) UNSIGNED NOT NULL,
  `sku` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(16,2) NOT NULL,
  `discount` double(8,2) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1 là Hiện, 0 là Ẩn',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product_details`
--

INSERT INTO `product_details` (`id`, `id_product`, `id_attr`, `sku`, `price`, `discount`, `quantity`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'TNNXS508100', 128000.00, 16.00, 15, 1, '2020-07-23 20:17:17', '2020-07-23 20:17:17'),
(2, 1, 2, 'TNNXS508200', 300000.00, 0.00, 0, 1, '2020-07-23 20:17:27', '2020-07-23 20:17:27'),
(3, 2, 1, 'TMD549100', 150000.00, 0.00, 20, 1, '2020-07-23 20:17:46', '2020-07-23 20:17:54'),
(4, 2, 2, 'TMD549200', 300000.00, 10.00, 50, 1, '2020-07-23 20:18:04', '2020-07-23 20:18:04'),
(5, 3, 1, 'TNV562100', 183000.00, 15.00, 20, 1, '2020-07-23 20:18:33', '2020-07-23 20:18:33'),
(6, 3, 2, 'TNV562200', 250000.00, 10.00, 0, 1, '2020-07-23 20:18:46', '2020-07-23 20:18:46'),
(7, 4, 1, 'TCT827100', 150000.00, 18.00, 20, 1, '2020-07-25 01:16:56', '2020-07-25 01:16:56'),
(8, 5, 1, 'TDT219100', 250000.00, 15.00, 50, 1, '2020-07-25 01:23:48', '2020-08-02 20:03:19'),
(9, 7, 1, 'CGD812100', 150000.00, 20.00, 50, 1, '2020-07-25 01:55:23', '2020-08-02 20:02:11'),
(10, 6, 1, 'TNN58100', 200000.00, 20.00, 20, 1, '2020-07-25 01:56:24', '2020-08-02 20:02:39');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1 là Nam, 0 là Nữ',
  `birthday` date NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `avatar`, `email`, `email_verified_at`, `password`, `remember_token`, `phone`, `gender`, `birthday`, `address`, `created_at`, `updated_at`) VALUES
(9, 'Tran Van Hoan', '1595962424chupcung-vbk.jpg', 'demo1@gmail.com', NULL, '$2y$10$1V9DV.QGK3dwpK.bZobc3eXrLDCUyQp0NCnhxXNKBIzTv0okAIJKq', NULL, '+84348053999', 1, '2020-07-21', 'Phu Cuong, Soc Son, Ha Noi', '2020-07-27 17:26:43', '2020-07-28 14:38:30'),
(10, 'Tran Van Hoan', '', 'kh@gmail.com', NULL, '$2y$10$eccQw.E77b.y1/66RioGIOS1wefo.p4i/nb6g2RS.LjsSLKHj2qpe', NULL, '321654987', 1, '2020-07-10', 'Phu Cuong, Soc Son, Ha Noi', '2020-07-27 17:30:21', '2020-08-03 13:16:25'),
(12, 'Tran thanh', '1596497420logo_footer_01.png', 'tranhoan.espeed@gmail.com', NULL, '$2y$10$Fn4HHWTqtP45LdOWPUe.m.tT.F/2NWlaKBdrVXHowQBY2qWYToyfO', NULL, '034805399999', 1, '2020-08-28', 'Cổ Loa, Đông Anh, Hà Nội', '2020-08-03 16:30:20', '2020-08-03 16:30:20'),
(13, 'Tran Van Hoanjml', '1596497732logo_footer_01.png', 'tranhoan.dz98@gmail.com', NULL, '$2y$10$cpo/71Zp/IiBaU0H4.EGsuBpHskaP7SMFyV/ZPUWtLN0IpPFnmq3.', NULL, '0321654987', 1, '2020-08-21', 'Hà Nội', '2020-08-03 16:35:32', '2020-08-03 17:26:09');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wishlists`
--

CREATE TABLE `wishlists` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_product_detail` int(10) UNSIGNED NOT NULL,
  `id_user` int(10) UNSIGNED NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1 là Hiện, 0 là Ẩn',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wishlists`
--

INSERT INTO `wishlists` (`id`, `id_product_detail`, `id_user`, `status`, `created_at`, `updated_at`) VALUES
(20, 10, 10, 1, '2020-08-01 01:52:43', '2020-08-01 01:52:43'),
(21, 8, 10, 1, '2020-08-01 01:52:44', '2020-08-01 01:52:44'),
(22, 7, 10, 1, '2020-08-01 01:52:45', '2020-08-01 01:52:45'),
(23, 3, 13, 1, '2020-08-03 16:37:33', '2020-08-03 16:37:33');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Chỉ mục cho bảng `attrs`
--
ALTER TABLE `attrs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `attrs_value_unique` (`value`);

--
-- Chỉ mục cho bảng `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `banners_name_unique` (`name`),
  ADD UNIQUE KEY `banners_slug_unique` (`slug`);

--
-- Chỉ mục cho bảng `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blogs_id_cate_foreign` (`id_cate`),
  ADD KEY `blogs_id_admin_foreign` (`id_admin`);

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Chỉ mục cho bảng `configs`
--
ALTER TABLE `configs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`,`slug`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `feedback_pros`
--
ALTER TABLE `feedback_pros`
  ADD PRIMARY KEY (`id`),
  ADD KEY `feedback_pros_id_user_foreign` (`id_user`),
  ADD KEY `feedback_pros_id_product_foreign` (`id_product`);

--
-- Chỉ mục cho bảng `img_pros`
--
ALTER TABLE `img_pros`
  ADD PRIMARY KEY (`id`),
  ADD KEY `img_pros_id_product_foreign` (`id_product`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_id_user_foreign` (`id_user`);

--
-- Chỉ mục cho bảng `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_details_id_order_foreign` (`id_order`),
  ADD KEY `order_details_id_pro_detail_foreign` (`id_pro_detail`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_name_unique` (`name`),
  ADD UNIQUE KEY `products_sku_unique` (`sku`),
  ADD KEY `products_id_cate_foreign` (`id_cate`);

--
-- Chỉ mục cho bảng `product_details`
--
ALTER TABLE `product_details`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `product_details_sku_unique` (`sku`),
  ADD KEY `product_details_id_product_foreign` (`id_product`),
  ADD KEY `product_details_id_attr_foreign` (`id_attr`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_phone_unique` (`phone`);

--
-- Chỉ mục cho bảng `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`),
  ADD KEY `wishlists_id_user_foreign` (`id_user`),
  ADD KEY `wishlists_id_product_detail_foreign` (`id_product_detail`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `attrs`
--
ALTER TABLE `attrs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `banners`
--
ALTER TABLE `banners`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `configs`
--
ALTER TABLE `configs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `feedback_pros`
--
ALTER TABLE `feedback_pros`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `img_pros`
--
ALTER TABLE `img_pros`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `product_details`
--
ALTER TABLE `product_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `blogs`
--
ALTER TABLE `blogs`
  ADD CONSTRAINT `blogs_id_admin_foreign` FOREIGN KEY (`id_admin`) REFERENCES `admins` (`id`),
  ADD CONSTRAINT `blogs_id_cate_foreign` FOREIGN KEY (`id_cate`) REFERENCES `categories` (`id`);

--
-- Các ràng buộc cho bảng `feedback_pros`
--
ALTER TABLE `feedback_pros`
  ADD CONSTRAINT `feedback_pros_id_product_foreign` FOREIGN KEY (`id_product`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `feedback_pros_id_user_foreign` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `img_pros`
--
ALTER TABLE `img_pros`
  ADD CONSTRAINT `img_pros_id_product_foreign` FOREIGN KEY (`id_product`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_id_user_foreign` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`);

--
-- Các ràng buộc cho bảng `order_details`
--
ALTER TABLE `order_details`
  ADD CONSTRAINT `order_details_id_order_foreign` FOREIGN KEY (`id_order`) REFERENCES `orders` (`id`),
  ADD CONSTRAINT `order_details_id_pro_detail_foreign` FOREIGN KEY (`id_pro_detail`) REFERENCES `product_details` (`id`);

--
-- Các ràng buộc cho bảng `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_id_cate_foreign` FOREIGN KEY (`id_cate`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `product_details`
--
ALTER TABLE `product_details`
  ADD CONSTRAINT `product_details_id_attr_foreign` FOREIGN KEY (`id_attr`) REFERENCES `attrs` (`id`),
  ADD CONSTRAINT `product_details_id_product_foreign` FOREIGN KEY (`id_product`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `wishlists`
--
ALTER TABLE `wishlists`
  ADD CONSTRAINT `wishlists_id_product_detail_foreign` FOREIGN KEY (`id_product_detail`) REFERENCES `product_details` (`id`),
  ADD CONSTRAINT `wishlists_id_user_foreign` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
