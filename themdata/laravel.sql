-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th9 19, 2020 lúc 05:34 AM
-- Phiên bản máy phục vụ: 10.4.13-MariaDB
-- Phiên bản PHP: 7.4.8

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
(1, 'admin', 'tranhoan.dz98@geail.com', '$2y$10$6IvbmKBpDc7FHq8RDYpUZutInKdR7nfgnJzrilKb1AsohzQTWwC/y', 1, '2020-07-23 12:18:45', '2020-07-23 12:18:45'),
(2, 'admin2', 'tranhoan.dz@geail.com', '$2y$10$vCHAcdEgyLq8FK17Zp.q6OiVWUJv1GUn1z5fD57rq3F1it.r8YOWq', 1, '2020-07-29 06:45:39', '2020-07-29 06:45:39');

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
(1, 'khoi-luong', '100', '2020-07-23 13:15:53', '2020-07-23 13:15:53'),
(2, 'khoi-luong', '200', '2020-07-23 13:15:59', '2020-07-23 13:15:59'),
(3, 'size', 'S', '2020-08-04 06:25:47', '2020-08-04 06:25:47'),
(4, 'size', 'M', '2020-08-04 06:25:53', '2020-08-04 06:25:53'),
(5, 'size', 'L', '2020-08-04 06:25:58', '2020-08-04 06:25:58');

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
(1, 'Lá chè xanh', 'la-che-xanh', NULL, 'Banners/e578511cd12bcb-bannervechungtoi.jpg', NULL, 1, '2020-07-25 14:03:13', '2020-07-31 23:52:57'),
(2, 'Banner2', 'banner2', NULL, 'Banners/banner1.jpg', NULL, 1, '2020-07-25 14:05:50', '2020-07-31 23:50:04'),
(3, 'Trà hương thơm', 'tra-huong-thom', NULL, 'Banners/banner3.jpg', NULL, 1, '2020-07-25 14:17:05', '2020-07-31 23:50:18'),
(5, 'banner6', 'banner6', NULL, 'Banners/banner2.jpg', NULL, 1, '2020-07-29 09:04:42', '2020-07-31 23:50:35');

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
(1, '10 Công dụng tuyệt vời của hoa cúc', '10-cong-dung-tuyet-voi-cua-hoa-cuc', 5, 1, 'Blogs/tra-hoa-cuc.png', '<p>Tr&agrave; hoa c&uacute;c &ndash; Thức uống thần kỳ cho sức khỏe người Việt<br />\r\nTr&agrave; hoa ch&uacute;ng e xin gửi tới bạn c&aacute;c c&ocirc;ng dụng tuyệt vời:</p>\r\n\r\n<p>𝟏. 𝐂𝐚̉𝐢 𝐭𝐡𝐢𝐞̣̂𝐧 𝐬𝐮̛́𝐜 𝐤𝐡𝐨̉𝐞 𝐭𝐢𝐦 𝐦𝐚̣𝐜𝐡</p>\r\n\r\n<p>Tr&agrave; hoa c&uacute;c c&oacute; nhiều flavones, một lớp chất chống oxy h&oacute;a. Theo nghi&ecirc;n cứu, flavones c&oacute; khả năng l&agrave;m giảm huyết &aacute;p v&agrave; mức cholesterol, l&agrave; những dấu hiệu quan trọng của nguy cơ mắc bệnh tim của bạn.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://forgetmenotmart.com/wp-content/uploads/2020/04/10-cong-dung-tuyet-voi-cua-hoa-cuc-19011-800x533.jpg\" style=\"height:533px; width:800px\" /></p>\r\n\r\n<p>Th&ecirc;m v&agrave;o đ&oacute;, c&aacute;c nghi&ecirc;n cứu gần đ&acirc;y c&ograve;n chứng minh rằng chất chống oxy h&oacute;a trong hoa c&uacute;c kh&aacute; c&ocirc;ng hiệu trong việc điều trị chứng đau thắt ngực hoặc l&agrave;m dịu những cơn đau ngực xuất ph&aacute;t từ bệnh động mạch v&agrave;nh.</p>\r\n\r\n<p>Ngo&agrave;i ra, hoa c&uacute;c c&ograve;n c&oacute; t&aacute;c dụng l&agrave;m giảm huyết &aacute;p v&agrave; ngăn ngừa c&aacute;c triệu chứng li&ecirc;n quan như ch&oacute;ng mặt, mất ngủ v&agrave; nhức đầu.</p>\r\n\r\n<p>𝟐. 𝐆𝐢𝐚̉𝐢 𝐜𝐚̉𝐦</p>\r\n\r\n<p>Theo tạp ch&iacute; sức khỏe Natural Health, c&aacute;c thầy thuốc cổ truyền Trung Quốc đ&atilde; sử dụng tr&agrave; hoa c&uacute;c để chữa phong h&agrave;n hoặc cảm lạnh k&egrave;m sốt cao, sưng tấy v&agrave; nhức đầu. Nhờ v&agrave;o t&iacute;nh m&aacute;t của loại thảo dược n&agrave;y m&agrave; ch&uacute;ng được d&ugrave;ng để hạ sốt rất hiệu quả.</p>\r\n\r\n<p>Để chế biến ra những t&aacute;ch tr&agrave; hoa c&uacute;c gi&uacute;p giải cảm, bạn h&atilde;y cho v&agrave;o ấm tr&agrave; một th&igrave;a c&agrave; ph&ecirc; tr&agrave; hoa c&uacute;c kh&ocirc; với hoa kim ng&acirc;n v&agrave; l&aacute; bạc h&agrave; kh&ocirc;, sau đ&oacute; r&oacute;t một l&iacute;t nước s&ocirc;i v&agrave;o v&agrave; đợi tr&agrave; nguội dần.</p>\r\n\r\n<p>Uống một t&aacute;ch tr&agrave; hoa c&uacute;c mỗi hai giờ sẽ gi&uacute;p l&agrave;m dịu c&aacute;c triệu chứng cảm lạnh kh&oacute; chịu trong cơ thể.</p>\r\n\r\n<p><img alt=\"\" src=\"https://forgetmenotmart.com/wp-content/uploads/2020/04/69697717_1674777072654651_5958192887454760960_o-800x533.jpg\" style=\"height:533px; width:800px\" /></p>\r\n\r\n<p>𝟑. 𝐋𝐚̀𝐦 𝐝𝐢̣𝐮 𝐦𝐚̂̉𝐧 đ𝐨̉ 𝐝𝐨 𝐧𝐨́𝐧𝐠 𝐭𝐫𝐨𝐧𝐠 𝐧𝐠𝐮̛𝐨̛̀𝐢</p>\r\n\r\n<p>C&aacute;c b&aacute;c sĩ Đ&ocirc;ng y khẳng định rằng việc ph&aacute;t ban l&agrave; do cơ thể bị nhiệt g&acirc;y n&ecirc;n. Với t&iacute;nh giải nhiệt, tr&agrave; hoa c&uacute;c c&oacute; thể sử dụng để điều trị bệnh ban đỏ. Nếu bị ph&aacute;t ban, bạn h&atilde;y uống tr&agrave; hoa c&uacute;c mỗi 2&ndash;3 giờ v&agrave; uống tr&agrave; cho đến khi c&aacute;c vết ban biến mất.</p>\r\n\r\n<p><img alt=\"\" src=\"https://forgetmenotmart.com/wp-content/uploads/2020/04/69911933_1674776509321374_1752116699924004864_n-1-400x600.jpg\" style=\"height:600px; width:400px\" /></p>\r\n\r\n<p>C&aacute;c b&aacute;c sĩ cũng khuy&ecirc;n rằng bạn n&ecirc;n tr&aacute;nh ăn c&aacute;c loại thức ăn nhiều gia vị hoặc đồ cay, n&oacute;ng v&igrave; ch&uacute;ng sẽ g&oacute;p phần l&agrave;m bạn bị n&oacute;ng trong người.</p>\r\n\r\n<p>𝟒. 𝐂𝐚̉𝐢 𝐭𝐡𝐢𝐞̣̂𝐧 𝐬𝐮̛́𝐜 𝐤𝐡𝐨̉𝐞 đ𝐨̂𝐢 𝐦𝐚̆́𝐭</p>\r\n\r\n<p>Tr&agrave; hoa c&uacute;c đem lại nhiều lợi &iacute;ch cho &ldquo;cửa sổ t&acirc;m hồn&rdquo; của bạn, bao gồm t&aacute;c dụng cải thiện thị lực đối với những người&nbsp;mắt mờ, tầm nh&igrave;n yếu. Nếu mắt hay bị đau, kh&ocirc; hoặc đỏ do đọc s&aacute;ch hoặc l&agrave;m việc với m&aacute;y t&iacute;nh trong một khoảng thời gian d&agrave;i, tr&agrave; hoa c&uacute;c ch&iacute;nh l&agrave; lựa chọn ho&agrave;n hảo để bảo vệ sức khỏe đ&ocirc;i mắt.</p>\r\n\r\n<p><img alt=\"\" src=\"https://forgetmenotmart.com/wp-content/uploads/2020/04/10-cong-dung-tuyet-voi-cua-hoa-cuc-74381-606x600.jpg\" style=\"height:600px; width:606px\" />&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;</p>\r\n\r\n<p>𝟓. 𝐍𝐠𝐚̆𝐧 𝐧𝐠𝐮̛̀𝐚 𝐮𝐧𝐠 𝐭𝐡𝐮̛</p>\r\n\r\n<p>Nghi&ecirc;n cứu tại Mỹ ph&aacute;t hiện chất apigenin trong tr&agrave; hoa c&uacute;c c&oacute; t&aacute;c dụng ngăn ngừa tế b&agrave;o ung thư lan rộng v&agrave; gi&uacute;p c&aacute;c thuốc trị ung thư ph&aacute;t huy t&aacute;c dụng hơn.</p>\r\n\r\n<p>Trong c&aacute;c nghi&ecirc;n cứu ống nghiệm, apigenin đ&atilde; được chứng minh l&agrave; chống lại c&aacute;c tế b&agrave;o ung thư, đặc biệt l&agrave; c&aacute;c tế b&agrave;o v&uacute;, đường ti&ecirc;u h&oacute;a, da, tuyến tiền liệt v&agrave; tử cung.</p>\r\n\r\n<p>Ngo&agrave;i ra, một nghi&ecirc;n cứu tr&ecirc;n 537 người đ&atilde; quan s&aacute;t thấy rằng những người uống tr&agrave; hoa c&uacute;c 2 &ndash; 6 lần mỗi tuần c&oacute; khả năng mắc ung thư tuyến gi&aacute;p &iacute;t hơn đ&aacute;ng kể so với những người kh&ocirc;ng uống tr&agrave; hoa c&uacute;c.</p>\r\n\r\n<p><img alt=\"\" src=\"https://forgetmenotmart.com/wp-content/uploads/2020/04/69654810_1674777825987909_6626776350340415488_o-800x533.jpg\" style=\"height:533px; width:800px\" /></p>\r\n\r\n<p>𝟔. 𝐓𝐫𝐢̣ 𝐦𝐚̂́𝐭 𝐧𝐠𝐮̉, 𝐡𝐚̣ 𝐡𝐮𝐲𝐞̂́𝐭 𝐚́𝐩</p>\r\n\r\n<p>Tr&agrave; hoa c&uacute;c được mệnh danh l&agrave; liều thuốc ngủ tự nhi&ecirc;n tốt nhất. Uống một cốc tr&agrave; hoa c&uacute;c trước khi đi ngủ sẽ gi&uacute;p bạn c&oacute; một giấc ngủ ngon hơn.</p>\r\n\r\n<p>B&ecirc;n cạnh đ&oacute;, một số nghi&ecirc;n cứu cho thấy tr&agrave; hoa c&uacute;c c&ograve;n c&oacute; t&aacute;c dụng kh&aacute;ng khuẩn g&acirc;y cảm c&uacute;m v&agrave; gi&uacute;p l&agrave;m gi&atilde;n mạch m&aacute;u, hạ huyết &aacute;p, giảm mỡ trong m&aacute;u, đặc biệt l&agrave; l&agrave;m dịu bớt căng thẳng thần kinh, gi&uacute;p bạn ngủ ngon giấc m&agrave; kh&ocirc;ng bị trằn trọc.</p>\r\n\r\n<p><img alt=\"\" src=\"https://forgetmenotmart.com/wp-content/uploads/2020/04/10-cong-dung-tuyet-voi-cua-hoa-cuc-95854-598x600.jpg\" style=\"height:600px; width:598px\" /></p>\r\n\r\n<p>𝟕. 𝐆𝐢𝐚̉𝐢 𝐧𝐡𝐢𝐞̣̂𝐭</p>\r\n\r\n<p>T&aacute;c dụng giải nhiệt hiệu quả của hoa c&uacute;c rất tốt cho những người thường xuy&ecirc;n bị nhiệt, n&oacute;ng bức do l&agrave;m việc trong m&ocirc;i trường chật hẹp, như văn ph&ograve;ng, c&ocirc;ng xưởng&hellip;</p>\r\n\r\n<p>Bạn c&oacute; thể kết hợp loại tr&agrave; n&agrave;y với tr&agrave; xanh v&agrave; hoa h&ograve;e để tăng cường sức đề kh&aacute;ng, thanh nhiệt, giải độc, l&agrave;m s&aacute;ng mắt, gi&uacute;p ph&ograve;ng ngừa v&agrave; chữa trị chứng nhức đầu do sốc nhiệt.</p>\r\n\r\n<p><img alt=\"\" src=\"https://forgetmenotmart.com/wp-content/uploads/2020/04/69912530_1674777012654657_4004581228517785600_o-800x533.jpg\" style=\"height:533px; width:800px\" /></p>\r\n\r\n<p>𝟖. 𝐓𝐢𝐞̂𝐮 đ𝐨̣̂𝐜, 𝐧𝐡𝐮𝐚̣̂𝐧 𝐠𝐚𝐧</p>\r\n\r\n<p>Tr&agrave; hoa c&uacute;c kết hợp với hoa kim ng&acirc;n v&agrave; bồ c&ocirc;ng anh l&agrave; một b&agrave;i thuốc gi&uacute;p ti&ecirc;u độc, nhuận gan, chữa mụn nhọt, ghẻ ngứa v&agrave; vi&ecirc;m gan cấp t&iacute;nh. Bạn cũng c&oacute; thể d&ugrave;ng hoa c&uacute;c kết hợp với nấm phục linh để gi&uacute;p sắc mặt tươi tắn hơn với l&agrave;n da s&aacute;ng mịn.</p>\r\n\r\n<p><img alt=\"\" src=\"https://forgetmenotmart.com/wp-content/uploads/2020/04/69798986_1674777379321287_4688602680765972480_o-800x533.jpg\" style=\"height:533px; width:800px\" /></p>\r\n\r\n<p>𝟗. 𝐂𝐡𝐮̛̃𝐚 đ𝐚𝐮 𝐛𝐮̣𝐧𝐠 𝐤𝐢𝐧𝐡 𝐧𝐠𝐮𝐲𝐞̣̂𝐭</p>\r\n\r\n<p>Tr&agrave; hoa c&uacute;c l&agrave;m tăng hoạt chất gi&uacute;p giảm co thắt cơ tử cung trong thời kỳ &ldquo;đ&egrave;n đỏ&rdquo;, từ đ&oacute; l&agrave;m dịu c&aacute;c cơn đau bụng kinh kh&oacute; chịu.</p>\r\n\r\n<p>Bạn cũng c&oacute; thể d&ugrave;ng dầu chiết xuất từ hoa c&uacute;c thoa v&agrave;o bụng dưới để xoa dịu chứng đau bụng kinh. Tuy nhi&ecirc;n, c&aacute;c mẹ bầu n&ecirc;n cẩn thận khi sử dụng tr&agrave; hoa c&uacute;c bởi loại thảo dược n&agrave;y c&oacute; thể t&aacute;c động tới b&agrave;o thai trong bụng.</p>\r\n\r\n<p><img alt=\"\" src=\"https://forgetmenotmart.com/wp-content/uploads/2020/04/10-cong-dung-tuyet-voi-cua-hoa-cuc-65867-600x600.jpg\" style=\"height:547px; width:547px\" /></p>\r\n\r\n<p><strong>N&ecirc;n uống tr&agrave; hoa c&uacute;c v&agrave;o thời điểm n&agrave;o?</strong></p>\r\n\r\n<p>Việc thưởng tr&agrave; hoa c&uacute;c đ&ocirc;i khi l&agrave; do sở th&iacute;ch. Tuy nhi&ecirc;n, để ph&aacute;t huy t&aacute;c dụng của tr&agrave; hoa c&uacute;c bạn n&ecirc;n ch&uacute; &yacute; đến thời điểm uống để đạt c&ocirc;ng dụng cao nhất.</p>\r\n\r\n<p>&ndash; Uống tr&agrave; hoa c&uacute;c sau c&aacute;c bữa ăn ch&iacute;nh: Nhiều người thưởng tr&agrave; hoa c&uacute;c sau bữa ăn chừng 20 ph&uacute;t. Th&oacute;i quen đ&oacute; ho&agrave;n to&agrave;n đ&uacute;ng đắn v&agrave; c&oacute; lợi bởi n&oacute; hỗ trợ ti&ecirc;u h&oacute;a tốt hơn, khi uống v&agrave;o bữa tối c&oacute; thể gi&uacute;p định t&acirc;m, an thần, tạo giấc ngủ s&acirc;u v&agrave; thức dậy khoan kho&aacute;i.</p>\r\n\r\n<p>&ndash; Uống tr&agrave; hoa c&uacute;c v&agrave;o c&aacute;c m&ugrave;a trong năm: Ri&ecirc;ng về c&aacute;c m&ugrave;a, bạn c&oacute; thể chọn lựa uống tr&agrave; hoa c&uacute;c quanh năm khi n&oacute; đều ph&aacute;t huy c&ocirc;ng dụng của m&igrave;nh. M&ugrave;a h&egrave; c&oacute; thể l&agrave;m m&aacute;t cơ thể, thanh nhiệt v&agrave; giải độc. M&ugrave;a đ&ocirc;ng uống tr&agrave; hoa c&uacute;c gi&uacute;p giữ ấm cơ thể, tạo độ ẩm cho da, l&agrave;m giảm vết nhăn do thời tiết.</p>', NULL, NULL, '🍃🍃𝟏𝟎 𝐭𝐚́𝐜 𝐝𝐮̣𝐧𝐠 𝐭𝐮𝐲𝐞̣̂𝐭 𝐯𝐨̛̀𝐢 𝐜𝐮̉𝐚 𝐭𝐫𝐚̀ 𝐡𝐨𝐚 𝐜𝐮́𝐜🍃🍃\r\n\r\nTrà hoa cúc – Thức uống thần kỳ cho sức khỏe người Việt....', 1, '2020-07-29 07:41:45', '2020-07-30 01:49:59'),
(4, 'Hướng dẫn thanh toán', 'huong-dan-thanh-toan', 8, 1, 'Blogs/article_1581935677_367.png', '<p><strong>C&aacute;c h&igrave;nh thức thanh to&aacute;n của FORGET ME NOT MART</strong></p>\r\n\r\n<p>Ngay sau khi qu&yacute; kh&aacute;ch h&agrave;ng đặt h&agrave;ng th&agrave;nh c&ocirc;ng một vấn đề kh&aacute;c m&agrave; c&aacute;c bạn đang quan t&acirc;m đ&oacute; ch&iacute;nh l&agrave; h&igrave;nh thức thanh to&aacute;n phải kh&ocirc;ng n&agrave;o? Nắm được t&acirc;m l&yacute; đ&oacute;, sau đ&acirc;y ch&uacute;ng t&ocirc;i xin ph&eacute;p được giới thiệu&nbsp;<strong>03 h&igrave;nh thức thanh to&aacute;n</strong>&nbsp;đang được &aacute;p dụng tại FORGET ME NOT MART.</p>\r\n\r\n<h4><strong>&nbsp;</strong></h4>\r\n\r\n<h4><strong>1. H&igrave;nh thức thứ nhất: Thanh to&aacute;n tiền mặt tại nh&agrave; khi nhận h&agrave;ng th&ocirc;ng qua h&igrave;nh thức chuyển ph&aacute;t nhanh, COD hay giao h&agrave;ng trực tuyến.</strong></h4>\r\n\r\n<p>Ngay sau khi nh&acirc;n vi&ecirc;n giao h&agrave;ng đến, kh&aacute;ch h&agrave;ng c&oacute; thể kiểm tra sản phẩm về h&igrave;nh thức đảm bảo c&oacute; đảm bảo hay kh&ocirc;ng. Nếu đảm bảo kh&aacute;ch h&agrave;ng nhận h&agrave;ng v&agrave; thanh to&aacute;n trực tiếp cho nh&acirc;n vi&ecirc;n giao h&agrave;ng theo gi&aacute; trị tiền tr&ecirc;n h&oacute;a đơn v&agrave; ph&iacute; vận chuyển (nếu c&oacute;).</p>\r\n\r\n<p>Ngo&agrave;i ra, kh&aacute;ch h&agrave;ng kh&ocirc;ng phải thanh to&aacute;n bất kỳ 1 chi ph&iacute; n&agrave;o kh&aacute;c.</p>\r\n\r\n<h4><strong>&nbsp;</strong></h4>\r\n\r\n<h4><strong>2. H&igrave;nh thức thứ hai: Chuyển khoản qua ng&acirc;n h&agrave;ng trong trường hợp h&agrave;ng h&oacute;a l&agrave;m qu&agrave; tặng qu&agrave; biếu.&nbsp;</strong></h4>\r\n\r\n<p>Trường hợp n&agrave;y &aacute;p dụng với đối tượng kh&aacute;ch h&agrave;ng muốn mua h&agrave;ng để l&agrave;m qu&agrave; tặng qu&agrave; biếu cho người th&acirc;n v&agrave; đồng nghiệp của m&igrave;nh. Kh&aacute;ch h&agrave;ng sẽ chuyển khoản trước cho FORGET ME NOT MART 100% gi&aacute; trị đơn h&agrave;ng v&agrave; ph&iacute; vận chuyển (nếu c&oacute;).</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Khi chuyển khoản, phần nội dung chuyển khoản bạn vui l&ograve;ng:<br />\r\n1.GHI R&Otilde; T&Ecirc;N FACEBOOK<br />\r\n2.số điện thoại<br />\r\nđể tiện cho việc đối chiếu bạn nh&eacute;</p>\r\n\r\n<p>C&aacute;c t&agrave;i khoản ng&acirc;n h&agrave;ng hiện tại của FORGET ME NOT MART như sau:</p>\r\n\r\n<h2><em><strong>T&agrave;i khoản ng&acirc;n h&agrave;ng Techcombank</strong></em></h2>\r\n\r\n<ul>\r\n	<li>Ng&acirc;n h&agrave;ng Techcombank:</li>\r\n	<li>19027382293017</li>\r\n	<li>chi nh&aacute;nh L&yacute; Th&aacute;i Tổ</li>\r\n	<li>Chủ t&agrave;i khoản: Trần Ngọc Anh</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><em>Sau khi qu&yacute; kh&aacute;ch chuyển khoản, Qu&yacute; kh&aacute;ch vui l&ograve;ng chụp lại bi&ecirc;n lai chuyển tiền, x&aacute;c nhận chuyển khoản th&agrave;nh c&ocirc;ng&nbsp;</em><em>v&agrave; li&ecirc;n hệ tới số Hotline&nbsp;<strong>0902293313</strong>&nbsp;để được hỗ trợ.&nbsp;</em></p>\r\n\r\n<h4><strong>&nbsp;</strong></h4>\r\n\r\n<h4><strong>3. H&igrave;nh thức thứ ba: Thanh to&aacute;n tiền mặt tại cơ sở của&nbsp;</strong>FORGET ME NOT MART</h4>\r\n\r\n<p>Trường hợp n&agrave;y &aacute;p dụng đối với kh&aacute;ch h&agrave;ng c&oacute; nhu cầu đến trực tiếp xem chất lượng của sản phẩm. Kh&aacute;ch h&agrave;ng đến trực tiếp cơ sở để mua h&agrave;ng v&agrave; thanh to&aacute;n trực tiếp bằng tiền mặt tại cơ sở.</p>\r\n\r\n<p><em>Để biết th&ecirc;m th&ocirc;ng tin chi tiết, Qu&yacute; kh&aacute;ch vui l&ograve;ng li&ecirc;n hệ trực tiếp với nh&acirc;n vi&ecirc;n tư vấn b&aacute;n h&agrave;ng hoặc li&ecirc;n hệ&nbsp;</em><strong><em>HOTLINE&nbsp;0902293313</em></strong><em>&nbsp;để được hỗ trợ. Xin tr&acirc;n trọng cảm ơn!</em></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h1><a href=\"https://www.beemart.vn/phan-nan-khieu-nai\">PH&Agrave;N N&Agrave;N &amp; KHIẾU NẠI</a></h1>\r\n\r\n<p>Ch&uacute;ng t&ocirc;i biết rằng một doanh nghiệp chỉ c&oacute; thể ph&aacute;t triển bền vững nếu mang lại gi&aacute; trị cho kh&aacute;ch h&agrave;ng, được ch&iacute;nh kh&aacute;ch h&agrave;ng thừa nhận gi&aacute; trị ấy.</p>\r\n\r\n<p>V&igrave; vậy FORGET ME NOT MART lu&ocirc;n lắng nghe v&agrave; tiếp thu mọi &nbsp;&yacute; kiến từ kh&aacute;ch h&agrave;ng. Nếu trong qu&aacute; tr&igrave;nh phục vụ, c&oacute; điểm n&agrave;o chưa chu đ&aacute;o để qu&yacute; kh&aacute;ch chưa h&agrave;i l&ograve;ng, rất mong qu&yacute; kh&aacute;ch phản hồi lại cho FORGET ME NOT&nbsp; MART để ch&uacute;ng t&ocirc;i c&oacute; thể phục vụ tốt hơn.</p>', NULL, NULL, 'Ngay sau khi quý khách hàng đặt hàng thành công một vấn đề khác mà các bạn đang quan tâm đó chính là hình thức thanh toán phải không nào? Nắm được tâm lý đó, sau đây chúng tôi xin phép được giới thiệu 03 hình thức thanh toán đang được áp dụng tại FORGET ME NOT MART....', 1, '2020-07-29 09:19:11', '2020-07-30 01:49:30'),
(7, '“TÔI KHÔNG BIẾT LOẠI TRÀ NÀO PHÙ HỢP VỚI TÔI”', '“toi-khong-biet-loai-tra-nao-phu-hop-voi-toi”', 5, 1, 'Blogs/106113078_1515137431989599_8603990580089223301_n_f588b9a3f84647cdb71e3c62d3319d28_grande.jpg', '<p>&ldquo;T&ocirc;i kh&ocirc;ng biết loại tr&agrave; n&agrave;o ph&ugrave; hợp với t&ocirc;i&rdquo;<br />\r\n☛ h&atilde;y để t&ocirc;i n&oacute;i cho bạn biết<br />\r\n-------------------<br />\r\nTr&agrave; c&oacute; nhiều chức năng d&agrave;nh cho sức khỏe. S&aacute;u loại tr&agrave; ch&iacute;nh c&oacute; nguồn gốc từ việc chế biến l&aacute; tươi của c&acirc;y tr&agrave;. Ch&uacute;ng c&oacute; c&aacute;c thuộc t&iacute;nh cơ bản tốt cho sức khỏe như nhau nhau.<br />\r\n---------------------<br />\r\nTuy nhi&ecirc;n, do nguy&ecirc;n liệu th&ocirc; kh&aacute;c nhau v&agrave; quy tr&igrave;nh kh&aacute;c nhau, s&aacute;u loại tr&agrave; ch&iacute;nh c&oacute; sự kh&aacute;c biệt r&otilde; r&agrave;ng về chất lượng v&agrave; th&agrave;nh phần chức năng. Do đ&oacute;, ảnh hưởng sức khỏe của c&aacute;c loại tr&agrave; kh&aacute;c nhau trở th&agrave;nh n&eacute;t đặc trưng<br />\r\n1. Tr&agrave; xanh:<br />\r\nTr&agrave; xanh c&oacute; nhiều t&aacute;c dụng kh&aacute;c nhau như tr&igrave; ho&atilde;n l&atilde;o h&oacute;a, l&agrave;m mới, l&agrave;m mới l&agrave;n da, l&agrave;m đẹp da, lợi tiểu v&agrave; mệt mỏi.<br />\r\nTr&agrave; xanh chứa chất chống oxy h&oacute;a mạnh mẽ v&agrave; vitamin C, c&oacute; thể loại bỏ c&aacute;c gốc tự do trong cơ thể v&agrave; tiết ra c&aacute;c hormone chống lại căng thẳng.<br />\r\nMột lượng nhỏ caffeine trong n&oacute; c&oacute; thể k&iacute;ch th&iacute;ch hệ thống trung t&acirc;m v&agrave; tiếp th&ecirc;m sinh lực cho tinh thần.</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000224227/file/106113078_1515137431989599_8603990580089223301_n_f588b9a3f84647cdb71e3c62d3319d28_grande.jpg\" /></p>\r\n\r\n<p>2. Tr&agrave; &Ocirc; long: Tr&agrave; giảm b&eacute;o v&agrave; giảm b&eacute;o<br />\r\nTr&agrave; oolong chứa hơn 450 th&agrave;nh phần h&oacute;a học hữu cơ v&agrave; hơn 40 nguy&ecirc;n tố kho&aacute;ng v&ocirc; cơ.<br />\r\nUống tr&agrave; &ocirc; long thường c&oacute; thể loại bỏ oxy hoạt động g&acirc;y hại cho sắc đẹp v&agrave; sức khỏe, n&oacute; cũng c&oacute; thể giảm b&eacute;o v&agrave; chống khối u.<br />\r\nSo với tr&agrave; đen v&agrave; tr&agrave; xanh, tr&agrave; &ocirc; long c&oacute; thể k&iacute;ch th&iacute;ch hoạt động của enzyme lipolytic tụy.<br />\r\nNgo&agrave;i việc giảm hấp thu thức ăn c&oacute; đường v&agrave; chất b&eacute;o, n&oacute; cũng c&oacute; thể th&uacute;c đẩy qu&aacute; tr&igrave;nh đốt ch&aacute;y chất b&eacute;o v&agrave; giảm sự t&iacute;ch tụ mỡ bụng.</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000224227/file/104872088_1515136665323009_6325290927955548638_n_6d78f07aa79f4214862b04451a304975_grande.jpg\" /></p>\r\n\r\n<p>3. Tr&agrave; trắng: C&oacute; thể hạ đường huyết<br />\r\nTr&agrave; trắng l&agrave; một loại tr&agrave; bắt buộc phải c&oacute; ở nhiều khu vực v&agrave;o m&ugrave;a h&egrave;, c&oacute; thể ngăn ngừa ung thư, say nắng, giải độc v&agrave; đau răng.<br />\r\nNgo&agrave;i c&aacute;c chất dinh dưỡng kh&aacute;c vốn c&oacute; trong tr&agrave;, tr&agrave; trắng c&ograve;n chứa c&aacute;c enzyme hoạt động cần thiết cho cơ thể để th&uacute;c đẩy c&acirc;n bằng lượng đường trong m&aacute;u.<br />\r\nTr&agrave; trắng c&oacute; t&aacute;c dụng đối với ba loại kh&aacute;ng thể (chống bức xạ, chống oxy h&oacute;a, chống khối u) v&agrave; ba hạ (hạ huyết &aacute;p, hạ mỡ m&aacute;u, hạ đường huyết), cũng như nu&ocirc;i dưỡng tim, nu&ocirc;i dưỡng gan, nu&ocirc;i dưỡng mắt, nu&ocirc;i dưỡng tinh thần. Chức năng cơ thể.</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000224227/file/104430427_1515136718656337_6495858920196047384_n_984f1e99c562483791f25e4d6e4f9c49_grande.jpg\" /></p>\r\n\r\n<p>4. Hồng tr&agrave;: Điều chỉnh l&aacute; l&aacute;ch v&agrave; dạ d&agrave;y<br />\r\nHồng tr&agrave; c&oacute; t&aacute;c dụng l&agrave;m ấm dạ d&agrave;y, l&agrave;m mới suy nghĩ, loại bỏ mệt mỏi, loại bỏ ph&ugrave; nề, chống ti&ecirc;u chảy, kh&aacute;ng khuẩn v&agrave; tăng cường khả năng miễn dịch.<br />\r\nHồng tr&agrave; c&oacute; t&iacute;nh chất nhẹ v&agrave; vị &ecirc;m dịu. Uống tr&agrave; đen thường xuy&ecirc;n với đường hoặc sữa kh&ocirc;ng chỉ c&oacute; thể l&agrave;m ấm dạ d&agrave;y m&agrave; c&ograve;n giảm vi&ecirc;m v&agrave; bảo vệ ni&ecirc;m mạc dạ d&agrave;y. N&oacute; cũng c&oacute; t&aacute;c dụng nhất định trong điều trị lo&eacute;t.<br />\r\nHồng tr&agrave; gi&uacute;p đường ti&ecirc;u h&oacute;a, th&uacute;c đẩy sự th&egrave;m ăn, c&oacute; thể ngăn ngừa hiệu quả bệnh nhồi m&aacute;u cơ tim, tăng cường chức năng của cơ tim, hạ đường huyết v&agrave; tăng huyết &aacute;p, ngăn ngừa s&acirc;u răng v&agrave; ngộ độc thực phẩm.</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000224227/file/104890374_1515136755323000_5994767695482445168_n_84babded126b42ffa91b93c99be7d239_grande.jpg\" /></p>\r\n\r\n<p>5. Tr&agrave; v&agrave;ng:<br />\r\nTr&agrave; v&agrave;ng thuộc về loại tr&agrave; l&ecirc;n men. Sản xuất tr&agrave; v&agrave;ng tương tự như tr&agrave; xanh.<br />\r\nQu&aacute; tr&igrave;nh nh&agrave;m ch&aacute;n n&agrave;y l&agrave; t&iacute;nh năng ch&iacute;nh của phương ph&aacute;p sản xuất tr&agrave; v&agrave;ng, v&agrave; n&oacute; cũng l&agrave; điểm kh&aacute;c biệt cơ bản của tr&agrave; xanh.<br />\r\nTr&agrave; v&agrave;ng rất gi&agrave;u chất dinh dưỡng phong ph&uacute; như polyphenol trong tr&agrave;, axit amin, đường h&ograve;a tan v&agrave; vitamin, rất c&oacute; lợi cho cơ thể con người.</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000224227/file/105571678_1515136811989661_3147572879712633764_n_1b8751de228a4c50a3b59dc303514468_grande.jpg\" /></p>\r\n\r\n<p>6.Tr&agrave; đen:<br />\r\nUống tr&agrave; đen v&agrave;o m&ugrave;a h&egrave; kh&ocirc;ng chỉ c&oacute; thể l&agrave;m giảm nhiệt, giảm kh&aacute;t, lợi tiểu v&agrave; giải độc, m&agrave; c&ograve;n loại bỏ dầu mỡ v&agrave; ph&acirc;n hủy chất b&eacute;o.<br />\r\nC&aacute;c flavonoid, catechin v&agrave; vitamin C v&agrave; E trong tr&agrave; đen c&oacute; thể đ&oacute;ng vai tr&ograve; chống oxy h&oacute;a. Ngo&agrave;i ra, theanine trong tr&agrave; đen c&oacute; t&aacute;c dụng hạ huyết &aacute;p tốt.</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000224227/file/105707211_1515136855322990_1074114304639130480_n_1e61df2d035e434d96d6f3bc5402475a_grande.jpg\" /></p>\r\n\r\n<p>T&aacute;c dụng của c&aacute;c loại tr&agrave; nổi tiếng kh&aacute;c nhau:</p>\r\n\r\n<p>****Tr&agrave; thiết quan &acirc;m<br />\r\nNgo&agrave;i chức năng chăm s&oacute;c sức khỏe n&oacute;i chung của tr&agrave;, n&oacute; c&ograve;n c&oacute; t&aacute;c dụng chống l&atilde;o h&oacute;a, chống ung thư, chống xơ cứng động mạch, ph&ograve;ng ngừa v&agrave; điều trị bệnh tiểu đường, giảm c&acirc;n v&agrave; tập thể h&igrave;nh, hạ hỏa, ti&ecirc;u chảy.</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000224227/file/105495875_1515136905322985_558853079199474106_n_5b203de184544889900314538c90b3ad_grande.jpg\" /></p>\r\n\r\n<p>****Tr&agrave; Vũ Di Nham:<br />\r\nChứa nhiều th&agrave;nh phần h&oacute;a học v&agrave; caffeine, polyphenol trong tr&agrave;, lipopolysacarit, v.v ... T&iacute;nh chất dược l&yacute; của n&oacute; đặc biệt quan trọng.&nbsp;</p>\r\n\r\n<p>N&oacute; kh&ocirc;ng chỉ c&oacute; thể l&agrave;m mới t&acirc;m tr&iacute; của bạn, cải thiện thị lực, cải thiện sức khỏe của bạn, giảm lo lắng, l&agrave;m dịu cơn kh&aacute;t, khử tr&ugrave;ng, l&agrave;m sạch, lợi tiểu, giảm nhiệt v&agrave; tỉnh t&aacute;o.</p>\r\n\r\n<p>Ngo&agrave;i ra c&ograve;n c&oacute; t&aacute;c dụng chống tăng huyết &aacute;p, giảm c&acirc;n, chống bức xạ, chống ung thư, chống l&atilde;o h&oacute;a v&agrave; c&aacute;c t&aacute;c dụng k&eacute;o d&agrave;i tuổi thọ kh&aacute;c.</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000224227/file/104868759_1515137035322972_5184036918094104103_n_9a12ba90e2fb42e9adfc8ca1808c8a7f_grande.jpg\" /></p>\r\n\r\n<p>*****Tr&agrave; Long Tĩnh :<br />\r\nC&oacute; thể thanh lọc mạch m&aacute;u, ngăn ngừa đột quỵ v&agrave; bệnh tim<br />\r\n*****Tr&agrave; B&iacute;ch Loa Xu&acirc;n:<br />\r\nThuộc loại tr&agrave; xanh c&oacute; t&aacute;c dụng chống l&atilde;o h&oacute;a, kh&aacute;ng khuẩn, chống ung thư v&agrave; giảm mỡ m&aacute;u, giảm b&eacute;o v&agrave; giảm mỡ, chống s&acirc;u răng, h&ocirc;i miệng, chống ung thư, l&agrave;m trắng v&agrave; chống tia cực t&iacute;m.<br />\r\nN&oacute; kh&ocirc;ng chỉ c&oacute; thể l&agrave;m mới t&acirc;m tr&iacute; của bạn, cải thiện thị lực, cải thiện sức khỏe của bạn, giảm lo lắng, l&agrave;m dịu cơn kh&aacute;t, khử tr&ugrave;ng, l&agrave;m sạch, lợi tiểu, giảm nhiệt v&agrave; tỉnh t&aacute;o.<br />\r\nNgo&agrave;i ra c&ograve;n c&oacute; t&aacute;c dụng chống tăng huyết &aacute;p, giảm c&acirc;n, chống bức xạ, chống ung thư, chống l&atilde;o h&oacute;a v&agrave; c&aacute;c t&aacute;c dụng k&eacute;o d&agrave;i tuổi thọ kh&aacute;c.<br />\r\n*****Tr&agrave; Ho&agrave;ng Sơn Mao Phong<br />\r\nC&oacute; một số lợi &iacute;ch nhất định cho việc l&agrave;m cạn kiệt lưu th&ocirc;ng m&aacute;u, giảm cholesterol, tăng mao mạch đơn v&agrave; tăng cường chống đ&ocirc;ng m&aacute;u.<br />\r\nĐồng thời, Ho&agrave;ng Sơn Mao Phong cũng c&oacute; thể đ&oacute;ng vai tr&ograve; ngăn ngừa v&agrave; chống ung thư.</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000224227/file/106597672_1515137125322963_6722285263666765895_n_6d8b1cfcdce24ad6a87650e494f27c0c_grande.jpg\" /></p>\r\n\r\n<p>*****Tr&agrave; xanh Lư Sơn V&acirc;n Vụ<br />\r\nC&oacute; s&aacute;u t&aacute;c dụng ch&iacute;nh l&agrave; hạ lipid m&aacute;u, giảm c&acirc;n, hạ huyết &aacute;p v&agrave; chống xơ cứng động mạch.<br />\r\nỨc chế sản xuất tế b&agrave;o khối u, nu&ocirc;i dưỡng dạ d&agrave;y, bảo vệ dạ d&agrave;y, củng cố răng v&agrave; răng, chống vi&ecirc;m, khử tr&ugrave;ng, kiết lỵ, chống l&atilde;o h&oacute;a v&agrave; c&aacute;c t&aacute;c dụng kh&aacute;c.<br />\r\n*****Tr&agrave; Lục An<br />\r\nC&oacute; lợi cho việc ngăn ngừa v&agrave; ngăn chặn ung thư, c&oacute; lợi cho việc điều trị chăm s&oacute;c sức khỏe c&aacute;c bệnh tim mạch, c&oacute; lợi cho việc giảm c&acirc;n v&agrave; l&agrave;m sạch chất b&eacute;o đường ruột, c&oacute; t&aacute;c dụng l&agrave;m sạch nhiệt v&agrave; kh&ocirc;, giải độc v&agrave; l&agrave;m đẹp</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000224227/file/104952266_1515137181989624_8467706366318954837_n_100e609589de4088971de20f7fae1537_grande.jpg\" /></p>\r\n\r\n<p>*****Tr&agrave; Mao Ti&ecirc;m T&iacute;n Dương<br />\r\nKh&ocirc;ng chỉ c&oacute; h&agrave;m lượng chất dinh dưỡng cao, m&agrave; c&ograve;n kh&ocirc;ng c&oacute; tinh thần minh mẫn, tản nhiệt v&agrave; l&agrave;m dịu cơn kh&aacute;t, phiền h&agrave; v&agrave; sảng kho&aacute;i, ti&ecirc;u h&oacute;a v&agrave; l&aacute;ch.<br />\r\n*****Tr&agrave; Th&aacute;i B&igrave;nh Hầu Kh&ocirc;i<br />\r\nBảo vệ bức xạ, hạ huyết &aacute;p, ngăn ngừa s&acirc;u răng, trị h&ocirc;i miệng.</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000224227/file/79303688_1515137221989620_4094120818882606229_n_137e33d690364d069213896874905461_grande.jpg\" /></p>\r\n\r\n<p>*****Tr&agrave; Qu&acirc;n Sơn Ng&acirc;n Ch&acirc;m<br />\r\nC&oacute; lợi &iacute;ch sức khỏe của tr&agrave; n&oacute;i chung.<br />\r\nGiảm mệt mỏi, dễ ti&ecirc;u h&oacute;a, giải độc v&agrave; l&agrave;m dịu cơn kh&aacute;t, thị lực lợi tiểu, tăng dinh dưỡng.<br />\r\nN&oacute; cũng c&oacute; t&aacute;c dụng diệt khuẩn, chống oxy h&oacute;a, chống l&atilde;o h&oacute;a v&agrave; ngăn ngừa ung thư.<br />\r\n*****Tr&agrave; Kỳ M&ocirc;n Hồng Tr&agrave;<br />\r\nC&oacute; thể gi&uacute;p ti&ecirc;u h&oacute;a đường ti&ecirc;u h&oacute;a, th&uacute;c đẩy sự th&egrave;m ăn, lợi tiểu, loại bỏ ph&ugrave; nề, v&agrave; tăng cường chức năng cơ tim.</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000224227/file/106363699_1515137348656274_4164640128900286940_n_058f8f9616a94572bc30aa5332220753_grande.jpg\" /></p>\r\n\r\n<p>*****Tr&agrave; trắng Cống Mi<br />\r\nĐược l&agrave;m từ kỹ thuật chế biến tr&agrave; trắng truyền thống bằng c&aacute;ch sử dụng l&aacute; b&uacute;p ph&ugrave; hợp với c&aacute;c giống tr&agrave; trắng.<br />\r\nH&igrave;nh dạng của chồi v&agrave; l&aacute; được ph&acirc;n nh&aacute;nh v&agrave; c&oacute; một tr&aacute;i tim. S&uacute;p tr&agrave; c&oacute; vị tươi m&aacute;t v&agrave; ngọt ng&agrave;o khi nếm, hương thơm tươi v&agrave; tinh khiết.<br />\r\nTr&agrave; trắng c&oacute; t&aacute;c dụng đối với ba loại kh&aacute;ng thể (chống bức xạ, chống oxy h&oacute;a, chống khối u) v&agrave; ba giọt (hạ huyết &aacute;p, hạ mỡ m&aacute;u, hạ đường huyết), cũng như nu&ocirc;i dưỡng tim, nu&ocirc;i dưỡng gan, nu&ocirc;i dưỡng mắt, nu&ocirc;i dưỡng tinh thần, nu&ocirc;i dưỡng tinh thần. Chức năng cơ thể.</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000224227/file/106414430_1515137395322936_778168989352126567_n_7050edc828af453c895b686db22427b9_grande.jpg\" /></p>\r\n\r\n<p>C&oacute; rất nhiều lợi &iacute;ch của tr&agrave;. Chỉ bằng c&aacute;ch hiểu c&aacute;c chức năng sức khỏe c&oacute; lợi nhất của từng loại tr&agrave;, bạn c&oacute; thể chọn loại tr&agrave; ph&ugrave; hợp với thể chất của m&igrave;nh.<br />\r\nNguồn: ST</p>', NULL, NULL, '“Tôi không biết loại trà nào phù hợp với tôi”\r\n☛ hãy để tôi nói cho bạn biết', 1, '2020-07-29 10:43:03', '2020-07-30 01:51:23'),
(9, 'Chất liệu ấm trà', 'chat-lieu-am-tra', 9, 1, 'Blogs/0c1d54eaaa0b4f55161a_5913908d73394f18b0c4bd3835debc65_9abe850bf051432a9dad3869f15afcd6.jpg', '<h3>Chất liệu ấm tr&agrave;</h3>\r\n\r\n<p>Chất liệu Do h&agrave;m lượng sắt cao, ấm tr&agrave; tử sa thường xuất hiện m&agrave;u n&acirc;u đỏ hoặc m&agrave;u t&iacute;m thấm. V&agrave; đất tử sa c&oacute; t&iacute;nh d&iacute;nh kết cao, điều n&agrave;y khiến cho việc tạo h&igrave;nh ấm tr&agrave; ho&agrave;n hảo rất kh&oacute; khăn. Do đ&oacute;, thậm ch&iacute; nhiều sản phẩm đ&atilde; ho&agrave;n th&agrave;nh vẫn c&oacute; số lỗi.</p>\r\n\r\n<p>Đặc biệt, một ấm tr&agrave; tử sa được nu&ocirc;i dưỡng tốt sẽ trở n&ecirc;n mịn m&agrave;ng v&agrave; b&oacute;ng bẩy hơn khi thời gian tr&ocirc;i qua. Kh&ocirc;ng kh&iacute; rất nhỏ giữa c&aacute;c lớp đấy n&agrave;y l&agrave;m cho ấm tr&agrave; c&oacute; thể thở v&agrave; lưu giữ hương thơm của tr&agrave;. V&igrave; vậy, ch&uacute;ng t&ocirc;i khuy&ecirc;n bạn n&ecirc;n pha một loại tr&agrave; với một ấm tr&agrave;.</p>\r\n\r\n<p>Lưu &yacute;: L&agrave;m ấm ấm tr&agrave; với nước 40oC &ndash; 50oC trước khi đổ nước s&ocirc;i v&agrave;o đ&oacute;, đặc biệt l&agrave; trong m&ugrave;a đ&ocirc;ng lạnh. Bởi v&igrave; Zhuni c&oacute; tỷ lệ co thắt cao v&agrave; kh&ocirc;ng thể chống lại sự thay đổi nhiệt độ tức thời. Ấm tr&agrave; dễ vỡ, xin vui l&ograve;ng xử l&yacute; cẩn thận. Nguồn Gốc Quận Nghi Hưng, thủ đ&ocirc; gốm của Trung Quốc, c&oacute; một lịch sử l&agrave;m gốm rất l&acirc;u đời trong khoảng 6500 năm. Nghi Hưng tự h&agrave;o c&oacute; nguồn t&agrave;i nguy&ecirc;n dồi d&agrave;o của, tr&agrave;, tre v&agrave; than.</p>\r\n\r\n<p>Tất cả đều l&agrave; cơ sở t&agrave;i nguy&ecirc;n quan trọng để l&agrave;m gốm. C&aacute;c sản phẩm l&agrave;m từ đất tử sa Nghi Hưng đ&atilde; được trao nhiều giải thưởng cả trong v&agrave; ngo&agrave;i nước. Một số t&aacute;c phẩm xuất sắc đ&atilde; được trao tặng l&agrave;m qu&agrave; tặng quốc gia trong truyền th&ocirc;ng quốc tế.</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<img alt=\"\" src=\"http://localhost:81/shop_teaa/public/uploads/Blogs/0c1d54eaaa0b4f55161a_5913908d73394f18b0c4bd3835debc65_9abe850bf051432a9dad3869f15afcd6.jpg\" style=\"height:175px; width:250px\" /></p>', NULL, NULL, 'Chất liệu Do hàm lượng sắt cao, ấm trà tử sa thường xuất hiện màu nâu đỏ hoặc màu tím thấm. Và đất tử sa có tính dính kết cao, điều này khiến cho việc tạo hình ấm trà hoàn hảo rất khó khăn. Do đó, thậm chí nhiều sản phẩm đã hoàn thành vẫn có số lỗi.', 1, '2020-07-29 11:10:48', '2020-07-29 11:10:48'),
(10, 'UỐNG TRÀ Ô LONG CÓ TÁC DỤNG GÌ? NÊN UỐNG KHI NÀO? 7 ĐIỀU MÀ ÍT AI BIẾT VỀ TRÀ Ô LONG', 'uong-tra-o-long-co-tac-dung-gi-nen-uong-khi-nao-7-dieu-ma-it-ai-biet-ve-tra-o-long', 5, 1, 'Banners/banner1.jpg', '<p>Tr&agrave; &Ocirc; Long hiện nay chỉ chiểm khoảng 2% lượng tr&agrave; ti&ecirc;u thụ tr&ecirc;n to&agrave;n thế giới. Tuy nhi&ecirc;n, tr&agrave; &Ocirc; Long lu&ocirc;n được thế giới đ&aacute;nh gi&aacute; cao bởi hương vị phong ph&uacute;, chất lượng cao v&agrave; nhiều lợi &iacute;ch tốt cho sức khỏe. Trong b&agrave;i viết n&agrave;y, ch&uacute;ng ta sẽ c&ugrave;ng b&agrave;n về &ldquo;Uống tr&agrave; &Ocirc; Long c&oacute; t&aacute;c dụng g&igrave;? V&igrave; sao tr&agrave; &Ocirc; Long lại c&oacute; gi&aacute; cao hơn c&aacute;c loại tr&agrave; kh&aacute;c?&rdquo;Nguồn gốc tr&agrave; &Ocirc;...</p>\r\n\r\n<p><a href=\"https://teashop.vn/uong-hong-tra-co-tac-dung-gi/\" title=\"Uống Hồng Trà có tác dụng gì? 7 công dụng ít ai biết về Hồng Trà\"><img alt=\"uong-hong-tra-co-tac-dung-gi\" src=\"https://teashop.vn/wp-content/uploads/2019/04/uong-hong-tra-co-tac-dung-gi.jpg\" style=\"height:700px; width:900px\" /></a></p>\r\n\r\n<p>Nếu l&agrave; nh&acirc;n vi&ecirc;n pha chế, kh&ocirc;ng ai c&ograve;n lạ lẫm với Hồng Tr&agrave;. Bạn sẽ thường hay bắt gặp t&ecirc;n Hồng Tr&agrave; trong c&aacute;c qu&aacute;n tr&agrave; sữa, qu&aacute;n c&agrave; ph&ecirc;, nh&agrave; h&agrave;ng, kh&aacute;ch sạn. Vậy&nbsp;Hồng Tr&agrave; l&agrave; g&igrave;? Uống hồng tr&agrave; c&oacute; t&aacute;c dụng g&igrave; cho sức khỏe? Hồng Tr&agrave; l&agrave; g&igrave;? Hồng Tr&agrave; c&oacute; t&ecirc;n gọi kh&aacute;c l&agrave; tr&agrave; đen, t&ecirc;n tiếng anh l&agrave; Black Tea. Kh&aacute;c với c&aacute;c loại tr&agrave; kh&aacute;c, Hồng Tr&agrave; được k&ecirc;n men to&agrave;n phần, oxi...</p>', NULL, NULL, 'Trà Ô Long hiện nay chỉ chiểm khoảng 2% lượng trà tiêu thụ trên toàn thế giới. Tuy nhiên, trà Ô Long luôn được thế giới đánh giá cao bởi hương vị phong phú, chất lượng cao và nhiều lợi ích tốt cho sức khỏe. Trong bài viết này, chúng ta sẽ cùng bàn về “Uống trà Ô Long có tác dụng gì? Vì sao trà Ô Long lại có giá cao hơn các loại trà khác?”Nguồn gốc trà Ô...', 1, '2020-07-29 12:46:03', '2020-08-04 07:22:59');
INSERT INTO `blogs` (`id`, `name`, `slug`, `id_cate`, `id_admin`, `image`, `content`, `meta_title`, `meta_keyword`, `meta_desc`, `status`, `created_at`, `updated_at`) VALUES
(11, 'TRÀ MỘC LÀ GÌ? 5 CÁCH PHÂN BIỆT TRÀ MỘC VÀ TRÀ TẨM', 'tra-moc-la-gi-5-cach-phan-biet-tra-moc-va-tra-tam', 5, 1, 'Products/69428515_1674780352654323_5704543036759867392_o.jpg', '<pre>\r\n<span style=\"font-size:12px\"><span style=\"font-family:Times New Roman,Times,serif\">Kh&aacute;i niệm tr&agrave; mộc đ&atilde; ra đời từ rất l&acirc;u nhưng chưa c&oacute; b&agrave;i viết n&agrave;o đề cập nhiều về n&oacute;. C&aacute;c nh&agrave; cung cấp b&aacute;n tr&agrave; tẩm nhưng n&oacute;i với người d&ugrave;ng đ&oacute; l&agrave; tr&agrave; mộc. Điều n&agrave;y ảnh hưởng nghi&ecirc;m trọng đến thị trường tr&agrave; Việt Nam.</span>\r\n\r\n<span style=\"font-family:Times New Roman,Times,serif\">Vậy tr&agrave; mộc l&agrave; g&igrave;?</span>\r\n\r\n<span style=\"font-family:Times New Roman,Times,serif\">Hiểu đơn giản, tr&agrave; mộc l&agrave; loại tr&agrave; thỏa m&atilde;n 2 yếu tố sau:</span></span></pre>\r\n\r\n<ul>\r\n	<li>\r\n	<pre>\r\n<span style=\"font-size:12px\"><span style=\"font-family:Times New Roman,Times,serif\">Kh&ocirc;ng tẩm hương liệu</span></span></pre>\r\n	</li>\r\n	<li>\r\n	<pre>\r\n<span style=\"font-size:12px\"><span style=\"font-family:Times New Roman,Times,serif\">Kh&ocirc;ng độn tạp chất</span></span></pre>\r\n	</li>\r\n</ul>\r\n\r\n<pre>\r\n<span style=\"font-size:12px\"><span style=\"font-family:Times New Roman,Times,serif\">Từ &ldquo;Mộc&rdquo; hiểu đơn giản l&agrave; nguy&ecirc;n bản, nguy&ecirc;n chất của l&aacute; tr&agrave; tự nhi&ecirc;n. Để sản xuất tr&agrave; mộc, nguy&ecirc;n liệu đầu v&agrave;o v&agrave; quy tr&igrave;nh chế biến phải sạch th&igrave; mới tạo ra hương vị tr&agrave; mộc 100%. Sản xuất tr&agrave; mộc đ&ograve;i hỏi nhiều chi ph&iacute; v&agrave; kỹ thuật từ kh&acirc;u trổng trọt đến sản xuất. Cũng ch&iacute;nh v&igrave; vậy m&agrave; nhiều người đ&atilde; chọn c&aacute;ch sử dụng h&oacute;a chất để mang đến hương vị cho tr&agrave;.</span>\r\n\r\n<span style=\"font-family:Times New Roman,Times,serif\">Tr&agrave; tẩm tiềm ẩn nhiều nguy hại cho sức khỏe người ti&ecirc;u d&ugrave;ng. Do đ&oacute;, nhiều chuỗi cửa h&agrave;ng c&agrave; ph&ecirc;, tr&agrave; sữa đ&atilde; chuyển qua sử dụng tr&agrave; mộc để gi&uacute;p kh&aacute;ch h&agrave;ng cảm nhận đ&uacute;ng hương vị của tr&agrave;, gi&aacute; trị của tr&agrave; Việt.</span>\r\n\r\n<span style=\"font-family:Times New Roman,Times,serif\"><img alt=\"Trà mộc là gì?\" src=\"https://teashop.vn/wp-content/uploads/2019/12/tra-moc-la-gi.jpg\" style=\"height:400px; width:600px\" /></span>\r\n\r\n<span style=\"font-family:Times New Roman,Times,serif\">Tr&agrave; Mộc l&agrave; g&igrave;?</span>\r\n\r\n<span style=\"font-family:Times New Roman,Times,serif\"><strong>TR&Agrave; TẨM L&Agrave; G&Igrave;?</strong></span>\r\n\r\n<span style=\"font-family:Times New Roman,Times,serif\">Đa phần c&aacute;c loại <strong>tr&agrave; gi&aacute; rẻ</strong> đang b&aacute;n tr&ecirc;n thị trường hiện nay đều l&agrave;<strong> tr&agrave; tẩm</strong>. Tr&agrave; tẩm l&agrave; loại tr&agrave; được tẩm ướp hương liệu trong qu&aacute; tr&igrave;nh chế biến để tr&agrave; được thơm hơn. Nguy&ecirc;n liệu l&agrave;m tr&agrave; tẩm l&agrave; c&aacute;c loại tr&agrave; chất lượng thấp, tr&agrave; vụn.</span>\r\n\r\n<span style=\"font-family:Times New Roman,Times,serif\"><strong>Ưu điểm</strong></span>\r\n\r\n<span style=\"font-family:Times New Roman,Times,serif\">Tr&agrave; tẩm n&agrave;y l&agrave; c&oacute; gi&aacute; th&agrave;nh rẻ, hương tr&agrave; rất thơm. Do đ&oacute;, tr&agrave; tẩm được nhiều chủ qu&aacute;n sử dụng trong pha chế tr&agrave; sữa, tr&agrave; tr&aacute;i c&acirc;y.</span>\r\n\r\n<span style=\"font-family:Times New Roman,Times,serif\"><strong>Nhược điểm</strong></span>\r\n\r\n<span style=\"font-family:Times New Roman,Times,serif\">Tr&agrave; tẩm hương liệu c&oacute; hương rất thơm nhưng vị tr&agrave; nhạt. Đặc biệt, tr&agrave; tẩm kh&ocirc;ng tốt cho sức khỏe của người d&ugrave;ng.</span>\r\n\r\n<span style=\"font-family:Times New Roman,Times,serif\">Vậy l&agrave;m thể n&agrave;o để ph&acirc;n biệt tr&agrave; tẩm v&agrave; tr&agrave; mộc?</span>\r\n</span></pre>\r\n\r\n<table border=\"1\" cellpadding=\"1\" cellspacing=\"1\" style=\"width:500px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<pre>\r\n<span style=\"font-size:10px\">\r\n&nbsp;</span></pre>\r\n			</td>\r\n			<td>\r\n			<pre>\r\n<span style=\"font-size:10px\"><span style=\"font-family:Times New Roman,Times,serif\"><strong>Tr&agrave; mộc</strong></span></span></pre>\r\n			</td>\r\n			<td>\r\n			<pre>\r\n<span style=\"font-size:10px\"><span style=\"font-family:Times New Roman,Times,serif\"><strong>Tr&agrave; Tẩm</strong></span></span></pre>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<pre>\r\n<span style=\"font-size:10px\"><span style=\"font-family:Times New Roman,Times,serif\"><strong>Cảm quan</strong></span></span></pre>\r\n			</td>\r\n			<td>\r\n			<pre>\r\n<span style=\"font-size:10px\"><span style=\"font-family:Times New Roman,Times,serif\">Độ ẩm vừa phải, c&aacute;nh tr&agrave; kh&ocirc;ng gi&ograve;n tan</span></span></pre>\r\n			</td>\r\n			<td>\r\n			<pre>\r\n<span style=\"font-size:10px\"><span style=\"font-family:Times New Roman,Times,serif\">C&aacute;nh tr&agrave; rất gi&ograve;n do qu&aacute; tr&igrave;nh ướp hương bằng dung dịch n&ecirc;n s&acirc;y nhiều lần.</span></span></pre>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<pre>\r\n<span style=\"font-size:10px\"><span style=\"font-family:Times New Roman,Times,serif\"><strong>Hương tr&agrave;</strong></span></span></pre>\r\n			</td>\r\n			<td>\r\n			<pre>\r\n<span style=\"font-size:10px\"><span style=\"font-family:Times New Roman,Times,serif\">Hương tr&agrave; kh&ocirc; v&agrave; hương tr&agrave; sau khi ủ tương đồng nhau.</span>\r\n\r\n\r\n\r\n<span style=\"font-family:Times New Roman,Times,serif\">Tr&agrave; kh&ocirc; thơm nhẹ nh&agrave;ng.</span></span></pre>\r\n			</td>\r\n			<td>\r\n			<pre>\r\n<span style=\"font-size:10px\"><span style=\"font-family:Times New Roman,Times,serif\">Hương tr&agrave; kh&ocirc; v&agrave; hương tr&agrave; sua khi ủ sẽ kh&aacute;c nhau. Kh&aacute;c biệt c&agrave;ng lớn th&igrave; c&agrave;ng độc hại.</span>\r\n\r\n\r\n\r\n<span style=\"font-family:Times New Roman,Times,serif\">Tr&agrave; kh&ocirc; thơm nồng, xộc mạnh v&agrave;o mũi</span></span></pre>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<pre>\r\n<span style=\"font-size:10px\"><span style=\"font-family:Times New Roman,Times,serif\"><strong>Vị tr&agrave;</strong></span></span></pre>\r\n			</td>\r\n			<td>\r\n			<pre>\r\n<span style=\"font-size:10px\"><span style=\"font-family:Times New Roman,Times,serif\">Tr&agrave; mộc c&oacute; vị r&otilde; trong khoảng miệng</span></span></pre>\r\n			</td>\r\n			<td>\r\n			<pre>\r\n<span style=\"font-size:10px\"><span style=\"font-family:Times New Roman,Times,serif\">Tr&agrave; tẩm c&oacute; vị tr&agrave; rất nhạt do nguy&ecirc;n liệu l&agrave; c&aacute;c loại tr&agrave; chất lượng thấp.</span></span></pre>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<pre>\r\n<span style=\"font-size:10px\"><span style=\"font-family:Times New Roman,Times,serif\"><strong>Nước</strong></span></span></pre>\r\n			</td>\r\n			<td>\r\n			<pre>\r\n<span style=\"font-size:10px\"><span style=\"font-family:Times New Roman,Times,serif\">Khi r&oacute;t d&ograve;ng nước nhỏ, cao sẽ tạo ra c&aacute;c bong b&oacute;ng, sau đ&oacute; bể dần.</span></span></pre>\r\n			</td>\r\n			<td>\r\n			<pre>\r\n<span style=\"font-size:10px\"><span style=\"font-family:Times New Roman,Times,serif\">Khi r&oacute;t d&ograve;ng nước nhỏ, cao sẽ tạo ra c&aacute;c bong b&oacute;ng l&acirc;u tan do sức căng bề mặt của tinh dầu tẩm.</span></span></pre>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<pre>\r\n<span style=\"font-size:10px\"><span style=\"font-family:Times New Roman,Times,serif\"><strong>M&ugrave;i nước</strong></span></span></pre>\r\n			</td>\r\n			<td>\r\n			<pre>\r\n<span style=\"font-size:10px\"><span style=\"font-family:Times New Roman,Times,serif\">Tr&agrave; mộc giữ được hương tr&agrave; khi pha ở nhiệt độ cao(100 độ C)</span></span></pre>\r\n			</td>\r\n			<td>\r\n			<pre>\r\n<span style=\"font-size:10px\"><span style=\"font-family:Times New Roman,Times,serif\">Tr&agrave; tẩm sẽ giảm đi hương tr&agrave; do tinh dầu bay hơi khi gặp n&oacute;ng.</span></span></pre>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<pre>\r\n<span style=\"font-size:12px\"><span style=\"font-family:Times New Roman,Times,serif\">V&iacute; dụ thực tế tr&ecirc;n tr&agrave; l&agrave;i</span></span></pre>\r\n\r\n<table border=\"1\" cellpadding=\"1\" cellspacing=\"1\" style=\"width:500px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<pre>\r\n<span style=\"font-size:8px\">\r\n&nbsp;</span></pre>\r\n			</td>\r\n			<td>\r\n			<pre>\r\n<span style=\"font-size:8px\"><span style=\"font-family:Times New Roman,Times,serif\">Tr&agrave; L&agrave;i Mộc</span></span></pre>\r\n			</td>\r\n			<td>\r\n			<pre>\r\n<span style=\"font-size:8px\"><span style=\"font-family:Times New Roman,Times,serif\">Tr&agrave; L&agrave;i Tẩm</span></span></pre>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<pre>\r\n<span style=\"font-size:8px\"><span style=\"font-family:Times New Roman,Times,serif\">Cảm quan</span></span></pre>\r\n			</td>\r\n			<td>\r\n			<pre>\r\n<span style=\"font-size:8px\"><span style=\"font-family:Times New Roman,Times,serif\">Tr&agrave; l&agrave;i mộc sẽ được loại bỏ c&aacute;nh hoa, c&ograve;n rất &iacute;t c&aacute;nh hoa l&agrave;i c&ograve;n s&oacute;t lại</span></span></pre>\r\n			</td>\r\n			<td>\r\n			<pre>\r\n<span style=\"font-size:8px\"><span style=\"font-family:Times New Roman,Times,serif\">Tr&agrave; l&agrave;i tẩm sẽ kh&ocirc;ng loại bỏ hoa, c&aacute;nh h&oacute;a gi&ograve;n do được trộn sau khi đ&atilde; ướp hương liệu</span></span></pre>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<pre>\r\n<span style=\"font-size:8px\"><span style=\"font-family:Times New Roman,Times,serif\">Hương hoa l&agrave;i</span></span></pre>\r\n			</td>\r\n			<td>\r\n			<pre>\r\n<span style=\"font-size:8px\"><span style=\"font-family:Times New Roman,Times,serif\"> Thơm nhẹ nh&agrave;ng</span></span></pre>\r\n			</td>\r\n			<td>\r\n			<pre>\r\n<span style=\"font-size:8px\"><span style=\"font-family:Times New Roman,Times,serif\">Xộc mạnh v&agrave;o mũi</span></span></pre>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<pre>\r\n<span style=\"font-size:8px\"><span style=\"font-family:Times New Roman,Times,serif\">Vị tr&agrave;</span></span></pre>\r\n			</td>\r\n			<td>\r\n			<pre>\r\n<span style=\"font-size:8px\"><span style=\"font-family:Times New Roman,Times,serif\">Đậm</span></span></pre>\r\n			</td>\r\n			<td>\r\n			<pre>\r\n<span style=\"font-size:8px\"><span style=\"font-family:Times New Roman,Times,serif\">Nhạt</span></span></pre>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<pre>\r\n<span style=\"font-size:8px\"><span style=\"font-family:Times New Roman,Times,serif\">Gi&aacute; th&agrave;nh</span></span></pre>\r\n			</td>\r\n			<td>\r\n			<pre>\r\n<span style=\"font-size:8px\"><span style=\"font-family:Times New Roman,Times,serif\">Tr&agrave; l&agrave;i ướp hoa tự nhi&ecirc;n sẽ c&oacute; gi&aacute; th&agrave;nh cao v&igrave; gi&aacute; th&agrave;nh hoa l&agrave;i đ&atilde; từ 200-300k/k&yacute; hoa tươi</span></span></pre>\r\n			</td>\r\n			<td>\r\n			<pre>\r\n<span style=\"font-size:8px\"><span style=\"font-family:Times New Roman,Times,serif\">Gi&aacute; th&agrave;nh thường rất thấp (&lt;200k/k&yacute; tr&agrave;)</span></span></pre>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<pre>\r\n<span style=\"font-size:12px\"><span style=\"font-family:Times New Roman,Times,serif\"><img alt=\"Phân biệt trà tẩm và trà mộc\" src=\"https://teashop.vn/wp-content/uploads/2019/12/phan-biet-tra-tam-va-tra-moc.jpg\" style=\"height:400px; width:600px\" /></span>\r\n\r\n<span style=\"font-family:Times New Roman,Times,serif\">Tr&agrave; l&agrave;i tẩm sẽ c&oacute; nhiều hoa l&agrave;i c&ograve;n s&oacute;t lại hơn tr&agrave; mộc</span>\r\n\r\n<span style=\"font-family:Times New Roman,Times,serif\"><strong>C&Aacute;C LOẠI TR&Agrave; MỘC PHỔ BIẾN</strong></span>\r\n\r\n<span style=\"font-family:Times New Roman,Times,serif\">C&oacute; thể bạn chưa biết, tất cả c&aacute;c loại tr&agrave; hiện nay đều l&agrave;m được tr&agrave; mộc. V&igrave; vậy, ch&uacute;ng t&ocirc;i ph&acirc;n loại tr&agrave; mộc theo phương ph&aacute;p chế biến cụ thể như sau</span>\r\n\r\n<span style=\"font-family:Times New Roman,Times,serif\">RANG</span>\r\n\r\n<span style=\"font-family:Times New Roman,Times,serif\">Rang l&agrave; giai đoạn chế biến sau th&agrave;nh phẩm. Tr&agrave; được rang tr&ecirc;n chảo dưới t&aacute;c động trực tiếp của hơi n&oacute;ng l&agrave;m hơi nước b&ecirc;n trong tr&agrave; tho&aacute;t ra nhanh hơn.</span>\r\n\r\n<span style=\"font-family:Times New Roman,Times,serif\">Rang sẽ gi&uacute;p hương tr&agrave; v&agrave; vị tr&agrave; được đẩy l&ecirc;n. Vị ch&aacute;t của tr&agrave; giảm, h&agrave;m lượng caffeine trong tr&agrave; cũng giảm theo. Do đ&oacute;, c&aacute;c loại tr&agrave; rang bạn sẽ kh&ocirc;ng phải lo lắng nước cốt tr&agrave; c&oacute; vị ch&aacute;t mạnh khi ủ qu&aacute; l&acirc;u.</span>\r\n\r\n<span style=\"font-family:Times New Roman,Times,serif\">Một ưu điểm nổi bật của tr&agrave; rang đ&oacute; l&agrave; c&oacute; hương smoke, hay c&ograve;n gọi l&agrave; hương kh&oacute;i. Với những bạn muốn t&igrave;m một loại tr&agrave; c&oacute; hương vị độc đ&aacute;o nhưng vẫn đảm bảo về hương v&agrave; vị th&igrave; n&ecirc;n thử qua loại tr&agrave; rang n&agrave;y.</span>\r\n\r\n<span style=\"font-family:Times New Roman,Times,serif\"><img alt=\"Trà Oolong Rang Mộc\" src=\"https://teashop.vn/wp-content/uploads/2019/12/tra-rang-moc-viager.jpg\" style=\"height:400px; width:600px\" /></span>\r\n\r\n<span style=\"font-family:Times New Roman,Times,serif\">Tr&agrave; Oolong Rang mộc &ndash; Hương vị tương tự tr&agrave; Đ&agrave;i Loan</span>\r\n\r\n<span style=\"font-family:Times New Roman,Times,serif\">SẤY</span>\r\n\r\n<span style=\"font-family:Times New Roman,Times,serif\">Qu&aacute; tr&igrave;nh chế biến tr&agrave; đều c&oacute; giai đoạn sấy kh&ocirc; để l&agrave;m giảm lượng nước b&ecirc;n trong, gi&uacute;p bảo quản tr&agrave; được l&acirc;u hơn. Một số loại tr&agrave; của Trung Quốc, Nhật Bản họ d&ugrave;ng phương ph&aacute;p sấy kh&ocirc; để bảo to&agrave;n được sự tươi ngon của l&aacute; tr&agrave; tươi sau khi h&aacute;i như tr&agrave; Sencha, tr&agrave; Long Tĩnh,&hellip;</span>\r\n\r\n<span style=\"font-family:Times New Roman,Times,serif\">Tại Việt Nam, tr&agrave; sấy c&ograve;n chưa được phổ biến do giới hạn về nguy&ecirc;n liệu v&agrave; kỹ thuật chế biến.</span>\r\n\r\n<span style=\"font-family:Times New Roman,Times,serif\">SƠ CHẾ TRUYỀN THỐNG</span>\r\n\r\n<span style=\"font-family:Times New Roman,Times,serif\">Tr&agrave; mộc sơ chế kiểu truyền thống đ&oacute; l&agrave; kh&ocirc;ng c&oacute; c&aacute;c giai đoạn chế biến sau th&agrave;nh phẩm. Tr&agrave; được chế biến theo quy tr&igrave;nh chuẩn v&agrave; kh&ocirc;ng c&oacute; giai đoạn tẩm ướp hương liệu.</span>\r\n\r\n<span style=\"font-family:Times New Roman,Times,serif\">MUA TR&Agrave; MỘC PHA CHẾ Ở Đ&Acirc;U TẠI TPHCM?</span>\r\n\r\n<span style=\"font-family:Times New Roman,Times,serif\">Viager l&agrave; đơn vị sản xuất tr&agrave; đầu ti&ecirc;n tại Việt Nam chỉ sản xuất tr&agrave; mộc d&agrave;nh cho pha chế. Với kinh nghiệm sản xuất tr&agrave; của m&igrave;nh, ch&uacute;ng t&ocirc;i đ&atilde; mang đến nhiều loại tr&agrave; mộc chất lượng, được nhiều cửa h&agrave;ng đ&oacute;n nhận tại Tp.HCM.</span>\r\n\r\n<span style=\"font-family:Times New Roman,Times,serif\">Dần dần người ti&ecirc;u d&ugrave;ng đ&atilde; &yacute; thức được lợi &iacute;ch của c&agrave; ph&ecirc; mộc v&agrave; tr&agrave; mộc sẽ l&agrave; xu hướng pha chế trong thời gian tới. Qu&yacute; kh&aacute;ch h&agrave;ng c&oacute; nhu cầu mua tr&agrave; mộc th&igrave; h&atilde;y li&ecirc;n hệ ngay với Viager theo số <strong>Hotline: 0937 048 677</strong> để được hỗ trợ.</span>\r\n\r\n<span style=\"font-family:Times New Roman,Times,serif\">Hoặc qu&yacute; kh&aacute;ch h&agrave;ng c&oacute; thể gh&eacute; Showroom của ch&uacute;ng t&ocirc;i thử qua hương vị c&aacute;c loại tr&agrave; mộc được sơ chế theo kiểu truyền thống, rang sau th&agrave;nh phẩm để chọn loại tr&agrave; ưng &yacute; nhất.</span>\r\n</span></pre>\r\n\r\n<pre>\r\n<span style=\"font-size:12px\"><span style=\"font-family:Times New Roman,Times,serif\">LỜI KẾT</span>\r\n\r\n<span style=\"font-family:Times New Roman,Times,serif\">Thị trường tr&agrave; Việt đang trong t&igrave;nh trạng phức tạp về gi&aacute; v&agrave; chất lượng. Tr&agrave; tẩm hương th&igrave; được nhiều nh&agrave; cung cấp giới thiệu l&agrave; tr&agrave; mộc, nhan nh&atilde;n tr&ecirc;n thị trường.</span>\r\n\r\n<span style=\"font-family:Times New Roman,Times,serif\">Kh&aacute;i niệm <strong>tr&agrave; mộc l&agrave; g&igrave;</strong> v&agrave;<strong> lợi &iacute;ch khi d&ugrave;ng tr&agrave; mộc</strong> trong pha chế vẫn chưa được nhiều người biết đến. Từ đầu 2019, c&aacute;c chủ qu&aacute;n đ&atilde; dần thay đổi th&oacute;i quen d&ugrave;ng tr&agrave; tẩm sang c&aacute;c loại tr&agrave; mộc để đảm bảo sức khỏe người ti&ecirc;u d&ugrave;ng v&agrave; xem đ&oacute; l&agrave; lợi thế cạnh tranh ri&ecirc;ng so với c&aacute;c chuỗi/qu&aacute;n kh&aacute;c.</span>\r\n\r\n<span style=\"font-family:Times New Roman,Times,serif\">Nếu bạn đang c&oacute; nhu cầu về tr&agrave; mộc th&igrave; h&atilde;y li&ecirc;n hệ ngay với Viager để được trải nghiệm hương vị tr&agrave; nguy&ecirc;n bản nh&eacute;!</span></span></pre>', NULL, NULL, NULL, 1, '2020-08-04 07:20:18', '2020-08-04 07:34:13'),
(12, 'Hiểu biết về trà thảo mộc của bạn tới đâu?', 'hieu-biet-ve-tra-thao-moc-cua-ban-toi-dau', 5, 1, 'Blogs/t%E1%BA%A3i%20xu%E1%BB%91ng.jpg', '<p>Con người đang c&oacute; xu hướng quay trở lại với những thực phẩm từ thi&ecirc;n nhi&ecirc;n để bảo vệ sức khỏe của m&igrave;nh sau khi đ&atilde; d&ugrave;ng qu&aacute; nhiều loại thực phẩm tẩm ướp h&oacute;a chất v&agrave; thực phẩm biến đổi gen, ch&iacute;nh v&igrave; thế thời điểm n&agrave;y, c&oacute; thể được ghi nhận l&agrave; thời điểm l&ecirc;n ng&ocirc;i của c&aacute;c loại&nbsp;<strong>tr&agrave; thảo mộc</strong>&nbsp;v&agrave; thảo dược.&nbsp;</p>\r\n\r\n<p>Theo Nelsen (Nielsen Holdings N.V. l&agrave; một c&ocirc;ng ty nghi&ecirc;n cứu thị trường v&agrave; quảng b&aacute; to&agrave;n cầu, với trụ sở đặt tại New York, Hoa Kỳ v&agrave; and Diemen, H&agrave; Lan. Nielsen hiện đang hoạt động tr&ecirc;n 100 quốc gia tr&ecirc;n to&agrave;n thế giới, với nh&acirc;n sự khoảng 44.000 người.), gần 8 trong 10 người Việt sẵn s&agrave;ng trả th&ecirc;m tiền cho thực phẩm v&agrave; đồ uống kh&ocirc;ng chứa c&aacute;c th&agrave;nh phần kh&ocirc;ng mong muốn như chất bảo quản, m&agrave;u nh&acirc;n tạo. Điển h&igrave;nh như xu hướng giải kh&aacute;t đang dịch chuyển hẳn về c&aacute;c thức uống c&oacute; nguồn gốc&nbsp;<strong>thảo mộc</strong>&nbsp;tự nhi&ecirc;n, tốt cho sức khỏe.</p>\r\n\r\n<p>Theo b&aacute;o c&aacute;o về xu hướng ti&ecirc;u d&ugrave;ng trong năm 2012, trung t&acirc;m nghi&ecirc;n cứu về sản phẩm nguồn gốc thi&ecirc;n nhi&ecirc;n (Nature Products Insider) tại Mỹ cho hay: &quot;Ch&uacute;ng ta đang chứng kiến một sự thay đổi lớn về văn h&oacute;a ti&ecirc;u d&ugrave;ng, khi m&agrave; người ti&ecirc;u d&ugrave;ng tập trung v&agrave;o những trải nghiệm t&iacute;ch cực khi sử dụng những sản phẩm c&oacute; nguồn gốc thi&ecirc;n nhi&ecirc;n, trong đ&oacute; c&oacute; sản phẩm từ thảo mộc&quot;. Kh&ocirc;ng nằm ngo&agrave;i xu hướng chung của thế giới, trong những năm gần đ&acirc;y, người ti&ecirc;u d&ugrave;ng Việt Nam d&agrave;nh mối quan t&acirc;m đặc biệt đối với c&aacute;c sản phẩm nguồn gốc thi&ecirc;n nhi&ecirc;n, nhất l&agrave; sản phẩm từ thảo mộc để tăng cường sức khỏe.&nbsp; Ở nhiều nước nhất l&agrave; những nước ch&acirc;u &Aacute; như Nhật Bản, H&agrave;n Quốc, Trung Quốc&hellip; tr&agrave; thảo mộc được sử dụng rất phổ biến. Thậm ch&iacute; tại Hoa Kỳ, người d&acirc;n đ&atilde; chi h&agrave;ng tỉ đ&ocirc; la mỗi năm để mua thảo mộc v&agrave; nhu cầu n&agrave;y vẫn c&ograve;n tăng cao. Điều n&agrave;y cho thấy, t&aacute;c dụng của thảo mộc với sức khỏe con người l&agrave; rất tốt.</p>\r\n\r\n<p>Sau một thời gian nở rộ với c&aacute;c loại nước giải kh&aacute;t c&oacute; gas, nước giải kh&aacute;t c&ocirc;ng nghiệp sử dụng chất bảo quản, hương vị, m&agrave;u sắc nh&acirc;n tạo, hiện nay, người d&ugrave;ng bắt đầu quay trở lại với c&aacute;c sản phẩm c&oacute; nguồn gốc tự nhi&ecirc;n, c&oacute; lợi cho sức khỏe v&agrave; trong c&aacute;c loại đồ uống đ&oacute; c&oacute;&nbsp;<strong><a href=\"http://mhenhe.com.vn/tra-thao-moc.html\">tr&agrave; thảo mộc</a>.</strong></p>\r\n\r\n<p><strong><img alt=\"\" src=\"http://tinhhoathaoduocviet.com/uploads/images/bai-viet/tra-thao-moc.jpg\" /></strong></p>\r\n\r\n<p>V&agrave; xu hướng n&agrave;y vẫn kh&ocirc;ng ngừng tăng l&ecirc;n, b&aacute;o c&aacute;o của c&aacute;c h&atilde;ng ph&acirc;n t&iacute;ch thị trường cho thấy người ti&ecirc;u d&ugrave;ng ng&agrave;y c&agrave;ng quan t&acirc;m tới sức khỏe, do đ&oacute;, nước giải kh&aacute;t kh&ocirc;ng chỉ ngon, đảm bảo an to&agrave;n thực phẩm m&agrave; c&ograve;n phải bổ dưỡng, hỗ trợ tối đa cho sức khỏe người d&ugrave;ng.</p>\r\n\r\n<p>Theo b&aacute;o b&aacute;o c&aacute;o thị trường qu&yacute; 2/2016 của Nielsen, đại đa số người ti&ecirc;u d&ugrave;ng đang từ bỏ thức uống c&oacute; nguy&ecirc;n liệu nh&acirc;n tạo để lựa chọn sản phẩm được chiết xuất từ nguồn gốc tự nhi&ecirc;n.</p>\r\n\r\n<p>Theo giới ph&acirc;n t&iacute;ch, nhu cầu của người ti&ecirc;u d&ugrave;ng đang hướng tới sản phẩm đồ uống nguồn gốc thi&ecirc;n nhi&ecirc;n chiết xuất từ thảo mộc tự nhi&ecirc;n gi&uacute;p h&oacute;a giải nội nhiệt, thanh lọc cơ thể.</p>\r\n\r\n<p>C&aacute;c chuy&ecirc;n gia về dinh dưỡng cho rằng, về cơ bản, tr&agrave; c&oacute; nguồn gốc từ thảo mộc b&aacute;n tr&ecirc;n thị trường đều đảm bảo chất lượng v&igrave; đ&atilde; được kiểm nghiệm bởi cơ quan quản l&yacute; nh&agrave; nước để c&oacute; &ldquo;giấy th&ocirc;ng h&agrave;nh&rdquo; tr&ecirc;n thị trường.</p>\r\n\r\n<p>Tuy nhi&ecirc;n, mỗi loại tr&agrave; kh&aacute;c nhau lại c&oacute; những th&agrave;nh phần thảo dược v&agrave; c&ocirc;ng dụng kh&aacute;c nhau. Ch&iacute;nh v&igrave; thế, cần ph&acirc;n biệt r&otilde; tr&agrave; giải kh&aacute;t th&ocirc;ng thường hay tr&agrave; được chiết xuất từ thảo dược vốn l&agrave; c&aacute;c loại dược lược qu&yacute; c&oacute; lợi cho sức khỏe.</p>\r\n\r\n<p>Đồ uống c&oacute; thảo mộc l&agrave; một phương ph&aacute;p gi&uacute;p cung cấp c&aacute;c chất dinh dưỡng từ c&aacute;c loại c&acirc;y thảo mộc dưới dạng nước, gi&uacute;p cơ thể hấp thụ dễ d&agrave;ng hơn. Hầu hết c&aacute;c loại thảo mộc được sử dụng để l&agrave;m&nbsp;<a href=\"http://mhenhe.com.vn/tra-thao-moc.html\"><strong>tr&agrave; thảo mộc</strong></a>&nbsp;đều l&agrave; c&aacute;c vị thuốc được sử dụng l&acirc;u đời trong y học cổ truyền.</p>\r\n\r\n<p>Theo c&aacute;c chuy&ecirc;n gia về Hội Đ&ocirc;ng y Việt Nam người lao động qu&aacute; mệt mỏi hoặc c&aacute;c bạn trẻ phải thức khuya học tập đều c&oacute; thể cải thiện một phần sức khỏe từ việc uống&nbsp;<strong>tr&agrave; thảo mộc</strong>.</p>\r\n\r\n<p>Tuy nhi&ecirc;n, trong h&agrave;ng chục loại&nbsp;<strong>tr&agrave; thảo mộc</strong>&nbsp;kh&aacute;c nhau tr&ecirc;n thị trường th&igrave; việc lựa chọn v&agrave; so s&aacute;nh cũng kh&ocirc;ng phải l&agrave; dễ d&agrave;ng.</p>\r\n\r\n<p>Kết quả nghi&ecirc;n cứu tập hợp từ 20 kiểm nghiệm l&acirc;m s&agrave;ng tr&ecirc;n thế giới v&agrave; khoảng 297 t&agrave;i liệu tham khảo cho thấy,&nbsp;<a href=\"http://mhenhe.com.vn/tra-thao-moc.html\"><strong>tr&agrave; thảo mộc</strong></a>&nbsp;c&oacute; t&aacute;c dụng chống vi&ecirc;m th&ocirc;ng qua việc ức chế hoạt động của c&aacute;c chất trung gian g&acirc;y vi&ecirc;m, chất tiền vi&ecirc;m.</p>\r\n\r\n<p>Ngo&agrave;i ra, c&aacute;c loại&nbsp;<strong>tr&agrave; thảo mộc</strong>&nbsp;như&nbsp;<a href=\"http://mhenhe.com.vn/tra-hoa-cuc-vang.html\">tr&agrave; hoa c&uacute;c v&agrave;ng</a>,&nbsp;<a href=\"http://mhenhe.com.vn/tra-tam-sen.html\">tr&agrave; t&acirc;m sen</a>,&nbsp;<a href=\"http://mhenhe.com.vn/tra-nu-hoa-hong.html\">tr&agrave; hoa hồng</a>, hạ kh&ocirc; thảo&hellip; c&ograve;n chứa c&aacute;c chất chống oxy h&oacute;a mạnh, thu nhặt c&aacute;c gốc tự do, gi&uacute;p l&agrave;m giảm c&aacute;c tổn thương do qu&aacute; tr&igrave;nh oxy h&oacute;a g&acirc;y ra; ph&ograve;ng chống nhiễm vi khuẩn, virus, chống nấm v&agrave; dự ph&ograve;ng một số bệnh mạn t&iacute;nh kh&ocirc;ng l&acirc;y.</p>\r\n\r\n<p><img alt=\"\" src=\"http://tinhhoathaoduocviet.com/uploads/images/san-pham/tra-hoa-dao.png\" /></p>\r\n\r\n<p>Kim ng&acirc;n hoa, Hạ kh&ocirc; thảo v&agrave; Ti&ecirc;n thảo c&ograve;n c&oacute; t&aacute;c dụng bảo vệ gan, thanh nhiệt, giải độc v&agrave; l&agrave;m giảm c&aacute;c dấu hiệu sinh h&oacute;a trong gan.</p>\r\n\r\n<p>Với những lợi &iacute;ch tuyệt vời của thảo mộc n&ecirc;n nhiều người đ&atilde; lựa chọn loại thức uống n&agrave;y để giải kh&aacute;t. Nhất l&agrave; l&uacute;c tiết trời nắng n&oacute;ng, khiến cơ thể nhanh mất sức v&agrave; mất c&acirc;n bằng lượng nước, dẫn đến hiện tượng nội nhiệt.</p>', NULL, NULL, 'Con người đang có xu hướng quay trở lại với những thực phẩm từ thiên nhiên để bảo vệ sức khỏe của mình sau khi đã dùng quá nhiều loại thực phẩm tẩm ướp hóa chất và thực phẩm biến đổi gen, chính vì thế thời điểm này, có thể được ghi nhận là thời điểm lên ngôi của các loại trà thảo mộc và thảo dược. ', 1, '2020-08-04 07:40:46', '2020-08-04 07:40:46');

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
(1, 'Trà hoa', 'tra-hoa', 1, 1, 0, '2020-07-23 12:45:25', '2020-07-26 08:51:25'),
(2, 'Trà mix', 'tra-mix', 1, 1, 1, '2020-07-23 12:45:38', '2020-07-23 12:45:38'),
(3, 'Trà mộc', 'tra-moc', 1, 1, 1, '2020-07-23 12:45:54', '2020-07-23 12:45:54'),
(4, 'Dụng cụ pha trà', 'dung-cu-pha-tra', 1, 1, 0, '2020-07-23 12:46:02', '2020-07-26 08:51:33'),
(5, 'Tin tức mới', 'tin-tuc-moi', 1, 0, 0, '2020-07-23 12:46:14', '2020-07-26 08:51:40'),
(6, 'Nguyên liệu nấu chè', 'nguyen-lieu-nau-che', 1, 1, 0, '2020-07-23 12:46:23', '2020-07-26 08:51:47'),
(7, 'Dụng cụ', 'dung-cu', 1, 1, 4, '2020-07-26 12:17:57', '2020-07-26 12:17:57'),
(8, 'Chính sách thanh toán', 'chinh-sach-thanh-toan', 1, 0, 0, '2020-07-29 09:16:29', '2020-07-29 09:16:29'),
(9, 'Đồ gốm', 'do-gom', 1, 0, 0, '2020-07-29 11:04:25', '2020-07-29 11:04:25'),
(11, 'Nguyên liệu', 'nguyen-lieu', 1, 1, 6, '2020-08-04 06:49:40', '2020-08-04 06:49:40');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `configs`
--

CREATE TABLE `configs` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1 là hình ảnh, 2 là ads, 3 là contact, 4 là about us',
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1 là Hiện, 0 là Ẩn',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `configs`
--

INSERT INTO `configs` (`id`, `name`, `slug`, `value`, `type`, `status`, `created_at`, `updated_at`) VALUES
(13, 'Ads1', 'ads1', 'Configs/d84a572ea363593d0072-533x800.jpg', 2, 1, '2020-08-01 13:28:38', '2020-08-01 13:28:38'),
(14, 'Ads 2', 'ads-2', 'Configs/a8e5c31b3756cd089447.jpg', 2, 1, '2020-08-01 13:28:55', '2020-08-01 13:28:55'),
(16, 'Ads 3', 'ads-3', 'Configs/69efb216465bbc05e54a.jpg', 2, 1, '2020-08-01 13:31:28', '2020-08-01 13:31:28'),
(18, 'gmap', 'gmap', '<iframe                                             src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3724.725809555813!2d105.80887841388765!3d21.00362539401416!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135ac996d7831ff%3A0xfd2eed2d5abbd7ab!2zUXVhbiBOaMOibiwgSG_DoG4gS2nhur9tLCBIw6AgTuG7mWksIFZp4buHdCBOYW0!5e0!3m2!1svi!2s!4v1596373920297!5m2!1svi!2s\"                                             width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0;\" allowfullscreen=\"\"                                             aria-hidden=\"false\" tabindex=\"0\"></iframe>', 3, 1, '2020-08-01 23:47:33', '2020-08-02 01:29:27'),
(24, 'worktime', 'worktime', 'Monday – Saturday: 08AM – 22PM', 3, 1, '2020-08-02 03:19:02', '2020-08-02 03:19:02'),
(26, 'Logo', 'logo', 'Configs/logo_03.png', 1, 1, '2020-08-02 14:17:53', '2020-08-02 14:17:53'),
(27, 'Logo footer', 'logo-footer', 'Configs/logo_footer.png', 1, 1, '2020-08-02 14:20:21', '2020-08-02 14:20:21'),
(28, 'address', 'address', 'Số 15, ngõ 52 phố Quan Nhân, Hà Nội', 3, 1, NULL, '2020-08-02 16:34:54'),
(29, 'phone', 'phone', '0902.293.313', 3, 1, NULL, '2020-08-02 17:23:08'),
(30, 'email', 'email', 'congtyxnklt@gmail.com', 3, 1, NULL, '2020-08-02 17:19:29'),
(33, 'intro', 'intro', NULL, 3, 1, '2020-08-02 16:04:11', '2020-08-02 17:23:40');

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

INSERT INTO `feedback_pros` (`id`, `id_product`, `id_user`, `star`, `content`, `parent_id`, `status`, `created_at`, `updated_at`) VALUES
(6, 1, 10, 1, 'ok', 0, 1, '2020-07-27 10:36:49', '2020-08-03 00:33:17'),
(7, 2, 10, 3, 'ok lam', 0, 0, '2020-07-27 10:37:20', '2020-08-03 00:33:13'),
(8, 1, 9, 4, 'Tuyệt', 0, 1, '2020-07-27 10:43:18', '2020-07-27 10:43:18'),
(9, 2, 9, 5, 'Hay', 0, 1, '2020-07-27 10:43:43', '2020-07-27 10:43:43'),
(10, 13, 14, 3, 'Sản phẩm ok', 0, 1, '2020-08-04 07:54:24', '2020-08-04 07:54:24'),
(11, 13, 14, 5, 'sản phẩm rất ok', 0, 1, '2020-08-04 07:55:49', '2020-08-04 07:55:49'),
(12, 13, 14, 3, 'Giá tốt', 0, 1, '2020-08-04 08:00:57', '2020-08-04 08:00:57');

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
(1, 1, 'Products/19-800x804.jpg', '2020-07-23 12:58:57', '2020-07-23 12:58:57'),
(2, 1, 'Products/102945155_1975409749258047_5691047304813554012_n.jpg', '2020-07-23 12:58:57', '2020-07-23 12:58:57'),
(3, 1, 'Products/0e3ae07a19b7e4e9bda6-800x805.jpg', '2020-07-23 12:58:57', '2020-07-23 12:58:57'),
(4, 2, 'Products/91567588_1906252292840460_8245594462445633536_n-800x793.jpg', '2020-07-23 13:05:47', '2020-07-23 13:05:47'),
(5, 2, 'Products/91351666_1906252326173790_5397366108166553600_n-800x802.jpg', '2020-07-23 13:05:47', '2020-07-23 13:05:47'),
(6, 2, 'Products/91323546_1906252249507131_5164058446651195392_n-800x523.jpg', '2020-07-23 13:05:47', '2020-07-23 13:05:47'),
(7, 3, 'Products/92244655_1913382935460729_4601580832258260992_n-800x796.jpg', '2020-07-23 13:15:32', '2020-07-23 13:15:32'),
(8, 3, 'Products/92243745_1913382982127391_4361766729081159680_n-800x803%20(1).jpg', '2020-07-23 13:15:32', '2020-07-23 13:15:32'),
(9, 3, 'Products/92243399_1913382948794061_8034960796574285824_n-800x633.jpg', '2020-07-23 13:15:32', '2020-07-23 13:15:32'),
(10, 4, 'Products/92244655_1913382935460729_4601580832258260992_n-800x796.jpg', '2020-07-24 18:16:04', '2020-07-24 18:16:04'),
(11, 4, 'Products/92243745_1913382982127391_4361766729081159680_n-800x803%20(1).jpg', '2020-07-24 18:16:05', '2020-07-24 18:16:05'),
(12, 4, 'Products/92243399_1913382948794061_8034960796574285824_n-800x633.jpg', '2020-07-24 18:16:05', '2020-07-24 18:16:05'),
(13, 5, 'Products/c%E1%BB%8F-ng%E1%BB%8Dt-2.jpg', '2020-07-24 18:22:54', '2020-07-24 18:22:54'),
(14, 5, 'Products/94385994_1197973197201364_5222489015697014784_n-800x797.jpg', '2020-07-24 18:22:54', '2020-07-24 18:22:54'),
(15, 5, 'Products/94362630_1934385620027127_322923528535932928_n-1-800x800.jpg', '2020-07-24 18:22:54', '2020-07-24 18:22:54'),
(21, 7, 'Products/2.jpg', '2020-07-25 12:58:06', '2020-07-25 12:58:06'),
(22, 7, 'Products/1e97074d9f3662683b27.jpg', '2020-07-25 12:58:06', '2020-07-25 12:58:06'),
(23, 6, 'Products/c%E1%BB%8F-ng%E1%BB%8Dt-2.jpg', '2020-08-02 21:42:42', '2020-08-02 21:42:42'),
(24, 6, 'Products/94385994_1197973197201364_5222489015697014784_n-800x797.jpg', '2020-08-02 21:42:43', '2020-08-02 21:42:43'),
(25, 6, 'Products/94362630_1934385620027127_322923528535932928_n-1-800x800.jpg', '2020-08-02 21:42:43', '2020-08-02 21:42:43'),
(26, 8, 'Products/set-am-tach-khay-tra-anh-quoc-70935-500x500.jpg', '2020-08-04 06:23:42', '2020-08-04 06:23:42'),
(27, 8, 'Products/set-am-tach-khay-tra-anh-quoc-55477-500x500.jpg', '2020-08-04 06:23:42', '2020-08-04 06:23:42'),
(28, 8, 'Products/set-am-tach-khay-tra-anh-quoc-54871.jpg', '2020-08-04 06:23:42', '2020-08-04 06:23:42'),
(29, 8, 'Products/set-am-tach-khay-tra-anh-quoc-40396-500x500.jpg', '2020-08-04 06:23:42', '2020-08-04 06:23:42'),
(30, 9, 'Products/d965f4bdd431640c9bd09b692659c38f.jpg', '2020-08-04 06:34:43', '2020-08-04 06:34:43'),
(31, 9, 'Products/57c434fa76128e5b11fce3a1495e7c6d.jpg', '2020-08-04 06:34:43', '2020-08-04 06:34:43'),
(32, 9, 'Products/38bca1ed76ba8bce18d6a8a734e4a477.jpg', '2020-08-04 06:34:43', '2020-08-04 06:34:43'),
(33, 10, 'Products/TB2zmHTbqagSKJjy0FbXXa.mVXa_3125193854-500x500.jpg', '2020-08-04 06:38:22', '2020-08-04 06:38:22'),
(34, 10, 'Products/TB2oXz4bqigSKJjSsppXXabnpXa_3125193854-500x500.jpg', '2020-08-04 06:38:22', '2020-08-04 06:38:22'),
(35, 10, 'Products/O1CN014u13ch1M5SFn1gGYD_4112621383-500x500.jpg', '2020-08-04 06:38:22', '2020-08-04 06:38:22'),
(36, 10, 'Products/1453352918436_4212384.jpg', '2020-08-04 06:38:22', '2020-08-04 06:38:22'),
(37, 11, 'Products/c0f9b9f1cefd34a36dec-500x500.jpg', '2020-08-04 06:42:10', '2020-08-04 06:42:10'),
(38, 11, 'Products/884d582f2f23d57d8c32-500x500.jpg', '2020-08-04 06:42:10', '2020-08-04 06:42:10'),
(39, 11, 'Products/83785639_1137001299965221_1603368968712617984_n.jpg', '2020-08-04 06:42:10', '2020-08-04 06:42:10'),
(40, 11, 'Products/7e7ca76cd0602a3e7371-500x500.jpg', '2020-08-04 06:42:10', '2020-08-04 06:42:10'),
(41, 12, 'Products/%E1%BA%A5m-500x500.jpg', '2020-08-04 06:44:57', '2020-08-04 06:44:57'),
(42, 12, 'Products/%E1%BA%A5m-1-500x500.jpg', '2020-08-04 06:44:57', '2020-08-04 06:44:57'),
(43, 12, 'Products/O1CN014u13ch1M5SFn1gGYD_4112621383-500x500.jpg', '2020-08-04 06:44:57', '2020-08-04 06:44:57'),
(44, 12, 'Products/6d42b606f60a0c54551b-500x500.jpg', '2020-08-04 06:44:57', '2020-08-04 06:44:57'),
(45, 12, 'Products/2602685001_1295263332-500x500.jpg', '2020-08-04 06:44:57', '2020-08-04 06:44:57'),
(46, 13, 'Products/1838-95156-500x500.jpg', '2020-08-04 06:51:17', '2020-08-04 06:51:17'),
(47, 13, 'Products/1838-94077-500x500.jpg', '2020-08-04 06:51:17', '2020-08-04 06:51:17'),
(48, 13, 'Products/1838-82510.jpg', '2020-08-04 06:51:18', '2020-08-04 06:51:18'),
(49, 13, 'Products/1838-72435-500x500.jpg', '2020-08-04 06:51:18', '2020-08-04 06:51:18'),
(50, 14, 'Products/TB2wQCAwRmWBuNkSndVXXcsApXa_795726541-500x500.jpg', '2020-08-04 06:55:56', '2020-08-04 06:55:56'),
(51, 14, 'Products/TB2qFoObYtlpuFjSspfXXXLUpXa_2581405159-500x500.jpg', '2020-08-04 06:55:56', '2020-08-04 06:55:56'),
(52, 14, 'Products/TB2PNzykXooBKNjSZPhXXc2CXXa_765328467.jpg', '2020-08-04 06:55:56', '2020-08-04 06:55:56'),
(53, 14, 'Products/TB2H.lbnrFlpuFjy0FgXXbRBVXa_2945730438-500x500.jpg', '2020-08-04 06:55:56', '2020-08-04 06:55:56'),
(54, 14, 'Products/O1CN012rpEKU1G2Lu8ZrO6g_4187210564-500x500.jpg', '2020-08-04 06:55:57', '2020-08-04 06:55:57'),
(55, 15, 'Products/T%C3%81O-L%C3%81T-9-500x500.jpg', '2020-08-04 07:02:01', '2020-08-04 07:02:01'),
(56, 15, 'Products/T%C3%81O-L%C3%81T-11-500x500.jpg', '2020-08-04 07:02:01', '2020-08-04 07:02:01'),
(57, 15, 'Products/T%C3%81O-L%C3%81T-10-500x500.jpg', '2020-08-04 07:02:01', '2020-08-04 07:02:01'),
(58, 15, 'Products/tra-ngu-vi-40233-800x808.jpg', '2020-08-04 07:02:01', '2020-08-04 07:02:01'),
(59, 16, 'Products/94385994_1197973197201364_5222489015697014784_n-800x797.jpg', '2020-08-04 07:05:53', '2020-08-04 07:05:53'),
(60, 16, 'Products/93094dedc4983ec66789-500x500.jpg', '2020-08-04 07:05:53', '2020-08-04 07:05:53'),
(61, 16, 'Products/92244841_528424971126983_3471663928403034112_o-500x500.jpg', '2020-08-04 07:05:53', '2020-08-04 07:05:53'),
(62, 17, 'Products/tra-ngu-vi-40233-800x808.jpg', '2020-08-04 07:09:53', '2020-08-04 07:09:53'),
(63, 17, 'Products/92830712_526790721290408_7917789656333156352_o.jpg', '2020-08-04 07:09:53', '2020-08-04 07:09:53'),
(64, 17, 'Products/92689690_526790717957075_6592565935100395520_o-500x500.jpg', '2020-08-04 07:09:53', '2020-08-04 07:09:53'),
(65, 17, 'Products/92434741_526790727957074_1065204245059338240_o-500x500.jpg', '2020-08-04 07:09:53', '2020-08-04 07:09:53'),
(66, 19, 'Blogs/tra-hoa-nhan-sam-han-quoc-80168-500x500.jpg', '2020-08-04 07:47:08', '2020-08-04 07:47:08'),
(67, 19, 'Blogs/s%C3%A2m.jpg', '2020-08-04 07:47:09', '2020-08-04 07:47:09');

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_06_30_032702_create_categories_table', 1),
(5, '2020_06_30_032808_create_attrs_table', 1),
(6, '2020_06_30_033303_create_admins_table', 1),
(7, '2020_06_30_033340_create_blogs_table', 1),
(8, '2020_06_30_033346_create_banners_table', 1),
(9, '2020_06_30_033354_create_configs_table', 1),
(10, '2020_07_16_163415_create_products_table', 1),
(11, '2020_07_16_164157_create_product_details_table', 1),
(12, '2020_07_16_165740_create_img_pros__table', 1),
(13, '2020_07_16_165846_create_feedback_pros_table', 1),
(14, '2020_07_16_170036_create_wishlists_table', 1),
(15, '2020_07_16_170847_create_orders_table', 1),
(16, '2020_07_16_170958_create_order_details_table', 1);

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
(7, 10, 475550.00, 'Phu Cuong, Soc Son, Ha Noi', NULL, 3, '2020-08-03 07:06:47', '2020-10-01 19:12:27'),
(8, 10, 475550.00, 'Phu Cuong, Soc Son, Ha Noi', NULL, 3, '2020-08-03 07:07:46', '2020-10-21 19:13:48'),
(9, 10, 170000.00, 'Phu Cuong, Soc Son, Ha Noi', NULL, 3, '2020-08-03 07:08:51', '2020-08-03 07:08:51'),
(10, 13, 277520.00, 'Hà Nội', NULL, 3, '2020-08-03 09:38:44', '2020-09-18 19:14:13');

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
(1, 8, 3, 150000.00, 2, '2020-08-03 07:07:46', '2020-08-03 07:07:46'),
(2, 8, 5, 155550.00, 1, '2020-08-03 07:07:46', '2020-08-03 07:07:46'),
(3, 9, 3, 150000.00, 1, '2020-08-03 07:08:51', '2020-08-03 07:08:51'),
(4, 10, 1, 107520.00, 1, '2020-08-03 09:38:44', '2020-08-03 09:38:44'),
(5, 10, 3, 150000.00, 1, '2020-08-03 09:38:44', '2020-08-03 09:38:44');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
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
(1, 'Trà Ngọt Ngào Xuân Sắc', 'tra-ngot-ngao-xuan-sac', 'TNNXS508', 2, 'Products/13a86eb1957c6822316d-800x800.jpg', '<p>Tr&agrave; &ldquo; 𝓝𝓰𝓸̣𝓽 𝓝𝓰𝓪̀𝓸 𝓧𝓾𝓪̂𝓷 𝓢𝓪̆́𝓬 &rdquo; : đ&uacute;ng với t&ecirc;n gọi tr&agrave; 𝑐𝑜́ 𝑣𝑖̣ 𝑛𝑔𝑜̣𝑡 𝑛ℎ𝑢̛𝑛𝑔 𝑘ℎ𝑜̂𝑛𝑔 𝑏𝑒́𝑜, 𝑚𝑢̀𝑖 𝑡ℎ𝑜̛𝑚 𝑚𝑎́𝑡 𝑐𝑢̉𝑎 𝐻𝑜𝑎 𝐻𝑜̂̀𝑛𝑔, 𝑣𝑖̣ 𝑛𝑔𝑜̣𝑡 𝑐𝑢̉𝑎 𝐷𝑎̂𝑢 𝑇𝑎̆̀𝑚, Đ𝑢̛𝑜̛̀𝑛𝑔 𝑛𝑎̂𝑢, 𝑇𝑎́𝑜 Đ𝑜̉, 𝐿𝑜𝑛𝑔 𝑁ℎ𝑎̃𝑛, 𝐾𝑦̉ 𝑇𝑢̛̉ 𝑣𝑎̀ 𝑞𝑢𝑎̉ 𝑁ℎ𝑜 𝑘ℎ𝑜̂.</p>\r\n\r\n<p>𝑻𝒓𝒂̀ 𝒄𝒐́ 𝒕𝒂́𝒄 𝒅𝒖̣𝒏𝒈 𝒄𝒖𝒏𝒈 𝒄𝒂̂́𝒑 𝒗𝒊𝒕𝒂𝒎𝒊𝒏 𝒄𝒉𝒐 𝒄𝒐̛ 𝒕𝒉𝒆̂̉ 𝒎𝒐̂̃𝒊 𝒏𝒈𝒂̀𝒚; 𝒃𝒐̂̉ 𝒔𝒖𝒏𝒈 𝒗𝒊𝒕𝒂𝒎𝒊𝒏, 𝒂𝒙𝒊𝒕 𝒂𝒎𝒊𝒏, 𝒉𝒖𝒎𝒆𝒏𝒕𝒐𝒔, 𝒌𝒉𝒐𝒂́𝒏𝒈 𝒄𝒉𝒂̂́𝒕, 𝒓𝒆𝒔𝒗𝒆𝒓𝒂𝒕𝒓𝒐𝒍, 𝒂𝒏𝒕𝒉𝒐𝒄𝒚𝒂𝒏𝒊𝒏&hellip; 𝒈𝒊𝒖́𝒑 𝒄𝒉𝒐 𝒄𝒐̛ 𝒕𝒉𝒆̂̉ 𝒌𝒉𝒐̉𝒆 𝒎𝒂̣𝒏𝒉 𝒉𝒐̛𝒏, 𝒄𝒉𝒐̂́𝒏𝒈 𝒍𝒂̃𝒐 𝒉𝒐́𝒂, 𝒍𝒂̀𝒎 𝒎𝒐̛̀ 𝒗𝒆̂́𝒕 𝒏𝒉𝒂̆𝒏.</p>\r\n\r\n<p>Tr&agrave; 𝓝𝓰𝓸̣𝓽 𝓝𝓰𝓪̀𝓸 𝓧𝓾𝓪̂𝓷 𝓢𝓪̆́𝓬 l&agrave; sự kết hợp của 8 loại nguy&ecirc;n liệu: Đường n&acirc;u, Gừng Gi&agrave;, D&acirc;u Tằm, Kỷ Tử, T&aacute;o đỏ, Hồng H&agrave;n, Long nh&atilde;n, quả nho kh&ocirc;.</p>\r\n\r\n<p>&nbsp;𝑲𝒚̉ 𝑻𝒖̛̉ : C&acirc;u kỷ tử được biết đến như l&agrave; c&acirc;y k&eacute;o d&agrave;i tuổi thọ từ thời cổ đại. Trong thời Chiến Quốc, truyền thuyết về c&acirc;y kỷ tử c&oacute; thể k&eacute;o d&agrave;i tuổi thọ, dưỡng nhan được lan truyền. Truyền thuyết thời Bắc Tống, một vị đại nh&acirc;n được lệnh rời Bắc Kinh đi c&ocirc;ng vụ đến Tứ Xuy&ecirc;n. Tr&ecirc;n đường đi, &ocirc;ng ta thấy một c&ocirc; g&aacute;i dung nhan đoan trang, m&aacute;i t&oacute;c mượt m&agrave;, chừng 17 tuổi. Đại nh&acirc;n t&ograve; m&ograve; hỏi: &ldquo;Năm nay n&agrave;ng bao nhi&ecirc;u tuổi?&rdquo;. C&ocirc; g&aacute;i trả lời: &ldquo;Năm nay t&ocirc;i 372 tuổi!&rdquo;. Sau khi nghe, đại nh&acirc;n ngạc nhi&ecirc;n hơn v&agrave; hỏi: &ldquo;L&agrave;m thế n&agrave;o để n&agrave;ng c&oacute; được tuổi thọ?&rdquo;. C&ocirc; g&aacute;i n&oacute;i: &ldquo;T&ocirc;i kh&ocirc;ng c&oacute; phương ph&aacute;p b&iacute; ẩn n&agrave;o. T&ocirc;i chỉ ăn quả c&acirc;u kỷ tử thường xuy&ecirc;n trong năm th&ocirc;i&rdquo;.</p>\r\n\r\n<p>C&ocirc;ng dụng phải kể đến như:</p>\r\n\r\n<p>+ Tăng cường hệ miễn dịch</p>\r\n\r\n<p>+ Chống l&atilde;o h&oacute;a, dưỡng nhan</p>\r\n\r\n<p>+ Bảo vệ tế b&agrave;o gan</p>\r\n\r\n<p>+ Cải thiện thị lực, kh&ocirc; mắt, mờ mắt</p>\r\n\r\n<p>+ Th&uacute;c đẩy chức năng t&aacute;i tạo m&aacute;u</p>\r\n\r\n<p>&nbsp;Đ𝘂̛𝗼̛̀𝗻𝗴 𝗡𝗮̂𝘂 đ&atilde; được xem l&agrave; một vị thuốc c&oacute; t&aacute;c dụng bổ huyết v&agrave; phục hồi sức khỏe tuyệt vời. Ngo&agrave;i t&aacute;c dụng c&oacute; t&aacute;c động tốt đến cơ thể th&igrave; tr&agrave; đường đen c&ograve;n c&oacute; t&aacute;c dụng l&agrave;m đẹp, do đường đen chứa nhiều kho&aacute;ng chất v&agrave; vitamin n&ecirc;n gi&uacute;p cho l&agrave;n da trở n&ecirc;n mịn m&agrave;ng, giảm c&aacute;c v&ugrave;ng da sẫm m&agrave;u do phơi nắng. Ngo&agrave;i ra đường đen c&ograve;n c&oacute; t&aacute;c dụng điều ho&agrave; kinh nguyệt tốt cho phụ nữ.</p>\r\n\r\n<p>&nbsp;𝗗𝗮̂𝘂 𝘁𝗮̆̀𝗺: Quả d&acirc;u tằm ( tang thầm) c&oacute; vị ngọt, t&iacute;nh b&igrave;nh, l&agrave; một vị thuốc qu&yacute; c&oacute; t&aacute;c dụng bồi bổ sức khỏe, hỗ trợ điều trị mất ngủ, bổ thận tr&aacute;ng dương, gi&uacute;p s&aacute;ng mắt, tăng cường ti&ecirc;u h&oacute;a, gi&uacute;p đen t&oacute;c.</p>\r\n\r\n<p>&nbsp;𝑻𝒂́𝒐 Đ𝒐̉ 𝐓𝐚̂𝐧 𝐂𝐮̛𝐨̛𝐧𝐠 C&aacute;c l&aacute;t t&aacute;o được cắt từ t&aacute;o T&acirc;n Cương Ruomei; Da mỏng , ngon, d&agrave;y thịt, v&agrave; c&oacute; tiếng l&agrave; &ldquo;thuốc vitamin tự nhi&ecirc;n&rdquo;, l&agrave;m dịu dạ d&agrave;y, phục hồi sức khoẻ sau ốm, gi&agrave;u phốt pho v&agrave; sắt gi&uacute;p lưu th&ocirc;ng m&aacute;u, tăng cường hệ thống miễn dịch, ức chế sự ph&aacute;t triển của c&aacute;c tế b&agrave;o khối u ung thư v&agrave; c&oacute; thể g&oacute;p phần chống ung thư, gi&uacute;p xương chắc khỏe.</p>\r\n\r\n<p>&nbsp;𝐇𝐨𝐚 𝐇𝐨̂̀𝐧𝐠 𝐇𝐚̀𝐧 𝐐𝐮𝐨̂́𝐜 : Gi&agrave;u vitamin, tốt cho tim mạch, đẹp sắc, dưỡng nhan, điều h&ograve;a kh&iacute; huyết, hỗ trợ hệ ti&ecirc;u h&oacute;a, gi&uacute;p tăng cường hệ miễn dịch</p>\r\n\r\n<p>&ndash; 𝑳𝒐𝒏𝒈 𝑵𝒉𝒂̃𝒏: Tăng sự th&egrave;m ăn, tốt cho hệ ti&ecirc;u h&oacute;a, cải thiện t&aacute;o b&oacute;n, được d&ugrave;ng cho c&aacute;c trường hợp lo &acirc;u, mất ngủ, ngủ m&ecirc;, giảm tr&iacute; nhớ, qu&ecirc;n lẫn, loạn nhịp tim, thiếu m&aacute;u.</p>\r\n\r\n<p>&nbsp;𝑯𝒖̛𝒐̛́𝒏𝒈 𝒅𝒂̂̃𝒏 𝒔𝒖̛̉ 𝒅𝒖̣𝒏𝒈:</p>\r\n\r\n<p>&ndash; Uống n&oacute;ng: Tr&aacute;ng b&igrave;nh/ cốc v&agrave; tr&agrave; bằng nước đun s&ocirc;i trong 30s &ndash; 1 ph&uacute;t sau đ&oacute; gạn bỏ nước. Th&ecirc;m 300ml nước s&ocirc;i v&agrave; đợi khoảng 3-5 ph&uacute;t cho tr&agrave; ngậm nước l&agrave; c&oacute; thể d&ugrave;ng được.</p>\r\n\r\n<p>&ndash; Uống lạnh: Th&ecirc;m đ&aacute; v&agrave; thưởng thức.</p>\r\n\r\n<p>&ndash; Th&ecirc;m đường hoặc mật ong t&ugrave;y khẩu vị mỗi người.</p>\r\n\r\n<p>&ndash; Mỗi ng&agrave;y 1-2 g&oacute;i, c&oacute; thể th&ecirc;m nước 3 &ndash; 5 lần cho đến khi tr&agrave; nhạt.</p>\r\n\r\n<p>&ndash; Sản phẩm được đ&oacute;ng th&agrave;nh c&aacute;c g&oacute;i nhỏ, rất tiện lợi để mang theo b&ecirc;n m&igrave;nh khi đi l&agrave;m, đi chơi..</p>', NULL, NULL, '𝑻𝒓𝒂̀ 𝒄𝒐́ 𝒕𝒂́𝒄 𝒅𝒖̣𝒏𝒈 𝒄𝒖𝒏𝒈 𝒄𝒂̂́𝒑 𝒗𝒊𝒕𝒂𝒎𝒊𝒏 𝒄𝒉𝒐 𝒄𝒐̛ 𝒕𝒉𝒆̂̉ 𝒎𝒐̂̃𝒊 𝒏𝒈𝒂̀𝒚; 𝒃𝒐̂̉ 𝒔𝒖𝒏𝒈 𝒗𝒊𝒕𝒂𝒎𝒊𝒏, 𝒂𝒙𝒊𝒕 𝒂𝒎𝒊𝒏, 𝒉𝒖𝒎𝒆𝒏𝒕𝒐𝒔, 𝒌𝒉𝒐𝒂́𝒏𝒈 𝒄𝒉𝒂̂́𝒕, 𝒓𝒆𝒔𝒗𝒆𝒓𝒂𝒕𝒓𝒐𝒍, 𝒂𝒏𝒕𝒉𝒐𝒄𝒚𝒂𝒏𝒊𝒏… 𝒈𝒊𝒖́𝒑 𝒄𝒉𝒐 𝒄𝒐̛ 𝒕𝒉𝒆̂̉ 𝒌𝒉𝒐̉𝒆 𝒎𝒂̣𝒏𝒉 𝒉𝒐̛𝒏, 𝒄𝒉𝒐̂́𝒏𝒈 𝒍𝒂̃𝒐 𝒉𝒐́𝒂, 𝒍𝒂̀𝒎 𝒎𝒐̛̀ 𝒗𝒆̂́𝒕 𝒏𝒉𝒂̆𝒏.', 1, 1, '2020-07-23 12:58:56', '2020-07-23 13:04:07'),
(2, 'Trà Mộc Dưỡng', 'tra-moc-duong', 'TMD549', 2, 'Products/91007471_1906252259507130_4249340844802310144_n-800x794.jpg', '<p>Tr&agrave; Mộc Dưỡng&nbsp;</p>\r\n\r\n<p>Tr&agrave; đem lại hương vị ngọt c&oacute; m&agrave; lại kh&ocirc;ng ng&aacute;n.<br />\r\nĐ&uacute;ng như t&ecirc;n gọi, Tr&agrave; Mộc Dưỡng kh&ocirc;ng chỉ l&agrave; tr&agrave; m&agrave; c&ograve;n được coi l&agrave; dược tr&agrave; v&igrave; n&oacute; kh&ocirc;ng chỉ l&agrave; thức uống thơm ngon m&agrave; c&ograve;n c&oacute; t&aacute;c dụng l&agrave;m đẹp dung nhan, đẹp da, s&aacute;ng mắt, bổ huyết, an thần&hellip; chăm s&oacute;c sắc đẹp của m&igrave;nh từ b&ecirc;n trong.&nbsp;</p>\r\n\r\n<p>&nbsp;Tr&agrave; Mộc Dưỡng được kết hợp từ C&uacute;c v&agrave;ng, Long nh&atilde;n, Hồng h&agrave;n, T&aacute;o đỏ, Kim quất, Kỷ tử, Nho, Đường Ph&egrave;n.</p>\r\n\r\n<p><img alt=\"\" src=\"https://forgetmenotmart.com/wp-content/uploads/2020/04/91351666_1906252326173790_5397366108166553600_n-599x600.jpg\" style=\"height:600px; width:599px\" /><br />\r\n&ndash; C&uacute;c v&agrave;ng: An thần, trị mất ngủ, giảm stress, ăn uống ngon miệng, giải nhiệt, detox thanh lọc cơ thể, ph&ograve;ng ngừa ung thư.<br />\r\n&ndash; Kỷ tử: giải độc gan v&agrave; thận, l&agrave;m đẹp da, tăng cường tuần ho&agrave;n n&atilde;o v&agrave; chống l&atilde;o ho&aacute;, giữ g&igrave;n tuổi thanh xu&acirc;n cho ph&aacute;i đẹp, giữ g&igrave;n v&oacute;c d&aacute;ng v&agrave; c&acirc;n nặng, chữa can thận &acirc;m suy, chữa yếu lưng mỏi gối, chữa đầu cho&aacute;ng mắt hoa, chữa ho khan, mắt nh&igrave;n kh&ocirc;ng r&otilde;.<br />\r\n&ndash; Hoa hồng H&agrave;n Quốc: Đẹp da, trị mụn, chống l&atilde;o h&oacute;a v&agrave; kiềm chế qu&aacute; tr&igrave;nh l&atilde;o h&oacute;a giảm lượng chất b&eacute;o &ndash; nguy cơ b&eacute;o ph&igrave;, giảm cholesterol trong cơ thể, Bổ sung nhiều vitamin A, B1, C, D, chất xơ, mangan, sắt, mangie v&agrave; đồng, tốt cho đường huyết, giảm mỡ m&aacute;u, chống t&iacute;ch đọng mỡ ở tế b&agrave;o gan.<br />\r\n&ndash; T&aacute;o đỏ: Tốt cho đường huyết, giảm mỡ m&aacute;u, chống t&iacute;ch đọng mỡ ở tế b&agrave;o ga, chữa c&aacute;c bệnh về đường ti&ecirc;u h&oacute;a: đau dạ d&agrave;y, n&ocirc;n mửa, ch&aacute;n ăn, cung cấp năng lượng cho cơ thể.<br />\r\n&ndash; Kim quất: k&iacute;ch th&iacute;ch ti&ecirc;u ho&aacute;, th&ocirc;ng phế kh&iacute;, chống n&ocirc;n, nấc, ti&ecirc;u hạch&hellip; , chữa c&aacute;c bệnh về mắt, vi&ecirc;m họng, chữa nấc, nghẹn, chữa tinh ho&agrave;n sưng to sa xuống dưới, c&oacute; hạch ở cổ, giảm đau bụng hoặc sa dạ con sau sinh, đau dạ d&agrave;y, n&ocirc;n mửa, ch&aacute;n ăn..<br />\r\nDo tr&agrave; được kết hợp từ c&aacute;c loại thảo mộc thi&ecirc;n nhi&ecirc;n n&ecirc;n kh&ocirc;ng c&oacute; cafein, ngược lại c&ograve;n gi&uacute;p an thần giảm stress n&ecirc;n anh chị ho&agrave;n to&agrave;n c&oacute; thể d&ugrave;ng buổi tối được lu&ocirc;n nh&eacute;.</p>\r\n\r\n<p><img alt=\"\" src=\"https://forgetmenotmart.com/wp-content/uploads/2020/04/91323546_1906252249507131_5164058446651195392_n-800x523.jpg\" style=\"height:523px; width:800px\" /><br />\r\n&nbsp;Hướng dẫn sử dụng:<br />\r\n&ndash; Uống n&oacute;ng: Tr&aacute;ng b&igrave;nh/ cốc v&agrave; tr&agrave; bằng nước đun s&ocirc;i trong 30s &ndash; 1 ph&uacute;t sau đ&oacute; gạn bỏ nước. Th&ecirc;m 300ml nước s&ocirc;i v&agrave; đợi khoảng 3-5 ph&uacute;t cho tr&agrave; ngậm nước l&agrave; c&oacute; thể d&ugrave;ng được.<br />\r\n&ndash; Uống lạnh: Th&ecirc;m đ&aacute; v&agrave; thưởng thức.<br />\r\n&ndash; Th&ecirc;m đường hoặc mật ong t&ugrave;y khẩu vị mỗi người.<br />\r\n&ndash; Mỗi ng&agrave;y 1-2 g&oacute;i, c&oacute; thể th&ecirc;m nước 3 &ndash; 5 lần cho đến khi tr&agrave; nhạt.<br />\r\n&ndash; Sản phẩm được đ&oacute;ng th&agrave;nh c&aacute;c g&oacute;i nhỏ, rất tiện lợi để mang theo b&ecirc;n m&igrave;nh khi đi l&agrave;m, đi chơi.. &nbsp;&nbsp;<img alt=\"\" src=\"https://forgetmenotmart.com/wp-content/uploads/2020/04/91567588_1906252292840460_8245594462445633536_n-605x600.jpg\" style=\"height:600px; width:605px\" /></p>', NULL, NULL, 'Trà đem lại hương vị ngọt có mà lại không ngán.\r\nĐúng như tên gọi, Trà Mộc Dưỡng không chỉ là trà mà còn được coi là dược trà vì nó không chỉ là thức uống thơm ngon mà còn có tác dụng làm đẹp dung nhan, đẹp da, sáng mắt, bổ huyết, an thần… chăm sóc sắc đẹp của mình từ bên trong.', 1, 1, '2020-07-23 13:05:47', '2020-07-23 13:05:47'),
(3, 'Trà Ngũ Vị', 'tra-ngu-vi', 'TNV562', 2, 'Products/92020660_1913383002127389_8961377008869179392_n-800x802.jpg', '<p>𝙏𝙧𝙖̀ 𝙉𝙜𝙪̃ 𝙑𝙞̣&nbsp;</p>\r\n\r\n<p>Tr&agrave; vị ngọt thanh, hương thơm nhẹ nh&agrave;ng của c&uacute;c, hồng sẽ đem đến dư vị cực k&igrave; lắng đọng cho qu&yacute; vị n&agrave;o đam m&ecirc; kh&aacute;m ph&aacute; những vị tr&agrave; mới lạ.&nbsp;&nbsp;Nh&acirc;m nhi từng ngụm nhỏ cảm nhận hương thơm dịu d&agrave;ng lan tỏa cộng hưởng vị ngọt thanh khiết luyến lưu m&atilde;i kh&ocirc;ng th&ocirc;i.</p>\r\n\r\n<p>Tr&agrave; gi&uacute;p thanh lọc cơ thể, giải nhiệt, hỗ trợ điều trị t&aacute;o b&oacute;n v&agrave; thải độc tốc, gảm stress sau những ng&agrave;y l&agrave;m việc căng thẳng, m&ugrave;i thơm dễ chịu cực kỳ thoải m&aacute;i, l&agrave;m đẹp da, bổ huyết, dưỡng nhan, gi&uacute;p da hồng h&agrave;o s&aacute;ng khỏ, gi&uacute;p giảm mụn, m&aacute;t trong, tốt cho dạ d&agrave;y v&agrave; hỗ trợ hệ ti&ecirc;u h&oacute;a, cung cấp năng lượng cho cơ thể.&nbsp;</p>\r\n\r\n<p>𝙏𝙧𝙖̀ 𝙉𝙜𝙪̃ 𝙑𝙞̣ l&agrave; sự kết hợp của 5 loại tr&agrave; : 𝑇𝑟𝑎̀ 𝑇𝑎́𝑜 đ𝑜̉, 𝐻𝑜̂̀𝑛𝑔 ℎ𝑎̀𝑛, 𝐿𝑜𝑛𝑔 𝑛ℎ𝑎̃𝑛, 𝐾𝑦̉ 𝑡𝑢̛̉, 𝑁𝑢̣ 𝐶𝑢́𝑐.</p>\r\n\r\n<p><img alt=\"\" src=\"https://forgetmenotmart.com/wp-content/uploads/2020/04/94362630_1934385620027127_322923528535932928_n-1-600x600.jpg\" style=\"height:600px; width:600px\" /></p>\r\n\r\n<p>&ndash;&nbsp;&nbsp;Tr&agrave; hoa C&uacute;c: gi&uacute;p đầu &oacute;c tỉnh t&aacute;o, hai mắt tinh tường, c&oacute; t&aacute;c dụng đặc biệt tốt với những người bị kh&ocirc; mắt do can hoả vượng, lao động thị lực qu&aacute; nhiều; ngo&agrave;i ra những người thường cảm thấy kh&oacute; chịu ở mắt do l&agrave;m việc văn ph&ograve;ng thường xuy&ecirc;n, uống tr&agrave; hoa C&uacute;c sẽ c&oacute; nhiều lợi &iacute;ch tốt. Mắt kh&ocirc;ng bị kh&ocirc; nữa, kh&ocirc;ng cận thị nữa, giống như người ta vẫn n&oacute;i l&agrave; s&aacute;ng mắt chắc răng vậy.</p>\r\n\r\n<p>&ndash;&nbsp;&nbsp;T&aacute;o đỏ: dưỡng gan b&agrave;i trừ độc tố.Thực nghiệm chứng minh, mỗi ng&agrave;y cho người c&oacute; chức năng gan k&eacute;m uống nước t&aacute;o đỏ, cứ uống li&ecirc;n tục trong 1 tuần sẽ gi&uacute;p &iacute;ch tăng protein huyết thanh một c&aacute;ch nhanh ch&oacute;ng, từ đ&oacute; đạt được t&aacute;c dụng bảo vệ gan, b&agrave;i trừ độc tố.</p>\r\n\r\n<p>&ndash;&nbsp;&nbsp;Kỷ tử: c&oacute; vị ngọt dịu c&oacute; t&aacute;c dụng bồi bổ tinh kh&iacute;, hỗ trợ điều trị bệnh tiểu đường, gi&uacute;p l&agrave;m tăng thị lực của mắt v&agrave; chứng t&ecirc; mỏi ch&acirc;n tay ở người gi&agrave;, trị chứng t&aacute;o b&oacute;n, chống oxy h&oacute;a v&agrave; l&agrave;m chậm qu&aacute; tr&igrave;nh l&atilde;o h&oacute;a.</p>\r\n\r\n<p>&ndash;&nbsp;Hoa Hồng H&agrave;n Quốc: kh&ocirc;ng chỉ c&oacute; t&aacute;c dụng trang tr&iacute; m&agrave; c&ograve;n c&oacute; nhiều c&ocirc;ng dụng rất tốt cho sức khỏe của bạn. Với nhiều vitamin C v&agrave; kho&aacute;ng chất, tr&agrave; hoa hồng ch&iacute;nh l&agrave; loại thảo dược c&oacute; thể mang lại cho bạn nhiều lợi &iacute;ch từ da đến t&oacute;c v&agrave; c&aacute;c bộ phận kh&aacute;c b&ecirc;n trong cơ thể.</p>\r\n\r\n<p>&ndash;&nbsp;&nbsp;Long nh&atilde;n l&agrave; một trong những vị thuốc c&oacute; t&aacute;c dụng dưỡng huyết, an thần, &iacute;ch tr&iacute;, bổ n&atilde;o long nh&atilde;n c&oacute; t&aacute;c dụng bổ t&acirc;m tỳ, an thần, lợi kh&iacute;, dưỡng huyết. tốt cho n&atilde;o bộ, hỗ trợ suy giảm tr&iacute; nhớ, chữa hay qu&ecirc;n, rối loạn giấc ngủ, lo &acirc;u, thiếu m&aacute;u, mệt mỏi, suy nhược cơ thể, k&eacute;o d&agrave;i tuổi thọ.</p>\r\n\r\n<p>&nbsp;Hướng dẫn sử dụng</p>\r\n\r\n<p>&ndash; Uống n&oacute;ng: Tr&aacute;ng b&igrave;nh/ cốc v&agrave; tr&agrave; bằng nước đun s&ocirc;i trong 30s &ndash; 1 ph&uacute;t sau đ&oacute; gạn bỏ nước. Th&ecirc;m 300ml nước s&ocirc;i v&agrave; đợi khoảng 3-5 ph&uacute;t cho tr&agrave; ngậm nước l&agrave; c&oacute; thể d&ugrave;ng được.</p>\r\n\r\n<p>&ndash; Uống lạnh: Th&ecirc;m đ&aacute; v&agrave; thưởng thức.</p>\r\n\r\n<p>&ndash; Th&ecirc;m đường hoặc mật ong t&ugrave;y khẩu vị mỗi người.</p>\r\n\r\n<p>&ndash; Mỗi ng&agrave;y 1-2 g&oacute;i, c&oacute; thể th&ecirc;m nước 3 &ndash; 5 lần cho đến khi tr&agrave; nhạt.</p>\r\n\r\n<p>&ndash; Sản phẩm được đ&oacute;ng th&agrave;nh c&aacute;c g&oacute;i nhỏ, rất tiện lợi để mang theo b&ecirc;n mnh khi đi l&agrave;m, đi chơi..</p>', NULL, NULL, 'Trà vị ngọt thanh, hương thơm nhẹ nhàng của cúc, hồng sẽ đem đến dư vị cực kì lắng đọng cho quý vị nào đam mê khám phá những vị trà mới lạ. 🍵☕️ Nhâm nhi từng ngụm nhỏ cảm nhận hương thơm dịu dàng lan tỏa cộng hưởng vị ngọt thanh khiết luyến lưu mãi không thôi.\r\n \r\nTrà giúp thanh lọc cơ thể, giải nhiệt, hỗ trợ điều trị táo bón và thải độc tốc, gảm stress sau những ngày làm việc căng thẳng, mùi thơm dễ chịu cực kỳ thoải mái, làm đẹp da, bổ huyết, dưỡng nhan, giúp da hồng hào sáng khỏ, giúp giảm mụn, mát trong, tốt cho dạ dày và hỗ trợ hệ tiêu hóa, cung cấp năng lượng cho cơ thể.', 1, 1, '2020-07-23 13:15:32', '2020-07-23 13:15:32'),
(4, 'Thanh Can Trà', 'thanh-can-tra', 'TCT827', 2, 'Products/92020660_1913383002127389_8961377008869179392_n-800x802.jpg', '<p>Tr&agrave; c&oacute; vị ngọt dịu của Kỷ Tử v&agrave; đường ph&egrave;n, c&oacute; m&ugrave;i thơm m&aacute;t của Bạc H&agrave;, Kim Ng&acirc;n, Hoa C&uacute;c, c&oacute; vị hơi cay the của Bạc H&agrave;, ch&uacute;t ngọt của Kim Quất, Bồ C&ocirc;ng Anh, Hương vị thanh của &Ocirc; Long.</p>\r\n\r\n<p><img alt=\"\" src=\"https://forgetmenotmart.com/wp-content/uploads/2020/04/92020660_1913383002127389_8961377008869179392_n-599x600.jpg\" style=\"height:600px; width:599px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://forgetmenotmart.com/wp-content/uploads/2020/04/92243399_1913382948794061_8034960796574285824_n-758x600.jpg\" style=\"height:600px; width:758px\" /></p>\r\n\r\n<p>&nbsp;Tr&agrave; c&oacute; t&aacute;c dụng thanh nhiệt giải độc, hạ hỏa, m&aacute;t phổi, giảm mụn nhọt, đẹp da,hơi thở thơm tho, tinh thần sảng kho&aacute;i, tăng sức đề kh&aacute;ng cho cơ thể.<br />\r\n&ndash;&nbsp;Hoa C&uacute;c V&agrave;ng : thanh nhiệt giải độc, m&aacute;t&nbsp;gan, hạ hỏa, s&aacute;ng mắt, giảm mụn nhọt, đẹp da, tăng cường miễn dịch, chống l&atilde;o h&oacute;a, hỗ trợ ti&ecirc;u h&oacute;a, giảm đau đầu, ch&oacute;ng mặt, lo &acirc;u, căng thẳng, cải thiện chất lượng giấc ngủ.<br />\r\n&ndash;&nbsp;Bạc H&agrave; c&oacute; m&ugrave;i thơm, t&iacute;nh m&aacute;t, c&oacute; t&aacute;c dụng thanh lọc phổi, k&iacute;ch th&iacute;ch dạ d&agrave;y, hỗ trợ ti&ecirc;u h&oacute;a, chữa dị ứng, trầm cảm, bảo vệ răng miệng, tăng cường hệ thống miễn dịch, giảm c&acirc;n, giảm stress, l&agrave;m đẹp da&hellip;<br />\r\n&ndash;&nbsp;Kỷ tử: bổ thận, &iacute;ch tinh, dưỡng huyết, minh mục, nhuận phế, c&oacute; thể ph&ograve;ng chữa c&aacute;c chứng bệnh như suy nhược cơ thể sau bệnh nặng, đầu cho&aacute;ng, mắt hoa, nh&igrave;n mờ, tai &ugrave;, tai điếc, lưng đau, gối mỏi, di tinh, liệt dương&hellip;<br />\r\n&ndash;&nbsp;&nbsp;&Ocirc; Long: Tăng sự tỉnh t&aacute;o, Ngừa lo&atilde;ng xương v&agrave; gi&uacute;p xương chắc khoẻ, gi&uacute;p bạn đốt ch&aacute;y mỡ thừa nhanh hơn bằng c&aacute;ch tăng cường sự trao đổi chất, ngừa s&acirc;u răng, bảo vệ răng khỏi axit tiết ra.<br />\r\n&ndash;&nbsp;&nbsp;Kim quất: Cung cấp vitamin C, A, B2, chất xơ, mangan, sắt, magi&ecirc; v&agrave; đồng, chữa ho do phong h&agrave;n, chữa c&aacute;c bệnh đường ti&ecirc;u ho&aacute;: đau dạ d&agrave;y, n&ocirc;n mửa, ch&aacute;n ăn.., điều h&ograve;a, cải thiện chức năng gan, k&iacute;ch th&iacute;ch ti&ecirc;u ho&aacute;, th&ocirc;ng phế kh&iacute;, chống n&ocirc;n, nấc, ti&ecirc;u hạch&hellip; , chữa c&aacute;c bệnh về mắt, vi&ecirc;m họng, chữa nấc, nghẹn, chữa tinh ho&agrave;n sưng to sa xuống dưới, c&oacute; hạch ở c, giảm đau bụng hoặc sa dạ con sau sinh&hellip;<br />\r\n&ndash;&nbsp;&nbsp;Hoa kim ng&acirc;n: kh&aacute;ng khuẩn, kh&aacute;ng vi&ecirc;m, kh&aacute;ng virus, Ti&ecirc;u mụn nhọn, dị ứng, mẩn ngứa. Giải cảm c&uacute;m, trừ vi&ecirc;m họng, đau họng, tăng cường chuyển h&oacute;a chất b&eacute;o, gi&uacute;p giảm c&acirc;n hiệu quả. Th&uacute;c đẩy qu&aacute; tr&igrave;nh trao đổi chất, l&agrave;m chậm sự l&atilde;o h&oacute;a, t&agrave;n nhang<br />\r\n&ndash;&nbsp;&nbsp;Bồ C&ocirc;ng Anh: Giải độc, chữa c&aacute;c bệnh mụn nhọt, lở lo&eacute;t, chữa vi&ecirc;m dạ d&agrave;y &ndash; t&aacute; tr&agrave;ng, chữa vi&ecirc;m gan, tốt cho ti&ecirc;u h&oacute;a.</p>\r\n\r\n<p><img alt=\"\" src=\"https://forgetmenotmart.com/wp-content/uploads/2020/04/92244655_1913382935460729_4601580832258260992_n-603x600.jpg\" style=\"height:600px; width:603px\" /></p>\r\n\r\n<p>Hướng dẫn sử dụng:</p>\r\n\r\n<p>&ndash; Uống n&oacute;ng: Tr&aacute;ng b&igrave;nh/ cốc v&agrave; tr&agrave; bằng nước đun s&ocirc;i trong 30s &ndash; 1 ph&uacute;t sau đ&oacute; gạn bỏ nước. Th&ecirc;m 300ml nước s&ocirc;i v&agrave; đợi khoảng 3-5 ph&uacute;t cho tr&agrave; ngậm nước l&agrave; c&oacute; thể d&ugrave;ng được.<br />\r\n&ndash; Uống lạnh: Th&ecirc;m đ&aacute; v&agrave; thưởng thức.<br />\r\n&ndash; Th&ecirc;m đường hoặc mật ong t&ugrave;y khẩu vị mỗi người.<br />\r\n&ndash; Mỗi ng&agrave;y 1-2 g&oacute;i, c&oacute; thể th&ecirc;m nước 3 &ndash; 5 lần cho đến khi tr&agrave; nhạt.<br />\r\n&ndash; Sản phẩm được đ&oacute;ng th&agrave;nh c&aacute;c g&oacute;i nhỏ, rất tiện lợi để mang theo b&ecirc;n m&igrave;nh khi đi l&agrave;m, đi chơi.</p>\r\n\r\n<p><img alt=\"\" src=\"https://forgetmenotmart.com/wp-content/uploads/2020/04/92243745_1913382982127391_4361766729081159680_n-598x600.jpg\" style=\"height:600px; width:598px\" /></p>', NULL, NULL, 'Trà có vị ngọt dịu của Kỷ Tử và đường phèn, có mùi thơm mát của Bạc Hà, Kim Ngân, Hoa Cúc, có vị hơi cay the của Bạc Hà, chút ngọt của Kim Quất, Bồ Công Anh, Hương vị thanh của Ô Long.\r\n\r\n🎁 Trà có tác dụng thanh nhiệt giải độc, hạ hỏa, mát phổi, giảm mụn nhọt, đẹp da,hơi thở thơm tho, tinh thần sảng khoái, tăng sức đề kháng cho cơ thể.', 1, 1, '2020-07-24 18:16:04', '2020-07-24 18:16:04'),
(5, 'Trà Dưỡng Thanh', 'tra-duong-thanh', 'TDT219', 2, 'Products/94362630_1934385620027127_322923528535932928_n-1-800x800.jpg', '<p>𝑇𝑟𝑎̀ 𝐷𝑢̛𝑜̛̃𝑛𝑔 𝑇ℎ𝑎𝑛ℎ l&agrave; sự kết hợp ho&agrave;n hảo từ vị: 𝑡𝑢̛𝑜̛𝑖 𝑚𝑎́𝑡 𝑐𝑢̉𝑎 𝑡𝑟𝑎́𝑖 𝑙𝑒̂, 𝑏𝑢̀𝑖 𝑏𝑢̀𝑖 𝑛ℎ𝑎̂̀𝑦 𝑁ℎ𝑢̣𝑐 Đ𝑎̣𝑖 𝐻𝑎̉𝑖, 𝑛𝑔𝑜̣𝑡 𝑠𝑎̂𝑢 𝑙𝑎̆́𝑛𝑔 𝑐𝑢̉𝑎 𝑐𝑎𝑚 𝑡ℎ𝑎̉𝑜, 𝑡ℎ𝑜̛𝑚 𝑛𝑔𝑎́𝑡 𝑚𝑢̀𝑖 ℎ𝑜𝑎 𝑚𝑜̣̂𝑐 𝑚𝑦̃, 𝑑𝑖̣𝑢 𝑑𝑎̀𝑛𝑔 ℎ𝑜𝑎 𝑐𝑢́𝑐 𝑣𝑎̀𝑛𝑔 𝑣𝑎̀ 𝑡ℎ𝑎𝑛ℎ 𝑡ℎ𝑎𝑛ℎ ℎ𝑢̛𝑜̛𝑛𝑔 𝑘𝑖𝑚 𝑛𝑔𝑎̂𝑛 ℎ𝑜𝑎̀ 𝑡𝑟𝑜̣̂𝑛 𝑐𝑢̀𝑛𝑔 𝑡𝑟𝑢́𝑐 𝑑𝑖𝑒̣̂𝑝.</p>\r\n\r\n<p><img alt=\"\" src=\"https://forgetmenotmart.com/wp-content/uploads/2020/04/94385994_1197973197201364_5222489015697014784_n-603x600.jpg\" style=\"height:600px; width:603px\" /></p>\r\n\r\n<p>&nbsp;Tr&agrave; c&oacute; t&aacute;c dụng thanh nhiệt, giải độc, nhuận phế, lợi hầu, đẹp da, hỗ trợ ti&ecirc;u h&oacute;a, tăng cường miễn&nbsp;dịch, đặc biệt th&iacute;ch hợp cho những người hay phải l&agrave;m việc khuya, phải tiếp x&uacute;c với m&ocirc;i trường &ocirc; nhiễm, h&uacute;t thuốc, uống rượu, ca sỹ, gi&aacute;o vi&ecirc;n phải n&oacute;i nhiều l&agrave;m khản tiếng ,mất tiếng.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://forgetmenotmart.com/wp-content/uploads/2020/04/tra-duong-thanh-36778-800x503.jpg\" style=\"height:503px; width:800px\" /></p>\r\n\r\n<p>Tr&agrave; được kết hợp từ quả 𝑁ℎ𝑢̣𝑐 Đ𝑎̣𝑖 𝐻𝑎̉𝑖, 𝐶𝑢́𝑐 𝑣𝑎̀𝑛𝑔, 𝐻𝑜𝑎 𝑀𝑜̣̂𝑐 𝑀𝑦̃, 𝐶𝑎𝑚 𝑇ℎ𝑎̉𝑜, 𝑇𝑟𝑢́𝑐 𝐷𝑖𝑒̣̂𝑝, 𝐿𝑒̂.<br />\r\n&ndash;&nbsp;𝑁ℎ𝑢̣𝑐 Đ𝑎̣𝑖 𝐻𝑎̉𝑖 (Qủa đười ươi) : Khi ng&acirc;m, quả sẽ nở ra chất nh&agrave;y nh&agrave;y ( giống hạt &eacute;) kh&aacute;ch c&oacute; thể ăn được lu&ocirc;n ạ. C&ocirc;ng dụng phải kể đến như: gi&uacute;p điều trị chảy m&aacute;u cam, nhuận phế, lợi hầu. điều trị cổ họng sưng đau, khản tiếng, mất tiếng, vi&ecirc;m họng, vi&ecirc;m amidan cấp t&iacute;nh, hạ &aacute;p, lợi tiểu, giảm đau<br />\r\n&ndash;&nbsp;𝘏𝘰𝘢 𝘔𝘰̣̂𝘤 𝘔𝘺̃: nhuận phế (l&agrave;m m&aacute;t phổi), h&oacute;a đ&agrave;m (l&agrave;m tan đ&agrave;m), chỉ kh&aacute;t (l&agrave;m hết kh&aacute;t nước). Tăng cường chức năng miễn dịch của cơ thể, gi&uacute;p giảm lipid m&aacute;u, đẹp da, chống oxy h&oacute;a, chống dị ứng.<br />\r\n&ndash;&nbsp;𝘏𝘰𝘢 𝘬𝘪𝘮 𝘯𝘨𝘢̂𝘯: kh&aacute;ng khuẩn, kh&aacute;ng vi&ecirc;m, kh&aacute;ng virus, ti&ecirc;u mụn nhọn, dị ứng, mẩn ngứa. Giải cảm c&uacute;m, trừ vi&ecirc;m họng, đau họng; hạ cholesterol, tăng cường chuyển h&oacute;a chất b&eacute;o, gi&uacute;p giảm c&acirc;n hiệu quả; th&uacute;c đẩy qu&aacute; tr&igrave;nh trao đổi chất, l&agrave;m chậm sự l&atilde;o h&oacute;a, t&agrave;n nhang<br />\r\n&ndash;&nbsp;𝐻𝑜𝑎 𝑐𝑢́𝑐 𝑣𝑎̀𝑛𝑔 : thanh nhiệt giải độc, hạ hỏa, s&aacute;ng mắt, giảm mụn nhọt, đẹp da. Tăng cường miễn dịch, giảm đau đầu, lo &acirc;u, căng thẳng, cải thiện chất lượng giấc ngủ.<br />\r\n&ndash;&nbsp;𝘊𝘢𝘮 𝘵𝘩𝘢̉𝘰: bổ kh&iacute; huyết, mạnh g&acirc;n cốt, thanh nhiệt, giải độc, kh&aacute;ng vi&ecirc;m, chống dị ứng, chỉ kh&aacute;i h&oacute;a đờm, l&agrave;m chất tạo vị ngọt c&oacute; &iacute;ch cho người bị đ&aacute;i th&aacute;o đường&hellip;<br />\r\n&ndash;&nbsp;𝘛𝘳𝘶́𝘤 𝘋𝘪𝘦̣̂𝘱: Th&agrave;nh phần trong tr&agrave; tr&uacute;c diệp rất giầu silic đi &ocirc; x&iacute;t, gi&uacute;p răng, t&oacute;c, m&oacute;ng, xương chắc khỏe, tăng độ đ&agrave;n hồi cho da, chống l&atilde;o h&oacute;a; Kh&aacute;ng vi&ecirc;m. Giảm đau. Chữa l&agrave;nh c&aacute;c vết thương, lo&eacute;t; Detox l&agrave;m sạch cơ thể. Nhuận gan, giải độc. GIẢM C&Acirc;N; Gi&agrave;u cali, gi&uacute;p ổn định v&agrave; hạ huyết &aacute;p cao; L&agrave; thực phẩm chống oxy h&oacute;a ph&ograve;ng ngừa v&agrave; điều trị bệnh UNG THƯ; Tốt cho tim mạch.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://forgetmenotmart.com/wp-content/uploads/2020/04/433c11326334996ac025-590x600.jpg\" style=\"height:600px; width:590px\" /></p>\r\n\r\n<p><br />\r\n𝗛𝘂̛𝗼̛́𝗻𝗴 𝗱𝗮̂̃𝗻 𝘀𝘂̛̉ 𝗱𝘂̣𝗻𝗴:</p>\r\n\r\n<p>&ndash; Uống n&oacute;ng: Tr&aacute;ng b&igrave;nh/ cốc v&agrave; tr&agrave; bằng nước đun s&ocirc;i trong 30s &ndash; 1 ph&uacute;t sau đ&oacute; gạn bỏ nước. Th&ecirc;m 300ml nước s&ocirc;i v&agrave; đợi khoảng 3-5 ph&uacute;t cho tr&agrave; ngậm nước l&agrave; c&oacute; thể d&ugrave;ng được.<br />\r\n&ndash; Uống lạnh: Th&ecirc;m đ&aacute; v&agrave; thưởng thức.<br />\r\n&ndash; Th&ecirc;m đường hoặc mật ong t&ugrave;y khẩu vị mỗi người.<br />\r\n&ndash; Mỗi ng&agrave;y 1-2 g&oacute;i, c&oacute; thể th&ecirc;m nước 3 &ndash; 5 lần cho đến khi tr&agrave; nhạt.<br />\r\n&ndash; Sản phẩm được đ&oacute;ng th&agrave;nh c&aacute;c g&oacute;i nhỏ, rất tiện lợi để mang theo b&ecirc;n m&igrave;nh khi đi l&agrave;m, đi chơi.</p>', NULL, NULL, '𝑇𝑟𝑎̀ 𝐷𝑢̛𝑜̛̃𝑛𝑔 𝑇ℎ𝑎𝑛ℎ là sự kết hợp hoàn hảo từ vị: 𝑡𝑢̛𝑜̛𝑖 𝑚𝑎́𝑡 𝑐𝑢̉𝑎 𝑡𝑟𝑎́𝑖 𝑙𝑒̂, 𝑏𝑢̀𝑖 𝑏𝑢̀𝑖 𝑛ℎ𝑎̂̀𝑦 𝑁ℎ𝑢̣𝑐 Đ𝑎̣𝑖 𝐻𝑎̉𝑖, 𝑛𝑔𝑜̣𝑡 𝑠𝑎̂𝑢 𝑙𝑎̆́𝑛𝑔 𝑐𝑢̉𝑎 𝑐𝑎𝑚 𝑡ℎ𝑎̉𝑜, 𝑡ℎ𝑜̛𝑚 𝑛𝑔𝑎́𝑡 𝑚𝑢̀𝑖 ℎ𝑜𝑎 𝑚𝑜̣̂𝑐 𝑚𝑦̃, 𝑑𝑖̣𝑢 𝑑𝑎̀𝑛𝑔 ℎ𝑜𝑎 𝑐𝑢́𝑐 𝑣𝑎̀𝑛𝑔 𝑣𝑎̀ 𝑡ℎ𝑎𝑛ℎ 𝑡ℎ𝑎𝑛ℎ ℎ𝑢̛𝑜̛𝑛𝑔 𝑘𝑖𝑚 𝑛𝑔𝑎̂𝑛 ℎ𝑜𝑎̀ 𝑡𝑟𝑜̣̂𝑛 𝑐𝑢̀𝑛𝑔 𝑡𝑟𝑢́𝑐 𝑑𝑖𝑒̣̂𝑝.\r\n🤝 Trà có tác dụng thanh nhiệt, giải độc, nhuận phế, lợi hầu, đẹp da, hỗ trợ tiêu hóa, tăng cường miễn dịch, đặc biệt thích hợp cho những người hay phải làm việc khuya, phải tiếp xúc với môi trường ô nhiễm, hút thuốc, uống rượu, ca sỹ, giáo viên phải nói nhiều làm khản tiếng ,mất tiếng.', 1, 1, '2020-07-24 18:22:54', '2020-08-02 21:41:54'),
(6, 'Trà Ngọc Nữ', 'tra-ngoc-nu', 'TNN58', 2, 'Products/94385994_1197973197201364_5222489015697014784_n-800x797.jpg', '<p>Tr&agrave; c&oacute; m&ugrave;i thơm của 7 loại hoa: Hoa Hồng nguy&ecirc;n b&ocirc;ng ph&uacute; qu&yacute;, hoa hồng H&agrave;n Quốc ki&ecirc;u sa, hoa nh&agrave;i tinh khiết, hoa c&uacute;c thanh tao v&agrave; vỏ qu&yacute;t, c&oacute; sắc đỏ t&iacute;m của sự kết hợp giữa hibiscus v&agrave; kỷ tử đen ho&agrave;n to&agrave;n tự nhi&ecirc;n kh&ocirc;ng nhuộm m&agrave;u, c&oacute; vị chua chua của bụp giấm.</p>\r\n\r\n<p><img alt=\"\" src=\"https://forgetmenotmart.com/wp-content/uploads/2020/04/91437482_1907200319412324_9010676541868212224_n-597x600.jpg\" style=\"height:600px; width:597px\" /></p>\r\n\r\n<p>Tr&agrave; c&oacute; t&aacute;c dụng dưỡng nhan, đẹp sắc, thanh nhiệt, ti&ecirc;u độc, ngăn ngừa mụn, điều h&ograve;a kinh nguyệt, giảm lo &acirc;u, căng thẳng, giảm t&igrave;nh trạng da nhợt nhạt do thiếu m&aacute;u , chống ng&aacute;n do thức ăn dầu mỡ.</p>\r\n\r\n<p>𝑻𝒓𝒂̀ 𝑵𝒈𝒐̣𝒄 𝑵𝒖̛̃ l&agrave; sự kết hợp của tr&agrave; 𝐻𝑖𝑏𝑖𝑠𝑐𝑢𝑠, 𝑉𝑜̉ 𝑐𝑎𝑚, 𝐻𝑜̂̀𝑛𝑔 𝐻𝑎̀𝑛, 𝑁ℎ𝑎̀𝑖, 𝐶𝑢́𝑐 𝐹𝑙𝑜𝑟𝑖𝑠𝑡, 𝐻𝑎̆́𝑐 𝐾𝑦̉ 𝑇𝑢̛̉, 𝐻𝑜𝑎 𝐻𝑜̂̀𝑛𝑔 𝑁𝑔𝑢𝑦𝑒̂𝑛 𝐵𝑜̂𝑛𝑔<br />\r\n&ndash;&nbsp;&nbsp;Hoa c&uacute;c Florist: thanh nhiệt, ti&ecirc;u vi&ecirc;m, giảm mụn nhọt, chống oxy h&oacute;a, chống l&atilde;o h&oacute;a, giảm lo &acirc;u, căng thẳng, cải thiện chất lượng giấc ngủ; hạ huyết &aacute;p, tăng hoạt động của tim; điều h&ograve;a kinh nguyệt<br />\r\n&ndash;&nbsp;&nbsp;Hoa hồng nguy&ecirc;n b&ocirc;ng: chứa nhiều vitamin v&agrave; kho&aacute;ng chất c&oacute; t&aacute;c dụng l&agrave;m đẹp da, ngăn ngừa mụn trứng c&aacute;, giảm tốc độ l&atilde;o h&oacute;a của da, loại bỏ c&aacute;c sắc tố đen v&agrave; nếp nhăn l&agrave;m da trắng hồng, tươi trẻ. Điều h&ograve;a kh&iacute; huyết, th&uacute;c đ&acirc;y lưu th&ocirc;ng m&aacute;u, điều h&ograve;a nội tiết, điều h&ograve;a kinh nguyệt, gi&uacute;p giảm đau bụng tiền kinh nguyệt, cải thiện t&igrave;nh trạng lo &acirc;u, căng thẳng.<br />\r\n&ndash;&nbsp;&nbsp;Hoa Nh&agrave;i: giải độc, kh&aacute;ng khuẩn, trắng da, ngăn ngừa l&atilde;o h&oacute;a, giảm stress, giảm huyết &aacute;p, cholesterol, điều h&ograve;a sự lưu th&ocirc;ng m&aacute;u<br />\r\n&ndash;&nbsp;&nbsp;Hibiscus: giảm c&acirc;n, ph&ograve;ng v&agrave; điều trị bệnh b&eacute;o ph&igrave;, Tăng cường chức năng gan, bảo vệ gan<br />\r\n&ndash;&nbsp;&nbsp;Vỏ cam: giảm ho, vi&ecirc;m họng, gi&uacute;p tăng cường hệ miễn dịch, ngăn ngừa vi khuẩn, giảm nhiễm tr&ugrave;ng đường tiết niệu<br />\r\n&ndash;&nbsp;&nbsp;Hắc Kỷ Tử: chứa nhiều protein, lipid, glucid, c&aacute;c acid amin tự do, acid hữu cơ, kho&aacute;ng chất, c&aacute;c nguy&ecirc;n tố vi lượng, kiềm, Vitamin c, B1, B2&hellip;Kh&ocirc;ng những vậy, Kỷ tử đen c&ograve;n chứa lượng lớn hắc quả sắc tố proanthocyanidines -pc&hellip;c&oacute; t&aacute;c dụng chống l&atilde;o h&oacute;a, an thần, đẹp da, tăng cường miễn dịch, ph&ograve;ng chống ung thư.<br />\r\n&ndash;&nbsp;&nbsp;Hoa Hồng H&agrave;n Quốc: dưỡng nhan đẹp sắc, l&agrave;m trắng da, loại bỏ c&aacute;c nếp nhăn v&agrave; t&agrave;n nhang, l&agrave;m chậm qu&aacute; tr&igrave;nh l&atilde;o h&oacute;a; m&aacute;t gan, giải độc, s&aacute;ng mắt, hoạt huyết, th&ocirc;ng kinh.</p>\r\n\r\n<p><img alt=\"\" src=\"https://forgetmenotmart.com/wp-content/uploads/2020/04/91444633_1907200306078992_7422978908091318272_n-607x600.jpg\" style=\"height:600px; width:607px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://forgetmenotmart.com/wp-content/uploads/2020/04/91601030_1907200312745658_1495754847964626944_n-586x600.jpg\" style=\"height:600px; width:586px\" />&nbsp;<img alt=\"\" src=\"https://forgetmenotmart.com/wp-content/uploads/2020/04/91060609_1907200369412319_4486553460518420480_n-607x600.jpg\" style=\"height:600px; width:607px\" /><br />\r\n&nbsp;𝐻𝑢̛𝑜̛́𝑛𝑔 𝑑𝑎̂̃𝑛 𝑠𝑢̛̉ 𝑑𝑢̣𝑛𝑔:<br />\r\n&ndash; Uống n&oacute;ng: Tr&aacute;ng b&igrave;nh/ cốc v&agrave; tr&agrave; bằng nước đun s&ocirc;i trong 30s &ndash; 1 ph&uacute;t sau đ&oacute; gạn bỏ nước. Th&ecirc;m 300ml nước s&ocirc;i v&agrave; đợi khoảng 3-5 ph&uacute;t cho tr&agrave; ngậm nước l&agrave; c&oacute; thể d&ugrave;ng được.<br />\r\n&ndash; Uống lạnh: Th&ecirc;m đ&aacute; v&agrave; thưởng thức.<br />\r\n&ndash; Th&ecirc;m đường hoặc mật ong t&ugrave;y khẩu vị mỗi người.<br />\r\n&ndash; Mỗi ng&agrave;y 1-2 g&oacute;i, c&oacute; thể th&ecirc;m nước 3 &ndash; 5 lần cho đến khi tr&agrave; nhạt.<br />\r\n&ndash; Sản phẩm được đ&oacute;ng th&agrave;nh c&aacute;c g&oacute;i nhỏ, rất tiện lợi để mang theo b&ecirc;n m&igrave;nh khi đi l&agrave;m, đi chơi..</p>', NULL, NULL, 'Trà có mùi thơm của 7 loại hoa: Hoa Hồng nguyên bông phú quý, hoa hồng Hàn Quốc kiêu sa, hoa nhài tinh khiết, hoa cúc thanh tao và vỏ quýt, có sắc đỏ tím của sự kết hợp giữa hibiscus và kỷ tử đen hoàn toàn tự nhiên không nhuộm màu, có vị chua chua của bụp giấm.\r\n\r\nTrà có tác dụng dưỡng nhan, đẹp sắc, thanh nhiệt, tiêu độc, ngăn ngừa mụn, điều hòa kinh nguyệt, giảm lo âu, căng thẳng, giảm tình trạng da nhợt nhạt do thiếu máu , chống ngán do thức ăn dầu mỡ.', 1, 1, '2020-07-24 18:25:42', '2020-08-02 21:42:42'),
(7, 'Combo giữ dáng', 'combo-giu-dang', 'CGD812', 3, 'Products/0e3ae07a19b7e4e9bda6-800x805.jpg', NULL, NULL, NULL, NULL, 1, 1, '2020-07-24 18:28:26', '2020-07-24 18:28:26'),
(8, 'Set ấm tách khay trà English style', 'set-am-tach-khay-tra-english-style', 'SATKTES866', 7, 'Products/set-am-tach-khay-tra-anh-quoc-54871-500x500.jpg', '<address>\r\n<p><em>&raquo;Bộ ấm tr&agrave; l&agrave; một trong những v&acirc;n dụng rất phổ biến v&agrave; c&oacute; &yacute; nghĩa đặc biệt quan trọng đối với mỗi gia đ&igrave;nh Việt.&raquo;</em></p>\r\n\r\n<p>Bộ ấm ch&eacute;n dễ thương gồm 1 ấm v&agrave; 6ch&eacute;n k&egrave;m khayd&ugrave;ng để l&agrave;m bộ ấm uống tr&agrave; rất xinh xắn, đ&acirc;y cũng l&agrave; vật dụng để trang điểm cho nội thất nh&agrave; bạn.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img src=\"https://vn-live-01.slatic.net/original/641763b10eb97c86a6705f4b1c9eb202.jpg\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><em>Bộ ấm tr&agrave; họa tiết hoa hồng</em></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img src=\"https://vn-live-01.slatic.net/original/57a6ee2f41de0c83a9eea70193975e47.jpg\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><em>Bộ ấm tr&agrave; phong c&aacute;ch ch&acirc;u &acirc;u hoa văn ngựa</em></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img src=\"https://vn-live-01.slatic.net/original/deae6875244beddf6ac7e0dfd52ed9a4.jpg\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><em>Bộ ấm tr&agrave; phong c&aacute;ch ch&acirc;u &acirc;u hoa nhỏ</em></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><em>&raquo;</em></p>\r\n\r\n<p><strong>C&aacute;ch chọn lựa bộ ấm tr&agrave; sứ chất lượng</strong></p>\r\n\r\n<p>Bộ ấm tr&agrave; g&oacute;p phần rất quan trọng gi&uacute;p l&agrave;m tăng th&ecirc;m hương vị v&agrave; phong c&aacute;ch thưởng tr&agrave;. Việc chọn lựa bộ tr&agrave; sứ cần quan t&acirc;m đến c&aacute;c yếu tố sau:</p>\r\n\r\n<p>+: sứ phải được chế t&aacute;c bằng việc nung ở nhiệt độ cao để chất sức bền v&agrave; nhẹ</p>\r\n\r\n<p>+Bề mặt sứ trắng l&aacute;n mịn l&agrave; điều quan trọng. Với sứ x&agrave; cừ cần c&oacute; &aacute;nh bảy m&agrave;u</p>\r\n\r\n<p>+: T&ugrave;y v&agrave;o mục đ&iacute;ch sử dụng bạn c&oacute; thể chọn lựa kiểu d&aacute;ng sứ cho th&iacute;ch hợp. N&ecirc;n chọn sứ c&oacute; phần th&acirc;n b&agrave;u như vậy pha được nhiều v&agrave; giữ sứ được n&oacute;ng l&acirc;u hơn.</p>\r\n\r\n<p>+: để tạo n&ecirc;n n&eacute;t sang trọng v&agrave; đẹp mắt hơn, những họa tiết hoa văn được trang tr&iacute; quanh th&acirc;n ấm v&agrave; t&aacute;ch tr&agrave; rất tinh tế. Hoa văn tran tr&iacute; tr&ecirc;n ấm tr&agrave; chỉ n&ecirc;n chọn loại trang tr&iacute; đơn giản nhất như vậy mới mang đế vẻ thanh mảnh v&agrave; mềm mại.</p>\r\n\r\n<p><img src=\"https://vn-live-01.slatic.net/original/30360e05025dcf41a65e06d72f21d89d.jpg\" /></p>\r\n\r\n<p><img src=\"https://vn-live-01.slatic.net/original/58e3f52e27a59c16c2c381b162148bf3.jpg\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Ngo&agrave;i ra, người biếu c&oacute; thể dựa v&agrave;o phong c&aacute;ch trang tr&iacute; nh&agrave; cửa v&agrave; t&iacute;nh c&aacute;ch của chủ nh&agrave; để chọn mua bộ t&aacute;ch tr&agrave; cho ph&ugrave; hợp.</p>\r\n\r\n<p>Với những gia đ&igrave;nh trang tr&iacute; theo phong c&aacute;ch cổ điển, qu&yacute; ph&aacute;i c&oacute; thể chọn mua những bộ t&aacute;ch tỉ mỉ về đường n&eacute;t hoa văn trang tr&iacute;. Với những gia đ&igrave;nh trang tr&iacute; nh&agrave; cửa theo phong c&aacute;ch đơn giản, hiện đại c&oacute; thể chọn mua những bộ t&aacute;ch đơn sắc trang nh&atilde;&hellip;.</p>\r\n\r\n<p>Bộ t&aacute;ch tr&agrave; kh&ocirc;ng chỉ c&oacute; &yacute; nghĩa về mặt văn h&oacute;a, n&oacute; c&ograve;n c&oacute; &yacute; nghĩa về mặt đời sống tinh thần như một gia đ&igrave;nh qu&acirc;y quần sum tụ&hellip;quả thực đ&acirc;y l&agrave; m&oacute;n qu&agrave; rất &yacute; nghĩa v&agrave; dễ mua để tặng trong mọi ho&agrave;n cảnh.</p>\r\n\r\n<p>K&iacute;ch thước sản phẩm ph&ugrave; hợp với thiết kế nhiều gia đ&igrave;nh.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img src=\"https://vn-live-01.slatic.net/original/dd967256e67d87335751fe58755320c8.jpg\" /></p>\r\n</address>', NULL, NULL, NULL, 1, 1, '2020-08-04 06:23:42', '2020-08-04 06:46:24'),
(9, 'hay tre, khay trà tự nhiên (vàng)', 'hay-tre-khay-tra-tu-nhien-vang', 'HTKTTNV611', 7, 'Products/57c434fa76128e5b11fce3a1495e7c6d.jpg', '<p>#khaytre #khaytr&agrave; được l&agrave;m từ vật liệu #tre tự nhi&ecirc;n.</p>\r\n\r\n<p>+ cam kết sp như h&igrave;nh.</p>\r\n\r\n<p>+ thiết kế đơn giản c&oacute; tay cầm.</p>\r\n\r\n<p>+ bền, đẹp, nhẹ kh&ocirc;ng m&ugrave;i, kh&ocirc;ng độc hại.</p>\r\n\r\n<p>#lưu_&yacute; : gi&aacute; tr&ecirc;n kh&ocirc;ng bao gồm bộ ấm ch&eacute;n.</p>\r\n\r\n<p>+ k&iacute;ch thước (cm) : khay nhỏ 25cm x 35cm</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;khay trung 30cm x 40cm</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;khay lớn 35cm x 45cm</p>\r\n\r\n<p>#khaytre kết hợp với bộ ấm ch&eacute;n tạo vẻ mộc mạc, gần gũi nhưng kh&ocirc;ng k&eacute;m phần hiện đại.</p>\r\n\r\n<p>- Vừa t&ocirc; điểm kh&ocirc;ng gian ph&ograve;ng kh&aacute;ch gia đ&igrave;nh th&ecirc;m sang trọng, vừa cho bạn những buổi thưởng tr&agrave; đầy thị vị.</p>\r\n\r\n<p>- Th&iacute;ch hợp đi k&egrave;m với bộ ấm ch&eacute;n để l&agrave;m qu&agrave; tặng cho bạn b&egrave;, người th&acirc;n. ♡♡♡ Kh&aacute;ch h&agrave;ng n&agrave;o quan t&acirc;m v&agrave; y&ecirc;u th&iacute;ch ♡♡♡</p>', NULL, NULL, NULL, 1, 1, '2020-08-04 06:34:43', '2020-08-04 06:46:44'),
(10, 'Bộ ấm chén thủy tinh 6', 'bo-am-chen-thuy-tinh-6', 'BACTT6529', 7, 'Products/1453352918436_4212384.jpg', '<p><span style=\"font-size:14px\"><span style=\"font-family:Times New Roman,Times,serif\">Một g&oacute;c trong gian ph&ograve;ng kh&aacute;ch của bạn sẽ l&agrave; nơi l&iacute; tưởng để thưởng tr&agrave;,hơn vậy đ&oacute; c&ograve;n l&agrave; nơi sum họp của c&aacute;c th&agrave;nh vi&ecirc;n trong gia đ&igrave;nh v&agrave; tạo được kh&ocirc;ng gian thư gi&atilde;n rất dễ chịu.&nbsp;😆<br />\r\nMột bộ ấm tr&agrave; sẽ loại bỏ đi sự đơn điệu cho kh&ocirc;ng gian thưởng tr&agrave; v&agrave; tạo điểm nhấn nổi bật cho căn ph&ograve;ng của bạn</span></span></p>\r\n\r\n<p><span style=\"font-size:14px\"><span style=\"font-family:Times New Roman,Times,serif\">👉Ấm tr&agrave; thủy tinh bếp nến l&agrave; bộ tr&agrave; cụ chuy&ecirc;n d&ugrave;ng để uống c&aacute;c loại tr&agrave; hoa, c&aacute;c loại tr&agrave; b&aacute;t bảo, tr&agrave; xanh,&hellip;<br />\r\n✌️Ấm tr&agrave; v&agrave; bếp thủy tinh được l&agrave;m bằng thủy tinh chịu nhiệt đến 120 độ C, giữ được hương vị thơm ngon của tr&agrave;.<br />\r\n👌Bộ&nbsp; thủy tinh độc đ&aacute;o, tinh tế giữ nhiệt cho b&igrave;nh tr&agrave; trong suốt q&uacute;a tr&igrave;nh uống tr&agrave;.<br />\r\n🤙Gi&aacute;: 1 bộ bao gồm:&nbsp; 01 Ấm pha tr&agrave; bằng thủy tinh + 01 bếp nến thủy tinh + 06 cốc thủy tinh</span></span></p>\r\n\r\n<p><span style=\"font-size:14px\"><span style=\"font-family:Times New Roman,Times,serif\"><img alt=\"\" src=\"https://forgetmenotmart.com/wp-content/uploads/2020/04/O1CN014u13ch1M5SFn1gGYD_4112621383.jpg\" style=\"height:536px; width:749px\" /></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:14px\"><span style=\"font-family:Times New Roman,Times,serif\"><img alt=\"\" src=\"https://forgetmenotmart.com/wp-content/uploads/2020/04/2602685001_1295263332-1.jpg\" style=\"height:562px; width:750px\" /></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:14px\"><span style=\"font-family:Times New Roman,Times,serif\"><img alt=\"\" src=\"https://forgetmenotmart.com/wp-content/uploads/2020/04/TB2zmHTbqagSKJjy0FbXXa.mVXa_3125193854.jpg\" style=\"height:500px; width:750px\" /></span></span></p>', NULL, NULL, NULL, 1, 1, '2020-08-04 06:38:22', '2020-08-04 06:47:00'),
(11, 'Đế Giữ Nhiệt', 'de-giu-nhiet', 'DGN303', 7, 'Products/83785639_1137001299965221_1603368968712617984_n.jpg', '<p><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\">☕️☕️☕️&nbsp;GIỮ ẤM CỐC TR&Agrave; HAY CAFE</span></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\">🥛GIỮ ẤM CHO LY NƯỚC CỦA M&Igrave;NH</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\"><img alt=\"\" src=\"https://forgetmenotmart.com/wp-content/uploads/2020/04/83785639_1137001299965221_1603368968712617984_n.jpg\" style=\"height:441px; width:600px\" /><br />\r\n☃️☃️Đ&oacute;n đ&ocirc;ng ấm với ĐẾ GIỮ NHIỆT CHO LY suốt nhiều giờ l&agrave;m việc. Đế giữ nhiệt gi&uacute;p tr&agrave; lu&ocirc;n n&oacute;ng khiến cơ thể hấp thụ dinh dưỡng một c&aacute;ch triệt để nhất.</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\"><img alt=\"\" src=\"https://forgetmenotmart.com/wp-content/uploads/2020/04/884d582f2f23d57d8c32-600x600.jpg\" style=\"height:600px; width:600px\" /></span></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\"><img alt=\"\" src=\"https://forgetmenotmart.com/wp-content/uploads/2020/04/7e7ca76cd0602a3e7371-600x600.jpg\" style=\"height:600px; width:600px\" /></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\"><img alt=\"\" src=\"https://forgetmenotmart.com/wp-content/uploads/2020/04/c0f9b9f1cefd34a36dec-600x600.jpg\" style=\"height:600px; width:600px\" /></span></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\">&mdash;&mdash;&mdash;<br />\r\n💯Nhỏ gọn &ndash; Tiện lợi<br />\r\n💯Đơn giản &ndash; Dễ sử dụng<br />\r\n💯Giữ ấm được thời gian d&agrave;i</span></span></p>', NULL, NULL, NULL, 1, 1, '2020-08-04 06:42:09', '2020-08-04 06:47:20'),
(12, 'Bộ ấm chén pha trà thủy tinh 4', 'bo-am-chen-pha-tra-thuy-tinh-4', 'BACPTTT4245', 7, 'Products/%E1%BA%A5m-500x500.jpg', '<address><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\">Một g&oacute;c trong gian ph&ograve;ng kh&aacute;ch của bạn sẽ l&agrave; nơi l&iacute; tưởng để thưởng tr&agrave;,hơn vậy đ&oacute; c&ograve;n l&agrave; nơi sum họp của c&aacute;c th&agrave;nh vi&ecirc;n trong gia đ&igrave;nh v&agrave; tạo được kh&ocirc;ng gian thư gi&atilde;n rất dễ chịu.&nbsp;😆<br />\r\nMột bộ ấm tr&agrave; sẽ loại bỏ đi sự đơn điệu cho kh&ocirc;ng gian thưởng tr&agrave; v&agrave; tạo điểm nhấn nổi bật cho căn ph&ograve;ng của bạn<br />\r\n👉Ấm tr&agrave; thủy tinh bếp nến l&agrave; bộ tr&agrave; cụ chuy&ecirc;n d&ugrave;ng để uống c&aacute;c loại tr&agrave; hoa, c&aacute;c loại tr&agrave; b&aacute;t bảo, tr&agrave; xanh,&hellip;<br />\r\n✌️Ấm tr&agrave; v&agrave; bếp thủy tinh được l&agrave;m bằng thủy tinh chịu nhiệt đến 120 độ C, giữ được hương vị thơm ngon của tr&agrave;.<br />\r\n👌Bộ&nbsp; thủy tinh độc đ&aacute;o, tinh tế giữ nhiệt cho b&igrave;nh tr&agrave; trong suốt q&uacute;a tr&igrave;nh uống tr&agrave;.<br />\r\n🤙Gi&aacute;: 1 bộ bao gồm:&nbsp; 01 Ấm pha tr&agrave; bằng thủy tinh + 01 bếp nến thủy tinh + 04 cốc thủy tinh</span></span></address>\r\n\r\n<address><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\"><img alt=\"\" src=\"https://forgetmenotmart.com/wp-content/uploads/2020/04/%E1%BA%A5m-1-600x600.jpg\" style=\"height:600px; width:600px\" /></span></span></address>\r\n\r\n<address><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\"><img alt=\"\" src=\"https://forgetmenotmart.com/wp-content/uploads/2020/04/%E1%BA%A5m-600x600.jpg\" style=\"height:600px; width:600px\" /></span></span></address>\r\n\r\n<address><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\"><img alt=\"\" src=\"https://forgetmenotmart.com/wp-content/uploads/2020/04/2602685001_1295263332.jpg\" style=\"height:562px; width:750px\" /></span></span></address>', NULL, NULL, NULL, 1, 1, '2020-08-04 06:44:57', '2020-08-04 06:47:45'),
(13, 'Hồng Táo Tân Cương', 'hong-tao-tan-cuong', 'HTTC900', 11, 'Products/2.jpg', '<p>🍒🍒T&Aacute;O ĐỎ T&Acirc;N CƯƠNG VẠN NGƯỜI M&Ecirc;🍒🍒🍒</p>\r\n\r\n<p>Super big size. K&iacute;ch thước 1 tr&aacute;i sau khi phơi kh&ocirc; đ&atilde; l&agrave; 6cm, th&igrave; c&aacute;c chị phải hiểu l&uacute;c tươi khổng lồ ntn rồi đấy ạ. Hạt cực b&eacute;. T&aacute;o d&agrave;y c&ugrave;i, cắn ngập răng. Ngon, ngọt lịm như ch&egrave;&hellip; 100% tự nhi&ecirc;n Organic, ch&iacute;n c&acirc;y, gi&agrave; quả mới đc h&aacute;i xuống ạ&hellip;🤩</p>\r\n\r\n<p><img alt=\"\" src=\"https://forgetmenotmart.com/wp-content/uploads/2020/04/94779192_1935451306587225_4084350496465223680_n-600x600.jpg\" style=\"height:600px; width:600px\" /></p>\r\n\r\n<p>&ldquo;Một ng&agrave;y ăn 3 quả t&aacute;o, cả đời kh&ocirc;ng thấy gi&agrave;&rdquo;. Nếu biết được c&ocirc;ng dụng của n&oacute;, bạn kh&ocirc;ng khỏi giật m&igrave;nh!</p>\r\n\r\n<p>🍒T&aacute;o đỏ T&acirc;n Cương được mệnh danh l&agrave; loại tr&aacute;i c&acirc;y thi&ecirc;n đường, l&agrave; giống t&aacute;o đỏ ngon nhất trong số 400 loại t&aacute;o đỏ được trồng ở khắp thế giới.</p>\r\n\r\n<p>🍒&nbsp;T&aacute;o đỏ T&acirc;n Cương tự ch&iacute;n, tự kh&ocirc; ngay tr&ecirc;n c&agrave;nh được đến 9 phần, chờ thời tiết hết sương d&ugrave;ng gậy đập c&agrave;nh để cho quả rụng hết, phơi kh&ocirc; tự nhi&ecirc;n th&ecirc;m v&agrave;i ng&agrave;y t&aacute;o kh&ocirc; được đến 99% v&agrave; sẽ bảo quản được khoảng 3 năm v&igrave; đủ độ kh&ocirc; m&agrave; kh&ocirc;ng cần bất cứ t&aacute;c động n&agrave;o kh&aacute;c. Do vậy, t&aacute;o T&acirc;n Cương kh&ocirc;ng sử dụng bất cứ một loại thuốc bảo quản n&agrave;o.</p>\r\n\r\n<p>🍒T&aacute;o đỏ T&acirc;n Cương chứa rất nhiều chất tốt cho sức khỏe như: Magiee, đồng, Kali, nianci, mangan, canxi, phốt pho v&agrave; sắt. Trong T&aacute;o đỏ T&acirc;n Cương chứa nhiều Vitamin C loại dễ hấp thu hơn 20 lần so với bất kỳ loại tr&aacute;i c&acirc;y họ cam qu&yacute;t do vậy gi&uacute;p cơ thể nang cao khả năng miễn dịch chống vi&ecirc;m v&agrave; nhiễm tr&ugrave;ng.</p>\r\n\r\n<p>🍒C&aacute;ch ph&acirc;n biệt: T&aacute;o đỏ T&acirc;n Cương ăn đặc thịt, ngọt kh&aacute;c hẳn với loại t&aacute;o đỏ được trồng ở c&aacute;c tỉnh ph&iacute;a Nam Trung Quốc (ăn xốp v&agrave; hơi c&oacute; vị chua). T&aacute;o T&acirc;n Cương chất lượng như vậy l&agrave; v&igrave; được nu&ocirc;i dưỡng bởi đất kiềm đặc trưng, d&ugrave;ng nước của s&ocirc;ng Thi&ecirc;n Sơn tưới l&ecirc;n n&ecirc;n thịt d&agrave;y, hạt nhỏ.</p>\r\n\r\n<p>🍒T&aacute;o đỏ T&acirc;n Cương kh&ocirc; tự nhi&ecirc;n tr&ecirc;n c&acirc;y n&ecirc;n vỏ quả nhăn nhưng vẫn phồng to, da đỏ đậm chứ kh&ocirc;ng c&oacute; m&agrave;u đỏ n&acirc;u như một số loại t&aacute;o kh&ocirc; kh&aacute;c. Thịt t&aacute;o đỏ T&acirc;n Cương rất d&agrave;y v&agrave; ngọt đậm, hạt b&eacute; v&agrave; thu&ocirc;n nhọn ở hai đầu, trong khi đ&oacute; những loại t&aacute;o đỏ kh&aacute;c thường c&oacute; hạt tr&ograve;n v&agrave; thịt kh&ocirc;.</p>\r\n\r\n<p><img alt=\"\" src=\"https://forgetmenotmart.com/wp-content/uploads/2020/04/94521592_1935451319920557_451030411426922496_n-600x600.jpg\" style=\"height:600px; width:600px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>☘️☘️☘️☘️☘️☘️☘️☘️☘️☘️<br />\r\nC&Ocirc;NG DỤNG CỦA T&Aacute;O ĐỎ:</p>\r\n\r\n<p>&ndash; T&aacute;o đỏ c&oacute; t&iacute;nh giữ nhiệt, vị cam, giầu chất dinh dưỡng, bởi&nbsp;<img alt=\"\" src=\"https://forgetmenotmart.com/wp-content/uploads/2020/04/84400879_490339211602226_4120587741131964416_n-600x600.jpg\" style=\"height:457px; width:457px\" />chứa c&aacute;c th&agrave;nh phần như: pr&ocirc;t&ecirc;in, lipit, đường, can xi, phốt pho, sắt, v&agrave; nhiều loại vi ta min A,C, B1, B2, carotene&hellip;..<br />\r\nD&acirc;n gian thường n&oacute;i &ldquo; Ng&agrave;y ng&agrave;y ăn t&aacute;o đỏ, trẻ m&atilde;i kh&ocirc;ng gi&agrave;&rdquo; .<br />\r\n&ndash; T&aacute;o đỏ kh&ocirc;ng chỉ l&agrave; loại quả m&agrave; nhiều người th&iacute;ch ăn m&agrave; c&ograve;n l&agrave; liều thuốc bổ chữa c&aacute;c bệnh li&ecirc;n quan tới tỳ, dạ dầy, thần kinh&hellip;..<br />\r\n&ndash; Sản phụ ăn t&aacute;o đỏ c&oacute; thể bổ sung kh&iacute; huyết, bổ n&atilde;o v&agrave; gi&uacute;p hồi phục sức khỏe nhanh.<br />\r\n&ndash; Những người gi&agrave; yếu d&ugrave;ng t&aacute;o đỏ để tăng cường thể lực, k&eacute;o d&agrave;i tuổi thọ, nhất l&agrave; những người c&oacute; thần kinh yếu hay l&agrave; những người l&agrave;m việc tr&iacute; &oacute;c. C&oacute; thể d&ugrave;ng t&aacute;o đỏ uống thay tr&agrave; gi&uacute;p bổ thần kinh v&agrave; tăng th&ecirc;m sự th&egrave;m ăn.<br />\r\n&ndash; Với những người nghiện tr&agrave; mỗi tối tr&aacute;nh mất ngủ, c&oacute; thể d&ugrave;ng canh t&aacute;o đỏ thay tr&agrave;.<br />\r\n&ndash; V&agrave;o m&ugrave;a thu v&agrave; m&ugrave;a xu&acirc;n, thời tiết l&uacute;c ấm l&uacute;c lạnh, ta c&oacute; thể d&ugrave;ng canh l&aacute; d&acirc;u th&ecirc;m quả t&aacute;o đỏ uống thay tr&agrave; để tr&aacute;nh cảm c&uacute;m, thương h&agrave;n.<br />\r\n&ndash; V&agrave;o m&ugrave;a hạ, thời tiết n&oacute;ng nực, ta c&oacute; thể d&ugrave;ng canh l&aacute; sen v&agrave; t&aacute;o đỏ để giải nhiệt.V&agrave;o m&ugrave;a đ&ocirc;ng, thời tiết lạnh căm, c&oacute; thể d&ugrave;ng canh t&aacute;o đỏ v&agrave; gừng c&oacute; thể giữ ấm dạ dầy<br />\r\n&ndash; T&aacute;o đỏ l&agrave; một loại thực phẩm thi&ecirc;n nhi&ecirc;n c&oacute; c&ocirc;ng dụng l&agrave;m đẹp da, bổ tỳ c&oacute; lợi sức khỏe. tăng cường tuần ho&agrave;n m&aacute;u v&agrave; chống l&atilde;o h&oacute;a. Dưới đ&acirc;y l&agrave; 1 số t&aacute;c dụng mới của t&aacute;o đỏ, mời c&aacute;c bạn c&ugrave;ng tham khảo:<br />\r\n&ndash; T&aacute;o đỏ gi&uacute;p chống dị ứng<br />\r\n&ndash; T&aacute;o đỏ gi&uacute;p chữa bệnh huyết &aacute;p thấp<br />\r\n&ndash; T&aacute;o đỏ c&oacute; t&aacute;c dụng bổ gan<br />\r\n&ndash; T&aacute;o đỏ c&ograve;n c&oacute; t&aacute;c dụng gi&uacute;p chống ung thư</p>\r\n\r\n<p><img alt=\"\" src=\"https://forgetmenotmart.com/wp-content/uploads/2020/04/42899032_2370953616465593_2793063489386577920_n-600x600.jpg\" style=\"height:600px; width:600px\" /></p>\r\n\r\n<p>☘️☘️☘️☘️☘️☘️☘️☘️☘️☘️<br />\r\nHƯỚNG DẪN SỬ DỤNG:</p>\r\n\r\n<p>📌Ăn trực tiếp như snack<br />\r\n📌Kết hợp với yến s&agrave;o, kỷ tử, tuyết yến, hạt sen, long nh&atilde;n, kỷ tử, nhựa đ&agrave;o&hellip; để nấu ch&egrave; dưỡng nhan, giải nhiệt<br />\r\n📌Hầm c&ugrave;ng thịt g&agrave;, heo, b&ograve;,&hellip;</p>\r\n\r\n<p>Bảo quản: Nơi kh&ocirc; r&aacute;o, tr&aacute;nh &aacute;nh nắng trực tiếp.</p>\r\n\r\n<p>❌Lưu &yacute;: T&aacute;o rất c&oacute; lợi cho sức khỏe nhưng cũng kh&ocirc;ng n&ecirc;n d&ugrave;ng qu&aacute; nhiều, mỗi ng&agrave;y ăn tốt nhất kh&ocirc;ng n&ecirc;n nhiều hơn 15 quả, ăn qu&aacute; nhiều sẽ l&agrave;m tổn hại đến chức năng ti&ecirc;u h&oacute;a, dẫn đễn axit dạ d&agrave;y tăng v&agrave; chướng bụng</p>', NULL, NULL, NULL, 1, 1, '2020-08-04 06:51:17', '2020-08-04 06:51:17');
INSERT INTO `products` (`id`, `name`, `slug`, `sku`, `id_cate`, `image`, `description`, `meta_title`, `meta_keyword`, `meta_desc`, `featured`, `status`, `created_at`, `updated_at`) VALUES
(14, 'Tuyết Yến', 'tuyet-yen', 'TY962', 11, 'Products/TB2PNzykXooBKNjSZPhXXc2CXXa_765328467-500x500.jpg', '<p>Nhiều anh chị nhầm tưởng&nbsp;<a href=\"https://www.facebook.com/hashtag/tuy%E1%BA%BFty%E1%BA%BFn?source=feed_text&amp;epa=HASHTAG&amp;__xts__%5B0%5D=68.ARCeDQO_WV144bNjnlNYgkfA9iu2Incjmc4Ex0l5BJfpmhNH99zzz4vXjYwAabk7TiTMs4ZQSXwRdlMPS721ezij_J9FP8j1yCy_-OkTZIDl0ixGLli_7r5EkJGRmkAMLQdsHgPEHiVom_0aUNlR09poaztPGF8JcikhD-qPu35qDDN6gc0WnrBm-6W67bl7ZDopIOp1Ru7Zf_QbEP-Pz0hBq819WP4xeG6YfC7FfP0uFqVDKMp2szyA-fRHi1z3gW78DlMzIJfEvtRSNHvc0ePqXLFRs5EuXdz0opG7fOhizonOf64-tcLXThVYZbt_nCDnoEs1QQkmGW4GjlrRnEDwpg&amp;__tn__=%2ANK-R\">#TuyếtYến</a>&nbsp;l&agrave; mủ tr&ocirc;m n&ecirc;n g&acirc;y ra nhiều nhầm lẫn lắm &yacute;.<br />\r\n&ndash; TuyếtYến ng&acirc;m ra th&agrave;nh từng sợi y chang tổ yến nhe.<br />\r\n&ndash; C&ograve;n Mủ tr&ocirc;m th&igrave; ng&acirc;m ra n&oacute; kh&ocirc;ng th&agrave;nh sợi như&nbsp;<a href=\"https://www.facebook.com/hashtag/tuy%E1%BA%BFty%E1%BA%BFn?source=feed_text&amp;epa=HASHTAG&amp;__xts__%5B0%5D=68.ARCeDQO_WV144bNjnlNYgkfA9iu2Incjmc4Ex0l5BJfpmhNH99zzz4vXjYwAabk7TiTMs4ZQSXwRdlMPS721ezij_J9FP8j1yCy_-OkTZIDl0ixGLli_7r5EkJGRmkAMLQdsHgPEHiVom_0aUNlR09poaztPGF8JcikhD-qPu35qDDN6gc0WnrBm-6W67bl7ZDopIOp1Ru7Zf_QbEP-Pz0hBq819WP4xeG6YfC7FfP0uFqVDKMp2szyA-fRHi1z3gW78DlMzIJfEvtRSNHvc0ePqXLFRs5EuXdz0opG7fOhizonOf64-tcLXThVYZbt_nCDnoEs1QQkmGW4GjlrRnEDwpg&amp;__tn__=%2ANK-R\">#TuyếtYến</a>&nbsp;đ&acirc;u ạ.</p>\r\n\r\n<p>TUYẾT YẾN THI&Ecirc;N SƠN ( mọc tự nhi&ecirc;n tr&ecirc;n d&atilde;y n&uacute;i lạnh gi&aacute;, cao nhất đất nước Trung Hoa )</p>\r\n\r\n<p><img alt=\"\" src=\"https://forgetmenotmart.com/wp-content/uploads/2020/05/TB2PNzykXooBKNjSZPhXXc2CXXa_765328467-604x600.jpg\" style=\"height:600px; width:604px\" /><br />\r\n&ndash; TỔ YẾN THỰC VẬT</p>\r\n\r\n<p>Gi&aacute;&nbsp;<a href=\"https://www.facebook.com/hashtag/298k?source=feed_text&amp;epa=HASHTAG&amp;__xts__%5B0%5D=68.ARCeDQO_WV144bNjnlNYgkfA9iu2Incjmc4Ex0l5BJfpmhNH99zzz4vXjYwAabk7TiTMs4ZQSXwRdlMPS721ezij_J9FP8j1yCy_-OkTZIDl0ixGLli_7r5EkJGRmkAMLQdsHgPEHiVom_0aUNlR09poaztPGF8JcikhD-qPu35qDDN6gc0WnrBm-6W67bl7ZDopIOp1Ru7Zf_QbEP-Pz0hBq819WP4xeG6YfC7FfP0uFqVDKMp2szyA-fRHi1z3gW78DlMzIJfEvtRSNHvc0ePqXLFRs5EuXdz0opG7fOhizonOf64-tcLXThVYZbt_nCDnoEs1QQkmGW4GjlrRnEDwpg&amp;__tn__=%2ANK-R\">#298k</a>&nbsp;100 gram (được rất nhiều ạ)</p>\r\n\r\n<p>Tuyết yến l&agrave; nhựa từ tuỷ c&acirc;y th&acirc;n gỗ thuộc họ Sterculia . Được v&iacute; như Tổ yến thực vật, v&igrave; c&oacute; c&ocirc;ng dụng tương tự như Tổ Yến.<br />\r\nKhi ng&acirc;m sẽ trắng như tuyết, v&agrave; chưng l&ecirc;n trong như sợi yến. N&ecirc;n được gọi l&agrave; Tuyết yến.</p>\r\n\r\n<p>🌿&nbsp;Tuyết Yến c&oacute; c&ocirc;ng dụng:<img alt=\"\" src=\"https://forgetmenotmart.com/wp-content/uploads/2020/05/TB2H.lbnrFlpuFjy0FgXXbRBVXa_2945730438-600x600.jpg\" style=\"height:600px; width:600px\" /><br />\r\n&ndash; Đẹp da, l&agrave; thần dược chống l&atilde;o h&oacute;a cực tốt. Gi&uacute;p da nhuận mịn, trắng hồng. Giảm th&acirc;m n&aacute;m.<br />\r\n&ndash; Ổn định đường huyết, hỗ trợ giảm bệnh tiểu đường<br />\r\n&ndash; Giảm mỡ m&aacute;u<br />\r\n&ndash; ổn định huyết &aacute;p<br />\r\n&ndash; chống t&aacute;o b&oacute;n, gi&uacute;p thải độc đường ruột.<br />\r\n&ndash; đặc biệt chứa nhiều collagen thực vật, gi&uacute;p n&acirc;ng cơ, tăng độ đ&agrave;n hồi cho da.<br />\r\n&ndash; hỗ trợ giảm c&acirc;n v&agrave; tr&aacute;nh t&iacute;ch trữ nước g&acirc;y mập.<br />\r\n&ndash; gi&uacute;p ngủ ngon<br />\r\n&ndash; giải n&oacute;ng gan, sinh mụn nhiệt</p>\r\n\r\n<p>Tuyết yến ăn ngon như tổ yến, nhưng kh&ocirc;ng c&oacute; m&ugrave;i tanh đặc trưng của Tổ yến.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>🌿&nbsp;🌿C&aacute;ch l&agrave;m:<br />\r\n&ndash; 1 vi&ecirc;n Tuyết Yến c&oacute; thể chưng ra 1 ch&eacute;n, n&ecirc;n rất lợi.<br />\r\n&ndash; Ng&acirc;m Tuyết yến với nước tinh khiết qua đ&ecirc;m.<br />\r\n&ndash; vớt tuyết yến l&ecirc;n cho v&agrave;o chưng hoặc nấu c&ugrave;ng t&aacute;o đỏ, hạt sen, long nh&atilde;n, tổ yến&hellip; T&ugrave;y nhu cầu m&agrave; chế biến.<br />\r\n&ndash; Tuyết Yến nếu kh&ocirc;ng nấu c&ugrave;ng c&aacute;c m&oacute;n tr&ecirc;n th&igrave; c&oacute; thể nấu chung với đường ph&egrave;n mật m&iacute;a v&agrave; nước tinh khiết, ăn lạnh hay n&oacute;ng đều được.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://forgetmenotmart.com/wp-content/uploads/2020/05/O1CN012rpEKU1G2Lu8ZrO6g_4187210564-600x600.jpg\" style=\"height:600px; width:600px\" /></p>\r\n\r\n<p>🌿&nbsp;Đối tượng d&ugrave;ng:<br />\r\n&ndash; mọi người đều d&ugrave;ng được (trừ trẻ em dưới 3 tuổi, phụ nữ c&oacute; thai, phụ nữ cho con b&uacute; l&agrave; c&aacute;c đối tượng nhạy cảm, n&ecirc;n cần tư vấn của b&aacute;c sỹ bạn đang trực tiếp theo d&otilde;i thăm kh&aacute;m)</p>\r\n\r\n<p>🌿&nbsp;Liều d&ugrave;ng:<br />\r\n&ndash; Ăn để đẹp da, ph&ograve;ng bệnh: ăn c&aacute;ch ng&agrave;y. Mỗi lần ăn 1 ch&eacute;n.<br />\r\n&ndash; Người tiếp x&uacute;c m&ocirc;i trường độc hại, nhiễm kim loại, ph&oacute;ng xạ&hellip; cần thải độc, tăng cường đề kh&aacute;ng: ăn mỗi ng&agrave;y. Mỗi lần 1 ch&eacute;n</p>\r\n\r\n<p>Tuyết yến ăn tốt nhất v&agrave;o buổi s&aacute;ng hoặc tối trước khi ngủ.<br />\r\nĂn n&oacute;ng hay lạnh đều ngon</p>', NULL, NULL, NULL, 1, 1, '2020-08-04 06:55:56', '2020-08-04 06:55:56'),
(15, 'Táo đỏ HÀN QUỐC cắt lát', 'tao-do-han-quoc-cat-lat', 'TDHQCL183', 11, 'Products/73102249_1735848419880849_7998199273839656960_n.jpg', '<p>🌼🌼&nbsp;T&aacute;o đỏ H&Agrave;N QUỐC cắt l&aacute;t.&nbsp;🌼🌼<br />\r\nKhi quả c&ograve;n non c&oacute; m&agrave;u xanh lục, vỏ trơn b&oacute;ng, c&oacute; m&ugrave;i vị tương tự như quả t&aacute;o t&acirc;y, nhưng khi n&oacute; gi&agrave; hơn th&igrave; vỏ trở n&ecirc;n sẫm m&agrave;u hơn để trở th&agrave;nh m&agrave;u đỏ v&agrave; vỏ nhăn nheo.</p>\r\n\r\n<p>Chỉ phải bỏ ra 148k/1 hộp tr&agrave; 100% Organic m&agrave; thu về biết bao lợi &iacute;ch đ&aacute;ng kinh ngạc, c&oacute; thể kể đến như</p>\r\n\r\n<p>🍂🍃&nbsp;L&agrave; một loại thực phẩm rất gi&agrave;u dinh dưỡng, n&oacute; c&oacute; thể bổ sung sắt cho thai phụ. C&aacute;c chuy&ecirc;n gia nghi&ecirc;n cứu đ&atilde; chứng minh rằng t&aacute;o đỏ rất c&oacute; lợi cho dạ d&agrave;y, bổ sung kh&iacute; huyết, nhuận phổi. Thai nhi sẽ ph&aacute;t triển rất thuận lợi nếu c&aacute;c b&agrave; bầu kh&iacute; huyết đầy đủ.</p>\r\n\r\n<p>🍂🍃&nbsp;Th&agrave;nh phần dinh dưỡng<br />\r\nT&aacute;o đỏ c&oacute; chứa lượng Vitamin C v&agrave; Vitamin E phong ph&uacute;, những loại Vitamin n&agrave;y gi&uacute;p cho l&agrave;n da của phụ nữ mang bầu tươi s&aacute;ng v&agrave; đẹp hơn. Ngo&agrave;i ra, n&oacute; c&ograve;n gi&uacute;p chống lại sự h&igrave;nh th&agrave;nh c&aacute;c vết n&aacute;m, vết th&acirc;m tr&ecirc;n khu&ocirc;n mặt. T&aacute;o đỏ chứa gi&aacute; trị dinh dưỡng rất cao với nhiều protein, lipid, axit amin, vitamin A, B2, C, P, c&aacute;c nguy&ecirc;n tố v&ocirc; cơ như canxi, phốt pho, sắt, nh&ocirc;m&hellip;</p>\r\n\r\n<p>🍂🍃&nbsp;T&aacute;c dụng của t&aacute;o đỏ<br />\r\nNgo&agrave;i ra t&aacute;o đỏ c&ograve;n c&oacute; t&aacute;c dụng bổ gan, tăng cường cơ bắp, hạ huyết &aacute;p, an thần, dễ ngủ, hạn chế sự ph&aacute;t triển tế b&agrave;o ung thư, l&agrave;m tan đờm, giảm ho, cải thiện dinh dưỡng cơ tim&hellip;</p>\r\n\r\n<p>Quả t&aacute;o đỏ H&agrave;n Quốc cắt l&aacute;t c&oacute; thể kết hợp c&ugrave;ng tr&agrave; hoa tạo độ ngọt tự nhi&ecirc;n hoặc chưng yến, nấu ch&egrave;, hầm canh bổ dưỡng.</p>\r\n\r\n<p>‼️‼️‼️BẠN C&Oacute; THỂ QUAN T&Acirc;M M&Agrave; KH&Ocirc;NG Y&Ecirc;U, NHƯNG KH&Ocirc;NG THỂ Y&Ecirc;U M&Agrave; KH&Ocirc;NG QUAN T&Acirc;M</p>', NULL, NULL, NULL, 1, 1, '2020-08-04 07:02:01', '2020-08-04 07:02:01'),
(16, 'Mộc Hương Trà', 'moc-huong-tra', 'MHT380', 2, 'Products/92471224_528424951126985_4548988639891161088_o-500x500.jpg', '<p>🌹🌹&nbsp;MỘC HƯƠNG TR&Agrave;&nbsp;🌹🌹<br />\r\nTr&agrave; Mộc Hương Tr&agrave; l&agrave; sự kết hợp của tr&agrave; Quế Hoa, Nh&agrave;i, Tr&agrave; M&ocirc;i, Hoa Huệ, C&uacute;c Hoạ Mi.</p>\r\n\r\n<p>👍&nbsp;Tr&agrave; c&oacute; t&aacute;c dụng l&agrave;m trắng da, loại bỏ độc tố trong cơ thể, thanh lọc cơ thể, thư gi&atilde;n tinh thần, c&acirc;n bằng hệ thần kinh, vi&ecirc;m họng , nhiệt miệng, đặc biệt rất tốt cho chức năng ti&ecirc;u ho&aacute;.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://forgetmenotmart.com/wp-content/uploads/2020/04/92471224_528424951126985_4548988639891161088_o-609x600.jpg\" style=\"height:600px; width:609px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>🍵&nbsp;Tr&agrave; c&oacute; m&ugrave;i thơm m&aacute;t của Hoa Huệ, Hoa C&uacute;c, L&aacute; Tr&agrave; M&ocirc;i, t&iacute;nh cay ấm của Quế Hoa, thơm dịu của Nh&agrave;i uống rất mềm v&agrave; mướt</p>\r\n\r\n<p>💦&nbsp;Quế Hoa: Chữa h&ocirc;i miệng, đau răng, vi&ecirc;m họng, ho nhiều đờm, lo&eacute;t miệng, đau gan th&acirc;n do lạnh, chữa phong thấp, nhức mỏi g&acirc;n xương, thận hư, loại bỏ độc tố ra khỏi cơ thể, chữa bế kinh, đau bụng, l&agrave;m thuốc dưỡng t&oacute;c v&agrave; thơm t&oacute;c<br />\r\n🌷&nbsp;Hoa c&uacute;c Hoạ Mi : thanh nhiệt, ti&ecirc;u vi&ecirc;m, giảm mụn nhọt, đẹp da; chống oxy h&oacute;a, chống l&atilde;o h&oacute;a, giảm lo &acirc;u, căng thẳng, cải thiện chất lượng giấc ngủ; hạ huyết &aacute;p, tăng hoạt động của tim; điều h&ograve;a kinh nguyệt<br />\r\n💐&nbsp;Hoa nh&agrave;i: Thanh nhiệt, giải độc, kh&aacute;ng khuẩn, trắng da, ngăn ngừa l&atilde;o h&oacute;a, giảm stress, giảm huyết &aacute;p, cholesterol, điều h&ograve;a sự lưu th&ocirc;ng m&aacute;u<br />\r\n💥&nbsp;Hoa huệ: L&agrave;m nhuận da, k&iacute;ch th&iacute;ch ti&ecirc;u ho&aacute;, tiểu tiện kh&oacute;, chữa vi&ecirc;m xoang, trị c&aacute;c trứng ho, đầy hơi, buồn n&ocirc;n, chống t&aacute;o b&oacute;n, nhiễm khuẩn.<br />\r\n💫&nbsp;L&aacute; Tr&agrave; M&ocirc;i: Chữa mắt đỏ, sưng đau, vi&ecirc;m m&agrave;ng tiếp hợp, thanh nhiệt, m&aacute;t m&aacute;u, an thần, trị t&agrave;n nhang x&aacute;m đen</p>\r\n\r\n<p><img alt=\"\" src=\"https://forgetmenotmart.com/wp-content/uploads/2020/04/92244841_528424971126983_3471663928403034112_o-603x600.jpg\" style=\"height:600px; width:603px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://forgetmenotmart.com/wp-content/uploads/2020/04/92351239_528424997793647_5950977544260943872_o-599x600.jpg\" style=\"height:600px; width:599px\" /></p>\r\n\r\n<p>💦&nbsp;Quế Hoa: Chữa h&ocirc;i miệng, đau răng, vi&ecirc;m họng, ho nhiều đờm, lo&eacute;t miệng, đau gan th&acirc;n do lạnh, chữa phong thấp, nhức mỏi g&acirc;n xương, thận hư, loại bỏ độc tố ra khỏi cơ thể, chữa bế kinh, đau bụng, l&agrave;m thuốc dưỡng t&oacute;c v&agrave; thơm t&oacute;c<br />\r\n🌷&nbsp;Hoa c&uacute;c Hoạ Mi : thanh nhiệt, ti&ecirc;u vi&ecirc;m, giảm mụn nhọt, đẹp da; chống oxy h&oacute;a, chống l&atilde;o h&oacute;a, giảm lo &acirc;u, căng thẳng, cải thiện chất lượng giấc ngủ; hạ huyết &aacute;p, tăng hoạt động của tim; điều h&ograve;a kinh nguyệt<br />\r\n💐&nbsp;Hoa nh&agrave;i: Thanh nhiệt, giải độc, kh&aacute;ng khuẩn, trắng da, ngăn ngừa l&atilde;o h&oacute;a, giảm stress, giảm huyết &aacute;p, cholesterol, điều h&ograve;a sự lưu th&ocirc;ng m&aacute;u<br />\r\n💥&nbsp;Hoa huệ: L&agrave;m nhuận da, k&iacute;ch th&iacute;ch ti&ecirc;u ho&aacute;, tiểu tiện kh&oacute;, chữa vi&ecirc;m xoang, trị c&aacute;c trứng ho, đầy hơi, buồn n&ocirc;n, chống t&aacute;o b&oacute;n, nhiễm khuẩn.<br />\r\n💫&nbsp;L&aacute; Tr&agrave; M&ocirc;i: Chữa mắt đỏ, sưng đau, vi&ecirc;m m&agrave;ng tiếp hợp, thanh nhiệt, m&aacute;t m&aacute;u, an thần, trị t&agrave;n nhang x&aacute;m đen</p>\r\n\r\n<p><img alt=\"\" src=\"https://forgetmenotmart.com/wp-content/uploads/2020/04/93094dedc4983ec66789-597x600.jpg\" style=\"height:600px; width:597px\" /></p>', NULL, NULL, NULL, 1, 1, '2020-08-04 07:05:53', '2020-08-04 07:05:53'),
(17, 'Trà Long Nhãn – Táo Đỏ – Kỳ Tử', 'tra-long-nhan-–-tao-do-–-ky-tu', 'TLN–TD–KT758', 2, 'Products/92830712_526790721290408_7917789656333156352_o.jpg', '<p>🍃&nbsp;TR&Agrave; LONG NH&Atilde;N T&Aacute;O ĐỎ KỲ TỬ&nbsp; &ndash; D&agrave;nh cho những chị em th&iacute;ch uống ngọt</p>\r\n\r\n<p>Tr&agrave; 𝘛𝘳𝘢̀ 𝘓𝘰𝘯𝘨 𝘕𝘩𝘢̃𝘯 &ndash; 𝘒𝘺̉ 𝘛𝘶̛̉ &ndash; 𝘛𝘢́𝘰 Đ𝘰̉ c&oacute; vị ngọt thanh của nh&atilde;n, thơm của t&aacute;o đỏ v&agrave; vị beo b&eacute;o của kỷ tử.</p>\r\n\r\n<p><img alt=\"\" src=\"https://forgetmenotmart.com/wp-content/uploads/2020/04/89861047_579278196268236_319914470153388032_o-600x600.jpg\" style=\"height:600px; width:600px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Ấm tr&agrave; nhỏ ngọt ng&agrave;o gồm t&aacute;o đỏ, long nh&atilde;n v&agrave; kỷ tử l&agrave; m&oacute;n đồ uống y&ecirc;u th&iacute;ch v&agrave; tốt cho sức khỏe của mọi lứa tuổi. C&aacute;c th&agrave;nh phần t&aacute;o đỏ, long nh&atilde;n v&agrave; kỷ tử đỏ đều c&oacute; c&aacute;c c&ocirc;ng dụng kh&aacute;c nhau, gi&uacute;p bồi bổ sức khỏe, bảo vệ gan, tăng khả năng sản sinh hồng cầu, n&acirc;ng cao sức đề kh&aacute;ng, hỗ trợ ph&ograve;ng ngừa ung thư, chống l&atilde;o h&oacute;a hiệu quả.</p>\r\n\r\n<p><img alt=\"\" src=\"https://forgetmenotmart.com/wp-content/uploads/2020/04/92745892_526790737957073_8442167809844183040_o-605x600.jpg\" style=\"height:600px; width:605px\" /></p>\r\n\r\n<p>&ndash; 𝑲𝒚̉ 𝑻𝒖̛̉ : giải độc gan v&agrave; thận, l&agrave;m đẹp da, tăng cường tuần ho&agrave;n n&atilde;o v&agrave; chống l&atilde;o ho&aacute;, giữ g&igrave;n tuổi thanh xu&acirc;n cho ph&aacute;i đẹp, giữ g&igrave;n v&oacute;c d&aacute;ng v&agrave; c&acirc;n nặng, chữa can thận &acirc;m suy, chữa yếu lưng mỏi gối, chữa đầu cho&aacute;ng mắt hoa, chữa ho khan, mắt nh&igrave;n kh&ocirc;ng r&otilde;.<br />\r\n&ndash; 𝑻𝒂́𝒐 Đ𝒐̉: l&agrave;m dịu dạ d&agrave;y, phục hồi sức khoẻ sau ốm, đặc biệt tốt cho phụ nữ mang thai v&agrave; sau sinh, gi&agrave;u phốt pho v&agrave; sắt gi&uacute;p lưu th&ocirc;ng m&aacute;u, tăng cường hệ thống miễn dịch, ức chế sự ph&aacute;t triển của c&aacute;c tế b&agrave;o khối u ung thư v&agrave; c&oacute; thể g&oacute;p phần chống ung thư, gi&uacute;p xương chắc khỏe.<br />\r\n&ndash; 𝑳𝒐𝒏𝒈 𝑵𝒉𝒂̃𝒏: Tăng th&ecirc;m sự th&egrave;m ăn, tốt cho hệ ti&ecirc;u h&oacute;a, cải thiện t&aacute;o b&oacute;n, được d&ugrave;ng cho c&aacute;c trường hợp lo &acirc;u, mất ngủ, ngủ m&ecirc;, giảm tr&iacute; nhớ, qu&ecirc;n lẫn, loạn nhịp tim, thiếu m&aacute;u.</p>\r\n\r\n<p><img alt=\"\" src=\"https://forgetmenotmart.com/wp-content/uploads/2020/04/92689690_526790717957075_6592565935100395520_o-601x600.jpg\" style=\"height:600px; width:601px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://forgetmenotmart.com/wp-content/uploads/2020/04/92434741_526790727957074_1065204245059338240_o-604x600.jpg\" style=\"height:600px; width:604px\" /></p>\r\n\r\n<p>🥤Hướng dẫn sử dụng<br />\r\n&ndash; Uống n&oacute;ng: Tr&aacute;ng b&igrave;nh/ cốc v&agrave; tr&agrave; bằng nước đun s&ocirc;i trong 30s &ndash; 1 ph&uacute;t sau đ&oacute; gạn bỏ nước. Th&ecirc;m 300ml nước s&ocirc;i v&agrave; đợi khoảng 3-5 ph&uacute;t cho tr&agrave; ngậm nước l&agrave; c&oacute; thể d&ugrave;ng được.<br />\r\n&ndash; Uống lạnh: Th&ecirc;m đ&aacute; v&agrave; thưởng thức.<br />\r\n&ndash; Th&ecirc;m đường hoặc mật ong t&ugrave;y khẩu vị mỗi người.<br />\r\n&ndash; Mỗi ng&agrave;y 1-2 g&oacute;i, c&oacute; thể th&ecirc;m nước 3 &ndash; 5 lần cho đến khi tr&agrave; nhạt.<br />\r\n&ndash; Sản phẩm được đ&oacute;ng th&agrave;nh c&aacute;c g&oacute;i nhỏ, rất tiện lợi để mang theo b&ecirc;n m&igrave;nh khi đi l&agrave;m, đi chơi..</p>', NULL, NULL, NULL, 1, 1, '2020-08-04 07:09:52', '2020-08-04 07:09:52'),
(18, 'Set TRÀ HƯƠNG VỊ HOÀN HẢO “TÌNH YÊU MÀU NẮNG', 'set-tra-huong-vi-hoan-hao-“tinh-yeu-mau-nang', 'STHVHH“YMN763', 3, 'Products/69428515_1674780352654323_5704543036759867392_o.jpg', '<p>☀☀&nbsp;SET TR&Agrave; HƯƠNG VỊ HO&Agrave;N HẢO &ldquo;T&Igrave;NH Y&Ecirc;U M&Agrave;U NẮNG&rdquo;&nbsp;☀☀</p>\r\n\r\n<p>( Th&agrave;nh phần:&nbsp;#tr&agrave;hoahồng&nbsp;&ndash;&nbsp;#tr&agrave;hoanh&agrave;i&nbsp;&ndash;&nbsp;#tr&agrave;hoaForgetMeNot&nbsp;&ndash;&nbsp;#tr&agrave;c&uacute;cBấttử&nbsp;&ndash;&nbsp;#tr&agrave;c&uacute;cb&aacute;chnhật&nbsp;&ndash;&nbsp;#tr&agrave;hoaanhđ&agrave;o&nbsp;&ndash;&nbsp;#tr&agrave;c&uacute;cFlorist&nbsp;)</p>\r\n\r\n<p>🌸🌼🌹&nbsp;Đẹp cả về Hương lẫn Sắc, &rdquo;T&igrave;nh y&ecirc;u m&agrave;u nắng&rdquo; đem lại cảm gi&aacute;c gần gũi m&agrave; độc đ&aacute;o. Hương hoa thơm thoang thoảng say đắm, c&oacute; ch&uacute;t y&ecirc;u kiều của những c&aacute;nh hồng e ấp, lại c&oacute; n&eacute;t ph&oacute;ng kho&aacute;ng của những b&ocirc;ng c&uacute;c ki&ecirc;n cường. Vị Hoa nh&agrave;i thanh tao m&agrave; kh&ocirc;ng mờ nhạt, vị hoa anh đ&agrave;o cứ như d&ograve;ng nước m&aacute;t l&agrave;nh len lỏi v&agrave;o từng ng&oacute;c ng&aacute;ch trong t&acirc;m can, vỗ về đầy y&ecirc;u thương&hellip;</p>\r\n\r\n<p>☘☘&nbsp;C&Ocirc;NG DỤNG&nbsp;☘☘</p>\r\n\r\n<p>⭐&nbsp;Đẹp da, trị mụn.</p>\r\n\r\n<p>⭐&nbsp;Chống l&atilde;o h&oacute;a.</p>\r\n\r\n<p>⭐&nbsp;Cung cấp năng lượng cho cơ thể.</p>\r\n\r\n<p>⭐&nbsp;Tốt cho xương khớp, thị lực, răng lợi, tim mạch.</p>\r\n\r\n<p>⭐&nbsp;Ph&ograve;ng ngừa ung thư.</p>\r\n\r\n<p>⭐&nbsp;An thần, giảm stress.</p>\r\n\r\n<p>⭐&nbsp;Tăng cường sức đề kh&aacute;ng.</p>\r\n\r\n<p>⭐&nbsp;Giảm lượng chất b&eacute;o &ndash; nguy cơ b&eacute;o ph&igrave;, giảm cholesterol trong cơ thể.</p>\r\n\r\n<p>📌📌&nbsp;C&Aacute;CH PHA:</p>\r\n\r\n<p>Lấy 01 th&igrave;a caf&eacute; mỗi loại, d&ugrave;ng nước s&ocirc;i 90-95 độ C, tr&aacute;ng qua hoa 1 lần rồi ủ tr&agrave; trong 5 ph&uacute;t cho tr&agrave; thấm đẫm, quyện c&aacute;c vị v&agrave;o nhau, lọc bỏ b&atilde; tr&agrave; để kh&ocirc; để c&oacute; thể chế th&ecirc;m 3-5 lần nước tr&agrave; sau tuỳ &yacute;.</p>\r\n\r\n<p>Tr&agrave; c&oacute; thể thưởng thức n&oacute;ng hoặc cho đ&aacute; v&agrave;o uống lạnh.</p>\r\n\r\n<p>Sử dụng tr&agrave; thường xuy&ecirc;n sẽ khiến cơ thể c&oacute; những cải thiện t&iacute;ch cực kh&ocirc;ng ngờ đấy</p>\r\n\r\n<p>💵&nbsp;GI&Aacute; CỦA C&Aacute;C EM ẤY:</p>\r\n\r\n<p>💰&nbsp;Set Full Size: 606k</p>', NULL, NULL, NULL, 1, 1, '2020-08-04 07:12:24', '2020-08-04 07:12:24'),
(19, 'Trà hoa nhân sâm Hàn Quốc', 'tra-hoa-nhan-sam-han-quoc', 'THNSHQ97', 3, 'Blogs/s%C3%A2m.jpg', '<p>🌼🌼&nbsp;Tr&agrave; hoa nh&acirc;n s&acirc;m H&agrave;n Quốc&nbsp;🌼🌼<br />\r\n🍂🍃&nbsp;Hoa nh&acirc;n s&acirc;m l&agrave; cơ quan sinh sản của c&acirc;y nh&acirc;n s&acirc;m. Khi nụ hoa đang chờ nở, qua thu h&aacute;i, phơi sấy kh&ocirc; sẽ được hoa nh&acirc;n s&acirc;m kh&ocirc;. Nh&acirc;n s&acirc;m được mệnh danh l&agrave; thực vật đứng đầu để bảo vệ sức khỏe v&agrave; l&agrave;m đẹp nhưng hoa nh&acirc;n s&acirc;m c&agrave;ng cho thấy sự hiếm hoi của n&oacute;. Nh&acirc;n s&acirc;m 4 năm tuổi mới bắt đầu nở hoa. Được mệnh danh &ldquo;chất dưỡng sinh vạn năng bảo vệ sức miễn dịch&rdquo;.</p>\r\n\r\n<p>🍂🍃&nbsp;H&agrave;m lượng saponin của hoa nh&acirc;n s&acirc;m c&ograve;n cao gấp 5-6 lần so với rễ, những saponin chủ yếu c&oacute;:<br />\r\n-Re: Ph&ograve;ng ngừa xơ vữa động mạch, ph&ograve;ng bệnh tim mạch tăng sức miễn dịch.<br />\r\n-Rg1: Ph&ograve;ng ngừa chứng alzheimer, chống nhũn n&atilde;o.<br />\r\n-Rb1: an thần, n&acirc;ng sức tư duy, cải thiện tr&iacute; nhớ, ph&ograve;ng ngừa chứng alzheimer.<br />\r\n-Rh: An thần, giảm đau, hạ sốt, giảm đường huyết, chống bệnh tiểu đường.<br />\r\n-Rf: Cải thiện chức năng đường ruột.<br />\r\n-Rh2: Chống ung thư gan, ung thư v&uacute;, ung thư phổi, chống bệnh mạch v&agrave;nh, bệnh tim.<br />\r\n-Rg: Chống mệt mỏi, cải thiện tr&iacute; nhớ v&agrave; sức học.<br />\r\n-Rb3: Chống rối loạn nhịp tim.<br />\r\n-Rd: Tăng sức miễn dịch, chống vi&ecirc;m, chống dị ứng, chống sốc v&agrave; điều h&ograve;a hệ tuần ho&agrave;n.<br />\r\n-Rm7cd: Dưỡng nhan, l&agrave;m đẹp, chống l&atilde;o h&oacute;a, hội chứng m&atilde;n kinh&hellip;C&aacute;c th&agrave;nh phần trong hoa nh&acirc;n s&acirc;m đều điều tiết to&agrave;n diện c&acirc;n bằng &acirc;m dương của tế b&agrave;o một c&aacute;ch hiệu quả, cải thiện mức độ chuyển h&oacute;a của tế b&agrave;o, tăng cường chức năng cơ thể, hồi phục chức năng của c&aacute;c cơ quan tổ chức, c&aacute;c hệ thống trong cơ thể, từ đ&oacute; đạt hiệu quả loại bỏ mỏi mệt, tr&igrave; ho&atilde;n l&atilde;o h&oacute;a. N&oacute; l&agrave;m cho cơ thể trong trạng th&aacute;i tốt nhất, tăng khả năng miễn dịch, ph&ograve;ng ngừa xơ cứng động mạch, cao mỡ m&aacute;u, tăng đường trong m&aacute;u, tăng độ đặc m&aacute;u v&agrave; hội chứng m&atilde;n kinh, hồi phục sức khỏe.<br />\r\nC&aacute;c ginsenocid Rb1, Rg1 trong hoa nh&acirc;n s&acirc;m rất c&acirc;n bằng: Rb1 c&oacute; t&aacute;c dụng ức chế hệ thần kinh trung ương, l&agrave;m cho thần kinh hưng phấn được &ecirc;m dịu trở lại, ổn định tinh thần, loại bỏ &acirc;u lo, giảm stress, cải thiện mất ngủ v&agrave; thần kinh suy nhược, l&agrave;m cho hệ thần kinh trung ương được ổn định. Tr&aacute;i lại, Rg1 l&agrave;m cho thần kinh trung ương hưng phấn, c&oacute; hiệu quả với người thiếu tinh lực, dễ mỏi mệt, c&oacute; t&aacute;c dụng dưỡng sinh, cường tr&aacute;ng, k&iacute;ch hoạt tế b&agrave;o.<br />\r\nHoa nh&acirc;n s&acirc;m th&iacute;ch hợp với những người gi&agrave;, yếu, giảm sức miễn dịch, phong thấp, vi&ecirc;m đa khớp dạng thấp, tăng huyết &aacute;p, bệnh mạch v&agrave;nh, xơ vữa động mạch, di chứng tai biến mạch m&aacute;u n&atilde;o, bệnh tiểu đường, hội chứng m&atilde;n kinh, rối loạn chức năng gan v&agrave; đường ruột, chống ung thư&hellip;</p>\r\n\r\n<p>‼️‼️‼️BẠN C&Oacute; THỂ QUAN T&Acirc;M M&Agrave; KH&Ocirc;NG Y&Ecirc;U, NHƯNG KH&Ocirc;NG THỂ Y&Ecirc;U M&Agrave; KH&Ocirc;NG QUAN T&Acirc;M</p>', NULL, NULL, '🍂🍃 Hoa nhân sâm là cơ quan sinh sản của cây nhân sâm. Khi nụ hoa đang chờ nở, qua thu hái, phơi sấy khô sẽ được hoa nhân sâm khô. Nhân sâm được mệnh danh là thực vật đứng đầu để bảo vệ sức khỏe và làm đẹp nhưng hoa nhân sâm càng cho thấy sự hiếm hoi của nó. Nhân sâm 4 năm tuổi mới bắt đầu nở hoa. Được mệnh danh “chất dưỡng sinh vạn năng bảo vệ sức miễn dịch”.', 1, 1, '2020-08-04 07:47:08', '2020-08-04 07:47:08');

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
(1, 1, 1, 'TNNXS508100', 128000.00, 16.00, 15, 1, '2020-07-23 13:17:17', '2020-07-23 13:17:17'),
(2, 1, 2, 'TNNXS508200', 300000.00, 0.00, 0, 1, '2020-07-23 13:17:27', '2020-07-23 13:17:27'),
(3, 2, 1, 'TMD549100', 150000.00, 0.00, 20, 1, '2020-07-23 13:17:46', '2020-07-23 13:17:54'),
(4, 2, 2, 'TMD549200', 300000.00, 10.00, 50, 1, '2020-07-23 13:18:04', '2020-07-23 13:18:04'),
(5, 3, 1, 'TNV562100', 183000.00, 15.00, 20, 1, '2020-07-23 13:18:33', '2020-07-23 13:18:33'),
(6, 3, 2, 'TNV562200', 250000.00, 10.00, 0, 1, '2020-07-23 13:18:46', '2020-07-23 13:18:46'),
(7, 4, 1, 'TCT827100', 150000.00, 18.00, 20, 1, '2020-07-24 18:16:56', '2020-07-24 18:16:56'),
(8, 5, 1, 'TDT219100', 250000.00, 15.00, 50, 1, '2020-07-24 18:23:48', '2020-08-02 13:03:19'),
(9, 7, 1, 'CGD812100', 150000.00, 20.00, 50, 1, '2020-07-24 18:55:23', '2020-08-02 13:02:11'),
(10, 6, 1, 'TNN58100', 200000.00, 20.00, 20, 1, '2020-07-24 18:56:24', '2020-08-02 13:02:39'),
(11, 8, 3, 'SATKTES757100', 500000.00, 0.00, 1, 1, '2020-08-04 06:24:45', '2020-08-04 06:28:46'),
(12, 9, 3, 'HTKTTNV611S', 100000.00, 0.00, 4, 1, '2020-08-04 06:35:22', '2020-08-04 06:35:22'),
(13, 9, 4, 'HTKTTNV611M', 150000.00, 0.00, 2, 1, '2020-08-04 06:35:39', '2020-08-04 06:35:39'),
(14, 10, 3, 'BACTT6529S', 510000.00, 0.00, 1, 1, '2020-08-04 06:38:58', '2020-08-04 06:38:58'),
(15, 11, 3, 'DGN303S', 248000.00, 0.00, 2, 1, '2020-08-04 06:42:45', '2020-08-04 06:42:45'),
(16, 12, 3, 'BACPTTT4245S', 450000.00, 0.00, 5, 1, '2020-08-04 06:45:16', '2020-08-04 06:45:16'),
(17, 13, 3, 'HTTC900S', 283000.00, 5.00, 5, 1, '2020-08-04 06:51:47', '2020-08-04 06:52:01'),
(18, 13, 4, 'HTTC900M', 300000.00, 5.00, 5, 1, '2020-08-04 06:52:39', '2020-08-04 06:52:39'),
(19, 13, 5, 'HTTC900L', 450000.00, 5.00, 5, 1, '2020-08-04 06:52:55', '2020-08-04 06:52:55'),
(20, 14, 1, 'TY962100', 300000.00, 2.00, 5, 1, '2020-08-04 06:56:30', '2020-08-04 06:56:30'),
(21, 14, 2, 'TY962200', 588000.00, 2.00, 5, 1, '2020-08-04 06:57:07', '2020-08-04 06:57:07'),
(22, 15, 1, 'TDHQCL183100', 10000.00, 0.00, 10, 1, '2020-08-04 07:02:30', '2020-08-04 07:02:30'),
(23, 15, 2, 'TDHQCL183200', 20000.00, 0.00, 10, 1, '2020-08-04 07:02:50', '2020-08-04 07:02:50'),
(24, 16, 3, 'MHT380S', 102400.00, 0.00, 10, 1, '2020-08-04 07:06:56', '2020-08-04 07:06:56'),
(25, 16, 4, 'MHT380M', 200000.00, 0.00, 10, 1, '2020-08-04 07:07:15', '2020-08-04 07:07:15'),
(26, 16, 5, 'MHT380L', 299999.00, 2.00, 5, 1, '2020-08-04 07:07:34', '2020-08-04 07:07:34'),
(27, 17, 1, 'TLN–TD–KT758100', 50000.00, 0.00, 8, 1, '2020-08-04 07:10:09', '2020-08-04 07:10:09'),
(28, 17, 2, 'TLN–TD–KT758200', 99000.00, 0.00, 10, 1, '2020-08-04 07:10:38', '2020-08-04 07:10:38'),
(29, 18, 5, 'STHVHH“YMN763L', 606000.00, 0.00, 6, 1, '2020-08-04 07:12:44', '2020-08-04 07:12:44'),
(30, 19, 3, 'THNSHQ97S', 50000.00, 0.00, 9, 1, '2020-08-04 07:47:30', '2020-08-04 07:47:30'),
(31, 19, 4, 'THNSHQ97M', 100000.00, 8.00, 9, 1, '2020-08-04 07:47:42', '2020-08-04 07:47:42');

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
(9, 'Tran Văn', '1596648950hinh-anh-buon-dep_044703914.jpg', 'demo1@gmail.com', NULL, '$2y$10$1V9DV.QGK3dwpK.bZobc3eXrLDCUyQp0NCnhxXNKBIzTv0okAIJKq', NULL, '+84348053999', 1, '2020-07-21', 'Phu Cuong, Soc Son, Ha Noi', '2020-07-27 10:26:43', '2020-07-28 07:38:30'),
(10, 'Tran Van Hoàn', '1596648950hinh-anh-buon-dep_044703914.jpg', 'kh@gmail.com', NULL, '$2y$10$eccQw.E77b.y1/66RioGIOS1wefo.p4i/nb6g2RS.LjsSLKHj2qpe', NULL, '321654987', 1, '2020-07-10', 'Phu Cuong, Soc Son, Ha Noi', '2020-07-27 10:30:21', '2020-08-03 06:16:25'),
(12, 'Tran Thanh', '1596539396chupcung-vbk.jpg', 'tranhoan.espeed@gmail.com', NULL, '$2y$10$Fn4HHWTqtP45LdOWPUe.m.tT.F/2NWlaKBdrVXHowQBY2qWYToyfO', NULL, '034805399999', 1, '2020-08-28', 'Cổ Loa, Đông Anh, Hà Nội', '2020-08-03 09:30:20', '2020-08-03 09:30:20'),
(13, 'Tran Hoàn', '1595961982luffy.png', 'tranhoan.dz98@gmail.com', NULL, '$2y$10$cpo/71Zp/IiBaU0H4.EGsuBpHskaP7SMFyV/ZPUWtLN0IpPFnmq3.', NULL, '0321654987', 1, '2020-08-21', 'Hà Nội', '2020-08-03 09:35:32', '2020-08-03 10:26:09'),
(14, 'Nguyễn Thị Thanh Thủy', '1595961982luffy.png', 'thuybon1@gmail.com', NULL, '$2y$10$RMy7Wbr2ShRHLL0WUONHF.3qoqLyuoaN/E6qt58/fN0rBmg22GiQG', NULL, '0988692884', 1, '1997-11-12', 'Số 1 Nguyên Xá', '2020-08-04 07:53:31', '2020-08-04 07:53:31');

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
(20, 10, 10, 1, '2020-07-31 18:52:43', '2020-07-31 18:52:43'),
(21, 8, 10, 1, '2020-07-31 18:52:44', '2020-07-31 18:52:44'),
(22, 7, 10, 1, '2020-07-31 18:52:45', '2020-07-31 18:52:45'),
(23, 3, 13, 1, '2020-08-03 09:37:33', '2020-08-03 09:37:33');

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
  ADD UNIQUE KEY `configs_name_unique` (`name`),
  ADD UNIQUE KEY `configs_slug_unique` (`slug`);

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
  ADD PRIMARY KEY (`id`),
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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `banners`
--
ALTER TABLE `banners`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `configs`
--
ALTER TABLE `configs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `feedback_pros`
--
ALTER TABLE `feedback_pros`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `img_pros`
--
ALTER TABLE `img_pros`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

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
-- AUTO_INCREMENT cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT cho bảng `product_details`
--
ALTER TABLE `product_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

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
  ADD CONSTRAINT `wishlists_id_product_detail_foreign` FOREIGN KEY (`id_product_detail`) REFERENCES `product_details` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `wishlists_id_user_foreign` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
