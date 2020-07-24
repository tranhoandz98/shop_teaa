-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th7 19, 2020 lúc 04:29 PM
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
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1 là Hiện, 0 là Ẩn',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `attrs`
--

CREATE TABLE `attrs` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `attrs`
--

INSERT INTO `attrs` (`id`, `name`, `value`, `created_at`, `updated_at`) VALUES
(1, 'size', '100', '2020-07-19 06:18:03', '2020-07-19 06:18:03'),
(2, 'size', '200', '2020-07-19 06:18:08', '2020-07-19 06:18:08');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `banners`
--

CREATE TABLE `banners` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1 là Hiện, 0 là Ẩn',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `blogs`
--

CREATE TABLE `blogs` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_cate` int(10) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keyword` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_desc` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1 là Hiện, 0 là Ẩn',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1 là Hiện, 0 là Ẩn',
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1' COMMENT '1 là Danh mục sản phẩm,0 là Danh mục tin tức',
  `parent_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `status`, `type`, `parent_id`, `created_at`, `updated_at`) VALUES
(1, 'Trà hoa', 'tra-hoa', 1, '1', NULL, '2020-07-19 06:15:34', '2020-07-19 06:15:34'),
(2, 'Trà mix', 'tra-mix', 1, '1', 1, '2020-07-19 06:15:43', '2020-07-19 06:15:43'),
(3, 'Trà mộc', 'tra-moc', 1, '1', 1, '2020-07-19 06:15:56', '2020-07-19 06:15:56');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `configs`
--

CREATE TABLE `configs` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1 là Hiện, 0 là Ẩn',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  `id_admin` int(10) UNSIGNED NOT NULL,
  `id_user` int(10) UNSIGNED NOT NULL,
  `star` int(11) NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1 là Hiện, 0 là Ẩn',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, 1, 'Products/92244655_1913382935460729_4601580832258260992_n-800x796.jpg', '2020-07-19 06:17:02', '2020-07-19 06:17:02'),
(2, 1, 'Products/92243745_1913382982127391_4361766729081159680_n-800x803%20(1).jpg', '2020-07-19 06:17:02', '2020-07-19 06:17:02'),
(3, 1, 'Products/92243399_1913382948794061_8034960796574285824_n-800x633.jpg', '2020-07-19 06:17:02', '2020-07-19 06:17:02'),
(4, 2, 'Products/tra-duong-thanh-36778-800x503.jpg', '2020-07-19 06:17:50', '2020-07-19 06:17:50'),
(5, 2, 'Products/tra-duong-thanh-14501.jpg', '2020-07-19 06:17:50', '2020-07-19 06:17:50'),
(6, 2, 'Products/m%E1%BA%ABu-%C4%91%C6%A1n-7.jpg', '2020-07-19 06:17:50', '2020-07-19 06:17:50');

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
(33, '2014_10_12_000000_create_users_table', 1),
(34, '2014_10_12_100000_create_password_resets_table', 1),
(35, '2019_08_19_000000_create_failed_jobs_table', 1),
(36, '2020_06_30_032702_create_categories_table', 1),
(37, '2020_06_30_032808_create_attrs_table', 1),
(38, '2020_06_30_033303_create_admins_table', 1),
(39, '2020_06_30_033340_create_blogs_table', 1),
(40, '2020_06_30_033346_create_banners_table', 1),
(41, '2020_06_30_033354_create_configs_table', 1),
(42, '2020_07_16_163415_create_products_table', 1),
(43, '2020_07_16_164157_create_product_details_table', 1),
(44, '2020_07_16_165740_create_img_pros__table', 1),
(45, '2020_07_16_165846_create_feedback_pros_table', 1),
(46, '2020_07_16_170036_create_wishlists_table', 1),
(47, '2020_07_16_170847_create_orders_table', 1),
(48, '2020_07_16_170958_create_order_details_table', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_user` int(10) UNSIGNED NOT NULL,
  `total_price` double(8,2) NOT NULL,
  `address_ship` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1 là Hiện, 0 là Ẩn',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_details`
--

CREATE TABLE `order_details` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_order` int(10) UNSIGNED NOT NULL,
  `id_pro_detail` int(10) UNSIGNED NOT NULL,
  `price` double(8,2) NOT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1 là Hiện, 0 là Ẩn',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `name`, `slug`, `sku`, `id_cate`, `image`, `description`, `meta_title`, `meta_keyword`, `meta_desc`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Trà Mộc Dưỡng', 'tra-moc-duong', 'TMD513', 3, 'Products/92020660_1913383002127389_8961377008869179392_n-800x802.jpg', '<p>Tr&agrave; đem lại hương vị ngọt c&oacute; m&agrave; lại kh&ocirc;ng ng&aacute;n.<br />\r\nĐ&uacute;ng như t&ecirc;n gọi, Tr&agrave; Mộc Dưỡng kh&ocirc;ng chỉ l&agrave; tr&agrave; m&agrave; c&ograve;n được coi l&agrave; dược tr&agrave; v&igrave; n&oacute; kh&ocirc;ng chỉ l&agrave; thức uống thơm ngon m&agrave; c&ograve;n c&oacute; t&aacute;c dụng l&agrave;m đẹp dung nhan, đẹp da, s&aacute;ng mắt, bổ huyết, an thần&hellip; chăm s&oacute;c sắc đẹp của m&igrave;nh từ b&ecirc;n trong.&nbsp;</p>\r\n\r\n<p>&nbsp;Tr&agrave; Mộc Dưỡng được kết hợp từ C&uacute;c v&agrave;ng, Long nh&atilde;n, Hồng h&agrave;n, T&aacute;o đỏ, Kim quất, Kỷ tử, Nho, Đường Ph&egrave;n.</p>\r\n\r\n<p><img alt=\"\" src=\"https://forgetmenotmart.com/wp-content/uploads/2020/04/91351666_1906252326173790_5397366108166553600_n-599x600.jpg\" style=\"height:600px; width:599px\" /><br />\r\n&ndash; C&uacute;c v&agrave;ng: An thần, trị mất ngủ, giảm stress, ăn uống ngon miệng, giải nhiệt, detox thanh lọc cơ thể, ph&ograve;ng ngừa ung thư.<br />\r\n&ndash; Kỷ tử: giải độc gan v&agrave; thận, l&agrave;m đẹp da, tăng cường tuần ho&agrave;n n&atilde;o v&agrave; chống l&atilde;o ho&aacute;, giữ g&igrave;n tuổi thanh xu&acirc;n cho ph&aacute;i đẹp, giữ g&igrave;n v&oacute;c d&aacute;ng v&agrave; c&acirc;n nặng, chữa can thận &acirc;m suy, chữa yếu lưng mỏi gối, chữa đầu cho&aacute;ng mắt hoa, chữa ho khan, mắt nh&igrave;n kh&ocirc;ng r&otilde;.<br />\r\n&ndash; Hoa hồng H&agrave;n Quốc: Đẹp da, trị mụn, chống l&atilde;o h&oacute;a v&agrave; kiềm chế qu&aacute; tr&igrave;nh l&atilde;o h&oacute;a giảm lượng chất b&eacute;o &ndash; nguy cơ b&eacute;o ph&igrave;, giảm cholesterol trong cơ thể, Bổ sung nhiều vitamin A, B1, C, D, chất xơ, mangan, sắt, mangie v&agrave; đồng, tốt cho đường huyết, giảm mỡ m&aacute;u, chống t&iacute;ch đọng mỡ ở tế b&agrave;o gan.<br />\r\n&ndash; T&aacute;o đỏ: Tốt cho đường huyết, giảm mỡ m&aacute;u, chống t&iacute;ch đọng mỡ ở tế b&agrave;o ga, chữa c&aacute;c bệnh về đường ti&ecirc;u h&oacute;a: đau dạ d&agrave;y, n&ocirc;n mửa, ch&aacute;n ăn, cung cấp năng lượng cho cơ thể.<br />\r\n&ndash; Kim quất: k&iacute;ch th&iacute;ch ti&ecirc;u ho&aacute;, th&ocirc;ng phế kh&iacute;, chống n&ocirc;n, nấc, ti&ecirc;u hạch&hellip; , chữa c&aacute;c bệnh về mắt, vi&ecirc;m họng, chữa nấc, nghẹn, chữa tinh ho&agrave;n sưng to sa xuống dưới, c&oacute; hạch ở cổ, giảm đau bụng hoặc sa dạ con sau sinh, đau dạ d&agrave;y, n&ocirc;n mửa, ch&aacute;n ăn..<br />\r\nDo tr&agrave; được kết hợp từ c&aacute;c loại thảo mộc thi&ecirc;n nhi&ecirc;n n&ecirc;n kh&ocirc;ng c&oacute; cafein, ngược lại c&ograve;n gi&uacute;p an thần giảm stress n&ecirc;n anh chị ho&agrave;n to&agrave;n c&oacute; thể d&ugrave;ng buổi tối được lu&ocirc;n nh&eacute;.</p>\r\n\r\n<p><img alt=\"\" src=\"https://forgetmenotmart.com/wp-content/uploads/2020/04/91323546_1906252249507131_5164058446651195392_n-800x523.jpg\" style=\"height:523px; width:800px\" /><br />\r\n&nbsp;Hướng dẫn sử dụng:<br />\r\n&ndash; Uống n&oacute;ng: Tr&aacute;ng b&igrave;nh/ cốc v&agrave; tr&agrave; bằng nước đun s&ocirc;i trong 30s &ndash; 1 ph&uacute;t sau đ&oacute; gạn bỏ nước. Th&ecirc;m 300ml nước s&ocirc;i v&agrave; đợi khoảng 3-5 ph&uacute;t cho tr&agrave; ngậm nước l&agrave; c&oacute; thể d&ugrave;ng được.<br />\r\n&ndash; Uống lạnh: Th&ecirc;m đ&aacute; v&agrave; thưởng thức.<br />\r\n&ndash; Th&ecirc;m đường hoặc mật ong t&ugrave;y khẩu vị mỗi người.<br />\r\n&ndash; Mỗi ng&agrave;y 1-2 g&oacute;i, c&oacute; thể th&ecirc;m nước 3 &ndash; 5 lần cho đến khi tr&agrave; nhạt.<br />\r\n&ndash; Sản phẩm được đ&oacute;ng th&agrave;nh c&aacute;c g&oacute;i nhỏ, rất tiện lợi để mang theo b&ecirc;n m&igrave;nh khi đi l&agrave;m, đi chơi.. &nbsp;&nbsp;<img alt=\"\" src=\"https://forgetmenotmart.com/wp-content/uploads/2020/04/91567588_1906252292840460_8245594462445633536_n-605x600.jpg\" style=\"height:600px; width:605px\" /></p>', NULL, NULL, 'Trà đem lại hương vị ngọt có mà lại không ngán.\r\nĐúng như tên gọi, Trà Mộc Dưỡng không chỉ là trà mà còn được coi là dược trà vì nó không chỉ là thức uống thơm ngon mà còn có tác dụng làm đẹp dung nhan, đẹp da, sáng mắt, bổ huyết, an thần… chăm sóc sắc đẹp của mình từ bên trong.', 1, '2020-07-19 06:17:01', '2020-07-19 06:19:19'),
(2, 'Trà Ngọt Ngào Xuân Sắc', 'tra-ngot-ngao-xuan-sac', 'TNNXS829', 2, 'Products/f.jpg', '<p>Tr&agrave; &ldquo; 𝓝𝓰𝓸̣𝓽 𝓝𝓰𝓪̀𝓸 𝓧𝓾𝓪̂𝓷 𝓢𝓪̆́𝓬 &rdquo; : đ&uacute;ng với t&ecirc;n gọi tr&agrave; 𝑐𝑜́ 𝑣𝑖̣ 𝑛𝑔𝑜̣𝑡 𝑛ℎ𝑢̛𝑛𝑔 𝑘ℎ𝑜̂𝑛𝑔 𝑏𝑒́𝑜, 𝑚𝑢̀𝑖 𝑡ℎ𝑜̛𝑚 𝑚𝑎́𝑡 𝑐𝑢̉𝑎 𝐻𝑜𝑎 𝐻𝑜̂̀𝑛𝑔, 𝑣𝑖̣ 𝑛𝑔𝑜̣𝑡 𝑐𝑢̉𝑎 𝐷𝑎̂𝑢 𝑇𝑎̆̀𝑚, Đ𝑢̛𝑜̛̀𝑛𝑔 𝑛𝑎̂𝑢, 𝑇𝑎́𝑜 Đ𝑜̉, 𝐿𝑜𝑛𝑔 𝑁ℎ𝑎̃𝑛, 𝐾𝑦̉ 𝑇𝑢̛̉ 𝑣𝑎̀ 𝑞𝑢𝑎̉ 𝑁ℎ𝑜 𝑘ℎ𝑜̂.<br />\r\n&nbsp;<br />\r\n𝑻𝒓𝒂̀ 𝒄𝒐́ 𝒕𝒂́𝒄 𝒅𝒖̣𝒏𝒈 𝒄𝒖𝒏𝒈 𝒄𝒂̂́𝒑 𝒗𝒊𝒕𝒂𝒎𝒊𝒏 𝒄𝒉𝒐 𝒄𝒐̛ 𝒕𝒉𝒆̂̉ 𝒎𝒐̂̃𝒊 𝒏𝒈𝒂̀𝒚; 𝒃𝒐̂̉ 𝒔𝒖𝒏𝒈 𝒗𝒊𝒕𝒂𝒎𝒊𝒏, 𝒂𝒙𝒊𝒕 𝒂𝒎𝒊𝒏, 𝒉𝒖𝒎𝒆𝒏𝒕𝒐𝒔, 𝒌𝒉𝒐𝒂́𝒏𝒈 𝒄𝒉𝒂̂́𝒕, 𝒓𝒆𝒔𝒗𝒆𝒓𝒂𝒕𝒓𝒐𝒍, 𝒂𝒏𝒕𝒉𝒐𝒄𝒚𝒂𝒏𝒊𝒏&hellip; 𝒈𝒊𝒖́𝒑 𝒄𝒉𝒐 𝒄𝒐̛ 𝒕𝒉𝒆̂̉ 𝒌𝒉𝒐̉𝒆 𝒎𝒂̣𝒏𝒉 𝒉𝒐̛𝒏, 𝒄𝒉𝒐̂́𝒏𝒈 𝒍𝒂̃𝒐 𝒉𝒐́𝒂, 𝒍𝒂̀𝒎 𝒎𝒐̛̀ 𝒗𝒆̂́𝒕 𝒏𝒉𝒂̆𝒏.<br />\r\n&nbsp;<br />\r\n☕️Tr&agrave; 𝓝𝓰𝓸̣𝓽 𝓝𝓰𝓪̀𝓸 𝓧𝓾𝓪̂𝓷 𝓢𝓪̆́𝓬 l&agrave; sự kết hợp của 8 loại nguy&ecirc;n liệu: Đường n&acirc;u, Gừng Gi&agrave;, D&acirc;u Tằm, Kỷ Tử, T&aacute;o đỏ, Hồng H&agrave;n, Long nh&atilde;n, quả nho kh&ocirc;.<br />\r\n💮 𝑲𝒚̉ 𝑻𝒖̛̉ : C&acirc;u kỷ tử được biết đến như l&agrave; c&acirc;y k&eacute;o d&agrave;i tuổi thọ từ thời cổ đại. Trong thời Chiến Quốc, truyền thuyết về c&acirc;y kỷ tử c&oacute; thể k&eacute;o d&agrave;i tuổi thọ, dưỡng nhan được lan truyền. Truyền thuyết thời Bắc Tống, một vị đại nh&acirc;n được lệnh rời Bắc Kinh đi c&ocirc;ng vụ đến Tứ Xuy&ecirc;n. Tr&ecirc;n đường đi, &ocirc;ng ta thấy một c&ocirc; g&aacute;i dung nhan đoan trang, m&aacute;i t&oacute;c mượt m&agrave;, chừng 17 tuổi. Đại nh&acirc;n t&ograve; m&ograve; hỏi: &ldquo;Năm nay n&agrave;ng bao nhi&ecirc;u tuổi?&rdquo;. C&ocirc; g&aacute;i trả lời: &ldquo;Năm nay t&ocirc;i 372 tuổi!&rdquo;. Sau khi nghe, đại nh&acirc;n ngạc nhi&ecirc;n hơn v&agrave; hỏi: &ldquo;L&agrave;m thế n&agrave;o để n&agrave;ng c&oacute; được tuổi thọ?&rdquo;. C&ocirc; g&aacute;i n&oacute;i: &ldquo;T&ocirc;i kh&ocirc;ng c&oacute; phương ph&aacute;p b&iacute; ẩn n&agrave;o. T&ocirc;i chỉ ăn quả c&acirc;u kỷ tử thường xuy&ecirc;n trong năm th&ocirc;i&rdquo;.<br />\r\nC&ocirc;ng dụng phải kể đến như:<br />\r\n+ Tăng cường hệ miễn dịch<br />\r\n+ Chống l&atilde;o h&oacute;a, dưỡng nhan<br />\r\n+ Bảo vệ tế b&agrave;o gan<br />\r\n+ Cải thiện thị lực, kh&ocirc; mắt, mờ mắt<br />\r\n+ Th&uacute;c đẩy chức năng t&aacute;i tạo m&aacute;u<br />\r\n&nbsp;<br />\r\n💮 Đ𝘂̛𝗼̛̀𝗻𝗴 𝗡𝗮̂𝘂 đ&atilde; được xem l&agrave; một vị thuốc c&oacute; t&aacute;c dụng bổ huyết v&agrave; phục hồi sức khỏe tuyệt vời. Ngo&agrave;i t&aacute;c dụng c&oacute; t&aacute;c động tốt đến cơ thể th&igrave; tr&agrave; đường đen c&ograve;n c&oacute; t&aacute;c dụng l&agrave;m đẹp, do đường đen chứa nhiều kho&aacute;ng chất v&agrave; vitamin n&ecirc;n gi&uacute;p cho l&agrave;n da trở n&ecirc;n mịn m&agrave;ng, giảm c&aacute;c v&ugrave;ng da sẫm m&agrave;u do phơi nắng. Ngo&agrave;i ra đường đen c&ograve;n c&oacute; t&aacute;c dụng điều ho&agrave; kinh nguyệt tốt cho phụ nữ.<br />\r\n&nbsp;<br />\r\n💮 𝗗𝗮̂𝘂 𝘁𝗮̆̀𝗺: Quả d&acirc;u tằm ( tang thầm) c&oacute; vị ngọt, t&iacute;nh b&igrave;nh, l&agrave; một vị thuốc qu&yacute; c&oacute; t&aacute;c dụng bồi bổ sức khỏe, hỗ trợ điều trị mất ngủ, bổ thận tr&aacute;ng dương, gi&uacute;p s&aacute;ng mắt, tăng cường ti&ecirc;u h&oacute;a, gi&uacute;p đen t&oacute;c.<br />\r\n&nbsp;<br />\r\n💮 𝑻𝒂́𝒐 Đ𝒐̉ 𝐓𝐚̂𝐧 𝐂𝐮̛𝐨̛𝐧𝐠 C&aacute;c l&aacute;t t&aacute;o được cắt từ t&aacute;o T&acirc;n Cương Ruomei; Da mỏng , ngon, d&agrave;y thịt, v&agrave; c&oacute; tiếng l&agrave; &ldquo;thuốc vitamin tự nhi&ecirc;n&rdquo;, l&agrave;m dịu dạ d&agrave;y, phục hồi sức khoẻ sau ốm, gi&agrave;u phốt pho v&agrave; sắt gi&uacute;p lưu th&ocirc;ng m&aacute;u, tăng cường hệ thống miễn dịch, ức chế sự ph&aacute;t triển của c&aacute;c tế b&agrave;o khối u ung thư v&agrave; c&oacute; thể g&oacute;p phần chống ung thư, gi&uacute;p xương chắc khỏe.<br />\r\n&nbsp;<br />\r\n💮 𝐇𝐨𝐚 𝐇𝐨̂̀𝐧𝐠 𝐇𝐚̀𝐧 𝐐𝐮𝐨̂́𝐜 : Gi&agrave;u vitamin, tốt cho tim mạch, đẹp sắc, dưỡng nhan, điều h&ograve;a kh&iacute; huyết, hỗ trợ hệ ti&ecirc;u h&oacute;a, gi&uacute;p tăng cường hệ miễn dịch<br />\r\n&nbsp;<br />\r\n&ndash; 𝑳𝒐𝒏𝒈 𝑵𝒉𝒂̃𝒏: Tăng sự th&egrave;m ăn, tốt cho hệ ti&ecirc;u h&oacute;a, cải thiện t&aacute;o b&oacute;n, được d&ugrave;ng cho c&aacute;c trường hợp lo &acirc;u, mất ngủ, ngủ m&ecirc;, giảm tr&iacute; nhớ, qu&ecirc;n lẫn, loạn nhịp tim, thiếu m&aacute;u.<br />\r\n&nbsp;<br />\r\n☄️ 𝑯𝒖̛𝒐̛́𝒏𝒈 𝒅𝒂̂̃𝒏 𝒔𝒖̛̉ 𝒅𝒖̣𝒏𝒈:<br />\r\n&ndash; Uống n&oacute;ng: Tr&aacute;ng b&igrave;nh/ cốc v&agrave; tr&agrave; bằng nước đun s&ocirc;i trong 30s &ndash; 1 ph&uacute;t sau đ&oacute; gạn bỏ nước. Th&ecirc;m 300ml nước s&ocirc;i v&agrave; đợi khoảng 3-5 ph&uacute;t cho tr&agrave; ngậm nước l&agrave; c&oacute; thể d&ugrave;ng được.<br />\r\n&ndash; Uống lạnh: Th&ecirc;m đ&aacute; v&agrave; thưởng thức.<br />\r\n&ndash; Th&ecirc;m đường hoặc mật ong t&ugrave;y khẩu vị mỗi người.<br />\r\n&ndash; Mỗi ng&agrave;y 1-2 g&oacute;i, c&oacute; thể th&ecirc;m nước 3 &ndash; 5 lần cho đến khi tr&agrave; nhạt.<br />\r\n&ndash; Sản phẩm được đ&oacute;ng th&agrave;nh c&aacute;c g&oacute;i nhỏ, rất tiện lợi để mang theo b&ecirc;n m&igrave;nh khi đi l&agrave;m, đi chơi..</p>', NULL, NULL, '𝑻𝒓𝒂̀ 𝒄𝒐́ 𝒕𝒂́𝒄 𝒅𝒖̣𝒏𝒈 𝒄𝒖𝒏𝒈 𝒄𝒂̂́𝒑 𝒗𝒊𝒕𝒂𝒎𝒊𝒏 𝒄𝒉𝒐 𝒄𝒐̛ 𝒕𝒉𝒆̂̉ 𝒎𝒐̂̃𝒊 𝒏𝒈𝒂̀𝒚; 𝒃𝒐̂̉ 𝒔𝒖𝒏𝒈 𝒗𝒊𝒕𝒂𝒎𝒊𝒏, 𝒂𝒙𝒊𝒕 𝒂𝒎𝒊𝒏, 𝒉𝒖𝒎𝒆𝒏𝒕𝒐𝒔, 𝒌𝒉𝒐𝒂́𝒏𝒈 𝒄𝒉𝒂̂́𝒕, 𝒓𝒆𝒔𝒗𝒆𝒓𝒂𝒕𝒓𝒐𝒍, 𝒂𝒏𝒕𝒉𝒐𝒄𝒚𝒂𝒏𝒊𝒏… 𝒈𝒊𝒖́𝒑 𝒄𝒉𝒐 𝒄𝒐̛ 𝒕𝒉𝒆̂̉ 𝒌𝒉𝒐̉𝒆 𝒎𝒂̣𝒏𝒉 𝒉𝒐̛𝒏, 𝒄𝒉𝒐̂́𝒏𝒈 𝒍𝒂̃𝒐 𝒉𝒐́𝒂, 𝒍𝒂̀𝒎 𝒎𝒐̛̀ 𝒗𝒆̂́𝒕 𝒏𝒉𝒂̆𝒏.\r\n \r\n☕️Trà 𝓝𝓰𝓸̣𝓽 𝓝𝓰𝓪̀𝓸 𝓧𝓾𝓪̂𝓷 𝓢𝓪̆́𝓬 là sự kết hợp của 8 loại nguyên liệu: Đường nâu, Gừng Già, Dâu Tằm, Kỷ Tử, Táo đỏ, Hồng Hàn, Long nhãn, quả nho khô.', 1, '2020-07-19 06:17:50', '2020-07-19 06:17:50'),
(3, 'Trà', 'tra', 'T333', 1, 'Products/94362630_1934385620027127_322923528535932928_n-1-800x800.jpg', NULL, NULL, NULL, NULL, 0, '2020-07-19 07:05:09', '2020-07-19 07:05:09');

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
(1, 1, 1, 'TMD513100', 150000.00, 20.00, 5, 1, '2020-07-19 06:19:37', '2020-07-19 06:19:37'),
(2, 1, 2, 'TMD513200', 300000.00, 5.00, 5, 1, '2020-07-19 06:19:51', '2020-07-19 06:19:51'),
(3, 2, 1, 'TNNXS829100', 100000.00, 20.00, 3, 1, '2020-07-19 06:20:24', '2020-07-19 06:20:52'),
(4, 2, 2, 'TNNXS829200', 250000.00, 20.00, 5, 1, '2020-07-19 06:20:38', '2020-07-19 06:20:38'),
(5, 3, 1, 'T333100', 151000.00, 0.00, 0, 1, '2020-07-19 07:05:21', '2020-07-19 07:05:21');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` int(11) NOT NULL,
  `gender` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1 là Nam, 0 là Nữ',
  `birthday` date NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wishlists`
--

CREATE TABLE `wishlists` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_product` int(10) UNSIGNED NOT NULL,
  `id_user` int(10) UNSIGNED NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1 là Hiện, 0 là Ẩn',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  ADD UNIQUE KEY `banners_name_unique` (`name`);

--
-- Chỉ mục cho bảng `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blogs_id_cate_foreign` (`id_cate`);

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`);

--
-- Chỉ mục cho bảng `configs`
--
ALTER TABLE `configs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `configs_name_unique` (`name`);

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
  ADD KEY `feedback_pros_id_admin_foreign` (`id_admin`),
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
  ADD KEY `wishlists_id_product_foreign` (`id_product`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `attrs`
--
ALTER TABLE `attrs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `banners`
--
ALTER TABLE `banners`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `configs`
--
ALTER TABLE `configs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `feedback_pros`
--
ALTER TABLE `feedback_pros`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `img_pros`
--
ALTER TABLE `img_pros`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `product_details`
--
ALTER TABLE `product_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `blogs`
--
ALTER TABLE `blogs`
  ADD CONSTRAINT `blogs_id_cate_foreign` FOREIGN KEY (`id_cate`) REFERENCES `categories` (`id`);

--
-- Các ràng buộc cho bảng `feedback_pros`
--
ALTER TABLE `feedback_pros`
  ADD CONSTRAINT `feedback_pros_id_admin_foreign` FOREIGN KEY (`id_admin`) REFERENCES `admins` (`id`),
  ADD CONSTRAINT `feedback_pros_id_product_foreign` FOREIGN KEY (`id_product`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `feedback_pros_id_user_foreign` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`);

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
  ADD CONSTRAINT `wishlists_id_product_foreign` FOREIGN KEY (`id_product`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `wishlists_id_user_foreign` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
