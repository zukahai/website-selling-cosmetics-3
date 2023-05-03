-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 03, 2023 lúc 12:28 PM
-- Phiên bản máy phục vụ: 10.4.27-MariaDB
-- Phiên bản PHP: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `websell`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `auto_banks`
--

CREATE TABLE `auto_banks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `amount` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `transactionNumber` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `banks`
--

CREATE TABLE `banks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `shortName` varchar(255) NOT NULL,
  `number` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `urlImage` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `blogs`
--

INSERT INTO `blogs` (`id`, `title`, `content`, `urlImage`, `user_id`, `created_at`, `updated_at`) VALUES
(7, 'Tẩy Da Chết Body Mịn Màng ➡️ Trình Tự \"Chuẩn Đét\" 4 BƯỚC', '<p><em>Ch&uacute;ng ta thường chăm s&oacute;c da mặt rất cầu kỳ nhưng lại qu&ecirc;n mất rằng body cũng cần được quan t&acirc;m tỉ mỉ. Một trong những nguy&ecirc;n nh&acirc;n ch&iacute;nh g&acirc;y ra t&igrave;nh trạng mụn lưng, vi&ecirc;m ch&acirc;n l&ocirc;ng, da sần s&ugrave;i, kh&ocirc; sạm l&agrave; bởi ch&uacute;ng ta kh&ocirc;ng&nbsp;<strong><a title=\"tẩy tế b&agrave;o chết\" href=\"https://comem.vn/tay-da-chet-bang-cafe-dung-cach-7978\">tẩy tế b&agrave;o chết</a></strong>&nbsp;cho cơ thể. Đ&acirc;y l&agrave; một quy tr&igrave;nh kh&aacute; đơn giản nhưng đ&ocirc;i khi lại bị lược bớt hoặc thực hiện kh&ocirc;ng đ&uacute;ng c&aacute;ch.</em></p>\n<p><img class=\"size-full wp-image-8743 aligncenter\" src=\"https://static.comem.vn/uploads/2018/10/tay-da-chet-body.jpg\" alt=\"tay-da-chet-body\" width=\"640\" height=\"427\"></p>\n<h2 id=\"buildTocContent_0\">Tẩy da chết body n&ecirc;n chọn loại n&agrave;o?</h2>\n<p>C&oacute; 2 phương ph&aacute;p tẩy da chết thường gặp đ&oacute; l&agrave;:</p>\n<p><strong>Tẩy da chết vật l&yacute;:</strong>&nbsp;Trong đ&oacute; c&oacute; hỗn hợp c&ocirc;ng thức tẩy tế b&agrave;o chết thi&ecirc;n nhi&ecirc;n từ đường, mật ong, dầu dừa, c&agrave; ph&ecirc;, c&aacute;m gạo,... hoặc những sản phẩm peeling gel c&oacute; lẫn hạt b&ecirc;n trong.</p>\n<p><strong>Tẩy da chết dạng thẩm thấu:</strong>&nbsp;Thường l&agrave; c&aacute;c sản phẩm b&ocirc;i trực tiếp tr&ecirc;n da tan trong nước (AHA) hoăc tan trong dầu (BHA). Những dạng n&agrave;y thường được sử dụng cho mặt l&agrave; ch&iacute;nh. Độ l&agrave;m sạch v&agrave; tẩy tế b&agrave;o chết của BHA vượt trội hơn v&igrave; n&oacute; c&oacute; khả năng l&agrave;m sạch s&acirc;u trong lỗ ch&acirc;n l&ocirc;ng, rất th&iacute;ch hợp sử dụng với những ai c&oacute; l&agrave;n da bị vi&ecirc;m ch&acirc;n l&ocirc;ng, mụn. Tuy nhi&ecirc;n, những sản phẩm n&agrave;y lại kh&ocirc;ng th&iacute;ch hợp với người c&oacute; da nhạy cảm, dễ nổi mẩn đỏ.</p>\n<p>&rArr; Sử dụng cho body, người ta thường chọn loại tẩy da chết vật l&yacute; dạng ch&agrave; (scrub) tạo ma s&aacute;t để l&agrave;m bong tr&oacute;c lớp tế b&agrave;o sừng v&agrave; da chết khỏi cơ thể, gi&uacute;p cho tế b&agrave;o da mới nhanh ch&oacute;ng t&aacute;i tạo v&agrave; mềm mại hơn.</p>\n<p>-&nbsp;<a title=\"Rửa mặt trước hay tẩy da chết trước\" href=\"https://comem.vn/tay-da-chet-truoc-hay-rua-mat-truoc\">Rửa mặt trước hay tẩy da chết trước</a>? Sai lầm thường gặp của chị em</p>\n<h2 id=\"buildTocContent_1\">Quy tr&igrave;nh chuẩn khi tẩy da chết body tại nh&agrave;</h2>\n<ol>\n<li>Tắm sạch to&agrave;n bộ cơ thể với nước ấm để l&agrave;m gi&atilde;n nở c&aacute;c lỗ ch&acirc;n l&ocirc;ng. Với phần biểu b&igrave; cứng như đầu gối, khuỷu tay, khuỷu ch&acirc;n, g&oacute;t ch&acirc;n bạn n&ecirc;n ng&acirc;m nước l&acirc;u hơn v&agrave; ch&agrave; với đ&aacute; m&agrave;i.</li>\n<li>Tắm sạch cơ thể với sữa tắm.</li>\n<li>Cho lượng tẩy tế b&agrave;o chết l&ecirc;n cơ thể, rồi nhẹ nh&agrave;ng massage từ v&ugrave;ng cổ xuống tay, body, ch&acirc;n khoảng 10 ph&uacute;t.</li>\n<li>Tắm sạch với nước, kh&ocirc;ng cần sử dụng sữa tắm, lau kh&ocirc; cơ thể.</li>\n<li>Sử dụng kem dưỡng ẩm v&agrave; hạn chế ra ngo&agrave;i nắng ngay sau khi tẩy tế b&agrave;o chết.</li>\n</ol>\n<p><img src=\"https://static.comem.vn/uploads/January2022/Quy_trinh_tay_da_chet_body_chuan_sp2x.jpg\" alt=\"Quy_trinh_tay_da_chet_body_chuan\" width=\"640\" height=\"640\"></p>\n<p><em><strong>Lưu &yacute;:</strong></em>&nbsp;Chỉ n&ecirc;n tẩy tế b&agrave;o chết từ 1 -2 lần mỗi tuần, v&igrave; nếu thực hiện với tần suất qu&aacute; d&agrave;y sẽ khiến da body nhạy cảm v&agrave; kh&ocirc; hơn từ đ&oacute; g&acirc;y phản t&aacute;c dụng. Hơn nữa, ch&uacute;ng ta n&ecirc;n hướng đến những sản phẩm c&oacute; th&agrave;nh phần thi&ecirc;n nhi&ecirc;n bởi vừa dịu nhẹ lại an to&agrave;n cho da. Tẩy da chết body th&ocirc;i l&agrave; chưa đủ, bạn c&ograve;n cần chế độ dưỡng da đặc biệt cho da kh&ocirc;, da mụn, da nhờn v&agrave; chế độ chăm s&oacute;c da từ b&ecirc;n trong. Bổ sung vitamin từ c&aacute;c loại tr&aacute;i c&acirc;y v&agrave; uống đủ nước mỗi ng&agrave;y l&agrave; c&aacute;ch l&agrave;nh mạnh nhất để gi&uacute;p cơ thể được thải bỏ độc tố, gi&uacute;p l&agrave;n da tươi s&aacute;ng v&agrave; khỏe mạnh hơn.</p>\n<p>Nếu gặp t&igrave;nh trạng mụn lưng, mụn tay hoặc mụn m&ocirc;ng, bạn c&oacute; thể kết hợp với x&agrave; b&ocirc;ng hoặc sữa tắm c&oacute; th&agrave;nh phần Than hoạt t&iacute;nh, bởi than hoạt t&iacute;nh (tinh than tre) c&oacute; khả năng hấp phụ b&atilde; nhờn tr&ecirc;n da, kết hợp với tẩy da chết vật l&yacute; lấy đi tế b&agrave;o chết tr&ecirc;n da gi&uacute;p da được l&agrave;m sạch tối ưu, thải độc, lỗ ch&acirc;n l&ocirc;ng th&ocirc;ng tho&aacute;ng.&nbsp;</p>\n<h2 id=\"buildTocContent_2\" dir=\"ltr\">C&aacute;c c&aacute;ch tẩy tế b&agrave;o chết cho body tại nh&agrave;&nbsp;</h2>\n<p dir=\"ltr\">C&aacute;ch tẩy tế b&agrave;o chết cho body tại nh&agrave; rất đơn giản. Dưới đ&acirc;y l&agrave; 1 số c&aacute;ch tẩy da chết cho cơ thể dễ thực hiện m&agrave; mang lại hiệu quả cao:</p>\n<h3 id=\"buildTocContent_3\" dir=\"ltr\">Sử dụng b&atilde; c&agrave; ph&ecirc; để tẩy tế b&agrave;o chết cho body</h3>\n<p dir=\"ltr\">Đ&acirc;y l&agrave; nguy&ecirc;n liệu phổ biến trong c&aacute;c c&ocirc;ng thức tẩy da chết. C&aacute;c loại hạt nhỏ của bột c&agrave; ph&ecirc; khi massage l&ecirc;n da gi&uacute;p loại bỏ bụi bẩn v&agrave; những tế b&agrave;o đ&atilde; gi&agrave; cỗi, l&atilde;o h&oacute;a.</p>\n<p dir=\"ltr\">C&aacute;ch l&agrave;m tẩy tế b&agrave;ochết do cơ thể từ bột c&agrave; ph&ecirc; như sau:</p>\n<p dir=\"ltr\">- Cần chuẩn bị: 1 nửa cốc bột c&agrave; ph&ecirc;, 1 th&igrave;a canh dầu dừa ấm, 2 th&igrave;a canh nước n&oacute;ng.</p>\n<p dir=\"ltr\">- C&aacute;ch thực hiện:</p>\n<p dir=\"ltr\">+ Trộn nước n&oacute;ng v&agrave; bột c&agrave; ph&ecirc; v&agrave;o b&aacute;t.</p>\n<p dir=\"ltr\">+ Sau đ&oacute; cho th&ecirc;m dầu dừa v&agrave; trộn đều. Điều chỉnh độ đặc bằng dầu dừa để c&oacute; hỗn hợp như &yacute;.</p>\n<p dir=\"ltr\">+ Cho hỗn hợp vừa l&agrave;m v&agrave;o hộp đựng v&agrave; d&ugrave;ng dần.</p>\n<p dir=\"ltr\">+ Mỗi lần sử dụng lấy lượng hỗn hợp vừa đủ.</p>\n<p dir=\"ltr\"><img src=\"https://static.comem.vn/uploads/June2022/cach-tay-te-bao-chet-bang-ca-phe.jpg\" alt=\"c&aacute;ch tẩy tế b&agrave;o chết body bằng c&agrave; ph&ecirc;\" width=\"600\" height=\"400\"></p>\n<h3 id=\"buildTocContent_4\">Đường n&acirc;u c&oacute; t&aacute;c dụng tẩy tế b&agrave;o chết body</h3>\n<p dir=\"ltr\">Đường n&acirc;u l&agrave; nguy&ecirc;n liệu quen thuộc, gi&aacute; th&agrave;nh rẻ, dễ t&igrave;m v&agrave; c&oacute; t&aacute;c dụng tẩy tế b&agrave;o chết rất tốt. Đ&acirc;y ch&iacute;nh l&agrave; phương ph&aacute;p tẩy da chết ph&ugrave; hợp cho những ai c&oacute; da body nhạy cảm.</p>\n<p dir=\"ltr\">C&aacute;ch l&agrave;m hỗn hợp tẩy da chết cho cơ thể bằng đường n&acirc;u như sau:</p>\n<p dir=\"ltr\">- Nguy&ecirc;n liệu cần c&oacute;:&nbsp;</p>\n<p dir=\"ltr\">1 nửa b&aacute;t đường; 1 nửa b&aacute;t dầu dừa, dầu oliu hoặc dầu hạnh nh&acirc;n; tinh dầu tạo hương t&ugrave;y chọn.</p>\n<p dir=\"ltr\">- C&aacute;ch thực hiện:</p>\n<p dir=\"ltr\">+ Trộn đường n&acirc;u v&agrave; dầu thực vật v&agrave;o b&aacute;t th&agrave;nh hỗn hợp sệt.</p>\n<p dir=\"ltr\">+ Điều chỉnh độ đặc, lo&atilde;ng bằng dầu thực vật để c&oacute; độ sệt như &yacute;.</p>\n<p dir=\"ltr\">+ Th&ecirc;m tinh dầu y&ecirc;u th&iacute;ch để tạo hương.</p>\n<p dir=\"ltr\">+ Cho hỗn hợp vừa l&agrave;m v&agrave;o hộp thủy tinh sạch để d&ugrave;ng dần.</p>\n<p dir=\"ltr\">+ Khi sử dụng sẽ d&ugrave;ng 1 lượng vừa đủ v&agrave; tắm lại kỹ với nước v&igrave; đường c&oacute; độ kết d&iacute;nh cao</p>', 'images/vk59JcuAP3WgwiKdU5YQEyNZojWAZuPw20zyBAr9.jpg', 1, '2023-05-03 03:09:48', '2023-05-03 03:09:48'),
(8, 'Quy Trình Chăm Sóc Da Mặt Cơ Bản \"5 BƯỚC\" Như Da Baby', '<div class=\"article-detail__content eight-twelfths mobile--one-whole\">\r\n<div class=\"article-content js-toc__article-content\">\r\n<p><em><strong>Da mặt xệ</strong>,&nbsp;<strong>nhăn nheo,&nbsp;thiếu nước</strong>&nbsp;hay&nbsp;<strong>nhiều mụn</strong>&nbsp;mặc d&ugrave; chưa tới tuổi 25. Đừng than trời sao lại bạc bẽo với bạn đến vậy, h&atilde;y tự tr&aacute;ch m&igrave;nh v&igrave; đ&atilde; kh&ocirc;ng biết chăm s&oacute;c da đ&uacute;ng c&aacute;ch. Da đẹp bẩm sinh l&agrave; một m&oacute;n qu&agrave; tuyệt vời đối với con g&aacute;i. Thế nhưng d&ugrave; c&oacute; đẹp thế n&agrave;o đi chăng nữa m&agrave; kh&ocirc;ng chăm s&oacute;c đ&uacute;ng c&aacute;ch th&igrave; n&oacute; cũng dần xuống cấp m&agrave; th&ocirc;i. Bởi vậy bạn cần phải bỏ t&uacute;i ngay quy tr&igrave;nh chăm s&oacute;c da mặt cơ bản sau đ&acirc;y để gi&uacute;p da mặt khỏe mạnh mỗi ng&agrave;y nh&eacute;!</em></p>\r\n<p><img class=\"size-full wp-image-7684 aligncenter lazyloaded\" src=\"https://static.comem.vn/uploads/2018/08/da-bi-kho-do-su-dung-xa-phong-cong-nghiep.jpg\" alt=\"da-bi-kho\" width=\"640\" height=\"396\" data-src=\"https://static.comem.vn/uploads/2018/08/da-bi-kho-do-su-dung-xa-phong-cong-nghiep.jpg\"></p>\r\n<h2 id=\"buildTocContent_0\">Quy tr&igrave;nh chăm s&oacute;c da mặt cơ bản v&agrave;o buổi s&aacute;ng - 5 bước</h2>\r\n<p>Đừng cố ngủ nướng một v&agrave;i ph&uacute;t mỗi buổi s&aacute;ng, h&atilde;y thức dậy sớm hơn v&agrave; d&agrave;nh khoảng thời gian đ&oacute; để chăm s&oacute;c da mặt trước khi bước ra ngo&agrave;i đường nh&eacute;. Sau đ&acirc;y l&agrave; những bước căn bản nhất m&agrave; bạn n&ecirc;n thực hiện d&ugrave; bất kể l&agrave; loại da n&agrave;o:</p>\r\n<h3 id=\"buildTocContent_1\">1. L&agrave;m sạch bằng sữa rửa mặt</h3>\r\n<p>Bạn đ&atilde; ngủ cả đ&ecirc;m d&agrave;i, n&agrave;o c&oacute; tiếp x&uacute;c với kh&oacute;i bụi đ&acirc;u m&agrave; cần phải l&agrave;m sạch nhỉ? C&oacute; đấy! Ban đ&ecirc;m l&agrave; l&uacute;c da thải rất nhiều dầu nhờn, hơn nữa bụi v&agrave; vi khuẩn từ chăn gối c&oacute; thể tiếp x&uacute;c với da mặt v&igrave; vậy rửa mặt sẽ gi&uacute;p da mặt được l&agrave;m sạch v&agrave; hạn chế vi&ecirc;m tắc lỗ ch&acirc;n l&ocirc;ng.</p>\r\n<p><img class=\"size-full wp-image-11028 aligncenter lazyloaded\" src=\"https://static.comem.vn/uploads/2019/01/cach-cham-soc-da-mat-can-ban.jpg\" alt=\"cach-cham-soc-da-mat-can-ban\" width=\"640\" height=\"359\" data-src=\"https://static.comem.vn/uploads/2019/01/cach-cham-soc-da-mat-can-ban.jpg\"></p>\r\n<p>Rửa với nước l&agrave; đ&uacute;ng nhưng chưa đủ, sữa rửa mặt đ&atilde; trở th&agrave;nh một loại mỹ phẩm hết sức phổ biến v&agrave; cần thiết đối với mọi c&ocirc; g&aacute;i. Đừng qu&aacute; quan trọng mỹ phẩm đắt hay rẻ, cao cấp hay b&igrave;nh d&acirc;n miễn l&agrave; n&oacute; ph&ugrave; hợp v&agrave; an to&agrave;n với l&agrave;n da của bạn l&agrave; được.</p>\r\n<blockquote>\r\n<p><strong>M&aacute;ch Nhỏ:</strong>&nbsp;Da Kh&ocirc; Th&igrave; Chọn Sản Phẩm Dịu Nhẹ, Kh&ocirc;ng Cần C&oacute; Hạt. Với Da Dầu Hay Da Thường Bạn C&oacute; Thể Chọn Loại Sữa Rửa Mặt Dạng Gel C&oacute; Lẫn Hạt B&ecirc;n Trong Để Gi&uacute;p Tẩy Tế B&agrave;o Chết Nhẹ Nh&agrave;ng.</p>\r\n</blockquote>\r\n<p>Ngo&agrave;i ra, hiện nay tr&ecirc;n thị trường cũng c&oacute; một v&agrave;i loại mỹ phẩm l&agrave;m sạch c&oacute; thể thay thế cho sửa rửa mặt rất tốt như soap hay&nbsp;<a title=\"bột rửa mặt\" href=\"https://comem.vn/sp/bot-rua-mat-taptap\"><strong>bột rửa mặt</strong></a>, h&atilde;y thử trải nghiệm nếu bạn kh&ocirc;ng thấy ph&ugrave; hợp với sữa rửa mặt truyền thống nh&eacute;.</p>\r\n<p>&nbsp;</p>\r\n<section class=\"product-shortcode\">\r\n<div class=\"product-box-2 wrap\">\r\n<div class=\"product-box-2_item four-cols\"><a class=\"product-box-2_item__image\" href=\"https://comem.vn/sp/combo-sua-rua-mat-tao-bot-to-tam-kem-duong-am-to-tam?itm_source=cta&amp;itm_medium=product_article\"><img class=\" lazyloaded\" title=\"Combo Sữa rửa mặt tạo bọt Tơ Tằm + Kem dưỡng ẩm Tơ Tằm\" src=\"https://static.comem.vn/uploads/December2022/combo-sua-rua-mat-kem-duong-to-tam_sp.jpg\" alt=\"Combo Sữa rửa mặt tạo bọt Tơ Tằm + Kem dưỡng ẩm Tơ Tằm\" data-src=\"https://static.comem.vn/uploads/December2022/combo-sua-rua-mat-kem-duong-to-tam_sp.jpg\">\r\n<div class=\"product-box-2_item__image__tags\">\r\n<div class=\"tag-sale\">-12%</div>\r\n<div class=\"tag-new\">New</div>\r\n</div>\r\n</a>\r\n<div class=\"product-box-2_item__content\">\r\n<p><a class=\"product-box-2_item__content__title maxLine_2\" href=\"https://comem.vn/sp/combo-sua-rua-mat-tao-bot-to-tam-kem-duong-am-to-tam?itm_source=cta&amp;itm_medium=product_article\">Combo Sữa rửa mặt tạo bọt Tơ Tằm + Kem dưỡng ẩm Tơ Tằm</a></p>\r\n<div class=\"product-box-2_item__content__price\">\r\n<div class=\"price-now\">410.000<sup>đ</sup></div>\r\n<div class=\"price-old\">465.000</div>\r\n</div>\r\n<div class=\"product-box-2_item__content__rating box-rating\">&nbsp;</div>\r\n</div>\r\n</div>\r\n<div class=\"product-box-2_item four-cols\"><a class=\"product-box-2_item__image\" href=\"https://comem.vn/sp/kem-duong-am-ngua-lao-hoa-to-tam?itm_source=cta&amp;itm_medium=product_article\"><img class=\" lazyloaded\" title=\"Kem dưỡng ẩm ngừa l&atilde;o h&oacute;a Tơ tằm - dưỡng ẩm chuy&ecirc;n s&acirc;u với Coenzym Q10\" src=\"https://static.comem.vn/uploads/November2022/kem-duong-am-to-tam_sp.jpg\" alt=\"Kem dưỡng ẩm ngừa l&atilde;o h&oacute;a Tơ tằm - dưỡng ẩm chuy&ecirc;n s&acirc;u với Coenzym Q10\" data-src=\"https://static.comem.vn/uploads/November2022/kem-duong-am-to-tam_sp.jpg\">\r\n<div class=\"product-box-2_item__image__tags\">\r\n<div class=\"tag-new\">New</div>\r\n</div>\r\n</a>\r\n<div class=\"product-box-2_item__content\">\r\n<p><a class=\"product-box-2_item__content__title maxLine_2\" href=\"https://comem.vn/sp/kem-duong-am-ngua-lao-hoa-to-tam?itm_source=cta&amp;itm_medium=product_article\">Kem dưỡng ẩm ngừa l&atilde;o h&oacute;a Tơ tằm - dưỡng ẩm chuy&ecirc;n s&acirc;u với Coenzym Q10</a></p>\r\n<div class=\"product-box-2_item__content__price\">\r\n<div class=\"price-now\">315.000<sup>đ</sup></div>\r\n</div>\r\n<div class=\"product-box-2_item__content__rating box-rating\">\r\n<div class=\"box-rating_star\">&nbsp;&nbsp;&nbsp;&nbsp;</div>\r\n<div class=\"box-rating_text maxLine_1\">4.9 / 17 đ&aacute;nh gi&aacute;</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"product-box-2_item four-cols\"><a class=\"product-box-2_item__image\" href=\"https://comem.vn/sp/combo-first-date-tram-tra?itm_source=cta&amp;itm_medium=product_article\"><img class=\" ls-is-cached lazyloaded\" title=\"Combo Firstdate Tr&agrave;m tr&agrave; - Chăm s&oacute;c da mụn bọc, mụn vi&ecirc;m\" src=\"https://static.comem.vn/uploads/March2023/combo-first-date-tram-tra_sp.png\" alt=\"Combo Firstdate Tr&agrave;m tr&agrave; - Chăm s&oacute;c da mụn bọc, mụn vi&ecirc;m\" data-src=\"https://static.comem.vn/uploads/March2023/combo-first-date-tram-tra_sp.png\">\r\n<div class=\"product-box-2_item__image__tags\">\r\n<div class=\"tag-sale\">-6%</div>\r\n</div>\r\n</a>\r\n<div class=\"product-box-2_item__content\">\r\n<p><a class=\"product-box-2_item__content__title maxLine_2\" href=\"https://comem.vn/sp/combo-first-date-tram-tra?itm_source=cta&amp;itm_medium=product_article\">Combo Firstdate Tr&agrave;m tr&agrave; - Chăm s&oacute;c da mụn bọc, mụn vi&ecirc;m</a></p>\r\n<div class=\"product-box-2_item__content__price\">\r\n<div class=\"price-now\">620.000<sup>đ</sup></div>\r\n<div class=\"price-old\">660.000</div>\r\n</div>\r\n<div class=\"product-box-2_item__content__rating box-rating\">\r\n<div class=\"box-rating_star\">&nbsp;&nbsp;&nbsp;&nbsp;</div>\r\n<div class=\"box-rating_text maxLine_1\">4.9 / 32 đ&aacute;nh gi&aacute;</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"product-box-2_item four-cols\"><a class=\"product-box-2_item__image\" href=\"https://comem.vn/sp/kem-duong-am-kiem-dau-rau-ma?itm_source=cta&amp;itm_medium=product_article\"><img class=\" lazyloaded\" title=\"Kem dưỡng ẩm kiềm dầu Rau m&aacute; d&agrave;nh cho da dầu mụn\" src=\"https://static.comem.vn/uploads/November2022/kem-duong-rau-ma-cho-da-dau-mun_sp.jpg\" alt=\"Kem dưỡng ẩm kiềm dầu Rau m&aacute; d&agrave;nh cho da dầu mụn\" data-src=\"https://static.comem.vn/uploads/November2022/kem-duong-rau-ma-cho-da-dau-mun_sp.jpg\">\r\n<div class=\"product-box-2_item__image__tags\">&nbsp;</div>\r\n</a>\r\n<div class=\"product-box-2_item__content\">\r\n<p><a class=\"product-box-2_item__content__title maxLine_2\" href=\"https://comem.vn/sp/kem-duong-am-kiem-dau-rau-ma?itm_source=cta&amp;itm_medium=product_article\">Kem dưỡng ẩm kiềm dầu Rau m&aacute; d&agrave;nh cho da dầu mụn</a></p>\r\n<div class=\"product-box-2_item__content__price\">\r\n<div class=\"price-now\">325.000<sup>đ</sup></div>\r\n</div>\r\n<div class=\"product-box-2_item__content__rating box-rating\">&nbsp;</div>\r\n</div>\r\n</div>\r\n<div class=\"product-box-2_item four-cols\"><a class=\"product-box-2_item__image\" href=\"https://comem.vn/sp/serum-hoang-lan?itm_source=cta&amp;itm_medium=product_article\"><img class=\" lazyloaded\" title=\"Serum dưỡng da ban đ&ecirc;m Ho&agrave;ng Lan 3 trong 1\" src=\"https://static.comem.vn/uploads/November2022/serum-nam-da-hong-lan_sp.jpg\" alt=\"Serum dưỡng da ban đ&ecirc;m Ho&agrave;ng Lan 3 trong 1\" data-src=\"https://static.comem.vn/uploads/November2022/serum-nam-da-hong-lan_sp.jpg\">\r\n<div class=\"product-box-2_item__image__tags\">\r\n<div>Best Seller</div>\r\n</div>\r\n</a>\r\n<div class=\"product-box-2_item__content\">\r\n<p><a class=\"product-box-2_item__content__title maxLine_2\" href=\"https://comem.vn/sp/serum-hoang-lan?itm_source=cta&amp;itm_medium=product_article\">Serum dưỡng da ban đ&ecirc;m Ho&agrave;ng Lan 3 trong 1</a></p>\r\n<div class=\"product-box-2_item__content__price\">\r\n<div class=\"price-now\">180.000<sup>đ</sup></div>\r\n</div>\r\n<div class=\"product-box-2_item__content__rating box-rating\">\r\n<div class=\"box-rating_star\">&nbsp;&nbsp;&nbsp;&nbsp;</div>\r\n<div class=\"box-rating_text maxLine_1\">5.0 / 607 đ&aacute;nh gi&aacute;</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"product-box-2_item four-cols\"><a class=\"product-box-2_item__image\" href=\"https://comem.vn/sp/combo-cham-soc-da-ban-dem?itm_source=cta&amp;itm_medium=product_article\"><img class=\" lazyloaded\" title=\"Combo chăm s&oacute;c da BAN Đ&Ecirc;M (Tẩy trang, bọt rửa mặt, toner, kem dưỡng ẩm)\" src=\"https://static.comem.vn/uploads/March2023/combo-cham-soc-da-ban-dem_sp.png\" alt=\"Combo chăm s&oacute;c da BAN Đ&Ecirc;M (Tẩy trang, bọt rửa mặt, toner, kem dưỡng ẩm)\" data-src=\"https://static.comem.vn/uploads/March2023/combo-cham-soc-da-ban-dem_sp.png\">\r\n<div class=\"product-box-2_item__image__tags\">\r\n<div class=\"tag-sale\">-12%</div>\r\n</div>\r\n</a>\r\n<div class=\"product-box-2_item__content\">\r\n<p><a class=\"product-box-2_item__content__title maxLine_2\" href=\"https://comem.vn/sp/combo-cham-soc-da-ban-dem?itm_source=cta&amp;itm_medium=product_article\">Combo chăm s&oacute;c da BAN Đ&Ecirc;M (Tẩy trang, bọt rửa mặt, toner, kem dưỡng ẩm)</a></p>\r\n<div class=\"product-box-2_item__content__price\">\r\n<div class=\"price-now\">725.000<sup>đ</sup></div>\r\n<div class=\"price-old\">825.000</div>\r\n</div>\r\n<div class=\"product-box-2_item__content__rating box-rating\">&nbsp;</div>\r\n</div>\r\n</div>\r\n</div>\r\n</section>\r\n<p>&nbsp;</p>\r\n<h3 id=\"buildTocContent_2\">2. Thoa toner hoặc nước hoa hồng</h3>\r\n<p>Bạn c&oacute; bao giờ để &yacute;, nếu sau khi rửa mặt th&igrave; da thường kh&ocirc; v&agrave; căng hơn nhất l&agrave; v&agrave;o những ng&agrave;y m&ugrave;a đ&ocirc;ng &yacute;. Ch&iacute;nh v&igrave; vậy ch&uacute;ng ta cần phải sử dụng tới toner nhằm:</p>\r\n<ul>\r\n<li>C&acirc;n bằng ẩm tr&ecirc;n da.</li>\r\n<li>C&acirc;n bằng độ pH ở mức l&yacute; tưởng l&yacute; tưởng (từ 5.4 đến 5.9) để cho c&aacute;c vi sinh vật tốt cho da c&oacute; thể ph&aacute;t triển mạnh v&agrave; c&aacute;c vi sinh vật c&oacute; hại sẽ bị ti&ecirc;u diệt.</li>\r\n<li>Gi&uacute;p l&agrave;m sạch s&acirc;u, lấy đi những cặn bẩn đọng s&acirc;u dưới lỗ ch&acirc;n l&ocirc;ng m&agrave; sữa rửa mặt kh&ocirc;ng thể rửa tr&ocirc;i.</li>\r\n<li>Khiến cho da hấp thụ dưỡng chất từ kem tốt hơn</li>\r\n<li>Hạn chế nguy cơ xuất hiện mụn trứng c&aacute; v&agrave; se kh&iacute;t lỗ ch&acirc;n l&ocirc;ng.</li>\r\n</ul>\r\n<p><strong>C&aacute;ch sử dụng:</strong>&nbsp;chỉ cần lấy ra l&ograve;ng b&agrave;n tay một lượng vừa đủ khoảng chục giọt toner rồi d&ugrave;ng b&ocirc;ng tẩy trang để thấm v&agrave; chấm nhẹ l&ecirc;n da, sau đ&oacute; vỗ nhẹ để da được hấp thu tốt hơn. Lưu &yacute; c&aacute;c n&agrave;ng n&ecirc;n chọn những loại toner hoặc nước hoa hồng kh&ocirc;ng chứa ancohol</p>\r\n<h3 id=\"buildTocContent_3\">3. Thoa Serum /&nbsp;essence</h3>\r\n<p>Serum hay Essence (bản chất hai loại n&agrave;y l&agrave; giống nhau, chỉ kh&aacute;c l&agrave; Essence th&igrave; lỏng hơn Serum) vẫn thường được v&iacute; như một loại tinh chất dưỡng da thần th&aacute;nh bởi ch&uacute;ng c&oacute; k&iacute;ch thước ph&acirc;n tử si&ecirc;u nhỏ (được t&iacute;nh bằng nano) ch&iacute;nh v&igrave; thế m&agrave; n&oacute; thẩm thấu s&acirc;u v&agrave;o da hơn v&agrave; t&aacute;c động hữu hiệu hơn.</p>\r\n<p><img class=\"size-full wp-image-8805 aligncenter lazyloaded\" src=\"https://static.comem.vn/uploads/2017/08/hl-01-1.jpg\" alt=\"Serum hay Essence\" width=\"640\" height=\"640\" data-src=\"https://static.comem.vn/uploads/2017/08/hl-01-1.jpg\"></p>\r\n<p>Ở serum những chất l&agrave;m d&agrave;y hay chất kh&oacute;a ẩm đ&atilde; được lược bỏ bớt đi (hiểu n&ocirc;m na l&agrave; &iacute;t chất độn hơn) v&igrave; thế c&aacute;c tinh chất dưỡng da c&oacute; tỷ lệ đậm đặc hơn. Do đ&oacute; Serum hay Essense thường c&oacute; gi&aacute; mắc hơn nhưng chỉ cần sử dụng một lượng v&ocirc; c&ugrave;ng nhỏ cũng đủ đem lại t&aacute;c dụng cực kỳ hữu hiệu theo đ&uacute;ng c&aacute;ch c&aacute;ch người ta thường n&oacute;i rằng \"nhỏ m&agrave; c&oacute; v&otilde;\" .</p>\r\n<p>Thoa serum l&ecirc;n da mặt thường l&agrave; bước bổ trợ tốt nhất l&agrave; khi da của bạn đang ở t&igrave;nh trạng kh&ocirc;ng tốt chẳng hạn như da c&oacute; nhiều nếp nhăn, sạm xỉn m&agrave;u hay c&oacute; mụn.&nbsp;<strong><a title=\"C&aacute;ch sử dụng serum\" href=\"https://comem.vn/cach-dung-serum\">C&aacute;ch sử dụng serum</a></strong>&nbsp;đơn giản nhất l&agrave; chấm 2 -3 giọt serum ra l&ograve;ng b&agrave;n tay v&agrave; thoa đều l&ecirc;n da mặt ( qu&aacute; tr&igrave;nh thực hiện sau khi toner đ&atilde; kh&ocirc; ho&agrave;n to&agrave;n).</p>\r\n<p>Mỗi loại Serum/Essence thường c&oacute; những c&ocirc;ng dụng nổi trội ri&ecirc;ng biệt v&iacute; dụ serum đặc trị mụn, serum dưỡng trắng, serum l&agrave;m mờ n&aacute;m ch&iacute;nh v&igrave; thế h&atilde;y chọn đ&uacute;ng loại bạn cần, kh&ocirc;ng n&ecirc;n kết hợp nhiều loại c&ugrave;ng l&uacute;c để tr&aacute;nh sử dụng l&atilde;ng ph&iacute; m&agrave; kh&ocirc;ng đem lại hiệu quả như mong muốn.</p>\r\n<h3 id=\"buildTocContent_4\">4. Sử dụng kem dưỡng</h3>\r\n<p>Mặc d&ugrave; serum chứa rất nhiều th&agrave;nh phần dưỡng ẩm, v&iacute; dụ như hyaluronic acid hay ceramide, nhưng bạn đừng đ&aacute;nh đồng serum v&agrave; kem dưỡng ẩm. Như n&oacute;i ở tr&ecirc;n, serum kh&ocirc;ng chứa chất tạo m&agrave;ng ngăn n&ecirc;n kh&ocirc;ng thể kh&oacute;a ẩm, độ ẩm cung cấp v&agrave;o da mặt nhanh ch&oacute;ng bị bay hơi. Ch&iacute;nh v&igrave; thế ch&uacute;ng ta cần thoa kem dưỡng ẩm để tạo một lớp m&agrave;ng bảo vệ &ldquo;nội bất xuất, ngoại bất nhập&rdquo;.</p>\r\n<p>Để tr&aacute;nh qu&aacute; tr&igrave;nh dưỡng ẩm mang lại kết quả đ&aacute;ng tiếc, da nổi nhiều mụn nhọt th&igrave; việc sử dụng kem dưỡng ẩm n&agrave;o, c&aacute;ch sử dụng thế n&agrave;o l&agrave; điều rất quan trọng. H&atilde;y tham khảo ngay&nbsp;<strong><a title=\"c&aacute;ch d&ugrave;ng kem dưỡng ẩm\" href=\"https://comem.vn/cach-dung-kem-duong-am\">c&aacute;ch d&ugrave;ng kem dưỡng ẩm</a></strong>&nbsp;hiệu quả để \"da trắng mịn, tươi trẻ\" mỗi ng&agrave;y.</p>\r\n<h3 id=\"buildTocContent_5\">5. Sử dụng kem chống nắng</h3>\r\n<p>Đừng nghĩ cứ ra ngo&agrave;i mới cần b&ocirc;i kem chống nắng, kể cả ở trong nh&agrave; th&igrave; da mặt của bạn cũng c&oacute; thể chịu ảnh hưởng từ c&aacute;c bức xạ tr&ecirc;n m&agrave;n h&igrave;nh vi t&iacute;nh, diện thoại... Do đ&oacute;, sau khi thoa kem dưỡng th&igrave; h&atilde;y thoa kem chống nắng nh&eacute;, thoa mặt nhưng nhớ đừng bỏ qua phần da cổ.</p>\r\n<p>Mặc d&ugrave; vậy nhưng khi ra ngo&agrave;i vẫn nhớ che chắn cẩn thận, kem chống nắng kh&ocirc;ng gi&uacute;p bạn ngăn bị đen da khi tiếp x&uacute;c với nắng mặt trời, n&oacute; chỉ c&oacute; t&aacute;c dụng ngăn ngừa bức xạ từ mặt trời l&agrave;m da mặt bạn kh&ocirc;ng bị đỏ r&aacute;t, n&aacute;m v&agrave; ngừa ung thư da m&agrave; th&ocirc;i.</p>\r\n<p>Tham khảo:&nbsp;<a title=\"C&aacute;ch D&ugrave;ng Kem Chống Nắng\" href=\"https://comem.vn/cach-dung-kem-chong-nang\">C&aacute;ch D&ugrave;ng Kem Chống Nắng</a>&nbsp;\"Đ&uacute;ng C&aacute;ch, An To&agrave;n, Kh&ocirc;ng B&iacute; Tắc\"</p>\r\n<p><img class=\"size-full wp-image-11036 aligncenter lazyloaded\" src=\"https://static.comem.vn/uploads/2019/01/cham-soc-da-mat-tai-nha1.jpg\" alt=\"cham-soc-da-mat-tai-nha\" width=\"640\" height=\"359\" data-src=\"https://static.comem.vn/uploads/2019/01/cham-soc-da-mat-tai-nha1.jpg\"></p>\r\n<p>Loại kem chống nắng tốt cho da mặt n&ecirc;n c&oacute; đầy đủ 2 chỉ số&nbsp;<strong>SPF từ 30~50</strong>&nbsp;(Sun Protection Factor) đo khả năng chống tia UVB v&agrave;<strong>&nbsp;PA ++/PA+++&nbsp;</strong>(Protection Grade of UVA) đo khả năng chống lại tia UVA.</p>\r\n<p>&nbsp;</p>\r\n<section class=\"product-shortcode\">\r\n<div class=\"product-box-2 wrap\">\r\n<div class=\"product-box-2_item four-cols\"><a class=\"product-box-2_item__image\" href=\"https://comem.vn/sp/combo-sua-rua-mat-tao-bot-to-tam-kem-duong-am-to-tam?itm_source=cta&amp;itm_medium=product_article\"><img class=\" ls-is-cached lazyloaded\" title=\"Combo Sữa rửa mặt tạo bọt Tơ Tằm + Kem dưỡng ẩm Tơ Tằm\" src=\"https://static.comem.vn/uploads/December2022/combo-sua-rua-mat-kem-duong-to-tam_sp.jpg\" alt=\"Combo Sữa rửa mặt tạo bọt Tơ Tằm + Kem dưỡng ẩm Tơ Tằm\" data-src=\"https://static.comem.vn/uploads/December2022/combo-sua-rua-mat-kem-duong-to-tam_sp.jpg\">\r\n<div class=\"product-box-2_item__image__tags\">\r\n<div class=\"tag-sale\">-12%</div>\r\n<div class=\"tag-new\">New</div>\r\n</div>\r\n</a>\r\n<div class=\"product-box-2_item__content\">\r\n<p><a class=\"product-box-2_item__content__title maxLine_2\" href=\"https://comem.vn/sp/combo-sua-rua-mat-tao-bot-to-tam-kem-duong-am-to-tam?itm_source=cta&amp;itm_medium=product_article\">Combo Sữa rửa mặt tạo bọt Tơ Tằm + Kem dưỡng ẩm Tơ Tằm</a></p>\r\n<div class=\"product-box-2_item__content__price\">\r\n<div class=\"price-now\">410.000<sup>đ</sup></div>\r\n<div class=\"price-old\">465.000</div>\r\n</div>\r\n<div class=\"product-box-2_item__content__rating box-rating\">&nbsp;</div>\r\n</div>\r\n</div>\r\n<div class=\"product-box-2_item four-cols\"><a class=\"product-box-2_item__image\" href=\"https://comem.vn/sp/combo-kem-chong-nang-sua-rua-mat-tao-bot-to-tam?itm_source=cta&amp;itm_medium=product_article\"><img class=\" lazyloaded\" title=\"Combo Kem chống nắng H&acirc;y H&acirc;y + Sữa rửa mặt tạo bọt Tơ Tằm\" src=\"https://static.comem.vn/uploads/January2023/combo-sua-rua-mat-kem-chong-nang_8_sp.png\" alt=\"Combo Kem chống nắng H&acirc;y H&acirc;y + Sữa rửa mặt tạo bọt Tơ Tằm\" data-src=\"https://static.comem.vn/uploads/January2023/combo-sua-rua-mat-kem-chong-nang_8_sp.png\">\r\n<div class=\"product-box-2_item__image__tags\">\r\n<div class=\"tag-sale\">-13%</div>\r\n</div>\r\n</a>\r\n<div class=\"product-box-2_item__content\">\r\n<p><a class=\"product-box-2_item__content__title maxLine_2\" href=\"https://comem.vn/sp/combo-kem-chong-nang-sua-rua-mat-tao-bot-to-tam?itm_source=cta&amp;itm_medium=product_article\">Combo Kem chống nắng H&acirc;y H&acirc;y + Sữa rửa mặt tạo bọt Tơ Tằm</a></p>\r\n<div class=\"product-box-2_item__content__price\">\r\n<div class=\"price-now\">355.000<sup>đ</sup></div>\r\n<div class=\"price-old\">410.000</div>\r\n</div>\r\n<div class=\"product-box-2_item__content__rating box-rating\">&nbsp;</div>\r\n</div>\r\n</div>\r\n<div class=\"product-box-2_item four-cols\"><a class=\"product-box-2_item__image\" href=\"https://comem.vn/sp/combo-cham-soc-da-ban-ngay?itm_source=cta&amp;itm_medium=product_article\"><img class=\" ls-is-cached lazyloaded\" title=\"Combo chăm s&oacute;c da BAN NG&Agrave;Y (Bọt rửa mặt, toner, kem dưỡng da, kem chống nắng)\" src=\"https://static.comem.vn/uploads/December2022/combo-cham-soc-da-ban-ngay_sp.jpg\" alt=\"Combo chăm s&oacute;c da BAN NG&Agrave;Y (Bọt rửa mặt, toner, kem dưỡng da, kem chống nắng)\" data-src=\"https://static.comem.vn/uploads/December2022/combo-cham-soc-da-ban-ngay_sp.jpg\">\r\n<div class=\"product-box-2_item__image__tags\">\r\n<div class=\"tag-sale\">-11%</div>\r\n</div>\r\n</a>\r\n<div class=\"product-box-2_item__content\">\r\n<p><a class=\"product-box-2_item__content__title maxLine_2\" href=\"https://comem.vn/sp/combo-cham-soc-da-ban-ngay?itm_source=cta&amp;itm_medium=product_article\">Combo chăm s&oacute;c da BAN NG&Agrave;Y (Bọt rửa mặt, toner, kem dưỡng da, kem chống nắng)</a></p>\r\n<div class=\"product-box-2_item__content__price\">\r\n<div class=\"price-now\">815.000<sup>đ</sup></div>\r\n<div class=\"price-old\">915.000</div>\r\n</div>\r\n<div class=\"product-box-2_item__content__rating box-rating\">&nbsp;</div>\r\n</div>\r\n</div>\r\n<div class=\"product-box-2_item four-cols\"><a class=\"product-box-2_item__image\" href=\"https://comem.vn/sp/combo-first-date-tram-tra?itm_source=cta&amp;itm_medium=product_article\"><img class=\" ls-is-cached lazyloaded\" title=\"Combo Firstdate Tr&agrave;m tr&agrave; - Chăm s&oacute;c da mụn bọc, mụn vi&ecirc;m\" src=\"https://static.comem.vn/uploads/March2023/combo-first-date-tram-tra_sp.png\" alt=\"Combo Firstdate Tr&agrave;m tr&agrave; - Chăm s&oacute;c da mụn bọc, mụn vi&ecirc;m\" data-src=\"https://static.comem.vn/uploads/March2023/combo-first-date-tram-tra_sp.png\">\r\n<div class=\"product-box-2_item__image__tags\">\r\n<div class=\"tag-sale\">-6%</div>\r\n</div>\r\n</a>\r\n<div class=\"product-box-2_item__content\">\r\n<p><a class=\"product-box-2_item__content__title maxLine_2\" href=\"https://comem.vn/sp/combo-first-date-tram-tra?itm_source=cta&amp;itm_medium=product_article\">Combo Firstdate Tr&agrave;m tr&agrave; - Chăm s&oacute;c da mụn bọc, mụn vi&ecirc;m</a></p>\r\n<div class=\"product-box-2_item__content__price\">\r\n<div class=\"price-now\">620.000<sup>đ</sup></div>\r\n<div class=\"price-old\">660.000</div>\r\n</div>\r\n<div class=\"product-box-2_item__content__rating box-rating\">\r\n<div class=\"box-rating_star\">&nbsp;&nbsp;&nbsp;&nbsp;</div>\r\n<div class=\"box-rating_text maxLine_1\">4.9 / 32 đ&aacute;nh gi&aacute;</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"product-box-2_item four-cols\"><a class=\"product-box-2_item__image\" href=\"https://comem.vn/sp/combo-rua-mat-sach-sau?option=Combo%20Taptap&amp;itm_source=cta&amp;itm_medium=product_article\"><img class=\" ls-is-cached lazyloaded\" title=\"Combo Rửa mặt sạch s&acirc;u - Double Cleansing từ thi&ecirc;n nhi&ecirc;n\" src=\"https://static.comem.vn/uploads/March2023/combo-rua-mat-sach-sau-tap-tap_sp.png\" alt=\"Combo Rửa mặt sạch s&acirc;u - Double Cleansing từ thi&ecirc;n nhi&ecirc;n\" data-src=\"https://static.comem.vn/uploads/March2023/combo-rua-mat-sach-sau-tap-tap_sp.png\">\r\n<div class=\"product-box-2_item__image__tags\">\r\n<div class=\"tag-sale\">-8%</div>\r\n</div>\r\n</a>\r\n<div class=\"product-box-2_item__content\">\r\n<p><a class=\"product-box-2_item__content__title maxLine_2\" href=\"https://comem.vn/sp/combo-rua-mat-sach-sau?option=Combo%20Taptap&amp;itm_source=cta&amp;itm_medium=product_article\">Combo Rửa mặt sạch s&acirc;u - Double Cleansing từ thi&ecirc;n nhi&ecirc;n - Combo Taptap</a></p>\r\n<div class=\"product-box-2_item__content__price\">\r\n<div class=\"price-now\">240.000<sup>đ</sup></div>\r\n<div class=\"price-old\">260.000</div>\r\n</div>\r\n<div class=\"product-box-2_item__content__rating box-rating\">\r\n<div class=\"box-rating_star\">&nbsp;&nbsp;&nbsp;&nbsp;</div>\r\n<div class=\"box-rating_text maxLine_1\">5.0 / 181 đ&aacute;nh gi&aacute;</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"product-box-2_item four-cols\"><a class=\"product-box-2_item__image\" href=\"https://comem.vn/sp/combo-rua-mat-sach-sau?option=Combo%20G%E1%BA%A5c%20ngh%E1%BB%87&amp;itm_source=cta&amp;itm_medium=product_article\"><img class=\" lazyloaded\" title=\"Combo Rửa mặt sạch s&acirc;u - Double Cleansing từ thi&ecirc;n nhi&ecirc;n\" src=\"https://static.comem.vn/uploads/March2023/combo-rua-mat-sach-sau-gac-nghe_sp.png\" alt=\"Combo Rửa mặt sạch s&acirc;u - Double Cleansing từ thi&ecirc;n nhi&ecirc;n\" data-src=\"https://static.comem.vn/uploads/March2023/combo-rua-mat-sach-sau-gac-nghe_sp.png\">\r\n<div class=\"product-box-2_item__image__tags\">\r\n<div class=\"tag-sale\">-7%</div>\r\n</div>\r\n</a>\r\n<div class=\"product-box-2_item__content\">\r\n<p><a class=\"product-box-2_item__content__title maxLine_2\" href=\"https://comem.vn/sp/combo-rua-mat-sach-sau?option=Combo%20G%E1%BA%A5c%20ngh%E1%BB%87&amp;itm_source=cta&amp;itm_medium=product_article\">Combo Rửa mặt sạch s&acirc;u - Double Cleansing từ thi&ecirc;n nhi&ecirc;n - Combo Gấc nghệ</a></p>\r\n<div class=\"product-box-2_item__content__price\">\r\n<div class=\"price-now\">280.000<sup>đ</sup></div>\r\n<div class=\"price-old\">300.000</div>\r\n</div>\r\n<div class=\"product-box-2_item__content__rating box-rating\">\r\n<div class=\"box-rating_star\">&nbsp;&nbsp;&nbsp;&nbsp;</div>\r\n<div class=\"box-rating_text maxLine_1\">5.0 / 181 đ&aacute;nh gi&aacute;</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"product-box-2_item four-cols\"><a class=\"product-box-2_item__image\" href=\"https://comem.vn/sp/combo-rua-mat-sach-sau?option=Combo%20Tr%C3%A0m%20tr%C3%A0&amp;itm_source=cta&amp;itm_medium=product_article\"><img class=\" lazyloaded\" title=\"Combo Rửa mặt sạch s&acirc;u - Double Cleansing từ thi&ecirc;n nhi&ecirc;n\" src=\"https://static.comem.vn/uploads/March2023/combo-rua-mat-sach-sau-tram-tra_sp.png\" alt=\"Combo Rửa mặt sạch s&acirc;u - Double Cleansing từ thi&ecirc;n nhi&ecirc;n\" data-src=\"https://static.comem.vn/uploads/March2023/combo-rua-mat-sach-sau-tram-tra_sp.png\">\r\n<div class=\"product-box-2_item__image__tags\">\r\n<div class=\"tag-sale\">-7%</div>\r\n</div>\r\n</a>\r\n<div class=\"product-box-2_item__content\">\r\n<p><a class=\"product-box-2_item__content__title maxLine_2\" href=\"https://comem.vn/sp/combo-rua-mat-sach-sau?option=Combo%20Tr%C3%A0m%20tr%C3%A0&amp;itm_source=cta&amp;itm_medium=product_article\">Combo Rửa mặt sạch s&acirc;u - Double Cleansing từ thi&ecirc;n nhi&ecirc;n - Combo Tr&agrave;m tr&agrave;</a></p>\r\n<div class=\"product-box-2_item__content__price\">\r\n<div class=\"price-now\">280.000<sup>đ</sup></div>\r\n<div class=\"price-old\">300.000</div>\r\n</div>\r\n<div class=\"product-box-2_item__content__rating box-rating\">\r\n<div class=\"box-rating_star\">&nbsp;&nbsp;&nbsp;&nbsp;</div>\r\n<div class=\"box-rating_text maxLine_1\">5.0 / 181 đ&aacute;nh gi&aacute;</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"product-box-2_item four-cols\"><a class=\"product-box-2_item__image\" href=\"https://comem.vn/sp/combo-rua-mat-sach-sau?option=Combo%20T%C6%A1%20T%E1%BA%B1m&amp;itm_source=cta&amp;itm_medium=product_article\"><img class=\" lazyloaded\" title=\"Combo Rửa mặt sạch s&acirc;u - Double Cleansing từ thi&ecirc;n nhi&ecirc;n\" src=\"https://static.comem.vn/uploads/March2023/combo-rua-mat-sach-sau-to-tam_sp.png\" alt=\"Combo Rửa mặt sạch s&acirc;u - Double Cleansing từ thi&ecirc;n nhi&ecirc;n\" data-src=\"https://static.comem.vn/uploads/March2023/combo-rua-mat-sach-sau-to-tam_sp.png\">\r\n<div class=\"product-box-2_item__image__tags\">\r\n<div class=\"tag-sale\">-17%</div>\r\n</div>\r\n</a>\r\n<div class=\"product-box-2_item__content\">\r\n<p><a class=\"product-box-2_item__content__title maxLine_2\" href=\"https://comem.vn/sp/combo-rua-mat-sach-sau?option=Combo%20T%C6%A1%20T%E1%BA%B1m&amp;itm_source=cta&amp;itm_medium=product_article\">Combo Rửa mặt sạch s&acirc;u - Double Cleansing từ thi&ecirc;n nhi&ecirc;n - Combo Tơ Tằm</a></p>\r\n<div class=\"product-box-2_item__content__price\">\r\n<div class=\"price-now\">265.000<sup>đ</sup></div>\r\n<div class=\"price-old\">320.000</div>\r\n</div>\r\n<div class=\"product-box-2_item__content__rating box-rating\">\r\n<div class=\"box-rating_star\">&nbsp;&nbsp;&nbsp;&nbsp;</div>\r\n<div class=\"box-rating_text maxLine_1\">5.0 / 181 đ&aacute;nh gi&aacute;</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</section>\r\n<p>&nbsp;</p>\r\n<h2 id=\"buildTocContent_6\">Quy tr&igrave;nh chăm s&oacute;c da mặt cơ bản v&agrave;o buổi tối</h2>\r\n<p>C&aacute;c bước chăm s&oacute;c da mặt v&agrave;o buổi tối kh&aacute; giống với c&aacute;c bước cho buổi s&aacute;ng tuy nhi&ecirc;n bạn n&ecirc;n tẩy trang trước khi thực hiện c&aacute;c bước tiếp theo Nếu bạn đ&atilde; trang điểm với một lớp phấn kh&aacute; d&agrave;y hoặc c&aacute;c loại mỹ phẩm kh&oacute; rửa tr&ocirc;i th&igrave; n&ecirc;n sử dụng dầu tẩy trang, ngược lại nếu để mặt mộc hoặc trang điểm dịu nhẹ th&igrave; n&ecirc;n d&ugrave;ng kem tẩy trang.</p>\r\n<ul>\r\n<li><em>Bước 1 (Tẩy trang)</em></li>\r\n<li><em>Bước 2 ( D&ugrave;ng sữa rửa mặt )</em></li>\r\n<li><em>Bước 3: Sử dụng toner</em></li>\r\n<li><em>Bước 4 ( Thoa tinh chất serum)</em></li>\r\n<li><em>Bước 5 (Thoa sửa dưỡng ẩm hoặc kem dưỡng da)</em></li>\r\n</ul>\r\n<p>Ngo&agrave;i ra, một v&agrave;i bước chăm s&oacute;c da v&agrave;o buổi tối cần thiết kh&aacute;c m&agrave; bạn n&ecirc;n &aacute;p dụng định kỳ hằng tuần để gi&uacute;p da sạch v&agrave; s&aacute;ng khỏe hơn.</p>\r\n<h3 id=\"buildTocContent_7\">Tẩy tế b&agrave;o chết</h3>\r\n<p><img class=\"size-full wp-image-11032 aligncenter lazyloaded\" src=\"https://static.comem.vn/uploads/2019/01/quy-trinh-cham-soc-da-buoc-tay-da-chet.jpg\" alt=\"quy-trinh-cham-soc-da-buoc-tay-da-chet\" width=\"640\" height=\"359\" data-src=\"https://static.comem.vn/uploads/2019/01/quy-trinh-cham-soc-da-buoc-tay-da-chet.jpg\"></p>\r\n<p>Hầu hết, c&aacute;c chuy&ecirc;n gia l&agrave;m đẹp đều khuy&ecirc;n phụ nữ n&ecirc;n tẩy tế b&agrave;o chết từ 1 -2 tuần/ lần t&ugrave;y theo từng loại da. Bởi tr&ecirc;n bề mặt lớp thượng b&igrave;, mỗi ng&agrave;y l&agrave;n da sản xuất ra khoảng 5 tỷ tế b&agrave;o mới v&agrave; đ&agrave;o thảo những tế b&agrave;o đ&atilde; gi&agrave; cỗi.</p>\r\n<p>Nhưng v&igrave; nhiều l&yacute; do m&agrave; lớp da chết đ&oacute; kh&ocirc;ng tự rơi ra m&agrave; b&aacute;m v&agrave;o bề mặt da, l&acirc;u dần sẽ h&oacute;a sừng d&agrave;y khiến vi khuẩn v&agrave; bụi bẩn t&iacute;ch tụ. Đ&acirc;y ch&iacute;nh l&agrave; nguy&ecirc;n nh&acirc;n khiến da trở n&ecirc;n sần s&ugrave;i, sạm m&agrave;u v&agrave; kh&ocirc; r&aacute;p hơn.</p>\r\n<p>Do đ&oacute; tẩy da chết rất cần thiết để gi&uacute;p cho qu&aacute; tr&igrave;nh t&aacute;i tạo da mới nhanh hơn, g&oacute;p phần đầy lui c&aacute;c vấn đề về l&atilde;o h&oacute;a v&agrave; gi&uacute;p cho da dễ d&agrave;ng hấp thụ dưỡng chất từ mỹ phẩm. Tẩy tế b&agrave;o chết c&oacute; nhiều c&aacute;ch kh&aacute;c nhau, bạn c&oacute; thể mua kem tẩy tế b&agrave;o chết hoặc tự tạo hỗn hợp tại nh&agrave; bằng những c&ocirc;ng thức tự nhi&ecirc;n.</p>\r\n<p>Nếu da bạn thuộc l&agrave;n da nhạy cảm th&igrave; n&ecirc;n chọn loại c&oacute; hạt nhỏ, mịn kết hợp với massage gi&uacute;p lấy đi lớp tế b&agrave;o chết gi&agrave; cỗi tr&ecirc;n da.</p>\r\n<p>Bật m&iacute;:&nbsp;<a title=\"tẩy tế b&agrave;o chết\" href=\"https://comem.vn/tay-da-chet-bang-dau-dua-10639\"><strong>5 c&ocirc;ng thức tẩy tế b&agrave;o chết tại nh&agrave; ph&ugrave; hợp cho từng loại da mặt</strong></a></p>\r\n<h3 id=\"buildTocContent_8\">X&ocirc;ng hơi</h3>\r\n<p>Bạn biết đấy, một trong những nguy&ecirc;n nh&acirc;n thường gặp nhất g&acirc;y ra mụn tr&ecirc;n mặt l&agrave; do t&igrave;nh trạng b&iacute;t tắc c&aacute;c lỗ ch&acirc;n l&ocirc;ng. Việc rửa mặt chỉ gi&uacute;p l&agrave;m sạch bề mặt chứ kh&ocirc;ng thể n&agrave;o cuốn tr&ocirc;i đi vi khuẩn ở s&acirc;u trong nang l&ocirc;ng. Do đ&oacute;, x&ocirc;ng hơi l&agrave; phương ph&aacute;p th&iacute;ch hợp v&agrave; rất đơn giản để l&agrave;m sạch lỗ ch&acirc;n l&ocirc;ng đồng thời k&iacute;ch th&iacute;ch sự tuần ho&agrave;n m&aacute;u v&agrave; sản sinh collagen để l&agrave;n da tươi trẻ hơn.</p>\r\n<p>Bạn c&oacute; thể x&ocirc;ng hơi chỉ bằng nước hoặc kết hợp với một v&agrave;i loại thảo dược như chanh, xả, hương nhu...X&ocirc;ng hơi n&ecirc;n thực hiện v&agrave;o buổi tối sau khi tẩy trang v&agrave; rửa mặt sẽ gi&uacute;p bạn thư gi&atilde;n v&agrave; c&oacute; một giấc ngủ ngon hơn.</p>\r\n<h3 id=\"buildTocContent_9\">Đắp mặt nạ</h3>\r\n<p>Đắp mặt nạ cho da mặt cũng l&agrave; một trong c&aacute;c bước chăm s&oacute;c da chuy&ecirc;n nghiệp đa phần được &aacute;p dụng nhiều trong c&aacute;c spa l&agrave;m đẹp. Mặt nạ quan trọng v&igrave; da cũng cần những kho&aacute;ng chất, chăm s&oacute;c đặc biệt, bổ sung những thứ cần thiết, gi&uacute;p da l&atilde;o ho&aacute; chậm hơn, đ&agrave;n hồi cao, xo&aacute; nếp nhăn, mịn&hellip; m&agrave; những sản phẩm h&agrave;ng ng&agrave;y kh&ocirc;ng cung cấp đủ. Mặt nạ n&ecirc;n sử dụng 2-3 lần/tuần.</p>\r\n<div>Đắp mặt nạ n&ecirc;n thực hiện sau bước tẩy tế b&agrave;o chết, rửa mặt v&agrave; massage. Bạn c&oacute; thể chọn những loại mặt nạ giấy để tiện dụng hoặc tự l&agrave;m mặt nạ nguy&ecirc;n liệu thi&ecirc;n nhi&ecirc;n tại (từ bơ, chuối, khoai t&acirc;y, bột tr&agrave; xanh...)nh&agrave; nếu th&iacute;ch.</div>\r\n<div>&nbsp;</div>\r\n<div><em>Sau khi đọc xong b&agrave;i n&agrave;y c&oacute; thể bạn sẽ hơi bối rối v&igrave; tại sao chăm s&oacute;c da lại nhiều bước đến vậy, biết bao nhi&ecirc;u loại mỹ phẩm, kem dưỡng da nữa. Đừng vội than phiền v&igrave; điều g&igrave; cũng c&oacute; l&yacute; do của n&oacute;&nbsp;bởi người ta thường n&oacute;i rằng \"<strong>đẹp tự nhi&ecirc;n nhưng kh&ocirc;ng tự nhi&ecirc;n m&agrave; đẹp</strong>\", tất cả những g&igrave; m&agrave; bạn c&oacute; được đều cần phải phải đ&aacute;nh đổi. Hơn nữa, việc d&ugrave;ng sản phẩm dưỡng da của h&atilde;ng n&agrave;o đắt hay rẻ cũng đừng qu&aacute; quan trọng m&agrave; quan trọng nhất vẫn l&agrave; n&oacute; ph&ugrave; hợp v&agrave; gi&uacute;p da bạn khỏe mạnh v&agrave; c&aacute;ch m&agrave; bạn sử dụng n&oacute; mỗi ng&agrave;y.</em></div>\r\n<p><strong>Xem th&ecirc;m: Bộ sản phẩm chăm s&oacute;c da cơ bản tại nh&agrave;</strong>:</p>\r\n<p><img class=\"size-full wp-image-24902 aligncenter lazyloaded\" src=\"https://static.comem.vn/uploads/2019/02/combo-first-date.jpg\" alt=\"combo-first-date\" width=\"640\" height=\"307\" data-src=\"https://static.comem.vn/uploads/2019/02/combo-first-date.jpg\">&nbsp;</p>\r\n</div>\r\n</div>\r\n<div class=\"blogs-sidebar four-twelfths\">\r\n<div class=\"headingCustom\">GIỚI THIỆU VỀ CỎ MỀM</div>\r\n<div class=\"blogs-sidebar__image\"><a href=\"https://comem.vn/ve-co-mem\"><img src=\"https://assets.comem.vn/images/blogs/blog-brand.png\" alt=\"Giới thiệu về cỏ mềm\"></a></div>\r\n<a class=\"blogs-sidebar__more blog-sidebar--more\" href=\"https://comem.vn/ve-co-mem\">XEM TH&Ecirc;M</a>\r\n<div class=\"blogs-sidebar__banner\"><img class=\" ls-is-cached lazyloaded\" src=\"https://assets.comem.vn/images/blogs/blog-banner.jpg\" alt=\"5 việc tốt\" data-src=\"https://assets.comem.vn/images/blogs/blog-banner.jpg\"></div>\r\n<div class=\"disable-max-577\">\r\n<div class=\"blogs-sidebar__heading\"><span class=\"icon\"><img class=\" ls-is-cached lazyloaded\" src=\"https://assets.comem.vn/images/blogs/flower.svg\" alt=\"B&agrave;i viết được đọc nhiều\" data-src=\"https://assets.comem.vn/images/blogs/flower.svg\"></span>\r\n<div class=\"headingCustom\">B&Agrave;I VIẾT ĐƯỢC ĐỌC NHIỀU</div>\r\n</div>\r\n</div>\r\n<div class=\"blogs-sidebar__list disable-max-577\">\r\n<div class=\"item\">\r\n<div class=\"thumbnail\"><a href=\"https://comem.vn/tay-da-chet-body-8329\"><img class=\" ls-is-cached lazyloaded\" src=\"https://static.comem.vn/uploads/October2021/tay-da-chet-body.jpg\" alt=\"Tẩy da chết body mịn m&agrave;ng ➡️ Tr&igrave;nh tự &quot;chuẩn đ&eacute;t&quot; 4 BƯỚC\" data-src=\"https://static.comem.vn/uploads/October2021/tay-da-chet-body.jpg\"></a></div>\r\n<div class=\"title\"><a href=\"https://comem.vn/tay-da-chet-body-8329\">Tẩy Da Chết Body Mịn M&agrave;ng ➡️ Tr&igrave;nh Tự \"Chuẩn Đ&eacute;t\" 4 BƯỚC</a></div>\r\n</div>\r\n<div class=\"item\">\r\n<div class=\"thumbnail\"><a href=\"https://comem.vn/quy-trinh-cham-soc-da-mat-co-ban-10835\"><img class=\" ls-is-cached lazyloaded\" src=\"https://static.comem.vn/uploads/April2022/da-bi-kho-do-su-dung-xa-phong-cong-nghiep.jpg\" alt=\"▷ Quy tr&igrave;nh chăm s&oacute;c da mặt cơ bản &quot;5 BƯỚC&quot; như da Baby\" data-src=\"https://static.comem.vn/uploads/April2022/da-bi-kho-do-su-dung-xa-phong-cong-nghiep.jpg\"></a></div>\r\n<div class=\"title\"><a href=\"https://comem.vn/quy-trinh-cham-soc-da-mat-co-ban-10835\">▷ Quy Tr&igrave;nh Chăm S&oacute;c Da Mặt Cơ Bản \"5 BƯỚC\" Như Da Baby</a></div>\r\n</div>\r\n<div class=\"item\">\r\n<div class=\"thumbnail\"><a href=\"https://comem.vn/loi-khuyen-cham-soc-da-mat-dung-cach-11211\"><img class=\" ls-is-cached lazyloaded\" src=\"https://static.comem.vn/uploads/April2022/bi-quyet-cham-soc-da-dep.jpg\" alt=\"12 Lời khuy&ecirc;n chăm s&oacute;c da mặt đ&uacute;ng c&aacute;ch - sạch mụn, s&aacute;ng mịn\" data-src=\"https://static.comem.vn/uploads/April2022/bi-quyet-cham-soc-da-dep.jpg\"></a></div>\r\n<div class=\"title\"><a href=\"https://comem.vn/loi-khuyen-cham-soc-da-mat-dung-cach-11211\">12 Lời Khuy&ecirc;n Chăm S&oacute;c Da Mặt Đ&uacute;ng C&aacute;ch - Sạch Mụn, S&aacute;ng Mịn</a></div>\r\n</div>\r\n<div class=\"item\">\r\n<div class=\"thumbnail\"><a href=\"https://comem.vn/san-pham-se-khit-lo-chan-long-31018\"><img class=\" ls-is-cached lazyloaded\" src=\"https://static.comem.vn/uploads/April2022/se-khit-lo-chan-long.jpg\" alt=\"Tiết lộ 10 sản phẩm se kh&iacute;t lỗ ch&acirc;n l&ocirc;ng tốt, đ&aacute;ng mua nhất.\" data-src=\"https://static.comem.vn/uploads/April2022/se-khit-lo-chan-long.jpg\"></a></div>\r\n<div class=\"title\"><a href=\"https://comem.vn/san-pham-se-khit-lo-chan-long-31018\">Tiết Lộ 10 Sản Phẩm Se Kh&iacute;t Lỗ Ch&acirc;n L&ocirc;ng Tốt, Đ&aacute;ng Mua Nhất.</a></div>\r\n</div>\r\n<div class=\"item\">\r\n<div class=\"thumbnail\"><a href=\"https://comem.vn/chua-mun-nhot-bang-la-cay-14370\"><img class=\" ls-is-cached lazyloaded\" src=\"https://static.comem.vn/uploads/April2022/tri-mun-nhot-bang-cac-loai-la.jpg\" alt=\"Chữa mụn nhọt bằng l&aacute; c&acirc;y #9 vị c&acirc;y qu&yacute; như &quot;Thần dược&quot;\" data-src=\"https://static.comem.vn/uploads/April2022/tri-mun-nhot-bang-cac-loai-la.jpg\"></a></div>\r\n<div class=\"title\"><a href=\"https://comem.vn/chua-mun-nhot-bang-la-cay-14370\">Chữa Mụn Nhọt Bằng L&aacute; C&acirc;y #9 Vị C&acirc;y Qu&yacute; Như \"Thần Dược\"</a></div>\r\n</div>\r\n<div class=\"item\">\r\n<div class=\"thumbnail\">&nbsp;</div>\r\n</div>\r\n</div>\r\n</div>', 'images/g5zaIhCOd4q8e9sPQUtRqAeVc3SnDIW4zvhUPkik.jpg', 1, '2023-05-03 03:10:47', '2023-05-03 03:10:47');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `message` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `detail_orders`
--

CREATE TABLE `detail_orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL,
  `current_price` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `detail_orders`
--

INSERT INTO `detail_orders` (`id`, `product_id`, `order_id`, `quantity`, `current_price`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 2, 100000, '2023-05-02 21:05:18', '2023-05-02 21:05:18'),
(2, 2, 2, 3, 250000, '2023-05-02 21:05:18', '2023-05-02 21:05:18');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(3, '2022_11_24_101758_create_type_products_table', 1),
(4, '2022_11_24_101815_create_products_table', 1),
(5, '2022_11_25_104218_create_carts_table', 1),
(6, '2022_11_25_104301_create_statuses_table', 1),
(7, '2022_11_25_104324_create_orders_table', 1),
(8, '2022_11_25_104358_create_detail_orders_table', 1),
(9, '2022_11_25_190929_create_banks_table', 1),
(10, '2022_11_26_062045_create_auto_banks_table', 1),
(11, '2022_11_29_045906_create_contacts_table', 1),
(13, '2023_05_03_041915_create_blogs_table', 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `stt_id` bigint(20) UNSIGNED NOT NULL,
  `total_price` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `stt_id`, `total_price`, `created_at`, `updated_at`) VALUES
(2, 1, 1, 950000, '2023-05-02 21:05:18', '2023-05-02 21:05:18');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `typeProduct_id` bigint(20) UNSIGNED NOT NULL,
  `price` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `description` varchar(255) NOT NULL,
  `urlImage` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `name`, `typeProduct_id`, `price`, `description`, `urlImage`, `created_at`, `updated_at`) VALUES
(1, 'Son môi', 1, 200000, 'Son môi', 'images/MUh6CPEq4qWr4Wl0eZPM4JG7plduhexDt77kHMZu.jpg', '2023-05-02 20:52:49', '2023-05-03 02:13:47'),
(2, 'MẶT NẠ DƯỢC LIỆU DƯỠNG DA FLOWER MASK', 3, 250000, 'MẶT NẠ DƯỢC LIỆU DƯỠNG DA FLOWER MASK', 'images/1O2PPRv9kQozlhPtkdbcNqbRaQJPrMwsN1pg16M0.jpg', '2023-05-02 20:59:54', '2023-05-02 20:59:54');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `statuses`
--

CREATE TABLE `statuses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `color` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `statuses`
--

INSERT INTO `statuses` (`id`, `name`, `color`, `created_at`, `updated_at`) VALUES
(1, 'Đang chờ thành toán', 'warning', NULL, NULL),
(2, 'Đã thanh toán', 'success', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `type_products`
--

CREATE TABLE `type_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `type_products`
--

INSERT INTO `type_products` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Son', '2023-05-02 20:51:24', '2023-05-02 20:51:24'),
(2, 'Sữa rửa mặt', '2023-05-02 20:51:48', '2023-05-02 20:51:48'),
(3, 'Mặt nạ', '2023-05-02 20:59:09', '2023-05-02 20:59:09');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `firstName` varchar(255) NOT NULL,
  `lastName` varchar(255) NOT NULL,
  `birthDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `phoneNumber` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `streetName` varchar(255) NOT NULL,
  `streetNumber` varchar(255) NOT NULL,
  `district` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `urlAvata` varchar(255) NOT NULL,
  `status` bigint(20) UNSIGNED NOT NULL,
  `role` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `firstName`, `lastName`, `birthDate`, `phoneNumber`, `email`, `password`, `streetName`, `streetNumber`, `district`, `city`, `urlAvata`, `status`, `role`, `created_at`, `updated_at`) VALUES
(1, 'Hải', 'Phan Đức', '2023-05-03 04:07:15', '0987654321', 'hai@gmail.com', '111111', '', '', '', '', 'images/1O2PPRv9kQozlhPtkdbcNqbRaQJPrMwsN1pg16M0.jpg', 1, 1, NULL, NULL),
(2, 'Anh', 'Nguyen Van', '2023-05-03 04:06:30', '0123456789', 'anh@gmail.com', '111111', '2', '2', '2', 'Da Nang', 'images/Tt5FnLD53Kbwfzjaz9ud1ePjWGDyzwZ3PYxnF2CP.jpg', 1, 0, '2023-05-02 20:57:46', '2023-05-02 21:06:30');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `auto_banks`
--
ALTER TABLE `auto_banks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `auto_banks_order_id_foreign` (`order_id`);

--
-- Chỉ mục cho bảng `banks`
--
ALTER TABLE `banks`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blogs_user_id_foreign` (`user_id`);

--
-- Chỉ mục cho bảng `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `carts_user_id_foreign` (`user_id`),
  ADD KEY `carts_product_id_foreign` (`product_id`);

--
-- Chỉ mục cho bảng `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `detail_orders`
--
ALTER TABLE `detail_orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `detail_orders_product_id_foreign` (`product_id`),
  ADD KEY `detail_orders_order_id_foreign` (`order_id`);

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
  ADD KEY `orders_user_id_foreign` (`user_id`),
  ADD KEY `orders_stt_id_foreign` (`stt_id`);

--
-- Chỉ mục cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_typeproduct_id_foreign` (`typeProduct_id`);

--
-- Chỉ mục cho bảng `statuses`
--
ALTER TABLE `statuses`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `type_products`
--
ALTER TABLE `type_products`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_phonenumber_unique` (`phoneNumber`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `auto_banks`
--
ALTER TABLE `auto_banks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `banks`
--
ALTER TABLE `banks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `detail_orders`
--
ALTER TABLE `detail_orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `statuses`
--
ALTER TABLE `statuses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `type_products`
--
ALTER TABLE `type_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `auto_banks`
--
ALTER TABLE `auto_banks`
  ADD CONSTRAINT `auto_banks_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`);

--
-- Các ràng buộc cho bảng `blogs`
--
ALTER TABLE `blogs`
  ADD CONSTRAINT `blogs_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Các ràng buộc cho bảng `carts`
--
ALTER TABLE `carts`
  ADD CONSTRAINT `carts_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `carts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Các ràng buộc cho bảng `detail_orders`
--
ALTER TABLE `detail_orders`
  ADD CONSTRAINT `detail_orders_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  ADD CONSTRAINT `detail_orders_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Các ràng buộc cho bảng `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_stt_id_foreign` FOREIGN KEY (`stt_id`) REFERENCES `statuses` (`id`),
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Các ràng buộc cho bảng `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_typeproduct_id_foreign` FOREIGN KEY (`typeProduct_id`) REFERENCES `type_products` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
