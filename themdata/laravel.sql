-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th7 26, 2020 lúc 12:16 PM
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
(1, 'admin', 'tranhoan.dz98@geail.com', '$2y$10$6IvbmKBpDc7FHq8RDYpUZutInKdR7nfgnJzrilKb1AsohzQTWwC/y', 1, '2020-07-24 02:18:45', '2020-07-24 02:18:45');

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
(1, 'khoi-luong', '100', '2020-07-24 03:15:53', '2020-07-24 03:15:53'),
(2, 'khoi-luong', '200', '2020-07-24 03:15:59', '2020-07-24 03:15:59');

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
  `parent_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `status`, `type`, `parent_id`, `created_at`, `updated_at`) VALUES
(1, 'Trà hoa', 'tra-hoa', 1, 1, NULL, '2020-07-24 02:45:25', '2020-07-24 02:45:25'),
(2, 'Trà mix', 'tra-mix', 1, 1, 1, '2020-07-24 02:45:38', '2020-07-24 02:45:38'),
(3, 'Trà mộc', 'tra-moc', 1, 1, 1, '2020-07-24 02:45:54', '2020-07-24 02:45:54'),
(4, 'Dụng cụ pha trà', 'dung-cu-pha-tra', 1, 1, NULL, '2020-07-24 02:46:02', '2020-07-24 02:46:02'),
(5, 'Tin tức mới', 'tin-tuc-moi', 1, 0, NULL, '2020-07-24 02:46:14', '2020-07-24 02:46:37'),
(6, 'Nguyên liệu nấu chè', 'nguyen-lieu-nau-che', 1, 1, NULL, '2020-07-24 02:46:23', '2020-07-24 02:46:23');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `configs`
--

CREATE TABLE `configs` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
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
  `id_admin` int(10) UNSIGNED NULL,
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
(1, 1, 'Products/19-800x804.jpg', '2020-07-24 02:58:57', '2020-07-24 02:58:57'),
(2, 1, 'Products/102945155_1975409749258047_5691047304813554012_n.jpg', '2020-07-24 02:58:57', '2020-07-24 02:58:57'),
(3, 1, 'Products/0e3ae07a19b7e4e9bda6-800x805.jpg', '2020-07-24 02:58:57', '2020-07-24 02:58:57'),
(4, 2, 'Products/91567588_1906252292840460_8245594462445633536_n-800x793.jpg', '2020-07-24 03:05:47', '2020-07-24 03:05:47'),
(5, 2, 'Products/91351666_1906252326173790_5397366108166553600_n-800x802.jpg', '2020-07-24 03:05:47', '2020-07-24 03:05:47'),
(6, 2, 'Products/91323546_1906252249507131_5164058446651195392_n-800x523.jpg', '2020-07-24 03:05:47', '2020-07-24 03:05:47'),
(7, 3, 'Products/92244655_1913382935460729_4601580832258260992_n-800x796.jpg', '2020-07-24 03:15:32', '2020-07-24 03:15:32'),
(8, 3, 'Products/92243745_1913382982127391_4361766729081159680_n-800x803%20(1).jpg', '2020-07-24 03:15:32', '2020-07-24 03:15:32'),
(9, 3, 'Products/92243399_1913382948794061_8034960796574285824_n-800x633.jpg', '2020-07-24 03:15:32', '2020-07-24 03:15:32'),
(10, 4, 'Products/92244655_1913382935460729_4601580832258260992_n-800x796.jpg', '2020-07-25 08:16:04', '2020-07-25 08:16:04'),
(11, 4, 'Products/92243745_1913382982127391_4361766729081159680_n-800x803%20(1).jpg', '2020-07-25 08:16:05', '2020-07-25 08:16:05'),
(12, 4, 'Products/92243399_1913382948794061_8034960796574285824_n-800x633.jpg', '2020-07-25 08:16:05', '2020-07-25 08:16:05'),
(13, 5, 'Products/c%E1%BB%8F-ng%E1%BB%8Dt-2.jpg', '2020-07-25 08:22:54', '2020-07-25 08:22:54'),
(14, 5, 'Products/94385994_1197973197201364_5222489015697014784_n-800x797.jpg', '2020-07-25 08:22:54', '2020-07-25 08:22:54'),
(15, 5, 'Products/94362630_1934385620027127_322923528535932928_n-1-800x800.jpg', '2020-07-25 08:22:54', '2020-07-25 08:22:54'),
(16, 6, 'Products/c%E1%BB%8F-ng%E1%BB%8Dt-2.jpg', '2020-07-25 08:25:42', '2020-07-25 08:25:42'),
(17, 6, 'Products/94385994_1197973197201364_5222489015697014784_n-800x797.jpg', '2020-07-25 08:25:42', '2020-07-25 08:25:42'),
(18, 6, 'Products/94385994_1197973197201364_5222489015697014784_n-800x797%20(1).jpg', '2020-07-25 08:25:42', '2020-07-25 08:25:42'),
(21, 7, 'Products/2.jpg', '2020-07-26 02:58:06', '2020-07-26 02:58:06'),
(22, 7, 'Products/1e97074d9f3662683b27.jpg', '2020-07-26 02:58:06', '2020-07-26 02:58:06');

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
(80, '2020_07_16_170958_create_order_details_table', 1);

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
(1, 'Trà Ngọt Ngào Xuân Sắc', 'tra-ngot-ngao-xuan-sac', 'TNNXS508', 2, 'Products/13a86eb1957c6822316d-800x800.jpg', '<p>Tr&agrave; &ldquo; 𝓝𝓰𝓸̣𝓽 𝓝𝓰𝓪̀𝓸 𝓧𝓾𝓪̂𝓷 𝓢𝓪̆́𝓬 &rdquo; : đ&uacute;ng với t&ecirc;n gọi tr&agrave; 𝑐𝑜́ 𝑣𝑖̣ 𝑛𝑔𝑜̣𝑡 𝑛ℎ𝑢̛𝑛𝑔 𝑘ℎ𝑜̂𝑛𝑔 𝑏𝑒́𝑜, 𝑚𝑢̀𝑖 𝑡ℎ𝑜̛𝑚 𝑚𝑎́𝑡 𝑐𝑢̉𝑎 𝐻𝑜𝑎 𝐻𝑜̂̀𝑛𝑔, 𝑣𝑖̣ 𝑛𝑔𝑜̣𝑡 𝑐𝑢̉𝑎 𝐷𝑎̂𝑢 𝑇𝑎̆̀𝑚, Đ𝑢̛𝑜̛̀𝑛𝑔 𝑛𝑎̂𝑢, 𝑇𝑎́𝑜 Đ𝑜̉, 𝐿𝑜𝑛𝑔 𝑁ℎ𝑎̃𝑛, 𝐾𝑦̉ 𝑇𝑢̛̉ 𝑣𝑎̀ 𝑞𝑢𝑎̉ 𝑁ℎ𝑜 𝑘ℎ𝑜̂.</p>\r\n\r\n<p>𝑻𝒓𝒂̀ 𝒄𝒐́ 𝒕𝒂́𝒄 𝒅𝒖̣𝒏𝒈 𝒄𝒖𝒏𝒈 𝒄𝒂̂́𝒑 𝒗𝒊𝒕𝒂𝒎𝒊𝒏 𝒄𝒉𝒐 𝒄𝒐̛ 𝒕𝒉𝒆̂̉ 𝒎𝒐̂̃𝒊 𝒏𝒈𝒂̀𝒚; 𝒃𝒐̂̉ 𝒔𝒖𝒏𝒈 𝒗𝒊𝒕𝒂𝒎𝒊𝒏, 𝒂𝒙𝒊𝒕 𝒂𝒎𝒊𝒏, 𝒉𝒖𝒎𝒆𝒏𝒕𝒐𝒔, 𝒌𝒉𝒐𝒂́𝒏𝒈 𝒄𝒉𝒂̂́𝒕, 𝒓𝒆𝒔𝒗𝒆𝒓𝒂𝒕𝒓𝒐𝒍, 𝒂𝒏𝒕𝒉𝒐𝒄𝒚𝒂𝒏𝒊𝒏&hellip; 𝒈𝒊𝒖́𝒑 𝒄𝒉𝒐 𝒄𝒐̛ 𝒕𝒉𝒆̂̉ 𝒌𝒉𝒐̉𝒆 𝒎𝒂̣𝒏𝒉 𝒉𝒐̛𝒏, 𝒄𝒉𝒐̂́𝒏𝒈 𝒍𝒂̃𝒐 𝒉𝒐́𝒂, 𝒍𝒂̀𝒎 𝒎𝒐̛̀ 𝒗𝒆̂́𝒕 𝒏𝒉𝒂̆𝒏.</p>\r\n\r\n<p>Tr&agrave; 𝓝𝓰𝓸̣𝓽 𝓝𝓰𝓪̀𝓸 𝓧𝓾𝓪̂𝓷 𝓢𝓪̆́𝓬 l&agrave; sự kết hợp của 8 loại nguy&ecirc;n liệu: Đường n&acirc;u, Gừng Gi&agrave;, D&acirc;u Tằm, Kỷ Tử, T&aacute;o đỏ, Hồng H&agrave;n, Long nh&atilde;n, quả nho kh&ocirc;.</p>\r\n\r\n<p>&nbsp;𝑲𝒚̉ 𝑻𝒖̛̉ : C&acirc;u kỷ tử được biết đến như l&agrave; c&acirc;y k&eacute;o d&agrave;i tuổi thọ từ thời cổ đại. Trong thời Chiến Quốc, truyền thuyết về c&acirc;y kỷ tử c&oacute; thể k&eacute;o d&agrave;i tuổi thọ, dưỡng nhan được lan truyền. Truyền thuyết thời Bắc Tống, một vị đại nh&acirc;n được lệnh rời Bắc Kinh đi c&ocirc;ng vụ đến Tứ Xuy&ecirc;n. Tr&ecirc;n đường đi, &ocirc;ng ta thấy một c&ocirc; g&aacute;i dung nhan đoan trang, m&aacute;i t&oacute;c mượt m&agrave;, chừng 17 tuổi. Đại nh&acirc;n t&ograve; m&ograve; hỏi: &ldquo;Năm nay n&agrave;ng bao nhi&ecirc;u tuổi?&rdquo;. C&ocirc; g&aacute;i trả lời: &ldquo;Năm nay t&ocirc;i 372 tuổi!&rdquo;. Sau khi nghe, đại nh&acirc;n ngạc nhi&ecirc;n hơn v&agrave; hỏi: &ldquo;L&agrave;m thế n&agrave;o để n&agrave;ng c&oacute; được tuổi thọ?&rdquo;. C&ocirc; g&aacute;i n&oacute;i: &ldquo;T&ocirc;i kh&ocirc;ng c&oacute; phương ph&aacute;p b&iacute; ẩn n&agrave;o. T&ocirc;i chỉ ăn quả c&acirc;u kỷ tử thường xuy&ecirc;n trong năm th&ocirc;i&rdquo;.</p>\r\n\r\n<p>C&ocirc;ng dụng phải kể đến như:</p>\r\n\r\n<p>+ Tăng cường hệ miễn dịch</p>\r\n\r\n<p>+ Chống l&atilde;o h&oacute;a, dưỡng nhan</p>\r\n\r\n<p>+ Bảo vệ tế b&agrave;o gan</p>\r\n\r\n<p>+ Cải thiện thị lực, kh&ocirc; mắt, mờ mắt</p>\r\n\r\n<p>+ Th&uacute;c đẩy chức năng t&aacute;i tạo m&aacute;u</p>\r\n\r\n<p>&nbsp;Đ𝘂̛𝗼̛̀𝗻𝗴 𝗡𝗮̂𝘂 đ&atilde; được xem l&agrave; một vị thuốc c&oacute; t&aacute;c dụng bổ huyết v&agrave; phục hồi sức khỏe tuyệt vời. Ngo&agrave;i t&aacute;c dụng c&oacute; t&aacute;c động tốt đến cơ thể th&igrave; tr&agrave; đường đen c&ograve;n c&oacute; t&aacute;c dụng l&agrave;m đẹp, do đường đen chứa nhiều kho&aacute;ng chất v&agrave; vitamin n&ecirc;n gi&uacute;p cho l&agrave;n da trở n&ecirc;n mịn m&agrave;ng, giảm c&aacute;c v&ugrave;ng da sẫm m&agrave;u do phơi nắng. Ngo&agrave;i ra đường đen c&ograve;n c&oacute; t&aacute;c dụng điều ho&agrave; kinh nguyệt tốt cho phụ nữ.</p>\r\n\r\n<p>&nbsp;𝗗𝗮̂𝘂 𝘁𝗮̆̀𝗺: Quả d&acirc;u tằm ( tang thầm) c&oacute; vị ngọt, t&iacute;nh b&igrave;nh, l&agrave; một vị thuốc qu&yacute; c&oacute; t&aacute;c dụng bồi bổ sức khỏe, hỗ trợ điều trị mất ngủ, bổ thận tr&aacute;ng dương, gi&uacute;p s&aacute;ng mắt, tăng cường ti&ecirc;u h&oacute;a, gi&uacute;p đen t&oacute;c.</p>\r\n\r\n<p>&nbsp;𝑻𝒂́𝒐 Đ𝒐̉ 𝐓𝐚̂𝐧 𝐂𝐮̛𝐨̛𝐧𝐠 C&aacute;c l&aacute;t t&aacute;o được cắt từ t&aacute;o T&acirc;n Cương Ruomei; Da mỏng , ngon, d&agrave;y thịt, v&agrave; c&oacute; tiếng l&agrave; &ldquo;thuốc vitamin tự nhi&ecirc;n&rdquo;, l&agrave;m dịu dạ d&agrave;y, phục hồi sức khoẻ sau ốm, gi&agrave;u phốt pho v&agrave; sắt gi&uacute;p lưu th&ocirc;ng m&aacute;u, tăng cường hệ thống miễn dịch, ức chế sự ph&aacute;t triển của c&aacute;c tế b&agrave;o khối u ung thư v&agrave; c&oacute; thể g&oacute;p phần chống ung thư, gi&uacute;p xương chắc khỏe.</p>\r\n\r\n<p>&nbsp;𝐇𝐨𝐚 𝐇𝐨̂̀𝐧𝐠 𝐇𝐚̀𝐧 𝐐𝐮𝐨̂́𝐜 : Gi&agrave;u vitamin, tốt cho tim mạch, đẹp sắc, dưỡng nhan, điều h&ograve;a kh&iacute; huyết, hỗ trợ hệ ti&ecirc;u h&oacute;a, gi&uacute;p tăng cường hệ miễn dịch</p>\r\n\r\n<p>&ndash; 𝑳𝒐𝒏𝒈 𝑵𝒉𝒂̃𝒏: Tăng sự th&egrave;m ăn, tốt cho hệ ti&ecirc;u h&oacute;a, cải thiện t&aacute;o b&oacute;n, được d&ugrave;ng cho c&aacute;c trường hợp lo &acirc;u, mất ngủ, ngủ m&ecirc;, giảm tr&iacute; nhớ, qu&ecirc;n lẫn, loạn nhịp tim, thiếu m&aacute;u.</p>\r\n\r\n<p>&nbsp;𝑯𝒖̛𝒐̛́𝒏𝒈 𝒅𝒂̂̃𝒏 𝒔𝒖̛̉ 𝒅𝒖̣𝒏𝒈:</p>\r\n\r\n<p>&ndash; Uống n&oacute;ng: Tr&aacute;ng b&igrave;nh/ cốc v&agrave; tr&agrave; bằng nước đun s&ocirc;i trong 30s &ndash; 1 ph&uacute;t sau đ&oacute; gạn bỏ nước. Th&ecirc;m 300ml nước s&ocirc;i v&agrave; đợi khoảng 3-5 ph&uacute;t cho tr&agrave; ngậm nước l&agrave; c&oacute; thể d&ugrave;ng được.</p>\r\n\r\n<p>&ndash; Uống lạnh: Th&ecirc;m đ&aacute; v&agrave; thưởng thức.</p>\r\n\r\n<p>&ndash; Th&ecirc;m đường hoặc mật ong t&ugrave;y khẩu vị mỗi người.</p>\r\n\r\n<p>&ndash; Mỗi ng&agrave;y 1-2 g&oacute;i, c&oacute; thể th&ecirc;m nước 3 &ndash; 5 lần cho đến khi tr&agrave; nhạt.</p>\r\n\r\n<p>&ndash; Sản phẩm được đ&oacute;ng th&agrave;nh c&aacute;c g&oacute;i nhỏ, rất tiện lợi để mang theo b&ecirc;n m&igrave;nh khi đi l&agrave;m, đi chơi..</p>', NULL, NULL, '𝑻𝒓𝒂̀ 𝒄𝒐́ 𝒕𝒂́𝒄 𝒅𝒖̣𝒏𝒈 𝒄𝒖𝒏𝒈 𝒄𝒂̂́𝒑 𝒗𝒊𝒕𝒂𝒎𝒊𝒏 𝒄𝒉𝒐 𝒄𝒐̛ 𝒕𝒉𝒆̂̉ 𝒎𝒐̂̃𝒊 𝒏𝒈𝒂̀𝒚; 𝒃𝒐̂̉ 𝒔𝒖𝒏𝒈 𝒗𝒊𝒕𝒂𝒎𝒊𝒏, 𝒂𝒙𝒊𝒕 𝒂𝒎𝒊𝒏, 𝒉𝒖𝒎𝒆𝒏𝒕𝒐𝒔, 𝒌𝒉𝒐𝒂́𝒏𝒈 𝒄𝒉𝒂̂́𝒕, 𝒓𝒆𝒔𝒗𝒆𝒓𝒂𝒕𝒓𝒐𝒍, 𝒂𝒏𝒕𝒉𝒐𝒄𝒚𝒂𝒏𝒊𝒏… 𝒈𝒊𝒖́𝒑 𝒄𝒉𝒐 𝒄𝒐̛ 𝒕𝒉𝒆̂̉ 𝒌𝒉𝒐̉𝒆 𝒎𝒂̣𝒏𝒉 𝒉𝒐̛𝒏, 𝒄𝒉𝒐̂́𝒏𝒈 𝒍𝒂̃𝒐 𝒉𝒐́𝒂, 𝒍𝒂̀𝒎 𝒎𝒐̛̀ 𝒗𝒆̂́𝒕 𝒏𝒉𝒂̆𝒏.', 1, 1, '2020-07-24 02:58:56', '2020-07-24 03:04:07'),
(2, 'Trà Mộc Dưỡng', 'tra-moc-duong', 'TMD549', 2, 'Products/91007471_1906252259507130_4249340844802310144_n-800x794.jpg', '<p>Tr&agrave; Mộc Dưỡng&nbsp;</p>\r\n\r\n<p>Tr&agrave; đem lại hương vị ngọt c&oacute; m&agrave; lại kh&ocirc;ng ng&aacute;n.<br />\r\nĐ&uacute;ng như t&ecirc;n gọi, Tr&agrave; Mộc Dưỡng kh&ocirc;ng chỉ l&agrave; tr&agrave; m&agrave; c&ograve;n được coi l&agrave; dược tr&agrave; v&igrave; n&oacute; kh&ocirc;ng chỉ l&agrave; thức uống thơm ngon m&agrave; c&ograve;n c&oacute; t&aacute;c dụng l&agrave;m đẹp dung nhan, đẹp da, s&aacute;ng mắt, bổ huyết, an thần&hellip; chăm s&oacute;c sắc đẹp của m&igrave;nh từ b&ecirc;n trong.&nbsp;</p>\r\n\r\n<p>&nbsp;Tr&agrave; Mộc Dưỡng được kết hợp từ C&uacute;c v&agrave;ng, Long nh&atilde;n, Hồng h&agrave;n, T&aacute;o đỏ, Kim quất, Kỷ tử, Nho, Đường Ph&egrave;n.</p>\r\n\r\n<p><img alt=\"\" src=\"https://forgetmenotmart.com/wp-content/uploads/2020/04/91351666_1906252326173790_5397366108166553600_n-599x600.jpg\" style=\"height:600px; width:599px\" /><br />\r\n&ndash; C&uacute;c v&agrave;ng: An thần, trị mất ngủ, giảm stress, ăn uống ngon miệng, giải nhiệt, detox thanh lọc cơ thể, ph&ograve;ng ngừa ung thư.<br />\r\n&ndash; Kỷ tử: giải độc gan v&agrave; thận, l&agrave;m đẹp da, tăng cường tuần ho&agrave;n n&atilde;o v&agrave; chống l&atilde;o ho&aacute;, giữ g&igrave;n tuổi thanh xu&acirc;n cho ph&aacute;i đẹp, giữ g&igrave;n v&oacute;c d&aacute;ng v&agrave; c&acirc;n nặng, chữa can thận &acirc;m suy, chữa yếu lưng mỏi gối, chữa đầu cho&aacute;ng mắt hoa, chữa ho khan, mắt nh&igrave;n kh&ocirc;ng r&otilde;.<br />\r\n&ndash; Hoa hồng H&agrave;n Quốc: Đẹp da, trị mụn, chống l&atilde;o h&oacute;a v&agrave; kiềm chế qu&aacute; tr&igrave;nh l&atilde;o h&oacute;a giảm lượng chất b&eacute;o &ndash; nguy cơ b&eacute;o ph&igrave;, giảm cholesterol trong cơ thể, Bổ sung nhiều vitamin A, B1, C, D, chất xơ, mangan, sắt, mangie v&agrave; đồng, tốt cho đường huyết, giảm mỡ m&aacute;u, chống t&iacute;ch đọng mỡ ở tế b&agrave;o gan.<br />\r\n&ndash; T&aacute;o đỏ: Tốt cho đường huyết, giảm mỡ m&aacute;u, chống t&iacute;ch đọng mỡ ở tế b&agrave;o ga, chữa c&aacute;c bệnh về đường ti&ecirc;u h&oacute;a: đau dạ d&agrave;y, n&ocirc;n mửa, ch&aacute;n ăn, cung cấp năng lượng cho cơ thể.<br />\r\n&ndash; Kim quất: k&iacute;ch th&iacute;ch ti&ecirc;u ho&aacute;, th&ocirc;ng phế kh&iacute;, chống n&ocirc;n, nấc, ti&ecirc;u hạch&hellip; , chữa c&aacute;c bệnh về mắt, vi&ecirc;m họng, chữa nấc, nghẹn, chữa tinh ho&agrave;n sưng to sa xuống dưới, c&oacute; hạch ở cổ, giảm đau bụng hoặc sa dạ con sau sinh, đau dạ d&agrave;y, n&ocirc;n mửa, ch&aacute;n ăn..<br />\r\nDo tr&agrave; được kết hợp từ c&aacute;c loại thảo mộc thi&ecirc;n nhi&ecirc;n n&ecirc;n kh&ocirc;ng c&oacute; cafein, ngược lại c&ograve;n gi&uacute;p an thần giảm stress n&ecirc;n anh chị ho&agrave;n to&agrave;n c&oacute; thể d&ugrave;ng buổi tối được lu&ocirc;n nh&eacute;.</p>\r\n\r\n<p><img alt=\"\" src=\"https://forgetmenotmart.com/wp-content/uploads/2020/04/91323546_1906252249507131_5164058446651195392_n-800x523.jpg\" style=\"height:523px; width:800px\" /><br />\r\n&nbsp;Hướng dẫn sử dụng:<br />\r\n&ndash; Uống n&oacute;ng: Tr&aacute;ng b&igrave;nh/ cốc v&agrave; tr&agrave; bằng nước đun s&ocirc;i trong 30s &ndash; 1 ph&uacute;t sau đ&oacute; gạn bỏ nước. Th&ecirc;m 300ml nước s&ocirc;i v&agrave; đợi khoảng 3-5 ph&uacute;t cho tr&agrave; ngậm nước l&agrave; c&oacute; thể d&ugrave;ng được.<br />\r\n&ndash; Uống lạnh: Th&ecirc;m đ&aacute; v&agrave; thưởng thức.<br />\r\n&ndash; Th&ecirc;m đường hoặc mật ong t&ugrave;y khẩu vị mỗi người.<br />\r\n&ndash; Mỗi ng&agrave;y 1-2 g&oacute;i, c&oacute; thể th&ecirc;m nước 3 &ndash; 5 lần cho đến khi tr&agrave; nhạt.<br />\r\n&ndash; Sản phẩm được đ&oacute;ng th&agrave;nh c&aacute;c g&oacute;i nhỏ, rất tiện lợi để mang theo b&ecirc;n m&igrave;nh khi đi l&agrave;m, đi chơi.. &nbsp;&nbsp;<img alt=\"\" src=\"https://forgetmenotmart.com/wp-content/uploads/2020/04/91567588_1906252292840460_8245594462445633536_n-605x600.jpg\" style=\"height:600px; width:605px\" /></p>', NULL, NULL, 'Trà đem lại hương vị ngọt có mà lại không ngán.\r\nĐúng như tên gọi, Trà Mộc Dưỡng không chỉ là trà mà còn được coi là dược trà vì nó không chỉ là thức uống thơm ngon mà còn có tác dụng làm đẹp dung nhan, đẹp da, sáng mắt, bổ huyết, an thần… chăm sóc sắc đẹp của mình từ bên trong.', 1, 1, '2020-07-24 03:05:47', '2020-07-24 03:05:47'),
(3, 'Trà Ngũ Vị', 'tra-ngu-vi', 'TNV562', 2, 'Products/92020660_1913383002127389_8961377008869179392_n-800x802.jpg', '<p>𝙏𝙧𝙖̀ 𝙉𝙜𝙪̃ 𝙑𝙞̣&nbsp;</p>\r\n\r\n<p>Tr&agrave; vị ngọt thanh, hương thơm nhẹ nh&agrave;ng của c&uacute;c, hồng sẽ đem đến dư vị cực k&igrave; lắng đọng cho qu&yacute; vị n&agrave;o đam m&ecirc; kh&aacute;m ph&aacute; những vị tr&agrave; mới lạ.&nbsp;&nbsp;Nh&acirc;m nhi từng ngụm nhỏ cảm nhận hương thơm dịu d&agrave;ng lan tỏa cộng hưởng vị ngọt thanh khiết luyến lưu m&atilde;i kh&ocirc;ng th&ocirc;i.</p>\r\n\r\n<p>Tr&agrave; gi&uacute;p thanh lọc cơ thể, giải nhiệt, hỗ trợ điều trị t&aacute;o b&oacute;n v&agrave; thải độc tốc, gảm stress sau những ng&agrave;y l&agrave;m việc căng thẳng, m&ugrave;i thơm dễ chịu cực kỳ thoải m&aacute;i, l&agrave;m đẹp da, bổ huyết, dưỡng nhan, gi&uacute;p da hồng h&agrave;o s&aacute;ng khỏ, gi&uacute;p giảm mụn, m&aacute;t trong, tốt cho dạ d&agrave;y v&agrave; hỗ trợ hệ ti&ecirc;u h&oacute;a, cung cấp năng lượng cho cơ thể.&nbsp;</p>\r\n\r\n<p>𝙏𝙧𝙖̀ 𝙉𝙜𝙪̃ 𝙑𝙞̣ l&agrave; sự kết hợp của 5 loại tr&agrave; : 𝑇𝑟𝑎̀ 𝑇𝑎́𝑜 đ𝑜̉, 𝐻𝑜̂̀𝑛𝑔 ℎ𝑎̀𝑛, 𝐿𝑜𝑛𝑔 𝑛ℎ𝑎̃𝑛, 𝐾𝑦̉ 𝑡𝑢̛̉, 𝑁𝑢̣ 𝐶𝑢́𝑐.</p>\r\n\r\n<p><img alt=\"\" src=\"https://forgetmenotmart.com/wp-content/uploads/2020/04/94362630_1934385620027127_322923528535932928_n-1-600x600.jpg\" style=\"height:600px; width:600px\" /></p>\r\n\r\n<p>&ndash;&nbsp;&nbsp;Tr&agrave; hoa C&uacute;c: gi&uacute;p đầu &oacute;c tỉnh t&aacute;o, hai mắt tinh tường, c&oacute; t&aacute;c dụng đặc biệt tốt với những người bị kh&ocirc; mắt do can hoả vượng, lao động thị lực qu&aacute; nhiều; ngo&agrave;i ra những người thường cảm thấy kh&oacute; chịu ở mắt do l&agrave;m việc văn ph&ograve;ng thường xuy&ecirc;n, uống tr&agrave; hoa C&uacute;c sẽ c&oacute; nhiều lợi &iacute;ch tốt. Mắt kh&ocirc;ng bị kh&ocirc; nữa, kh&ocirc;ng cận thị nữa, giống như người ta vẫn n&oacute;i l&agrave; s&aacute;ng mắt chắc răng vậy.</p>\r\n\r\n<p>&ndash;&nbsp;&nbsp;T&aacute;o đỏ: dưỡng gan b&agrave;i trừ độc tố.Thực nghiệm chứng minh, mỗi ng&agrave;y cho người c&oacute; chức năng gan k&eacute;m uống nước t&aacute;o đỏ, cứ uống li&ecirc;n tục trong 1 tuần sẽ gi&uacute;p &iacute;ch tăng protein huyết thanh một c&aacute;ch nhanh ch&oacute;ng, từ đ&oacute; đạt được t&aacute;c dụng bảo vệ gan, b&agrave;i trừ độc tố.</p>\r\n\r\n<p>&ndash;&nbsp;&nbsp;Kỷ tử: c&oacute; vị ngọt dịu c&oacute; t&aacute;c dụng bồi bổ tinh kh&iacute;, hỗ trợ điều trị bệnh tiểu đường, gi&uacute;p l&agrave;m tăng thị lực của mắt v&agrave; chứng t&ecirc; mỏi ch&acirc;n tay ở người gi&agrave;, trị chứng t&aacute;o b&oacute;n, chống oxy h&oacute;a v&agrave; l&agrave;m chậm qu&aacute; tr&igrave;nh l&atilde;o h&oacute;a.</p>\r\n\r\n<p>&ndash;&nbsp;Hoa Hồng H&agrave;n Quốc: kh&ocirc;ng chỉ c&oacute; t&aacute;c dụng trang tr&iacute; m&agrave; c&ograve;n c&oacute; nhiều c&ocirc;ng dụng rất tốt cho sức khỏe của bạn. Với nhiều vitamin C v&agrave; kho&aacute;ng chất, tr&agrave; hoa hồng ch&iacute;nh l&agrave; loại thảo dược c&oacute; thể mang lại cho bạn nhiều lợi &iacute;ch từ da đến t&oacute;c v&agrave; c&aacute;c bộ phận kh&aacute;c b&ecirc;n trong cơ thể.</p>\r\n\r\n<p>&ndash;&nbsp;&nbsp;Long nh&atilde;n l&agrave; một trong những vị thuốc c&oacute; t&aacute;c dụng dưỡng huyết, an thần, &iacute;ch tr&iacute;, bổ n&atilde;o long nh&atilde;n c&oacute; t&aacute;c dụng bổ t&acirc;m tỳ, an thần, lợi kh&iacute;, dưỡng huyết. tốt cho n&atilde;o bộ, hỗ trợ suy giảm tr&iacute; nhớ, chữa hay qu&ecirc;n, rối loạn giấc ngủ, lo &acirc;u, thiếu m&aacute;u, mệt mỏi, suy nhược cơ thể, k&eacute;o d&agrave;i tuổi thọ.</p>\r\n\r\n<p>&nbsp;Hướng dẫn sử dụng</p>\r\n\r\n<p>&ndash; Uống n&oacute;ng: Tr&aacute;ng b&igrave;nh/ cốc v&agrave; tr&agrave; bằng nước đun s&ocirc;i trong 30s &ndash; 1 ph&uacute;t sau đ&oacute; gạn bỏ nước. Th&ecirc;m 300ml nước s&ocirc;i v&agrave; đợi khoảng 3-5 ph&uacute;t cho tr&agrave; ngậm nước l&agrave; c&oacute; thể d&ugrave;ng được.</p>\r\n\r\n<p>&ndash; Uống lạnh: Th&ecirc;m đ&aacute; v&agrave; thưởng thức.</p>\r\n\r\n<p>&ndash; Th&ecirc;m đường hoặc mật ong t&ugrave;y khẩu vị mỗi người.</p>\r\n\r\n<p>&ndash; Mỗi ng&agrave;y 1-2 g&oacute;i, c&oacute; thể th&ecirc;m nước 3 &ndash; 5 lần cho đến khi tr&agrave; nhạt.</p>\r\n\r\n<p>&ndash; Sản phẩm được đ&oacute;ng th&agrave;nh c&aacute;c g&oacute;i nhỏ, rất tiện lợi để mang theo b&ecirc;n mnh khi đi l&agrave;m, đi chơi..</p>', NULL, NULL, 'Trà vị ngọt thanh, hương thơm nhẹ nhàng của cúc, hồng sẽ đem đến dư vị cực kì lắng đọng cho quý vị nào đam mê khám phá những vị trà mới lạ. 🍵☕️ Nhâm nhi từng ngụm nhỏ cảm nhận hương thơm dịu dàng lan tỏa cộng hưởng vị ngọt thanh khiết luyến lưu mãi không thôi.\r\n \r\nTrà giúp thanh lọc cơ thể, giải nhiệt, hỗ trợ điều trị táo bón và thải độc tốc, gảm stress sau những ngày làm việc căng thẳng, mùi thơm dễ chịu cực kỳ thoải mái, làm đẹp da, bổ huyết, dưỡng nhan, giúp da hồng hào sáng khỏ, giúp giảm mụn, mát trong, tốt cho dạ dày và hỗ trợ hệ tiêu hóa, cung cấp năng lượng cho cơ thể.', 1, 1, '2020-07-24 03:15:32', '2020-07-24 03:15:32'),
(4, 'Thanh Can Trà', 'thanh-can-tra', 'TCT827', 2, 'Products/92020660_1913383002127389_8961377008869179392_n-800x802.jpg', '<p>Tr&agrave; c&oacute; vị ngọt dịu của Kỷ Tử v&agrave; đường ph&egrave;n, c&oacute; m&ugrave;i thơm m&aacute;t của Bạc H&agrave;, Kim Ng&acirc;n, Hoa C&uacute;c, c&oacute; vị hơi cay the của Bạc H&agrave;, ch&uacute;t ngọt của Kim Quất, Bồ C&ocirc;ng Anh, Hương vị thanh của &Ocirc; Long.</p>\r\n\r\n<p><img alt=\"\" src=\"https://forgetmenotmart.com/wp-content/uploads/2020/04/92020660_1913383002127389_8961377008869179392_n-599x600.jpg\" style=\"height:600px; width:599px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://forgetmenotmart.com/wp-content/uploads/2020/04/92243399_1913382948794061_8034960796574285824_n-758x600.jpg\" style=\"height:600px; width:758px\" /></p>\r\n\r\n<p>&nbsp;Tr&agrave; c&oacute; t&aacute;c dụng thanh nhiệt giải độc, hạ hỏa, m&aacute;t phổi, giảm mụn nhọt, đẹp da,hơi thở thơm tho, tinh thần sảng kho&aacute;i, tăng sức đề kh&aacute;ng cho cơ thể.<br />\r\n&ndash;&nbsp;Hoa C&uacute;c V&agrave;ng : thanh nhiệt giải độc, m&aacute;t&nbsp;gan, hạ hỏa, s&aacute;ng mắt, giảm mụn nhọt, đẹp da, tăng cường miễn dịch, chống l&atilde;o h&oacute;a, hỗ trợ ti&ecirc;u h&oacute;a, giảm đau đầu, ch&oacute;ng mặt, lo &acirc;u, căng thẳng, cải thiện chất lượng giấc ngủ.<br />\r\n&ndash;&nbsp;Bạc H&agrave; c&oacute; m&ugrave;i thơm, t&iacute;nh m&aacute;t, c&oacute; t&aacute;c dụng thanh lọc phổi, k&iacute;ch th&iacute;ch dạ d&agrave;y, hỗ trợ ti&ecirc;u h&oacute;a, chữa dị ứng, trầm cảm, bảo vệ răng miệng, tăng cường hệ thống miễn dịch, giảm c&acirc;n, giảm stress, l&agrave;m đẹp da&hellip;<br />\r\n&ndash;&nbsp;Kỷ tử: bổ thận, &iacute;ch tinh, dưỡng huyết, minh mục, nhuận phế, c&oacute; thể ph&ograve;ng chữa c&aacute;c chứng bệnh như suy nhược cơ thể sau bệnh nặng, đầu cho&aacute;ng, mắt hoa, nh&igrave;n mờ, tai &ugrave;, tai điếc, lưng đau, gối mỏi, di tinh, liệt dương&hellip;<br />\r\n&ndash;&nbsp;&nbsp;&Ocirc; Long: Tăng sự tỉnh t&aacute;o, Ngừa lo&atilde;ng xương v&agrave; gi&uacute;p xương chắc khoẻ, gi&uacute;p bạn đốt ch&aacute;y mỡ thừa nhanh hơn bằng c&aacute;ch tăng cường sự trao đổi chất, ngừa s&acirc;u răng, bảo vệ răng khỏi axit tiết ra.<br />\r\n&ndash;&nbsp;&nbsp;Kim quất: Cung cấp vitamin C, A, B2, chất xơ, mangan, sắt, magi&ecirc; v&agrave; đồng, chữa ho do phong h&agrave;n, chữa c&aacute;c bệnh đường ti&ecirc;u ho&aacute;: đau dạ d&agrave;y, n&ocirc;n mửa, ch&aacute;n ăn.., điều h&ograve;a, cải thiện chức năng gan, k&iacute;ch th&iacute;ch ti&ecirc;u ho&aacute;, th&ocirc;ng phế kh&iacute;, chống n&ocirc;n, nấc, ti&ecirc;u hạch&hellip; , chữa c&aacute;c bệnh về mắt, vi&ecirc;m họng, chữa nấc, nghẹn, chữa tinh ho&agrave;n sưng to sa xuống dưới, c&oacute; hạch ở c, giảm đau bụng hoặc sa dạ con sau sinh&hellip;<br />\r\n&ndash;&nbsp;&nbsp;Hoa kim ng&acirc;n: kh&aacute;ng khuẩn, kh&aacute;ng vi&ecirc;m, kh&aacute;ng virus, Ti&ecirc;u mụn nhọn, dị ứng, mẩn ngứa. Giải cảm c&uacute;m, trừ vi&ecirc;m họng, đau họng, tăng cường chuyển h&oacute;a chất b&eacute;o, gi&uacute;p giảm c&acirc;n hiệu quả. Th&uacute;c đẩy qu&aacute; tr&igrave;nh trao đổi chất, l&agrave;m chậm sự l&atilde;o h&oacute;a, t&agrave;n nhang<br />\r\n&ndash;&nbsp;&nbsp;Bồ C&ocirc;ng Anh: Giải độc, chữa c&aacute;c bệnh mụn nhọt, lở lo&eacute;t, chữa vi&ecirc;m dạ d&agrave;y &ndash; t&aacute; tr&agrave;ng, chữa vi&ecirc;m gan, tốt cho ti&ecirc;u h&oacute;a.</p>\r\n\r\n<p><img alt=\"\" src=\"https://forgetmenotmart.com/wp-content/uploads/2020/04/92244655_1913382935460729_4601580832258260992_n-603x600.jpg\" style=\"height:600px; width:603px\" /></p>\r\n\r\n<p>Hướng dẫn sử dụng:</p>\r\n\r\n<p>&ndash; Uống n&oacute;ng: Tr&aacute;ng b&igrave;nh/ cốc v&agrave; tr&agrave; bằng nước đun s&ocirc;i trong 30s &ndash; 1 ph&uacute;t sau đ&oacute; gạn bỏ nước. Th&ecirc;m 300ml nước s&ocirc;i v&agrave; đợi khoảng 3-5 ph&uacute;t cho tr&agrave; ngậm nước l&agrave; c&oacute; thể d&ugrave;ng được.<br />\r\n&ndash; Uống lạnh: Th&ecirc;m đ&aacute; v&agrave; thưởng thức.<br />\r\n&ndash; Th&ecirc;m đường hoặc mật ong t&ugrave;y khẩu vị mỗi người.<br />\r\n&ndash; Mỗi ng&agrave;y 1-2 g&oacute;i, c&oacute; thể th&ecirc;m nước 3 &ndash; 5 lần cho đến khi tr&agrave; nhạt.<br />\r\n&ndash; Sản phẩm được đ&oacute;ng th&agrave;nh c&aacute;c g&oacute;i nhỏ, rất tiện lợi để mang theo b&ecirc;n m&igrave;nh khi đi l&agrave;m, đi chơi.</p>\r\n\r\n<p><img alt=\"\" src=\"https://forgetmenotmart.com/wp-content/uploads/2020/04/92243745_1913382982127391_4361766729081159680_n-598x600.jpg\" style=\"height:600px; width:598px\" /></p>', NULL, NULL, 'Trà có vị ngọt dịu của Kỷ Tử và đường phèn, có mùi thơm mát của Bạc Hà, Kim Ngân, Hoa Cúc, có vị hơi cay the của Bạc Hà, chút ngọt của Kim Quất, Bồ Công Anh, Hương vị thanh của Ô Long.\r\n\r\n🎁 Trà có tác dụng thanh nhiệt giải độc, hạ hỏa, mát phổi, giảm mụn nhọt, đẹp da,hơi thở thơm tho, tinh thần sảng khoái, tăng sức đề kháng cho cơ thể.', 1, 1, '2020-07-25 08:16:04', '2020-07-25 08:16:04'),
(5, 'Trà Dưỡng Thanh', 'tra-duong-thanh', 'TDT219', 2, 'Products/94362630_1934385620027127_322923528535932928_n-1-800x800.jpg', '<p>𝑇𝑟𝑎̀ 𝐷𝑢̛𝑜̛̃𝑛𝑔 𝑇ℎ𝑎𝑛ℎ l&agrave; sự kết hợp ho&agrave;n hảo từ vị: 𝑡𝑢̛𝑜̛𝑖 𝑚𝑎́𝑡 𝑐𝑢̉𝑎 𝑡𝑟𝑎́𝑖 𝑙𝑒̂, 𝑏𝑢̀𝑖 𝑏𝑢̀𝑖 𝑛ℎ𝑎̂̀𝑦 𝑁ℎ𝑢̣𝑐 Đ𝑎̣𝑖 𝐻𝑎̉𝑖, 𝑛𝑔𝑜̣𝑡 𝑠𝑎̂𝑢 𝑙𝑎̆́𝑛𝑔 𝑐𝑢̉𝑎 𝑐𝑎𝑚 𝑡ℎ𝑎̉𝑜, 𝑡ℎ𝑜̛𝑚 𝑛𝑔𝑎́𝑡 𝑚𝑢̀𝑖 ℎ𝑜𝑎 𝑚𝑜̣̂𝑐 𝑚𝑦̃, 𝑑𝑖̣𝑢 𝑑𝑎̀𝑛𝑔 ℎ𝑜𝑎 𝑐𝑢́𝑐 𝑣𝑎̀𝑛𝑔 𝑣𝑎̀ 𝑡ℎ𝑎𝑛ℎ 𝑡ℎ𝑎𝑛ℎ ℎ𝑢̛𝑜̛𝑛𝑔 𝑘𝑖𝑚 𝑛𝑔𝑎̂𝑛 ℎ𝑜𝑎̀ 𝑡𝑟𝑜̣̂𝑛 𝑐𝑢̀𝑛𝑔 𝑡𝑟𝑢́𝑐 𝑑𝑖𝑒̣̂𝑝.</p>\r\n\r\n<p><img alt=\"\" src=\"https://forgetmenotmart.com/wp-content/uploads/2020/04/94385994_1197973197201364_5222489015697014784_n-603x600.jpg\" style=\"height:600px; width:603px\" /></p>\r\n\r\n<p><img alt=\"🤝\" src=\"https://s.w.org/images/core/emoji/12.0.0-1/svg/1f91d.svg\" />&nbsp;Tr&agrave; c&oacute; t&aacute;c dụng thanh nhiệt, giải độc, nhuận phế, lợi hầu, đẹp da, hỗ trợ ti&ecirc;u h&oacute;a, tăng cường miễn&nbsp;dịch, đặc biệt th&iacute;ch hợp cho những người hay phải l&agrave;m việc khuya, phải tiếp x&uacute;c với m&ocirc;i trường &ocirc; nhiễm, h&uacute;t thuốc, uống rượu, ca sỹ, gi&aacute;o vi&ecirc;n phải n&oacute;i nhiều l&agrave;m khản tiếng ,mất tiếng.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://forgetmenotmart.com/wp-content/uploads/2020/04/tra-duong-thanh-36778-800x503.jpg\" style=\"height:503px; width:800px\" /></p>\r\n\r\n<p>Tr&agrave; được kết hợp từ quả 𝑁ℎ𝑢̣𝑐 Đ𝑎̣𝑖 𝐻𝑎̉𝑖, 𝐶𝑢́𝑐 𝑣𝑎̀𝑛𝑔, 𝐻𝑜𝑎 𝑀𝑜̣̂𝑐 𝑀𝑦̃, 𝐶𝑎𝑚 𝑇ℎ𝑎̉𝑜, 𝑇𝑟𝑢́𝑐 𝐷𝑖𝑒̣̂𝑝, 𝐿𝑒̂.<br />\r\n&ndash;&nbsp;<img alt=\"🌾\" src=\"https://s.w.org/images/core/emoji/12.0.0-1/svg/1f33e.svg\" />𝑁ℎ𝑢̣𝑐 Đ𝑎̣𝑖 𝐻𝑎̉𝑖 (Qủa đười ươi) : Khi ng&acirc;m, quả sẽ nở ra chất nh&agrave;y nh&agrave;y ( giống hạt &eacute;) kh&aacute;ch c&oacute; thể ăn được lu&ocirc;n ạ. C&ocirc;ng dụng phải kể đến như: gi&uacute;p điều trị chảy m&aacute;u cam, nhuận phế, lợi hầu. điều trị cổ họng sưng đau, khản tiếng, mất tiếng, vi&ecirc;m họng, vi&ecirc;m amidan cấp t&iacute;nh, hạ &aacute;p, lợi tiểu, giảm đau<br />\r\n&ndash;&nbsp;<img alt=\"🌾\" src=\"https://s.w.org/images/core/emoji/12.0.0-1/svg/1f33e.svg\" />𝘏𝘰𝘢 𝘔𝘰̣̂𝘤 𝘔𝘺̃: nhuận phế (l&agrave;m m&aacute;t phổi), h&oacute;a đ&agrave;m (l&agrave;m tan đ&agrave;m), chỉ kh&aacute;t (l&agrave;m hết kh&aacute;t nước). Tăng cường chức năng miễn dịch của cơ thể, gi&uacute;p giảm lipid m&aacute;u, đẹp da, chống oxy h&oacute;a, chống dị ứng.<br />\r\n&ndash;&nbsp;<img alt=\"🌾\" src=\"https://s.w.org/images/core/emoji/12.0.0-1/svg/1f33e.svg\" />𝘏𝘰𝘢 𝘬𝘪𝘮 𝘯𝘨𝘢̂𝘯: kh&aacute;ng khuẩn, kh&aacute;ng vi&ecirc;m, kh&aacute;ng virus, ti&ecirc;u mụn nhọn, dị ứng, mẩn ngứa. Giải cảm c&uacute;m, trừ vi&ecirc;m họng, đau họng; hạ cholesterol, tăng cường chuyển h&oacute;a chất b&eacute;o, gi&uacute;p giảm c&acirc;n hiệu quả; th&uacute;c đẩy qu&aacute; tr&igrave;nh trao đổi chất, l&agrave;m chậm sự l&atilde;o h&oacute;a, t&agrave;n nhang<br />\r\n&ndash;&nbsp;<img alt=\"🌾\" src=\"https://s.w.org/images/core/emoji/12.0.0-1/svg/1f33e.svg\" />𝐻𝑜𝑎 𝑐𝑢́𝑐 𝑣𝑎̀𝑛𝑔 : thanh nhiệt giải độc, hạ hỏa, s&aacute;ng mắt, giảm mụn nhọt, đẹp da. Tăng cường miễn dịch, giảm đau đầu, lo &acirc;u, căng thẳng, cải thiện chất lượng giấc ngủ.<br />\r\n&ndash;&nbsp;<img alt=\"🌾\" src=\"https://s.w.org/images/core/emoji/12.0.0-1/svg/1f33e.svg\" />𝘊𝘢𝘮 𝘵𝘩𝘢̉𝘰: bổ kh&iacute; huyết, mạnh g&acirc;n cốt, thanh nhiệt, giải độc, kh&aacute;ng vi&ecirc;m, chống dị ứng, chỉ kh&aacute;i h&oacute;a đờm, l&agrave;m chất tạo vị ngọt c&oacute; &iacute;ch cho người bị đ&aacute;i th&aacute;o đường&hellip;<br />\r\n&ndash;&nbsp;<img alt=\"🌾\" src=\"https://s.w.org/images/core/emoji/12.0.0-1/svg/1f33e.svg\" />𝘛𝘳𝘶́𝘤 𝘋𝘪𝘦̣̂𝘱: Th&agrave;nh phần trong tr&agrave; tr&uacute;c diệp rất giầu silic đi &ocirc; x&iacute;t, gi&uacute;p răng, t&oacute;c, m&oacute;ng, xương chắc khỏe, tăng độ đ&agrave;n hồi cho da, chống l&atilde;o h&oacute;a; Kh&aacute;ng vi&ecirc;m. Giảm đau. Chữa l&agrave;nh c&aacute;c vết thương, lo&eacute;t; Detox l&agrave;m sạch cơ thể. Nhuận gan, giải độc. GIẢM C&Acirc;N; Gi&agrave;u cali, gi&uacute;p ổn định v&agrave; hạ huyết &aacute;p cao; L&agrave; thực phẩm chống oxy h&oacute;a ph&ograve;ng ngừa v&agrave; điều trị bệnh UNG THƯ; Tốt cho tim mạch.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://forgetmenotmart.com/wp-content/uploads/2020/04/433c11326334996ac025-590x600.jpg\" style=\"height:600px; width:590px\" /></p>\r\n\r\n<p><br />\r\n<img alt=\"❌\" src=\"https://s.w.org/images/core/emoji/12.0.0-1/svg/274c.svg\" /><img alt=\"❌\" src=\"https://s.w.org/images/core/emoji/12.0.0-1/svg/274c.svg\" /><img alt=\"❌\" src=\"https://s.w.org/images/core/emoji/12.0.0-1/svg/274c.svg\" />𝗛𝘂̛𝗼̛́𝗻𝗴 𝗱𝗮̂̃𝗻 𝘀𝘂̛̉ 𝗱𝘂̣𝗻𝗴:</p>\r\n\r\n<p>&ndash; Uống n&oacute;ng: Tr&aacute;ng b&igrave;nh/ cốc v&agrave; tr&agrave; bằng nước đun s&ocirc;i trong 30s &ndash; 1 ph&uacute;t sau đ&oacute; gạn bỏ nước. Th&ecirc;m 300ml nước s&ocirc;i v&agrave; đợi khoảng 3-5 ph&uacute;t cho tr&agrave; ngậm nước l&agrave; c&oacute; thể d&ugrave;ng được.<br />\r\n&ndash; Uống lạnh: Th&ecirc;m đ&aacute; v&agrave; thưởng thức.<br />\r\n&ndash; Th&ecirc;m đường hoặc mật ong t&ugrave;y khẩu vị mỗi người.<br />\r\n&ndash; Mỗi ng&agrave;y 1-2 g&oacute;i, c&oacute; thể th&ecirc;m nước 3 &ndash; 5 lần cho đến khi tr&agrave; nhạt.<br />\r\n&ndash; Sản phẩm được đ&oacute;ng th&agrave;nh c&aacute;c g&oacute;i nhỏ, rất tiện lợi để mang theo b&ecirc;n m&igrave;nh khi đi l&agrave;m, đi chơi.</p>', NULL, NULL, '𝑇𝑟𝑎̀ 𝐷𝑢̛𝑜̛̃𝑛𝑔 𝑇ℎ𝑎𝑛ℎ là sự kết hợp hoàn hảo từ vị: 𝑡𝑢̛𝑜̛𝑖 𝑚𝑎́𝑡 𝑐𝑢̉𝑎 𝑡𝑟𝑎́𝑖 𝑙𝑒̂, 𝑏𝑢̀𝑖 𝑏𝑢̀𝑖 𝑛ℎ𝑎̂̀𝑦 𝑁ℎ𝑢̣𝑐 Đ𝑎̣𝑖 𝐻𝑎̉𝑖, 𝑛𝑔𝑜̣𝑡 𝑠𝑎̂𝑢 𝑙𝑎̆́𝑛𝑔 𝑐𝑢̉𝑎 𝑐𝑎𝑚 𝑡ℎ𝑎̉𝑜, 𝑡ℎ𝑜̛𝑚 𝑛𝑔𝑎́𝑡 𝑚𝑢̀𝑖 ℎ𝑜𝑎 𝑚𝑜̣̂𝑐 𝑚𝑦̃, 𝑑𝑖̣𝑢 𝑑𝑎̀𝑛𝑔 ℎ𝑜𝑎 𝑐𝑢́𝑐 𝑣𝑎̀𝑛𝑔 𝑣𝑎̀ 𝑡ℎ𝑎𝑛ℎ 𝑡ℎ𝑎𝑛ℎ ℎ𝑢̛𝑜̛𝑛𝑔 𝑘𝑖𝑚 𝑛𝑔𝑎̂𝑛 ℎ𝑜𝑎̀ 𝑡𝑟𝑜̣̂𝑛 𝑐𝑢̀𝑛𝑔 𝑡𝑟𝑢́𝑐 𝑑𝑖𝑒̣̂𝑝.\r\n🤝 Trà có tác dụng thanh nhiệt, giải độc, nhuận phế, lợi hầu, đẹp da, hỗ trợ tiêu hóa, tăng cường miễn dịch, đặc biệt thích hợp cho những người hay phải làm việc khuya, phải tiếp xúc với môi trường ô nhiễm, hút thuốc, uống rượu, ca sỹ, giáo viên phải nói nhiều làm khản tiếng ,mất tiếng.', 1, 1, '2020-07-25 08:22:54', '2020-07-25 08:22:54'),
(6, 'Trà Ngọc Nữ', 'tra-ngoc-nu', 'TNN58', 2, 'Products/94385994_1197973197201364_5222489015697014784_n-800x797.jpg', '<p>Tr&agrave; c&oacute; m&ugrave;i thơm của 7 loại hoa: Hoa Hồng nguy&ecirc;n b&ocirc;ng ph&uacute; qu&yacute;, hoa hồng H&agrave;n Quốc ki&ecirc;u sa, hoa nh&agrave;i tinh khiết, hoa c&uacute;c thanh tao v&agrave; vỏ qu&yacute;t, c&oacute; sắc đỏ t&iacute;m của sự kết hợp giữa hibiscus v&agrave; kỷ tử đen ho&agrave;n to&agrave;n tự nhi&ecirc;n kh&ocirc;ng nhuộm m&agrave;u, c&oacute; vị chua chua của bụp giấm.</p>\r\n\r\n<p><img alt=\"\" src=\"https://forgetmenotmart.com/wp-content/uploads/2020/04/91437482_1907200319412324_9010676541868212224_n-597x600.jpg\" style=\"height:600px; width:597px\" /></p>\r\n\r\n<p>Tr&agrave; c&oacute; t&aacute;c dụng dưỡng nhan, đẹp sắc, thanh nhiệt, ti&ecirc;u độc, ngăn ngừa mụn, điều h&ograve;a kinh nguyệt, giảm lo &acirc;u, căng thẳng, giảm t&igrave;nh trạng da nhợt nhạt do thiếu m&aacute;u , chống ng&aacute;n do thức ăn dầu mỡ.</p>\r\n\r\n<p>𝑻𝒓𝒂̀ 𝑵𝒈𝒐̣𝒄 𝑵𝒖̛̃ l&agrave; sự kết hợp của tr&agrave; 𝐻𝑖𝑏𝑖𝑠𝑐𝑢𝑠, 𝑉𝑜̉ 𝑐𝑎𝑚, 𝐻𝑜̂̀𝑛𝑔 𝐻𝑎̀𝑛, 𝑁ℎ𝑎̀𝑖, 𝐶𝑢́𝑐 𝐹𝑙𝑜𝑟𝑖𝑠𝑡, 𝐻𝑎̆́𝑐 𝐾𝑦̉ 𝑇𝑢̛̉, 𝐻𝑜𝑎 𝐻𝑜̂̀𝑛𝑔 𝑁𝑔𝑢𝑦𝑒̂𝑛 𝐵𝑜̂𝑛𝑔<br />\r\n&ndash;&nbsp;<img alt=\"🧚‍♀️\" src=\"https://s.w.org/images/core/emoji/12.0.0-1/svg/1f9da-200d-2640-fe0f.svg\" />&nbsp;Hoa c&uacute;c Florist: thanh nhiệt, ti&ecirc;u vi&ecirc;m, giảm mụn nhọt, chống oxy h&oacute;a, chống l&atilde;o h&oacute;a, giảm lo &acirc;u, căng thẳng, cải thiện chất lượng giấc ngủ; hạ huyết &aacute;p, tăng hoạt động của tim; điều h&ograve;a kinh nguyệt<br />\r\n&ndash;&nbsp;<img alt=\"🧚‍♂️\" src=\"https://s.w.org/images/core/emoji/12.0.0-1/svg/1f9da-200d-2642-fe0f.svg\" />&nbsp;Hoa hồng nguy&ecirc;n b&ocirc;ng: chứa nhiều vitamin v&agrave; kho&aacute;ng chất c&oacute; t&aacute;c dụng l&agrave;m đẹp da, ngăn ngừa mụn trứng c&aacute;, giảm tốc độ l&atilde;o h&oacute;a của da, loại bỏ c&aacute;c sắc tố đen v&agrave; nếp nhăn l&agrave;m da trắng hồng, tươi trẻ. Điều h&ograve;a kh&iacute; huyết, th&uacute;c đ&acirc;y lưu th&ocirc;ng m&aacute;u, điều h&ograve;a nội tiết, điều h&ograve;a kinh nguyệt, gi&uacute;p giảm đau bụng tiền kinh nguyệt, cải thiện t&igrave;nh trạng lo &acirc;u, căng thẳng.<br />\r\n&ndash;&nbsp;<img alt=\"🧚‍♀️\" src=\"https://s.w.org/images/core/emoji/12.0.0-1/svg/1f9da-200d-2640-fe0f.svg\" />&nbsp;Hoa Nh&agrave;i: giải độc, kh&aacute;ng khuẩn, trắng da, ngăn ngừa l&atilde;o h&oacute;a, giảm stress, giảm huyết &aacute;p, cholesterol, điều h&ograve;a sự lưu th&ocirc;ng m&aacute;u<br />\r\n&ndash;&nbsp;<img alt=\"🧚‍♂️\" src=\"https://s.w.org/images/core/emoji/12.0.0-1/svg/1f9da-200d-2642-fe0f.svg\" />&nbsp;Hibiscus: giảm c&acirc;n, ph&ograve;ng v&agrave; điều trị bệnh b&eacute;o ph&igrave;, Tăng cường chức năng gan, bảo vệ gan<br />\r\n&ndash;&nbsp;<img alt=\"🧚‍♀️\" src=\"https://s.w.org/images/core/emoji/12.0.0-1/svg/1f9da-200d-2640-fe0f.svg\" />&nbsp;Vỏ cam: giảm ho, vi&ecirc;m họng, gi&uacute;p tăng cường hệ miễn dịch, ngăn ngừa vi khuẩn, giảm nhiễm tr&ugrave;ng đường tiết niệu<br />\r\n&ndash;&nbsp;<img alt=\"🧚‍♂️\" src=\"https://s.w.org/images/core/emoji/12.0.0-1/svg/1f9da-200d-2642-fe0f.svg\" />&nbsp;Hắc Kỷ Tử: chứa nhiều protein, lipid, glucid, c&aacute;c acid amin tự do, acid hữu cơ, kho&aacute;ng chất, c&aacute;c nguy&ecirc;n tố vi lượng, kiềm, Vitamin c, B1, B2&hellip;Kh&ocirc;ng những vậy, Kỷ tử đen c&ograve;n chứa lượng lớn hắc quả sắc tố proanthocyanidines -pc&hellip;c&oacute; t&aacute;c dụng chống l&atilde;o h&oacute;a, an thần, đẹp da, tăng cường miễn dịch, ph&ograve;ng chống ung thư.<br />\r\n&ndash;&nbsp;<img alt=\"🧚‍♂️\" src=\"https://s.w.org/images/core/emoji/12.0.0-1/svg/1f9da-200d-2642-fe0f.svg\" />&nbsp;Hoa Hồng H&agrave;n Quốc: dưỡng nhan đẹp sắc, l&agrave;m trắng da, loại bỏ c&aacute;c nếp nhăn v&agrave; t&agrave;n nhang, l&agrave;m chậm qu&aacute; tr&igrave;nh l&atilde;o h&oacute;a; m&aacute;t gan, giải độc, s&aacute;ng mắt, hoạt huyết, th&ocirc;ng kinh.</p>\r\n\r\n<p><img alt=\"\" src=\"https://forgetmenotmart.com/wp-content/uploads/2020/04/91444633_1907200306078992_7422978908091318272_n-607x600.jpg\" style=\"height:600px; width:607px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://forgetmenotmart.com/wp-content/uploads/2020/04/91601030_1907200312745658_1495754847964626944_n-586x600.jpg\" style=\"height:600px; width:586px\" />&nbsp;<img alt=\"\" src=\"https://forgetmenotmart.com/wp-content/uploads/2020/04/91060609_1907200369412319_4486553460518420480_n-607x600.jpg\" style=\"height:600px; width:607px\" /><br />\r\n<img alt=\"🌿\" src=\"https://s.w.org/images/core/emoji/12.0.0-1/svg/1f33f.svg\" /><img alt=\"🌿\" src=\"https://s.w.org/images/core/emoji/12.0.0-1/svg/1f33f.svg\" /><img alt=\"🌿\" src=\"https://s.w.org/images/core/emoji/12.0.0-1/svg/1f33f.svg\" />&nbsp;𝐻𝑢̛𝑜̛́𝑛𝑔 𝑑𝑎̂̃𝑛 𝑠𝑢̛̉ 𝑑𝑢̣𝑛𝑔:<br />\r\n&ndash; Uống n&oacute;ng: Tr&aacute;ng b&igrave;nh/ cốc v&agrave; tr&agrave; bằng nước đun s&ocirc;i trong 30s &ndash; 1 ph&uacute;t sau đ&oacute; gạn bỏ nước. Th&ecirc;m 300ml nước s&ocirc;i v&agrave; đợi khoảng 3-5 ph&uacute;t cho tr&agrave; ngậm nước l&agrave; c&oacute; thể d&ugrave;ng được.<br />\r\n&ndash; Uống lạnh: Th&ecirc;m đ&aacute; v&agrave; thưởng thức.<br />\r\n&ndash; Th&ecirc;m đường hoặc mật ong t&ugrave;y khẩu vị mỗi người.<br />\r\n&ndash; Mỗi ng&agrave;y 1-2 g&oacute;i, c&oacute; thể th&ecirc;m nước 3 &ndash; 5 lần cho đến khi tr&agrave; nhạt.<br />\r\n&ndash; Sản phẩm được đ&oacute;ng th&agrave;nh c&aacute;c g&oacute;i nhỏ, rất tiện lợi để mang theo b&ecirc;n m&igrave;nh khi đi l&agrave;m, đi chơi..</p>', NULL, NULL, 'Trà có mùi thơm của 7 loại hoa: Hoa Hồng nguyên bông phú quý, hoa hồng Hàn Quốc kiêu sa, hoa nhài tinh khiết, hoa cúc thanh tao và vỏ quýt, có sắc đỏ tím của sự kết hợp giữa hibiscus và kỷ tử đen hoàn toàn tự nhiên không nhuộm màu, có vị chua chua của bụp giấm.\r\n\r\nTrà có tác dụng dưỡng nhan, đẹp sắc, thanh nhiệt, tiêu độc, ngăn ngừa mụn, điều hòa kinh nguyệt, giảm lo âu, căng thẳng, giảm tình trạng da nhợt nhạt do thiếu máu , chống ngán do thức ăn dầu mỡ.', 1, 1, '2020-07-25 08:25:42', '2020-07-25 08:25:42'),
(7, 'Combo giữ dáng', 'combo-giu-dang', 'CGD812', 3, 'Products/0e3ae07a19b7e4e9bda6-800x805.jpg', NULL, NULL, NULL, NULL, 1, 1, '2020-07-25 08:28:26', '2020-07-25 08:28:26');

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
(1, 1, 1, 'TNNXS508100', 128000.00, 16.00, 15, 1, '2020-07-24 03:17:17', '2020-07-24 03:17:17'),
(2, 1, 2, 'TNNXS508200', 300000.00, 0.00, 0, 1, '2020-07-24 03:17:27', '2020-07-24 03:17:27'),
(3, 2, 1, 'TMD549100', 150000.00, 0.00, 20, 1, '2020-07-24 03:17:46', '2020-07-24 03:17:54'),
(4, 2, 2, 'TMD549200', 300000.00, 10.00, 50, 1, '2020-07-24 03:18:04', '2020-07-24 03:18:04'),
(5, 3, 1, 'TNV562100', 183000.00, 15.00, 20, 1, '2020-07-24 03:18:33', '2020-07-24 03:18:33'),
(6, 3, 2, 'TNV562200', 250000.00, 10.00, 0, 1, '2020-07-24 03:18:46', '2020-07-24 03:18:46'),
(7, 4, 1, 'TCT827100', 150000.00, 18.00, 20, 1, '2020-07-25 08:16:56', '2020-07-25 08:16:56'),
(8, 5, 1, 'TDT219100', 250000.00, 15.00, 0, 1, '2020-07-25 08:23:48', '2020-07-25 08:23:48'),
(9, 7, 1, 'CGD812100', 150000.00, 20.00, 0, 1, '2020-07-25 08:55:23', '2020-07-25 08:55:23'),
(10, 6, 1, 'TNN58100', 200000.00, 20.00, 0, 1, '2020-07-25 08:56:24', '2020-07-25 08:56:24');

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
  `phone` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `product_details`
--
ALTER TABLE `product_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

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
  ADD CONSTRAINT `blogs_id_admin_foreign` FOREIGN KEY (`id_admin`) REFERENCES `admins` (`id`),
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
