-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 18, 2015 at 02:31 AM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `san_pham_go`
--

-- --------------------------------------------------------

--
-- Table structure for table `bai_viet`
--

CREATE TABLE IF NOT EXISTS `bai_viet` (
  `ma_bai_viet` int(11) NOT NULL AUTO_INCREMENT,
  `ma_loai_bai_viet` int(11) DEFAULT NULL,
  `ma_nguoi_dung` int(11) NOT NULL,
  `tieu_de` varchar(200) CHARACTER SET utf8 NOT NULL,
  `noi_dung_tom_tat` text CHARACTER SET utf8 NOT NULL,
  `noi_dung_chi_tiet` text CHARACTER SET utf8 NOT NULL,
  `hinh` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ngay_gui_bai` datetime NOT NULL,
  `ngay_xuat_ban` datetime DEFAULT NULL,
  `ngay_het_han` datetime DEFAULT NULL,
  `so_lan_xem` int(11) NOT NULL,
  `xuat_ban` tinyint(1) NOT NULL,
  PRIMARY KEY (`ma_bai_viet`),
  KEY `ma_the_loai` (`ma_loai_bai_viet`),
  KEY `ma_tac_gia` (`ma_nguoi_dung`),
  KEY `ma_the_loai_2` (`ma_loai_bai_viet`),
  KEY `ma_tac_gia_2` (`ma_nguoi_dung`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=15 ;

--
-- Dumping data for table `bai_viet`
--

INSERT INTO `bai_viet` (`ma_bai_viet`, `ma_loai_bai_viet`, `ma_nguoi_dung`, `tieu_de`, `noi_dung_tom_tat`, `noi_dung_chi_tiet`, `hinh`, `ngay_gui_bai`, `ngay_xuat_ban`, `ngay_het_han`, `so_lan_xem`, `xuat_ban`) VALUES
(1, 0, 1, 'Giới thiệu về công ty', '', '<p style="margin-bottom: 10px">\r\n	<strong style="color: ##78cb23">C&ocirc;ng ty </strong><strong>Cổ Phần Thương Mại Dịch Vụ</strong><strong> </strong><span style="font-weight: bold;">Alphatek Computer </span>l&agrave; C&ocirc;ng ty hoạt động trong nhiều lĩnh vực trong đ&oacute; m&aacute;y vi t&iacute;nh v&agrave; thiết bị văn ph&ograve;ng l&agrave; ng&agrave;nh chủ lực. <span style="font-weight: bold;">Alphatek Computer</span>c&oacute; một đội ngũ nh&acirc;n vi&ecirc;n c&oacute; tr&igrave;nh độ chuy&ecirc;n m&ocirc;n cao, đủ khả năng để c&oacute; thể đ&aacute;p ứng mọi y&ecirc;u cầu khắt khe nhất của qu&iacute; kh&aacute;ch h&agrave;ng.<br />\r\n	Kh&ocirc;ng những thế, đội ngũ nh&acirc;n vi&ecirc;n của <span style="font-weight: bold;">Alphatek Computer</span>c&ograve;n l&agrave; những người đầy l&ograve;ng nhiệt t&igrave;nh v&agrave; c&oacute; th&aacute;i độ rất niềm nở trong cung c&aacute;ch phục vụ kh&aacute;ch h&agrave;ng.</p>\r\n<p  style="margin-bottom: 10px">\r\n	<strong>C&ocirc;ng ty Cổ Phần Thương Mại Dịch Vụ </strong><strong>Alphatek Computer</strong> tọa lạc ngay khu vực trung t&acirc;m th&agrave;nh phố, tại số 357 L&ecirc; Hồng Phong, Quận 10, TP Hồ Ch&iacute; Minh.</p>\r\n<p  style="margin-bottom: 10px">\r\n	Được th&agrave;nh lập từ th&aacute;ng 04 năm 1997, Phong Vũ lu&ocirc;n l&agrave; nh&agrave; ph&acirc;n phối c&aacute;c sản phẩm v&agrave; linh kiện m&aacute;y t&iacute;nh, thiết bị văn ph&ograve;ng, th&ocirc;ng tin li&ecirc;n lạc v&agrave; giải tr&iacute; do c&aacute;c h&atilde;ng điện tử h&agrave;ng đầu tr&ecirc;n thế giới sản xuất. Mức gi&aacute; sản phẩm do Phong Vũ cung cấp lu&ocirc;n ph&ugrave; hợp trong m&ocirc;i trường cạnh tranh, chất lượng sản phẩm lu&ocirc;n được Phong Vũ đảm bảo.</p>\r\n<p  style="margin-bottom: 10px">\r\n	<strong>Alphatek Computer</strong> c&ograve;n l&agrave; địa chỉ tin cậy đối với kh&aacute;ch h&agrave;ng c&oacute; nhu cầu bảo h&agrave;nh v&agrave; bảo tr&igrave; cho c&aacute;c loại m&aacute;y t&iacute;nh để b&agrave;n, m&aacute;y t&iacute;nh x&aacute;ch tay, m&aacute;y in, UPS (thiết bị điện), v&agrave; c&aacute;c thiết bị ngoại vi. Với c&aacute;c loại h&igrave;nh dịch vụ bảo h&agrave;nh v&agrave; bảo tr&igrave; tận nơi, bảy ng&agrave;y trong tuần, ch&uacute;ng t&ocirc;i bảo đảm tối ưu h&oacute;a năng lực c&aacute;c m&aacute;y m&oacute;c, thiết bị của kh&aacute;ch h&agrave;ng.</p>\r\n<p  style="margin-bottom: 10px">\r\n	<span style="font-weight: bold;">Alphatek Computer</span> đ&atilde; v&agrave; đang cung cấp giải ph&aacute;p mạng cho c&aacute;c tổ chức, doanh nghiệp hoặc c&aacute; nh&acirc;n kinh doanh internet. Ch&uacute;ng t&ocirc;i hiện c&oacute; trong tay c&aacute;c phương tiện hiện đại nhất, c&oacute; thể lắp đặt phần cứng v&agrave; c&agrave;i đặt phần mềm quản l&yacute;, duy tr&igrave; t&iacute;nh ổn định, k&eacute;o d&agrave;i tối đa tuổi thọ của to&agrave;n bộ hệ thống.</p>\r\n<p  style="margin-bottom: 10px">\r\n	Đội ngũ nh&acirc;n vi&ecirc;n v&agrave; quản l&yacute; của <strong>Alphatek Computer</strong> lu&ocirc;n được lựa chọn kỹ c&agrave;ng trước khi trải qua qu&aacute; tr&igrave;nh huấn luyện v&agrave; cập nhật thường xuy&ecirc;n những th&agrave;nh tựu mới nhất về dịch vụ kh&aacute;ch h&agrave;ng, dịch vụ kỹ thuật v&agrave; sản phẩm.</p>\r\n<p  style="margin-bottom: 10px">\r\n	<strong>&quot;Lấy sự H&agrave;i l&ograve;ng của kh&aacute;ch h&agrave;ng l&agrave;m niềm Hạnh ph&uacute;c của ch&uacute;ng ta&quot; l&agrave; những g&igrave; m&agrave; to&agrave;n thể nh&acirc;n vi&ecirc;n c&ocirc;ng ty Alphatek Computer đang ng&agrave;y đ&ecirc;m phấn đấu !&quot;</strong></p>\r\n', '', '2011-03-10 00:00:00', '2011-03-10 00:00:00', '0000-00-00 00:00:00', 0, 1),
(2, 0, 1, 'Chính sách bảo hành', '', '<p>\r\n	<strong>I- Cam kết bảo h&agrave;nh của Alphatek Computer:</strong></p>\r\n<p>\r\n	1.1- Đối với những thiết bị được bảo h&agrave;nh từ 24 th&aacute;ng trở l&ecirc;n b&aacute;n ra trong v&ograve;ng 01&gt;06 th&aacute;ng nếu c&oacute; vấn đề g&igrave; trục trặc:</p>\r\n<p>\r\n	* Ch&uacute;ng t&ocirc;i sẽ đổi ngay cho c&aacute;c bạn một sản phẩm mới 100% ngay lập tức</p>\r\n<p>\r\n	1.2- Đối với những thiết bị b&aacute;n ra trong v&ograve;ng từ&nbsp; 06 &gt; 12 th&aacute;ng nếu c&oacute; vấn đề g&igrave; trục trặc:</p>\r\n<p>\r\n	* Ch&uacute;ng t&ocirc;i cam kết trả h&agrave;ng bảo h&agrave;nh cho c&aacute;c bạn tối đa trong v&ograve;ng 40h l&agrave;m việc.</p>\r\n<p>\r\n	* Trong thời gian đ&oacute; bạn sẽ được Ch&uacute;ng t&ocirc;i cho mượn thiết bị kh&aacute;c để sử dụng tạm thời.</p>\r\n<p>\r\n	1.3- Đối với những thiết bị b&aacute;n ra trong v&ograve;ng từ 12 th&aacute;ng trở l&ecirc;n nếu c&oacute; vấn đề g&igrave; trục trặc:</p>\r\n<p>\r\n	* Alphatek cam kết trả h&agrave;ng bảo h&agrave;nh cho c&aacute;c bạn tối đa trong v&ograve;ng 72h l&agrave;m việc.</p>\r\n<p>\r\n	* Trong thời gian đ&oacute; bạn sẽ được Ch&uacute;ng t&ocirc;i cho mượn thiết bị kh&aacute;c để sử dụng tạm thời.</p>\r\n<p>\r\n	1.4- Đối với c&aacute;c kh&aacute;ch h&agrave;ng c&oacute; đăng k&yacute; dịch vụ bảo h&agrave;nh tại nơi sử dụng:</p>\r\n<p>\r\n	* Khi c&oacute; bất cứ trục trặc g&igrave; về m&aacute;y t&iacute;nh, trong v&ograve;ng 2h kể từ khi nhận được th&ocirc;ng b&aacute;o ch&uacute;ng t&ocirc;i sẽ c&oacute; mặt để khắc phục sự cố. Trong trường hợp ngo&agrave;i thời gian l&agrave;m việc, ch&uacute;ng t&ocirc;i sẽ khắc phục ngay v&agrave;o đầu giờ của buổi l&agrave;m việc tiếp theo.</p>\r\n<p>\r\n	* Tất cả c&aacute;c thiết bị sẽ được khắc phục ngay tại chỗ, trường hợp kh&ocirc;ng thể sửa chữa được, ch&uacute;ng t&ocirc;i sẽ c&oacute; ngay thiết bị kh&aacute;c để qu&iacute; kh&aacute;ch sử dụng tạm thời.</p>\r\n<p>\r\n	<strong>II. Một v&agrave;i lưu &yacute; về c&aacute;c cam kết n&agrave;y :</strong></p>\r\n<p>\r\n	2.1 Điều kiện được đổi ngay: Sản phẩm bị lỗi c&ograve;n nguy&ecirc;n hiện trạng ban đầu (kh&ocirc;ng bị trầy xước, biến dạng v&agrave; c&ograve;n đầy đủ c&aacute;c phụ kiện k&egrave;m theo như vỏ hộp, s&aacute;ch hướng dẫn, đĩa c&agrave;i, &hellip;)</p>\r\n<p>\r\n	-&nbsp;&nbsp;&nbsp; Mục n&agrave;y chỉ &aacute;p dụng với đối tượng kh&aacute;ch h&agrave;ng l&agrave; người ti&ecirc;u d&ugrave;ng cuối c&ugrave;ng, kh&ocirc;ng &aacute;p dụng đối với c&aacute;c sản phẩm l&agrave; m&aacute;y t&iacute;nh x&aacute;ch tay, m&aacute;y chiếu, m&aacute;y fax, m&aacute;y in, m&aacute;y photocopy, m&aacute;y huỷ t&agrave;i liệu.</p>\r\n<p>\r\n	-&nbsp;&nbsp;&nbsp; Chỉ &aacute;p dụng với c&aacute;c sản phẩm bị lỗi do nh&agrave; Sản xuất.</p>\r\n<p>\r\n	<strong><em>2.2. Bảo h&agrave;nh trong cả trường hợp ch&aacute;y nổ IC, phồng tụ.</em></strong></p>\r\n<p>\r\n	Mặc d&ugrave; như c&aacute;c bạn đ&atilde; biết (theo qui chế bảo h&agrave;nh ở Việt Nam &amp; tr&ecirc;n Thế giới) l&agrave; trong trường hợp n&agrave;y c&ocirc;ng ty Alphatek sẽ kh&ocirc;ng được c&aacute;c nh&agrave; cung cấp &amp; c&aacute;c h&atilde;ng chấp nhận bảo h&agrave;nh. Thế nhưng c&ocirc;ng ty&nbsp; vẫn hỗ trợ c&aacute;c kh&aacute;ch h&agrave;ng của m&igrave;nh một c&aacute;ch tối đa c&oacute; thể nhằm khẳng định sự vượt trội về Chất lượng dịch vụ của Alphatek</p>\r\n<p>\r\n	Đối với những sản phẩm vi phạm điều kiện bảo h&agrave;nh của h&atilde;ng như: ch&aacute;y nổ IC, phồng tụ, ch&uacute;ng t&ocirc;i sẵn s&agrave;ng hỗ trợ bảo h&agrave;nh cho kh&aacute;ch h&agrave;ng (<em>chỉ &aacute;p dụng đối với kh&aacute;ch h&agrave;ng l&agrave; người ti&ecirc;u d&ugrave;ng cuối c&ugrave;ng</em>).</p>\r\n<p>\r\n	<strong><em>2.3. Cho kh&aacute;ch h&agrave;ng mượn sản phẩm để sử dụng trong thời gian gửi bảo h&agrave;nh.</em></strong></p>\r\n<p>\r\n	Để c&ocirc;ng việc của Qu&yacute; kh&aacute;ch h&agrave;ng kh&ocirc;ng bị gi&aacute;n đoạn, trong thời gian sản phẩm của Qu&yacute; kh&aacute;ch đang được bảo h&agrave;nh, ch&uacute;ng t&ocirc;i tạm thời cho Qu&yacute; kh&aacute;ch mượn 01 sản phẩm c&oacute; t&iacute;nh năng tương tự để sử dụng, việc n&agrave;y ho&agrave;n to&agrave;n miễn ph&iacute;.</p>\r\n<p>\r\n	<strong><em>24. Trường hợp kh&aacute;ch h&agrave;ng muốn n&acirc;ng cấp sản phẩm.</em></strong></p>\r\n<p>\r\n	Trong một số trường hợp, khi kh&aacute;ch h&agrave;ng muốn n&acirc;ng cấp, thay đổi sản phẩm, C&ocirc;ng ty sẽ nhập lại sản phẩm cũ với gi&aacute; thoả thuận.</p>\r\n<p>\r\n	<strong><em>2.5. Hỗ trợ kh&aacute;ch h&agrave;ng trong việc t&igrave;m lại th&ocirc;ng tin bảo h&agrave;nh.</em></strong></p>\r\n<p>\r\n	Đối với c&aacute;c sản phẩm được mua tại C&ocirc;ng ty Alphatek nhưng vi phạm điều kiện về thủ tục bảo h&agrave;nh như: phiếu bảo h&agrave;nh bị mất, r&aacute;ch, nh&agrave;u n&aacute;t. Ch&uacute;ng t&ocirc;i sẽ hỗ trợ kh&aacute;ch h&agrave;ng trong việc t&igrave;m lại th&ocirc;ng tin về sản phẩm (trong khả năng c&oacute; thể) để sản phẩm của Qu&yacute; kh&aacute;ch được bảo h&agrave;nh theo quy định.</p>\r\n<p>\r\n	<strong><em>2.6. Nhận sửa chữa dịch vụ với ph&iacute; ưu đ&atilde;i.</em></strong></p>\r\n<p>\r\n	Đối với c&aacute;c sản phẩm vi phạm điều kiện bảo h&agrave;nh của C&ocirc;ng ty dẫn tới việc sản phẩm kh&ocirc;ng được hưởng dịch vụ bảo h&agrave;nh, C&ocirc;ng ty ch&uacute;ng t&ocirc;i c&oacute; ch&iacute;nh s&aacute;ch nhận sửa chữa dịch vụ với ph&iacute; ưu đ&atilde;i. Căn cứ v&agrave;o kết quả kiểm tra t&igrave;nh trạng của sản phẩm, ch&uacute;ng t&ocirc;i sẽ đề xuất hướng giải quyết tốt nhất cho kh&aacute;ch h&agrave;ng v&agrave; thực hiện b&aacute;o gi&aacute; chi ph&iacute; sửa chữa trong thời gian 2 ng&agrave;y để Qu&yacute; kh&aacute;ch h&agrave;ng xem x&eacute;t.</p>\r\n<p>\r\n	<strong><em>2.7. Ưu đ&atilde;i đặc biệt d&agrave;nh cho bất kỳ kh&aacute;ch h&agrave;ng n&agrave;o đến với Alphatek.</em></strong></p>\r\n<p>\r\n	Trong bất kể thời gian l&agrave;m việc n&agrave;o của Trung t&acirc;m bảo h&agrave;nh Alphatek , Trung t&acirc;m tổ chức bảo tr&igrave;, bảo dưỡng, c&agrave;i đặt phần mềm miễn ph&iacute; cho tất cả c&aacute;c kh&aacute;ch h&agrave;ng đến với Trung t&acirc;m. Trung t&acirc;m cung cấp dịch vụ miễn ph&iacute; cả với những sản phẩm kh&ocirc;ng phải do C&ocirc;ng ty cung cấp. Ngo&agrave;i ra, trong qu&aacute; tr&igrave;nh sử dụng c&aacute;c sản phẩm Tin học của m&igrave;nh, nếu gặp bất kỳ vướng mắc, trở ngại n&agrave;o Qu&yacute; kh&aacute;ch vui l&ograve;ng li&ecirc;n hệ với Trung t&acirc;m bảo h&agrave;nh Alphatek để được giải đ&aacute;p ho&agrave;n to&agrave;n miễn ph&iacute;.</p>\r\n<p>\r\n	<strong>III. Thời hạn bảo h&agrave;nh.</strong></p>\r\n<p>\r\n	Qu&yacute; kh&aacute;ch h&agrave;ng vui l&ograve;ng xem th&ocirc;ng tin về thời hạn bảo h&agrave;nh của c&aacute;c sản phẩm tr&ecirc;n phiếu bảo h&agrave;nh, b&aacute;o gi&aacute; in, b&aacute;o gi&aacute; tr&ecirc;n hệ thống Website của C&ocirc;ng ty.</p>\r\n<p>\r\n	<strong>IV. Điều kiện bảo h&agrave;nh.</strong></p>\r\n<p>\r\n	4.1. C&aacute;c điều kiện bảo h&agrave;nh của sản phẩm được tu&acirc;n thủ theo quy định của nh&agrave; ph&acirc;n phối hoặc của h&atilde;ng sản xuất.</p>\r\n<p>\r\n	4.2. C&aacute;c trường hợp bị coi l&agrave; vi phạm điều kiện bảo h&agrave;nh, bao gồm:</p>\r\n<p>\r\n	- Sản phẩm hết thời hạn bảo h&agrave;nh;</p>\r\n<p>\r\n	- Kh&ocirc;ng c&oacute; Phiếu bảo h&agrave;nh;</p>\r\n<p>\r\n	- Phiếu bảo h&agrave;nh bị nh&agrave;u n&aacute;t kh&ocirc;ng đọc được;</p>\r\n<p>\r\n	- Phiếu v&agrave; tem bảo h&agrave;nh tr&ecirc;n sản phẩm kh&ocirc;ng đồng nhất;</p>\r\n<p>\r\n	- Th&ocirc;ng tin tr&ecirc;n Phiếu bảo h&agrave;nh bị sửa đổi, tẩy xo&aacute;;</p>\r\n<p>\r\n	- R&aacute;ch tem hoặc kh&ocirc;ng c&oacute; tem của C&ocirc;ng ty, của nh&agrave; ph&acirc;n phối, h&atilde;ng sản xuất;</p>\r\n<p>\r\n	- Số seri, m&atilde; vạch, th&ocirc;ng số kỹ thuật tr&ecirc;n sản phẩm bị mờ kh&ocirc;ng đọc được, bị cạo, bị sửa hoặc r&aacute;ch;</p>\r\n<p>\r\n	- Hỏng do thi&ecirc;n tai, hoả hoạn, nguồn điện kh&ocirc;ng b&igrave;nh thường;</p>\r\n<p>\r\n	- Sản phẩm bị rơi, bị va đập. Sản phẩm bị lỗi do Qu&yacute; kh&aacute;ch vận chuyển hoặc lắp đặt sai quy c&aacute;ch;</p>\r\n<p>\r\n	- Sản phẩm kh&ocirc;ng c&ograve;n nguy&ecirc;n trạng th&aacute;i vật l&yacute; ban đầu;</p>\r\n<p>\r\n	- Sản phẩm c&oacute; dấu hiệu đ&atilde; bị c&ocirc;n tr&ugrave;ng x&acirc;m nhập;</p>\r\n<p>\r\n	- C&aacute;c phụ kiện ti&ecirc;u hao trong qu&aacute; tr&igrave;nh sử dụng như hộp mực, băng mực, đầu kim, băng xo&aacute;, quạt, c&aacute;c loại c&aacute;p&hellip;</p>\r\n<p>\r\n	Sản phẩm bị lỗi do kh&aacute;ch h&agrave;ng tự &yacute; sửa chữa trước khi đem đi bảo h&agrave;nh</p>\r\n<p>\r\n	- Đối với những thiết bị của qu&iacute; kh&aacute;ch mua qu&aacute; thời gian 01 th&aacute;ng th&igrave; c&aacute;c thiết bị trả h&agrave;ng bảo h&agrave;nh của c&ocirc;ng ty Alphatek&nbsp; c&oacute; thể l&agrave; mới 100% hoặc c&oacute; thể kh&ocirc;ng mới 100% nhưng tất cả đều trong trạng th&aacute;i hoạt động tốt.</p>\r\n<p>\r\n	- Ch&iacute;nh s&aacute;ch bảo h&agrave;nh &quot;1 đổi 1&quot; kh&ocirc;ng được &aacute;p dụng cho một số thiết bị đặc biệt như: Notebook, Server, Projector, Photocopy... &amp; c&aacute;c thiết bị m&agrave; qu&iacute; kh&aacute;ch h&agrave;ng đ&atilde; chọn phương thức tự mang đến TT bảo h&agrave;nh của h&atilde;ng.</p>\r\n<p align="justify">\r\n	- Những thiết bị mang đến bảo h&agrave;nh phải c&oacute; đầy đủ điều kiện để được bảo h&agrave;nh theo qui chế bảo h&agrave;nh của Alphatek<br />\r\n	<br />\r\n	- Trong trường hợp thiết bị hỏng của qu&iacute; kh&aacute;ch kh&ocirc;ng thể sửa chữa được m&agrave; kh&ocirc;ng c&ograve;n mua được tr&ecirc;n thị trường th&igrave; ch&uacute;ng t&ocirc;i sẽ đổi cho qu&iacute; kh&aacute;ch thiết bị kh&aacute;c ho&agrave;n to&agrave;n tương đương với thiết bị hỏng nhưng ở t&igrave;nh trạng hoạt động tốt. Trường hợp qu&iacute; kh&aacute;ch chưa ưng &yacute; với thiết bị thay thế tương đương th&igrave; ch&uacute;ng t&ocirc;i sẽ nhập lại theo gi&aacute; thoả thuận giữa hai b&ecirc;n</p>\r\n', '', '2011-03-10 00:00:00', '2011-03-10 00:00:00', '0000-00-00 00:00:00', 0, 1),
(3, 0, 1, 'Hỗ trợ trực tuyến', '', '<div style="padding-left: 30px;">\r\n	<p>\r\n		<b>Ph&ograve;ng kỹ thuật</b></p>\r\n	<p style="padding-left: 30px;">\r\n		<a href="ymsgr:sendIM?quoccuong"><img border="0" src="http://opi.yahoo.com/online?u=quoccuong&amp;m=g&amp;t=2" vspace="3" /></a></p>\r\n	<p>\r\n		<b>Ph&ograve;ng kinh doanh</b></p>\r\n	<p style="padding-left: 30px;">\r\n		<a href="ymsgr:sendIM?quoccuong"><img border="0" src="http://opi.yahoo.com/online?u=quoccuong&amp;m=g&amp;t=2" vspace="3" /></a><br />\r\n		<a href="ymsgr:sendIM?quoccuong"><img border="0" src="http://opi.yahoo.com/online?u=quoccuong&amp;m=g&amp;t=2" vspace="3" /></a></p>\r\n</div>\r\n', '', '2011-03-20 00:00:00', '2011-03-20 00:00:00', '0000-00-00 00:00:00', 0, 1),
(4, 195, 1, 'MacBook Pro 15 inch dùng chip Intel Core i5 và Core i7', '<table border="0" cellpadding="0" cellspacing="0" width="100%">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n				<table border="0" cellpadding="0" cellspacing="0" width="100%">\r\n					<tbody>\r\n						<tr valign="top">\r\n							<td width="100">\r\n								<a href="http://vitinhphongvu.com/index.php?ava=show&amp;ArtID=637"><img src="http://vitinhphongvu.com/multidata/news/13933166MT1.jpg" style="width: 100px; height: 90px; border-width: 0px; border-style: solid; margin: 2px 5px; float: left;" /></a></td>\r\n							<td width="5">\r\n								&nbsp;</td>\r\n							<td>\r\n								<table border="0" cellpadding="0" cellspacing="0" width="100%">\r\n									<tbody>\r\n										<tr>\r\n											<td>\r\n												&nbsp;</td>\r\n										</tr>\r\n										<tr>\r\n											<td style="text-align: justify;">\r\n												Một điểm nổi bật kh&aacute;c của d&ograve;ng sản phẩm n&agrave;y l&agrave; ứng dụng c&ocirc;ng nghệ chuyển đổi đồ họa mới giữa card NVIDIA GeForce GT330M v&agrave; Intel HD Graphic.</td>\r\n										</tr>\r\n									</tbody>\r\n								</table>\r\n							</td>\r\n						</tr>\r\n					</tbody>\r\n				</table>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<p>\r\n	&nbsp;</p>\r\n', '<div align="justify">\r\n	<strong><font color="#5f5f5f"><font size="3"><font face="Times">Một điểm nổi bật kh&aacute;c của d&ograve;ng sản phẩm n&agrave;y l&agrave; ứng dụng c&ocirc;ng nghệ chuyển đổi đồ họa mới giữa card NVIDIA GeForce GT330M v&agrave; Intel HD Graphic. </font></font></font></strong>\r\n	<p class="normal">\r\n		<font size="3"><font face="Times">Cả hai bộ vi xử l&yacute; Core i7 v&agrave; Core i5 đều ứng dụng c&ocirc;ng nghệ tăng tốc Turbo Boost, gi&uacute;p tăng hiệu suất m&aacute;y t&iacute;nh th&ecirc;m 20%. Nhờ đ&oacute;, hệ thống hoạt động nhanh hơn, đồng thời k&eacute;o d&agrave;i thời lượng pin bằng c&aacute;ch tự điều chỉnh xung nhịp của từng nh&acirc;n độc lập cho ph&ugrave; hợp nhu cầu xử l&yacute;. B&ecirc;n cạnh đ&oacute;, mạch điều khiển bộ nhớ t&iacute;ch hợp (integrated memory controller) cũng được Intel ứng dụng v&agrave;o chip, gi&uacute;p tốc độ trao đổi dữ liệu giữa nh&acirc;n v&agrave; bộ nhớ nhanh hơn hẳn khi c&aacute;c th&agrave;nh tố nằm t&aacute;ch biệt tr&ecirc;n bảng mạch.</font></font></p>\r\n	<p class="normal">\r\n		<font size="3"><font face="Times">Đặc biệt, chip Core i5 v&agrave; Core i7 c&ograve;n được ứng dụng c&ocirc;ng nghệ si&ecirc;u ph&acirc;n luồng (Hyper-Threading), cung cấp 2 luồng (thread) tr&ecirc;n mỗi nh&acirc;n, tức l&agrave; tăng gấp đ&ocirc;i số t&aacute;c vụ m&agrave; một bộ vi xử l&yacute; c&oacute; thể thực thi. N&oacute;i một c&aacute;ch đơn giản, chip 4 nh&acirc;n Core i7 c&oacute; thể chạy c&ugrave;ng một l&uacute;c 8 luồng (nhờ c&ocirc;ng nghệ Si&ecirc;u ph&acirc;n luồng) v&agrave; tăng hiệu suất l&ecirc;n th&ecirc;m 20% (nhờ c&ocirc;ng nghệ Turbo Boost). Chip 2 nh&acirc;n Core i5 cũng tương tự. Bởi vậy, bạn c&oacute; thể thoải m&aacute;i chơi game &ldquo;nặng&rdquo;, xem phim HD hay thậm ch&iacute; chạy 3Ds Max. </font></font></p>\r\n	<p class="normal">\r\n		<font size="3"><font face="Times"><img alt="align=baseline" border="0" hspace="0" src="http://vnexpress.net/Files/Subject/3B/A2/00/82/09mbp17aperture.jpg" /></font></font></p>\r\n	<div align="center">\r\n		<p align="left" class="Normal">\r\n			Với m&aacute;y t&iacute;nh t&iacute;ch hợp chip Core i5, bạn c&oacute; thể chuyển đổi định dạng ba đoạn phim c&oacute; độ d&agrave;i 10 ph&uacute;t để đăng tải l&ecirc;n YouTube trong v&ograve;ng 79 gi&acirc;y &ndash; nhanh gấp 3 lần so với chip Pentium Dual Core (gần 4 ph&uacute;t). Core i5 cũng c&oacute; thể chỉnh sửa ảnh nhanh gấp gần 2 lần so với Pentium Dual Core; chuyển đổi hơn 10 b&agrave;i h&aacute;t chỉ trong 5 ph&uacute;t v&agrave; ti&ecirc;u thụ &iacute;t điện năng hơn đ&aacute;ng kể so với những d&ograve;ng vi xử l&yacute; trước đ&oacute;. Ri&ecirc;ng Core i7 thậm ch&iacute; nhanh hơn gấp 4 lần Pentium Dual Core khi chạy thử nghiệm một số tr&ograve; chơi điện tử.</p>\r\n		<p align="left" class="Normal">\r\n			Nhờ ứng dụng c&ocirc;ng nghệ mới về xử l&yacute; đồ họa, sản phẩm cho chất lượng h&igrave;nh ảnh đẹp, đồng thời vẫn k&eacute;o d&agrave;i thời gian sử dụng pin. MacBook Pro 15&rdquo; c&ograve;n được t&iacute;ch hợp 2 chip đồ họa: NVIDIA GeForce GT 330M mới cho những xử l&yacute; đồ họa cao, Intel HD Graphics cho những xử l&yacute; thấp hơn v&agrave; được ứng dụng c&ocirc;ng nghệ tự động chuyển đổi đồ họa. C&ocirc;ng nghệ n&agrave;y của Apple sẽ x&aacute;c định y&ecirc;u cầu về h&igrave;nh ảnh của ứng dụng bạn đang mở, từ đ&oacute; thay đổi bộ vi xử l&yacute; h&igrave;nh ảnh nhằm mang lại hiệu suất cao đồng thời vẫn tiết kiệm năng lượng.</p>\r\n		<p align="left" class="Normal">\r\n			D&ograve;ng MacBook Pro 15&rdquo; kế thừa những t&iacute;nh năng độc đ&aacute;o truyền thống của sản phẩm m&aacute;y t&iacute;nh Apple. Thiết kế vỏ nh&ocirc;m unibody đem lại cho MacBook Pro sự chắc chắn nhưng cũng kh&ocirc;ng k&eacute;m phần thời trang. B&agrave;n di chuột đa chạm được chế tạo từ thủy tinh hỗ trợ di chuyển một c&aacute;ch trực quan hơn, gi&uacute;p bạn dễ d&agrave;ng duyệt văn bản hay trang web d&agrave;i v&agrave; truy cập c&aacute;c thư viện h&igrave;nh ảnh lớn. Hệ thống đ&egrave;n LED-backlist m&agrave;n h&igrave;nh s&aacute;ng, g&oacute;c hiển thị rộng v&agrave; dải m&agrave;u phong ph&uacute;. Một ưu điểm nữa của MacBook Pro l&agrave; sản phẩm rất &ldquo;green&rdquo; v&igrave; được sản xuất với c&aacute;c loại vật liệu c&oacute; thể t&aacute;i chế v&agrave; kh&ocirc;ng chứa c&aacute;c chất độc hại đối với m&ocirc;i trường.</p>\r\n		<p align="left" class="Normal">\r\n			C&ocirc;ng ty Ph&acirc;n Phối FPT sẽ tặng phiếu mua phụ kiện m&aacute;y t&iacute;nh trị gi&aacute; 960.000 đồng cho c&aacute;c bạn sinh vi&ecirc;n khi mua c&aacute;c sản phẩm m&aacute;y t&iacute;nh Apple ch&iacute;nh h&atilde;ng tại c&aacute;c đại l&yacute; ủy quyền của C&ocirc;ng ty từ 4 đến 19/9.</p>\r\n		<p align="left" class="Normal">\r\n			Để biết th&ecirc;m th&ocirc;ng tin chi tiết, vui l&ograve;ng truy cập website: <a class="Normal" href="http://istore.vn/">http://istore.vn/</a></p>\r\n		<p align="right" class="Normal">\r\n			(Nguồn: <em>C&ocirc;ng ty TNHH Ph&acirc;n Phối FPT</em>)</p>\r\n	</div>\r\n</div>\r\n', '', '2011-03-20 00:00:00', '2011-03-20 00:00:00', '0000-00-00 00:00:00', 0, 1),
(5, 196, 1, 'Tầm quan trọng của cửa chính và bếp theo phong thủy', 'Theo quan niệm của phái Bát Trạch trong phong thủy, các yếu tố Long và Thủy chỉ có giá trị tham khảo nhất định, nhân tố coi trọng nhất là cửa chính và bếp của mỗi gia đình.', 'Phái Bát Trạch nhận định, cổng là khí thần (thần quản khí), còn bếp là thực thần (thần quản việc ăn uống) nên có mối quan hệ chặt chẽ đến nhà ở. Dựa trên căn cứ lý luận về niên mệnh tam nguyên, phái Bát Trạch quan niệm, hướng của cổng chính và bếp nhất định phải phù hợp với niên mệnh Đông - Tây của chủ nhà. Cùng sống trong một căn nhà với hướng cổng, bếp như nhau, những người có niên mệnh khác nhau sẽ đi theo những vận mệnh hoàn toàn khác nhau. Đây là một lý luận mang tính chất đặc trưng.\r\nSự tốt xấu của cổng hay bếp không được quyết định bởi quy mô, kiểu dáng kiến trúc, mà chủ yếu được quyết định bởi hướng, tọa của chúng. Mặt khác, lý luận Bát Trạch cũng cho thấy, căn cứ vào niên mệnh, không gian linh hồn của mỗi người đều có bốn hướng xấu và bốn hướng tốt mặc định. Cổng và cửa, bếp nhất thiết phải nhìn về hướng tốt, nếu tại hướng xấu nên đặt các kiến trúc đồ vật mang tính chấn áp, như vậy sẽ đạt được mục đích "hướng cát chấn hung".', 'cua_chinh.jpg', '2013-01-01 00:00:00', '2013-03-01 00:00:00', '0000-00-00 00:00:00', 0, 1),
(6, 196, 1, 'Mẹo phong thủy để giúp con học giỏi', 'Một số mẹo phong thủy dưới đây sẽ góp phần giúp con bạn ngoan ngoãn và có kết quả học tập tốt.', '<b>Nhà vệ sinh và cầu thang</b>\r\n\r\nNếu cửa chính phòng riêng của con bạn đối diện thẳng với nhà vệ sinh hoặc cầu thang, bé sẽ bị ảnh hưởng bởi những năng lượng tiêu cực phát ra từ đó, dẫn đến việc học hành sa sút, không nghe lời cha mẹ hay có xu hướng nổi loạn…\r\n\r\nĐể khắc phục tình trạng này, bạn hãy treo một chiếc chuông gió ở ngay trên cửa ra vào để làm giảm bớt những nguồn năng lượng xấu từ nhà vệ sinh hay cầu thang. Chiếc chuông gió được treo phía ngoài cánh cửa sẽ phát huy tác dụng tốt hơn khi treo bên trong cửa.\r\n\r\n<b>Hướng kê giường ngủ</b>\r\n\r\nHướng kê giường ngủ của con bạn không phù hợp với mệnh và phong thủy của ngôi nhà sẽ tác động xấu đến môi trường, làm ảnh hưởng đến tính cách cũng như kết quả học tập của trẻ.\r\n\r\nNếu đầu giường của con bạn nằm ngủ phải chịu những nguồn ánh sáng trực tiếp chiếu vào như đèn chùm, đèn ngủ… ở phía trên đầu giường hay đầu giường kê ngay sát hoặc đối diện cửa sổ sẽ tạo ra nguồn năng lượng xấu, ảnh hưởng đến sức khỏe và tâm lý của bé.\r\n\r\nVì vậy, bạn nên kê đầu giường ngủ sát với tường và tránh đối diện trực tiếp với các nguồn ánh sáng. Đặc biệt, bạn không nên để con bạn ngủ trực tiếp dưới sàn nhà vì điều đó sẽ làm ảnh hưởng đến sức khỏe của con cũng như gây ra nguồn năng lượng xấu cho bé.', 'giup_con_hoc_gioi.jpg', '2011-03-20 00:00:00', '2011-03-20 00:00:00', '0000-00-00 00:00:00', 0, 1),
(7, 196, 1, 'Vật liệu xây dựng đá trang trí tường', 'Vật liệu xây dựng – Nếu bạn là một trong những người yêu thích thiên nhiên trong nhà của bạn, nội thất veneer, đá trang trí nội thất là một giải pháp hấp dẫn. Mang thiên nhiên vào nhà là một ý tưởng xây dựng độc đáo. Đó là lý do tại sao chúng tôi viết bài viết này với một số hình ảnh nội thất veneer đá tường.', 'Vật liệu xây dựng – Nếu bạn là một trong những người yêu thích thiên nhiên trong nhà của bạn, nội thất veneer, đá trang trí nội thất là một giải pháp hấp dẫn. Mang thiên nhiên vào nhà là một ý tưởng xây dựng độc đáo. Đó là lý do tại sao chúng tôi viết bài viết này với một số hình ảnh nội thất veneer đá tường.', 'da_trang_tri.jpg', '2011-03-20 00:00:00', '2011-03-20 00:00:00', '0000-00-00 00:00:00', 0, 1),
(9, 196, 1, 'Thiết kế nội thất chung cư thế nào là đẹp?', 'Rất nhiều trường hợp gia chủ đặt yêu cầu với KTS phải thiết kế không gian sao cho thật đẹp, lý tưởng và tạo được ấn tượng mạnh trong mắt mọi người.', 'Thế nhưng, cái đẹp tùy thuộc vào khiếu thẩm mỹ của mỗi người, với người này đơn giản, hiện đại là đẹp nhưng đối với người khác cổ điển, cầu kỳ từng chi tiết mới hay.\r\n\r\nĐiều đó cho thấy khái niệm về cái đẹp rất trừu tượng, đa dạng không theo một khuôn mẫu cụ thể nào và không thể sao chép từ không gian này tới không gian khác. Nhưng tựu chung, yếu tố để hình thành một không gian đẹp là phải đảm bảo linh hoạt về mặt công năng và tạo cái nhìn thẩm mỹ cao cho ngôi nhà.\r\n\r\nCác gia chủ sở hữu căn hộ chung cư đều có xu hướng cải tạo hoặc thiết kế nội thất cho phù hợp với thói quen sinh hoạt của gia đình. Việc này không đơn giản là tham khảo những mẫu nhà đẹp có diện tích tương ứng để áp dụng mà đòi hỏi phải có sự sáng tạo, có phong cách riêng, đặc biệt là phù hợp với không gian sống trong đó (lớn hay nhỏ, chức năng sử dụng nhiều hay ít).', 'noi_that_chung_cu.jpg', '2013-01-15 00:00:00', '2013-01-15 00:00:00', '2013-02-28 00:00:00', 1, 1),
(10, 196, 1, 'Những chiếc giường tiện dụng cho phòng không gian nhỏ', 'Trong căn nhà nhỏ thì ý tưởng tiết kiệm không gian luôn được đặt lên hàng đầu. Một trong những ý tưởng đó là thu gọn những chiếc giường ngủ đặt sau cánh cửa tủ hoặc dựng lên trong góc phòng.', 'Chiếc gường có thể gấp lại này khi dựng lên liền trở thành một chiếc ghế dựa với thanh móc đồ gắn phía trên. Nó giúp chủ nhân tạo được một không gian giải trí xinh xắn trong phòng ngủ chỉ vài mét vuông của mình.', 'giuong_tien_dung.jpg', '2013-01-15 00:00:00', '2013-02-28 00:00:00', NULL, 0, 0),
(11, 196, 1, 'Thiết kế nội thất chung cư thế nào là đẹp?', 'Rất nhiều trường hợp gia chủ đặt yêu cầu với KTS phải thiết kế không gian sao cho thật đẹp, lý tưởng và tạo được ấn tượng mạnh trong mắt mọi người.', 'Thế nhưng, cái đẹp tùy thuộc vào khiếu thẩm mỹ của mỗi người, với người này đơn giản, hiện đại là đẹp nhưng đối với người khác cổ điển, cầu kỳ từng chi tiết mới hay.\r\n\r\nĐiều đó cho thấy khái niệm về cái đẹp rất trừu tượng, đa dạng không theo một khuôn mẫu cụ thể nào và không thể sao chép từ không gian này tới không gian khác. Nhưng tựu chung, yếu tố để hình thành một không gian đẹp là phải đảm bảo linh hoạt về mặt công năng và tạo cái nhìn thẩm mỹ cao cho ngôi nhà.\r\n\r\nCác gia chủ sở hữu căn hộ chung cư đều có xu hướng cải tạo hoặc thiết kế nội thất cho phù hợp với thói quen sinh hoạt của gia đình. Việc này không đơn giản là tham khảo những mẫu nhà đẹp có diện tích tương ứng để áp dụng mà đòi hỏi phải có sự sáng tạo, có phong cách riêng, đặc biệt là phù hợp với không gian sống trong đó (lớn hay nhỏ, chức năng sử dụng nhiều hay ít).', 'thiet_ke_noi_that_ccu.jpg', '2013-01-15 00:00:00', '2013-01-15 00:00:00', '2013-02-28 00:00:00', 1, 1),
(12, 196, 1, 'Những chiếc giường tiện dụng cho phòng không gian nhỏ', 'Trong căn nhà nhỏ thì ý tưởng tiết kiệm không gian luôn được đặt lên hàng đầu. Một trong những ý tưởng đó là thu gọn những chiếc giường ngủ đặt sau cánh cửa tủ hoặc dựng lên trong góc phòng.', 'Chiếc gường có thể gấp lại này khi dựng lên liền trở thành một chiếc ghế dựa với thanh móc đồ gắn phía trên. Nó giúp chủ nhân tạo được một không gian giải trí xinh xắn trong phòng ngủ chỉ vài mét vuông của mình.', 'phong_thuy_cua_phong.jpg', '2013-01-15 00:00:00', '2013-02-28 00:00:00', NULL, 0, 0),
(8, 0, 1, 'Công ty cổ phần thương mại dịch vụ Alphatek Computer', '', '<div style="padding-left: 30px;">\r\n	<div>\r\n		Địa chỉ: 357 L&ecirc; Hồng Ph&ograve;ng, P2, Q10</div>\r\n	<div>\r\n		ĐT: 38337980 - Fax: 38337982</div>\r\n<div>\r\n		Email: alphatek@hcmuns.edu.vn</div>\r\n</div>\r\n<h3>\r\n	Bản đồ đường đi</h3>\r\n<p>\r\n	<img alt="ban do" src="images/tin_tuc/dia_chi_cua_hang.png" /></p>\r\n', '', '2011-03-23 00:00:00', '2011-03-23 00:00:00', '0000-00-00 00:00:00', 0, 1),
(13, 196, 1, 'Thoáng mát và phong cách với nhà 39m2', 'Bí mật để làm nên một căn nhà chật nhưng thoáng đãng là cách trang trí nội thất', 'Bí mật để làm nên một căn nhà chật nhưng thoáng đãng là cách trang trí nội thất, bạn cần biết mình nên làm gì và phải làm thế nào để sử dụng cũng như tận dụng tối đa không gian sẵn có của căn hộ. Một căn hộ nhỏ có thể là một chốn đi về rất đáng yêu và điều đó phụ thuộc vào cách bạn sử dụng không gian, bao gồm các loại đồ nội thất trong thiết kế của bạn. \r\n\r\nCăn hộ 39 m2 này là một ví dụ, để tạo một không gian rộng và thoáng, toàn bộ căn hộ đã được sơn trắng. Bên cạnh đó, các ô cửa sổ được thiết kế rộng hết cỡ giúp không gian luôn tràn ngập ánh sáng thiên nhiên, chính điều này cũng góp một phần không nhỏ trong việc trang trí nội thất. Màu sắc nội thất được kết hợp hài hòa, các đồ nội thất trong mỗi phòng đều được thiết kế linh hoạt và tiện dụng, vừa làm điểm nhấn trang trí vừa giúp tiết kiệm diện tích. Tất cả giúp không gian trở nên gọn gàng, ngăn nắp hơn rất nhiều.\r\n\r\nDưới đây là cách bài trí không gian của căn hộ 309m2, đảm bảo công năng sử dụng mà vẫn thoáng đáng, gọn gàng.', 'thoang_mat_phong_cach.jpg', '2013-01-17 00:00:00', '2013-01-31 00:00:00', NULL, 0, 0),
(14, 196, 1, 'Thoáng mát và phong cách với nhà 39m2', 'Bí mật để làm nên một căn nhà chật nhưng thoáng đãng là cách trang trí nội thất', 'Bí mật để làm nên một căn nhà chật nhưng thoáng đãng là cách trang trí nội thất, bạn cần biết mình nên làm gì và phải làm thế nào để sử dụng cũng như tận dụng tối đa không gian sẵn có của căn hộ. Một căn hộ nhỏ có thể là một chốn đi về rất đáng yêu và điều đó phụ thuộc vào cách bạn sử dụng không gian, bao gồm các loại đồ nội thất trong thiết kế của bạn. \r\n\r\nCăn hộ 39 m2 này là một ví dụ, để tạo một không gian rộng và thoáng, toàn bộ căn hộ đã được sơn trắng. Bên cạnh đó, các ô cửa sổ được thiết kế rộng hết cỡ giúp không gian luôn tràn ngập ánh sáng thiên nhiên, chính điều này cũng góp một phần không nhỏ trong việc trang trí nội thất. Màu sắc nội thất được kết hợp hài hòa, các đồ nội thất trong mỗi phòng đều được thiết kế linh hoạt và tiện dụng, vừa làm điểm nhấn trang trí vừa giúp tiết kiệm diện tích. Tất cả giúp không gian trở nên gọn gàng, ngăn nắp hơn rất nhiều.\r\n\r\nDưới đây là cách bài trí không gian của căn hộ 309m2, đảm bảo công năng sử dụng mà vẫn thoáng đáng, gọn gàng.', 'thoang_mat_phong_cach.jpg', '2013-01-17 00:00:00', '2013-01-31 00:00:00', NULL, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `captcha`
--

CREATE TABLE IF NOT EXISTS `captcha` (
  `captcha_id` bigint(13) unsigned NOT NULL AUTO_INCREMENT,
  `captcha_time` int(10) unsigned NOT NULL,
  `ip_address` varchar(16) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `word` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`captcha_id`),
  KEY `word` (`word`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=284 ;

--
-- Dumping data for table `captcha`
--

INSERT INTO `captcha` (`captcha_id`, `captcha_time`, `ip_address`, `word`) VALUES
(282, 1406001543, '::1', 'werl0huo'),
(283, 1406002328, '::1', 'mxsanrzp');

-- --------------------------------------------------------

--
-- Table structure for table `cong_trinh`
--

CREATE TABLE IF NOT EXISTS `cong_trinh` (
  `ma_cong_trinh` int(11) NOT NULL AUTO_INCREMENT,
  `ten_cong_trinh` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `ten_cong_trinh_url` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `hinh` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `ngay_thi_cong` date NOT NULL,
  `ngay_ket_thuc` date NOT NULL,
  `ngay_cap_nhat` date NOT NULL,
  `ma_nguoi_dung` int(11) NOT NULL,
  `noi_dung` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`ma_cong_trinh`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=8 ;

--
-- Dumping data for table `cong_trinh`
--

INSERT INTO `cong_trinh` (`ma_cong_trinh`, `ten_cong_trinh`, `ten_cong_trinh_url`, `hinh`, `ngay_thi_cong`, `ngay_ket_thuc`, `ngay_cap_nhat`, `ma_nguoi_dung`, `noi_dung`) VALUES
(1, 'BIỆT THỰ LÊ HỒNG PHONG VŨNG TÀU', 'biet-thu-le-hong-phong', 'BEP-1.jpg|BEP-2.jpg|BEP-3.jpg|SINH-HOAT-CHUNG-3.jpg|NGU-MASTER-3.jpg|NGU-MASTER-4.jpg|THAY-DO-1.jpg|NGU-3-1.jpg|NGU-3-2.jpg|NGU-3-3.jpg|NGU-4-2.jpg|NGU-TRE-1.jpg', '2013-01-21', '2014-01-21', '2013-01-21', 1, 'Với thiết kế hiện đại và sang trọng thể hiện đẳng cấp và sự tiện nghi của gia chủ. Thiết kế đi với gam màu trắng và đen hiện đại. Nội thất phòng bé màu sắc sinh động, ấm cúng sang trọng với nội thất phòng ngủ Master. Hiện đại với phòng ăn và không gian bếp.'),
(2, 'Công Trình Nhà Anh Có Q.9 Khu Dân Cư Gia Hòa', 'cong-trinh-nha', 'PN_003.jpg|PN_002.jpg|PN_005.jpg|PN_004.jpg|PN_006.jpg|Karaoke_002.jpg', '2013-01-21', '2013-07-21', '2013-01-21', 1, 'Thiết kế phong cách biệt thự phố hiện đại, gam màu gỗ hiện đại, với gam màu gỗ thông Newzilan, và gỗ White Oak nhập từ Bắc Mỹ.'),
(3, 'Công Trình Biệt Thự Vũng Tàu', 'biet-thu-vung-tau', 'boy_room_01.jpg|boy_room_02.jpg|boy_room_03.jpg|boy_room_04.jpg|boy_room_05.jpg|Tu-Ao-Phong-Ngu-01.jpg|dressing_room_02.jpg|master_bedroom_0012.jpg|master bedroom 01_1.jpg|master_bedroom_0011.jpg|mast', '2013-01-21', '2013-07-21', '2013-01-21', 1, 'Với thiết kế hiện đại và sang trọng thể hiện đẳng cấp và sự tiện nghi của gia chủ. Thiết kế đi với gam màu tươi sáng hiện đại cho phòng bé, ấm cúng sang trọng với nội thất phòng ngủ Master.'),
(5, 'Nhà Chị Hoa Q.Bình Tân', 'nha-chi-hoa-binh-tan', 'HO_CA_PK_CHI_HOA.jpg|PHONG_KHACH_2_CHI_HOA.jpg|TU_TIVI_PK_CHI_HOA.jpg', '0000-00-00', '0000-00-00', '0000-00-00', 0, 'Nội thất hiện với gam màu nâu socola trên chất liệu gỗ White Oak của Mỹ.'),
(7, 'Nhà Anh Duy Siêu Thị Ánh Dương Đường 3/2, Q.11', 'nha-anh-duy-sieu-thi-anh-duong', 'Sofa.jpg|Phong_Khach_va_Bep.jpg|Ban_An.jpg|Goc_Lam_Viec.jpg|Phong_Ngu.jpg|Ban_Phan.jpg', '2013-01-21', '2013-05-21', '2013-01-21', 1, 'Nội Thất Nhà Phố, Với chất liệu HRM kháng ẩm đi trên nền màu trắng và đen hiện đại và trẻ trung.');

-- --------------------------------------------------------

--
-- Table structure for table `ct_hoa_don`
--

CREATE TABLE IF NOT EXISTS `ct_hoa_don` (
  `so_hd` int(11) NOT NULL,
  `masanpham` int(11) NOT NULL,
  `so_luong` int(11) NOT NULL,
  `don_gia` double NOT NULL,
  `thanh_tien` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ct_hoa_don`
--

INSERT INTO `ct_hoa_don` (`so_hd`, `masanpham`, `so_luong`, `don_gia`, `thanh_tien`) VALUES
(3, 2, 1, 0, 0),
(3, 3, 1, 0, 0),
(3, 4, 1, 0, 0),
(3, 5, 1, 0, 0),
(4, 2, 1, 3500000, 3500000),
(4, 3, 1, 3500000, 3500000),
(4, 4, 1, 3500000, 3500000),
(4, 7, 1, 3500000, 3500000),
(5, 2, 1, 3500000, 3500000),
(5, 3, 1, 3500000, 3500000),
(5, 4, 1, 3500000, 3500000),
(5, 7, 1, 3500000, 3500000),
(5, 6, 1, 3500000, 3500000),
(7, 2, 1, 3500000, 3500000),
(7, 3, 1, 3500000, 3500000),
(7, 4, 1, 3500000, 3500000),
(7, 5, 1, 3500000, 3500000),
(10, 2, 1, 3500000, 3500000),
(10, 3, 1, 3500000, 3500000),
(10, 4, 1, 3500000, 3500000),
(10, 5, 1, 3500000, 3500000),
(12, 2, 1, 3500000, 3500000),
(12, 3, 1, 3500000, 3500000),
(12, 4, 1, 3500000, 3500000),
(13, 2, 1, 3500000, 3500000),
(13, 3, 1, 3500000, 3500000),
(13, 4, 1, 3500000, 3500000),
(14, 8, 1, 4500000, 4500000),
(14, 9, 1, 3500000, 3500000),
(14, 10, 1, 4000000, 4000000),
(14, 17, 3, 5000000, 15000000),
(14, 18, 1, 3500000, 3500000),
(17, 2, 1, 3500000, 3500000),
(17, 6, 1, 3500000, 3500000),
(17, 7, 1, 3500000, 3500000),
(17, 5, 1, 3500000, 3500000),
(19, 2, 1, 3500000, 3500000),
(19, 3, 1, 3500000, 3500000),
(19, 4, 1, 3500000, 3500000),
(19, 5, 3, 3500000, 10500000),
(21, 3, 1, 3500000, 3500000),
(21, 2, 1, 3500000, 3500000),
(21, 4, 5, 3500000, 17500000),
(26, 2, 1, 3500000, 3500000),
(26, 3, 1, 3500000, 3500000),
(26, 7, 3, 3500000, 10500000),
(27, 2, 1, 3500000, 3500000),
(27, 3, 1, 3500000, 3500000),
(27, 4, 1, 3500000, 3500000),
(28, 5, 1, 3500000, 3500000),
(28, 6, 1, 3500000, 3500000),
(28, 7, 1, 3500000, 3500000),
(30, 32, 1, 1800000, 1800000),
(30, 6, 1, 3500000, 3500000),
(38, 32, 1, 1800000, 1800000),
(38, 6, 1, 3500000, 3500000),
(38, 2, 1, 3500000, 3500000),
(39, 6, 1, 3500000, 3500000),
(39, 32, 1, 1800000, 1800000),
(39, 2, 1, 3500000, 3500000),
(41, 32, 1, 1800000, 1800000),
(41, 6, 1, 3500000, 3500000),
(41, 2, 1, 3500000, 3500000),
(60, 32, 1, 1800000, 1800000),
(60, 6, 2, 3500000, 7000000),
(61, 4, 1, 3500000, 3500000),
(61, 5, 1, 3500000, 3500000),
(63, 4, 1, 3500000, 3500000),
(63, 2, 1, 3500000, 3500000),
(63, 5, 1, 3500000, 3500000),
(63, 7, 3, 3500000, 10500000),
(64, 2, 1, 3500000, 3500000),
(64, 5, 1, 3500000, 3500000),
(64, 7, 2, 3500000, 7000000);

-- --------------------------------------------------------

--
-- Table structure for table `hoa_don`
--

CREATE TABLE IF NOT EXISTS `hoa_don` (
  `so_hd` int(11) NOT NULL AUTO_INCREMENT,
  `ngay_hoadon` date NOT NULL,
  `ma_kh` int(11) NOT NULL,
  `trigia_hd` double NOT NULL,
  PRIMARY KEY (`so_hd`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=65 ;

--
-- Dumping data for table `hoa_don`
--

INSERT INTO `hoa_don` (`so_hd`, `ngay_hoadon`, `ma_kh`, `trigia_hd`) VALUES
(1, '2012-11-09', 9, 10500000),
(2, '2012-11-09', 10, 14000000),
(3, '2012-11-09', 11, 14000000),
(4, '2012-11-09', 12, 14000000),
(5, '2012-11-09', 13, 17500000),
(6, '2012-11-09', 14, 0),
(7, '2012-11-09', 15, 14000000),
(8, '2012-11-09', 16, 0),
(9, '2012-11-09', 17, 0),
(10, '2012-11-09', 18, 14000000),
(11, '2012-11-09', 19, 0),
(12, '2012-11-09', 20, 10500000),
(13, '2012-11-10', 21, 10500000),
(14, '2012-11-10', 22, 30500000),
(15, '2012-11-10', 23, 0),
(16, '2012-11-10', 24, 0),
(17, '2012-11-10', 25, 14000000),
(18, '2012-11-10', 26, 0),
(19, '2012-11-10', 27, 21000000),
(20, '2012-11-10', 28, 0),
(21, '2012-11-10', 29, 24500000),
(22, '2012-11-10', 30, 0),
(23, '2012-11-10', 31, 0),
(24, '2012-11-10', 32, 0),
(25, '2012-11-10', 33, 0),
(26, '2012-11-10', 34, 17500000),
(27, '2012-11-13', 35, 10500000),
(28, '2013-01-02', 36, 10500000),
(29, '2013-01-02', 37, 0),
(30, '2013-01-19', 38, 5300000),
(31, '2013-01-19', 39, 0),
(32, '2013-01-19', 40, 0),
(33, '2013-01-19', 41, 0),
(34, '2013-01-19', 42, 0),
(35, '2013-01-19', 43, 0),
(36, '2013-01-19', 44, 0),
(37, '2013-01-19', 45, 0),
(38, '2013-01-19', 46, 8800000),
(39, '2013-01-19', 47, 8800000),
(40, '2013-01-19', 48, 0),
(41, '2013-01-19', 49, 8800000),
(42, '2013-01-19', 50, 0),
(43, '2013-01-19', 51, 0),
(44, '2013-01-19', 52, 0),
(45, '2013-01-19', 53, 0),
(46, '2013-01-19', 54, 0),
(47, '2013-01-19', 55, 0),
(48, '2013-01-19', 56, 0),
(49, '2013-01-19', 57, 0),
(60, '2013-01-19', 68, 8800000),
(61, '2013-01-19', 69, 7000000),
(62, '2014-07-20', 70, 21000000),
(63, '2014-07-20', 71, 21000000),
(64, '2014-07-22', 72, 14000000);

-- --------------------------------------------------------

--
-- Table structure for table `khach_hang`
--

CREATE TABLE IF NOT EXISTS `khach_hang` (
  `MaKH` int(11) NOT NULL AUTO_INCREMENT,
  `Hoten` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `Diachi` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `Dienthoai` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `Diachigiaohang` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`MaKH`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=73 ;

--
-- Dumping data for table `khach_hang`
--

INSERT INTO `khach_hang` (`MaKH`, `Hoten`, `Diachi`, `Dienthoai`, `Diachigiaohang`, `email`) VALUES
(1, 'Dương Ngọc Hoàng', 'Lê Trọng Tấn', '0123456789', 'Lê Trọng Tấn', '0'),
(2, 'Trần văn Ngọc', 'Lê Trọng Tấn', '0123456789', 'Lê Trọng Tấn', 'hoang0877@yahoo.com'),
(3, 'Hồ Hà', 'Lê Trọng Tấn', '0123456789', 'Lê Trọng Tấn', 'hoang0877@yahoo.com'),
(4, 'Trần Thị Huyền', 'Lê Trọng Tấn', '0123456789', 'Lê Trọng Tấn', 'thihuyen@yahoo.com'),
(5, 'Nguyễn Thị Bé Thảo', 'Lê Trọng Tấn', '0123456789', 'Lê Trọng Tấn', 'bethao@yahoo.com'),
(6, 'Khuất Thùy Phương', 'Lê Trọng Tấn', '0123456789', 'Lê Trọng Tấn', 'phuong@yahoo.com'),
(7, 'Quốc Thảo', 'Lê Trọng Tấn', '0123456789', 'Lê Trọng Tấn', 'quachthao@yahoo.com'),
(8, 'Dương Ngọc Hoàng', 'Lê Trọng Tấn', '0123456789', 'Lê Trọng Tấn', 'hoang0877@yahoo.com'),
(9, 'Dương Ngọc Hoàng', 'Lê Trọng Tấn', '0123456789', 'Lê Trọng Tấn', 'hoang0877@yahoo.com'),
(10, 'Dương Minh Huy', 'Lê Trọng Tấn', '012345678', 'Lê Trọng Tấn', 'huy@yahoo.com'),
(11, 'Dương Minh Huy', 'Lê Trọng Tấn', '012345678', 'Lê Trọng Tấn', 'huy@yahoo.com'),
(12, 'Dương Ngọc Hoàng', 'Lê Trọng Tấn', '0123456789', 'Lê Trọng Tấn', 'hoang0877@yahoo.com'),
(13, 'Dương Ngọc Hoàng', 'Lê Trọng Tấn', '0123456789', 'dfgdfgdfgfdgfg', 'hoang0877@yahoo.com'),
(14, 'Dương Ngọc Hoàng', 'Lê Trọng Tấn', '0123456789', 'dfgdfgdfgfdgfg', 'hoang0877@yahoo.com'),
(15, 'Dương Ngọc Hoàng', 'Lê Trọng Tấn', '0123456789', 'Lê Trọng Tấn', 'hoang0877@yahoo.com'),
(16, 'Dương Ngọc Hoàng', 'Lê Trọng Tấn', '0123456789', 'Lê Trọng Tấn', 'hoang0877@yahoo.com'),
(17, 'Dương Ngọc Hoàng', 'Lê Trọng Tấn', '0123456789', 'Lê Trọng Tấn', 'hoang0877@yahoo.com'),
(18, 'Dương Minh Huy', 'Lê Trọng Tấn', '012345678', 'Lê Trọng Tấn', 'hoang0877@yahoo.com'),
(19, 'Dương Minh Huy', 'Lê Trọng Tấn', '012345678', 'Lê Trọng Tấn', 'hoang0877@yahoo.com'),
(20, 'Dương Ngọc Hoàng', 'Lê Trọng Tấn', '0123456789', 'dfgdfgdfgfdgfg', 'hoang0877@yahoo.com'),
(21, 'Dương Thùy Hân', '6 đường 27', '1234567', '6 đường 27', 'han@yahoo.com'),
(22, 'Nguyễn Thị Minh Khai', '1 Trần Hưng Đạo, Q1, HCM', '0123654', '1 Trần Hưng Đạo, Q1, HCM', 'nguyenminhkai@gmail.com'),
(23, 'Nguyễn Thị Minh Khai', '1 Trần Hưng Đạo, Q1, HCM', '0123654', '1 Trần Hưng Đạo, Q1, HCM', 'nguyenminhkai@gmail.com'),
(24, 'Nguyễn Thị Minh Khai', '1 Trần Hưng Đạo, Q1, HCM', '0123654', '1 Trần Hưng Đạo, Q1, HCM', 'nguyenminhkai@gmail.com'),
(25, 'Nguyễn Thị Minh Khai', '1 Trần Hưng Đạo, Q1, HCM', '0123456789', '1 Trần Hưng Đạo, Q1, HCM', 'huy@yahoo.com'),
(26, 'Nguyễn Thị Minh Khai', '1 Trần Hưng Đạo, Q1, HCM', '0123456789', '1 Trần Hưng Đạo, Q1, HCM', 'huy@yahoo.com'),
(27, 'Dương Ngọc Hoàng', 'Lê Trọng Tấn', '012345678', 'Lê Trọng Tấn', 'hoang0877@yahoo.com'),
(28, 'Dương Ngọc Hoàng', 'Lê Trọng Tấn', '012345678', 'Lê Trọng Tấn', 'hoang0877@yahoo.com'),
(29, 'Dương Ngọc Hoàng', 'Lê Trọng Tấn', '0123456789', 'Lê Trọng Tấn', 'hoang0877@yahoo.com'),
(30, 'Nguyễn Thi Thảo Trà', 'Lê Trọng Tấn', '0123456789', 'Lê Trọng Tấn', 'thaotra@yahoo.com'),
(31, 'Nguyễn Bá Chi', 'Lê Trọng Tấn', '0123456789', 'Lê Trọng Tấn', 'chiba@yahoo.com'),
(32, 'Nguyễn Văn Sang', 'Lê Trọng Tấn', '0123456789', 'Lê Trọng Tấn', 'hoang0877@yahoo.com'),
(33, 'Mạc Ba', 'Lê Trọng Tấn', '0123456789', 'Lê Trọng Tấn', 'hoang0877@yahoo.com'),
(34, 'Đỗ Thị Thu Hương', 'Lê Trọng Tấn', '0123456789', 'Lê Trọng Tấn', 'hoang0877@yahoo.com'),
(35, 'Tố Như Như', 'Lê Trọng Tấn', '0123456789', 'Lê Trọng Tấn', 'nhnhu@yahoo.com'),
(36, 'Nguyễn Hồ Hậu', 'Đường 27, p. sơn kỳ, Q. Tân phú', '123456789', 'Đường 27, p. sơn kỳ, Q. Tân phú', '12345@yahoo.com'),
(37, 'Nguyễn Hồ Hậu', 'Đường 27, p. sơn kỳ, Q. Tân phú', '123456789', 'Đường 27, p. sơn kỳ, Q. Tân phú', '12345@yahoo.com'),
(38, 'Lê Thị Thảo', '111 LTT', '012345678', '111 LTT', 'thaothi@yahoo.com'),
(39, 'Lê Thị Thảo', '111 LTT', '012345678', '111 LTT', 'thaothi@yahoo.com'),
(40, 'Lê Thị Thảo', '111 LTT', '012345678', '111 LTT', 'thaothi@yahoo.com'),
(41, 'Lê Thị Thảo', '111 LTT', '012345678', '111 LTT', 'thaothi@yahoo.com'),
(42, 'Lê Thị Thảo', '111 LTT', '012345678', '111 LTT', 'thaothi@yahoo.com'),
(43, 'Lê Thị Thảo', '111 LTT', '012345678', '111 LTT', 'thaothi@yahoo.com'),
(44, 'Lê Thị Thảo', '111 LTT', '012345678', '111 LTT', 'thaothi@yahoo.com'),
(45, 'Lê Thị Thảo', '111 LTT', '012345678', '111 LTT', 'thaothi@yahoo.com'),
(46, 'Lê Thị Thảo', '111 LTT', '012345678', '111 LTT', 'thaothi@yahoo.com'),
(47, 'Lê Thị Thảo', '111 LTT', '012345678', '111 LTT', 'thaothi@yahoo.com'),
(48, 'Lê Thị Thảo', '111 LTT', '012345678', '111 LTT', 'thaothi@yahoo.com'),
(49, 'sdf', 'sdf', '012345678', 'sdf', 'thaothi@yahoo.com'),
(50, 'sdf', 'sdf', '012345678', 'sdf', 'thaothi@yahoo.com'),
(51, 'sdf', 'sdf', '012345678', 'sdf', 'thaothi@yahoo.com'),
(52, 'sdf', 'sdf', '012345678', 'sdf', 'thaothi@yahoo.com'),
(53, 'sdf', 'sdf', '012345678', 'sdf', 'thaothi@yahoo.com'),
(54, 'sdf', 'sdf', '012345678', 'sdf', 'thaothi@yahoo.com'),
(55, 'sdf', 'sdf', '012345678', 'sdf', 'thaothi@yahoo.com'),
(56, 'sdf', 'sdf', '012345678', 'sdf', 'thaothi@yahoo.com'),
(57, 'sdf', 'sdf', '012345678', 'sdf', 'thaothi@yahoo.com'),
(58, 'sdf', 'sdf', '012345678', 'sdf', 'thaothi@yahoo.com'),
(59, 'sdf', 'sdf', '012345678', 'sdf', 'thaothi@yahoo.com'),
(60, 'sdf', 'sdf', '012345678', 'sdf', 'thaothi@yahoo.com'),
(68, 'Trần Mỹ', 'TTT', '012345678', 'TTT', 'TTT@yahoo.com'),
(69, 'Lý Tịnh Tâm', 'HHH', '0989789988', 'HHH', 'HHH@gmail.com'),
(70, 'Dương Thùy Hân', '6 đường 27, p. sơn kỳ, T. Phú', '0123456789', '6 đường 27, p. sơn kỳ, T. Phú', 'dth@tinhocnhathoang.vn'),
(71, 'Dương Thùy Hân', '6 đường 27, p. sơn kỳ, T. Phú', '0123456789', '6 đường 27, p. sơn kỳ, T. Phú', 'dth@tinhocnhathoang.vn'),
(72, 'Dương Thùy Hân', '6 đường 27, P. Sơn kỳ, Q. Tân phú', '0123456789', '6 đường 27, P. Sơn kỳ, Q. Tân phú', 'dth@tinhocnhathoang.vn');

-- --------------------------------------------------------

--
-- Table structure for table `loai_bai_viet`
--

CREATE TABLE IF NOT EXISTS `loai_bai_viet` (
  `ma_loai_bai_viet` int(11) NOT NULL AUTO_INCREMENT,
  `ten_loai_bai_viet` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ten_loai_bai_viet_url` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `mo_ta` text COLLATE utf8_unicode_ci,
  `ma_loai_cha` int(11) NOT NULL,
  PRIMARY KEY (`ma_loai_bai_viet`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=197 ;

--
-- Dumping data for table `loai_bai_viet`
--

INSERT INTO `loai_bai_viet` (`ma_loai_bai_viet`, `ten_loai_bai_viet`, `ten_loai_bai_viet_url`, `mo_ta`, `ma_loai_cha`) VALUES
(194, 'Tin khuyến mãi', 'tin-khuyen-mai', '', 0),
(195, 'Tin công nghệ', 'tin-cong-nghe', '', 194),
(196, 'Sản phẩm mới', 'san-pham-moi', '', 194);

-- --------------------------------------------------------

--
-- Table structure for table `loai_nguoi_dung`
--

CREATE TABLE IF NOT EXISTS `loai_nguoi_dung` (
  `ma_loai_nguoi_dung` tinyint(3) NOT NULL AUTO_INCREMENT,
  `ten_loai` varchar(100) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`ma_loai_nguoi_dung`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=7 ;

--
-- Dumping data for table `loai_nguoi_dung`
--

INSERT INTO `loai_nguoi_dung` (`ma_loai_nguoi_dung`, `ten_loai`) VALUES
(1, 'Nhân viên'),
(2, 'Quản trị'),
(3, 'Giám đốc'),
(4, 'Phó phòng'),
(5, 'Kế toán'),
(6, 'Kỹ thuật');

-- --------------------------------------------------------

--
-- Table structure for table `loai_san_pham`
--

CREATE TABLE IF NOT EXISTS `loai_san_pham` (
  `maloai` int(11) NOT NULL AUTO_INCREMENT,
  `tenloai` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `tenloaiurl` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `maloaicha` int(11) NOT NULL,
  PRIMARY KEY (`maloai`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=15 ;

--
-- Dumping data for table `loai_san_pham`
--

INSERT INTO `loai_san_pham` (`maloai`, `tenloai`, `tenloaiurl`, `maloaicha`) VALUES
(1, 'Tủ áo', 'tu-ao', 14),
(2, 'Giường', 'giuong', 14),
(3, 'Kệ TV', 'ke-tv', 14),
(4, 'Kệ bếp', 'ke-bep', 14),
(5, 'Kệ sách trang trí', 'ke-sach-trang-tri', 14),
(6, 'Nội thất phòng ngủ', 'noi-that-phong-ngu', 0),
(7, 'Quầy tiếp tân', 'quay-tiep-tan', 11),
(8, 'Bàn nhân viên', 'ban-nhan-vien', 11),
(9, 'Tủ hồ sơ', 'tu-ho-so', 11),
(10, 'Bàn hộp', 'ban-hop', 11),
(11, 'Nội thất phòng khách', 'noi-that-phong-khach', 0),
(12, 'Phòng máy', 'phong-may', 0),
(13, 'Nội thất văn phòng', 'noi-that-van-phong', 0),
(14, 'Nội thất gia đình', 'noi-that-gia-dinh', 0);

-- --------------------------------------------------------

--
-- Table structure for table `nguoi_dung`
--

CREATE TABLE IF NOT EXISTS `nguoi_dung` (
  `ma_nguoi_dung` int(11) NOT NULL AUTO_INCREMENT,
  `tendn` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `mat_khau` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `ten_nguoi_dung` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `ngay_sinh` date NOT NULL,
  `gioi_tinh` tinyint(1) NOT NULL,
  `dia_chi` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `cmnd` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `dien_thoai` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `ma_loai_nguoi_dung` int(11) NOT NULL,
  `quyen` int(11) NOT NULL DEFAULT '1',
  `role` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'admin',
  PRIMARY KEY (`ma_nguoi_dung`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=19 ;

--
-- Dumping data for table `nguoi_dung`
--

INSERT INTO `nguoi_dung` (`ma_nguoi_dung`, `tendn`, `mat_khau`, `ten_nguoi_dung`, `ngay_sinh`, `gioi_tinh`, `dia_chi`, `email`, `cmnd`, `dien_thoai`, `ma_loai_nguoi_dung`, `quyen`, `role`) VALUES
(1, 'admin', 'admin', 'Duong Ngoc Hoang', '1977-09-18', 1, 'Le Trong Tan', 'hoang0877@yahoo.com', '1234567890', '0919359360', 1, 1, 'admin'),
(2, 'htdiem', 'diem', 'Ho Thi Diem', '1988-08-20', 0, 'Dong Nai', 'hothidiem@gmail.com', '34567890', '1234567890-', 2, 1, 'admin'),
(3, 'nnkhanh', 'khanh', 'Nguyen Ngoc Khanh', '1987-01-01', 1, 'Lê Trọng Tấn', 'khanh@yahoo.com', '1234567890', '23543534543', 2, 1, 'admin'),
(4, 'hoa', 'hoa', 'Hồ Tuyết Hoa', '1990-09-09', 0, 'Lê Trọng Tấn', 'asdasdas@gmail.com', '34567890', '1234567890-', 3, 1, 'admin'),
(10, 'NtHa', 'ha', 'Nguyễn Thị Hà', '1992-12-12', 0, 'Trần Hưng Đạo', 'ha@yahoo.com', '234567890', '4567890', 1, 1, 'admin'),
(9, 'nthong', 'hong', 'Nguyễn Thị Hồng', '1992-12-12', 0, 'Lê Văn Sĩ', 'hong@yahoo.com', '1233333333', '34567890', 1, 1, 'admin'),
(11, 'dtrinh', 'trinh', 'Dương Thị Diễm Trinh', '1991-11-10', 0, 'Lê Văn Sĩ', 'dtrinh@gmail', '34567890', '234567890', 2, 1, 'admin'),
(13, 'dthan', 'han', 'Dương Thùy Hân', '1991-12-21', 0, 'Lê Trọng Tân', 'han@yahoo.com', '34564356435', '567890', 3, 1, 'admin'),
(14, 'hnha', 'ha', 'Hồ Ngọc Hà', '1992-12-12', 0, 'Lê Văn Sĩ', 'ha@yahoo.com', '345678', '456789', 2, 1, 'admin'),
(15, 'han', 'han', 'Dương Thùy Hân', '2009-04-30', 0, '6 Đường 27, TP, HCM', 'han03042009.yahoo', '124589', '0919359360', 1, 1, 'admin'),
(17, 'nmc', '123', 'Nguyễn minh chinh', '1996-01-01', 1, 'LTT', 'duong@gmail.com', '123456789', '123456789', 2, 1, 'admin'),
(18, 'nmc', '1f285fa4ce68efd5e697bd8301835c72', 'Nguyễn minh chinh', '1996-01-01', 1, 'LTT', 'duong@gmail.com', '123456789', '123456789', 2, 1, 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `nhom_loai`
--

CREATE TABLE IF NOT EXISTS `nhom_loai` (
  `manhom` int(11) NOT NULL AUTO_INCREMENT,
  `tennhom` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`manhom`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Dumping data for table `nhom_loai`
--

INSERT INTO `nhom_loai` (`manhom`, `tennhom`) VALUES
(1, 'Nội thất gia đình'),
(2, 'Nội thất văn phòng'),
(3, 'Nội thất phòng khách'),
(4, 'Nội thất phòng ngủ');

-- --------------------------------------------------------

--
-- Table structure for table `san_pham`
--

CREATE TABLE IF NOT EXISTS `san_pham` (
  `masanpham` int(11) NOT NULL AUTO_INCREMENT,
  `tensanpham` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `tensanphamurl` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `diengiai` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `dongia` double NOT NULL,
  `hinh` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `ngaycapnhat` date NOT NULL,
  `maloai` int(11) NOT NULL,
  `maloaicha` int(11) NOT NULL,
  `sanphammoi` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`masanpham`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=34 ;

--
-- Dumping data for table `san_pham`
--

INSERT INTO `san_pham` (`masanpham`, `tensanpham`, `tensanphamurl`, `diengiai`, `dongia`, `hinh`, `ngaycapnhat`, `maloai`, `maloaicha`, `sanphammoi`) VALUES
(6, 'Tủ áo', 'tu-ao', 'Chất liệu MDF chống ẩm', 3500000, '1350605222_125.jpg', '2012-10-10', 1, 14, 1),
(2, 'Tủ âm tường', 'tu-am-tuong', 'Thông số kĩ thuật trên website chỉ mang tính tham khảo, thông số có thể thay đổi mà không báo trước.\r\n- Nếu bạn phát hiện thông số sai xin hãy ấn vào đây để thông báo cho chúng tôi. Xin trân trọng cảm', 3500000, '1350605144_1163.jpg', '2012-10-10', 1, 14, 1),
(3, 'Tủ áo', 'tu-ao', 'Thông số kĩ thuật trên website chỉ mang tính tham khảo, thông số có thể thay đổi mà không báo trước.\r\n- Nếu bạn phát hiện thông số sai xin hãy ấn vào đây để thông báo cho chúng tôi. Xin trân trọng cảm', 3500000, '1350605030_12.jpeg', '1313-01-09', 1, 14, 1),
(4, 'Tủ áo', 'tu-ao', 'Chất liệu MDF phủ melamine', 3500000, '1350605172_12.gif', '2012-10-10', 1, 14, 0),
(5, 'Tủ áo - Kệ sách', 'tu-ao-ke-sach', 'Chất liệu MDF chống ẩm', 3500000, '1350605187_12.jpeg', '2012-10-10', 1, 14, 1),
(7, 'Tủ áo cửa mở', 'tu-ao-cua-mo', 'Chất liệu MDF chống ẩm', 3500000, '1350605267_1175.jpg', '2012-10-10', 1, 14, 0),
(8, 'Tủ âm tường', 'tu-am-tuong', 'Tủ được làm từ ván MDF chống ẩm với 8 cửa mở và 4 ngăn kéo, tay nắm nhôm.', 4500000, '1350605514_113.jpeg', '2012-10-10', 1, 14, 1),
(9, 'Tủ áo gia đình', 'tu-ao-gia-dinh', 'Tủ được làm từ ván MDF chống ẩm với 8 cửa mở và 4 ngăn kéo, tay nắm nhôm.', 3500000, '1350605526_13.gif', '2012-10-10', 1, 14, 0),
(10, 'Tủ áo', 'tu-ao', 'Tủ được làm từ ván MDF chống ẩm với 8 cửa mở và 4 ngăn kéo, tay nắm nhôm.', 4000000, '1350605710_110.jpg', '2012-10-10', 1, 14, 1),
(11, 'Tủ áo', 'tu-ao', 'Tủ được làm từ ván MDF chống ẩm với 8 cửa mở và 4 ngăn kéo, tay nắm nhôm.', 4000000, '1350605895_1266.jpg', '2012-10-10', 1, 14, 1),
(12, 'Tủ áo âm tường', 'tu-ao-am-tuong', 'Tủ được làm từ ván MDF chống ẩm với 8 cửa mở và 4 ngăn kéo, tay nắm nhôm.', 3500000, '1350605912_1295.jpg', '2012-10-10', 1, 14, 0),
(13, 'Tủ áo', 'tu-ao', 'Tủ được làm từ ván MDF chống ẩm với 8 cửa mở và 4 ngăn kéo, tay nắm nhôm.', 4000000, '1350605933_126.jpg', '2012-10-10', 1, 14, 1),
(14, 'Tủ áo', 'tu-ao', 'Tủ được làm từ ván MDF chống ẩm với 8 cửa mở và 4 ngăn kéo, tay nắm nhôm.', 3500000, '1350605967_1209.jpg', '2012-10-10', 1, 14, 1),
(15, 'Tủ áo', 'tu-ao', 'Tủ được làm từ ván MDF chống ẩm với 8 cửa mở và 4 ngăn kéo, tay nắm nhôm.', 4000000, '1350605984_111.jpg', '2012-10-10', 1, 14, 1),
(16, 'Tủ áo', 'tu-ao', 'Tủ được làm từ ván MDF chống ẩm với 8 cửa mở và 4 ngăn kéo, tay nắm nhôm.', 4000000, '1350606224_1283.jpg', '2012-10-10', 1, 14, 1),
(17, 'Tủ áo', 'tu-ao', 'Tủ được làm từ ván MDF chống ẩm với 8 cửa mở và 4 ngăn kéo, tay nắm nhôm.', 5000000, '1350606251_1161.jpg', '2012-10-10', 1, 14, 0),
(18, 'Giường ngủ hiện đại', 'giuong-ngu-hien-dai', 'Tủ được làm từ ván MDF chống ẩm với 8 cửa mở và 4 ngăn kéo, tay nắm nhôm.', 3500000, '1350608437_2.jpg', '2012-10-10', 2, 14, 1),
(19, 'Giường ngủ gõ MDF, sơn pu', 'giuong-ngu-mdf-son-pu', 'Tủ được làm từ ván MDF chống ẩm với 8 cửa mở và 4 ngăn kéo, tay nắm nhôm.', 3500000, '1350608457_3.jpg', '2012-10-10', 2, 14, 1),
(20, 'Giường', 'giuong', 'Tủ được làm từ ván MDF chống ẩm với 8 cửa mở và 4 ngăn kéo, tay nắm nhôm.', 3500000, '1350608476_4.jpg', '2012-10-10', 2, 14, 0),
(21, 'Giường ngủ gõ MDF, sơn pu', 'giuong-ngu-mdf-son-pu', 'Tủ được làm từ ván MDF chống ẩm với 8 cửa mở và 4 ngăn kéo, tay nắm nhôm.', 4000000, '1350608486_5.jpg', '2012-10-10', 2, 14, 1),
(22, 'Giường', 'giuong', 'Tủ được làm từ ván MDF chống ẩm với 8 cửa mở và 4 ngăn kéo, tay nắm nhôm.', 4000000, '1350608522_ho.jpg', '2012-10-10', 2, 14, 1),
(23, 'Giường ngủ gõ MDF, sơn pu', 'giuong-ngu-mdf-son-pu', 'Tủ được làm từ ván MDF chống ẩm với 8 cửa mở và 4 ngăn kéo, tay nắm nhôm.', 3453, '1350608615_131.jpg', '2012-10-10', 2, 14, 0),
(24, 'Giường', 'giuong', 'Tủ được làm từ ván MDF chống ẩm với 8 cửa mở và 4 ngăn kéo, tay nắm nhôm.', 4000000, '1350608625_5.jpg', '2012-10-10', 2, 14, 1),
(25, 'Giường', 'giuong', 'Tủ được làm từ ván MDF chống ẩm với 8 cửa mở và 4 ngăn kéo, tay nắm nhôm.', 3500000, '1350608635_ho.jpg', '2012-10-10', 2, 14, 1),
(26, 'Giường ngủ gõ MDF, sơn pu', 'giuong-ngu-mdf-son-pu', 'Tủ được làm từ ván MDF chống ẩm với 8 cửa mở và 4 ngăn kéo, tay nắm nhôm.', 3500000, '1350608647_1294.jpg', '2012-10-10', 2, 14, 1),
(27, 'Giường', 'giuong', 'Tủ được làm từ ván MDF chống ẩm với 8 cửa mở và 4 ngăn kéo, tay nắm nhôm.', 3500000, '1350608657_138.jpg', '2012-10-10', 2, 14, 1),
(28, 'Giường', 'giuong', 'Tủ được làm từ ván MDF chống ẩm với 8 cửa mở và 4 ngăn kéo, tay nắm nhôm.', 3500000, '1350608669_1.jpg', '2012-10-10', 2, 14, 1),
(29, 'Giường ngủ gõ MDF, sơn pu', 'giuong-ngu-mdf-son-pu', 'Tủ được làm từ ván MDF chống ẩm với 8 cửa mở và 4 ngăn kéo, tay nắm nhôm.', 3500000, '1350608682_131.jpg', '2012-10-10', 2, 14, 1),
(30, 'Giường ngủ gõ MDF, sơn pu', 'giuong-ngu-mdf-son-pu', 'Tủ được làm từ ván MDF chống ẩm với 8 cửa mở và 4 ngăn kéo, tay nắm nhôm.', 3500000, '1350608698_132.jpg', '2012-10-10', 2, 14, 1),
(31, 'Giường ngủ gõ MDF, sơn pu', 'giuong-ngu-mdf-son-pu', 'Giường được làm từ ván MDF chống ẩm với 8 cửa mở và 4 ngăn kéo, tay nắm nhôm.', 4000000, '1350608712_139.jpg', '2012-10-10', 2, 14, 1),
(32, 'Kệ TV', 'ke-tv', ' tu ke tivi phong khach, kệ tivi gắn liến với tủ, kệ tivi mdf tphcm, thiet ke ke tivi voi phong khach nho hep, ke tivi danh cho phong ngu hep, trang tri tranh phia tren ke tivi có nen k, ke tivi don g', 1800000, '1350610583_1256.jpg', '2012-10-19', 3, 14, 1),
(33, 'Bộ bàn ghế Minh Quốc gỗ Hương  Khảm Ốc ', 'bo-ban-ghe-go-huong', ' tu ke tivi phong khach, kệ tivi gắn liến với tủ, kệ tivi mdf tphcm, thiet ke ke tivi voi phong khach nho hep, ke tivi danh cho phong ngu hep, trang tri tranh phia tren ke tivi có nen k, ke tivi don g', 34000000, '1382654259ban_go_huong.jpg', '2013-10-24', 8, 14, 1);

-- --------------------------------------------------------

--
-- Table structure for table `showroom`
--

CREATE TABLE IF NOT EXISTS `showroom` (
  `ma_showroom` int(11) NOT NULL AUTO_INCREMENT,
  `tinh_thanh` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `ten_showroom` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `dia_chi` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `dien_thoai` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `hinh_tieu_de` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `hinh_anh` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `trang_thai` tinyint(1) NOT NULL,
  PRIMARY KEY (`ma_showroom`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Dumping data for table `showroom`
--

INSERT INTO `showroom` (`ma_showroom`, `tinh_thanh`, `ten_showroom`, `dia_chi`, `dien_thoai`, `email`, `hinh_tieu_de`, `hinh_anh`, `trang_thai`) VALUES
(1, 'Thành Phố Hồ Chí Minh', 'SHOWROOM LÊ TRỌNG TẤN', '11 Lê Trọng Tấn, Phường Sơn Kỳ, Q.Tân Phú, TpHCM', '012345678 - 096854332', 'letrongtan@yahoo.com', '11le_trong_tan.jpg|11le_trong_tan_2.jpg|11le_trong_tan_3.jpg', '11le_trong_tan.jpg|11le_trong_tan_2.jpg|11le_trong_tan_3.jpg', 1),
(2, 'Thành Phố Hồ Chí Minh', 'SHOWROOM TÂN PHÚ', '6 Đường 27, Phường Sơn Kỳ, Q.Tân Phú, TpHCM', '548965553366 - 61545454546546', 'letrongtan@yahoo.com', '6duong27.jpg|6duong27_2.jpg|6duong27_3.jpg', '6duong27.jpg|6duong27_2.jpg|6duong27_3.jpg', 1),
(3, 'Bà Rịa - Vũng Tàu', 'IQ Luxury Interior ( IQ Desingn )', 'Nghi Tàm, Phường Yên Phụ, Q. Tây Hồ, Hà Nội', '012345678 - 096854332', 'letrongtan@yahoo.com', 'showroom-ha-noi-IQ-Luxury.jpg|showroom-ha-noi-IQ-Luxury-2.jpg|showroom-ha-noi-IQ-Luxury-1.jpg', 'showroom-ha-noi-IQ-Luxury.jpg|showroom-ha-noi-IQ-Luxury-2.jpg|showroom-ha-noi-IQ-Luxury-1.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tin_tuc`
--

CREATE TABLE IF NOT EXISTS `tin_tuc` (
  `matintuc` int(11) NOT NULL AUTO_INCREMENT,
  `tieude` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `tieu_de_url` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `tomtat` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `chitiet` text COLLATE utf8_unicode_ci NOT NULL,
  `hinh` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `tacgia` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ngaydang` date NOT NULL,
  `ngaygui` date NOT NULL,
  `tin_tuc_moi` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`matintuc`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=6 ;

--
-- Dumping data for table `tin_tuc`
--

INSERT INTO `tin_tuc` (`matintuc`, `tieude`, `tieu_de_url`, `tomtat`, `chitiet`, `hinh`, `tacgia`, `ngaydang`, `ngaygui`, `tin_tuc_moi`) VALUES
(1, 'Khách nước ngoài đánh giá cao đồ gỗ Việt Nam ', 'khach-hang-nuoc-ngoai-danh-gia-cao-go-viet-nam', 'So với sản phẩm cùng loại của nhiều nước khác, ông James Koh, cố vấn Chủ tịch Hội đồng công nghiệp nội thất Singapore, đánh giá đồ gỗ của Việt Nam tốt về chất lượng, kiểu dáng và giá cả cạnh tranh, được người dân Singapore và nhiều nhà mua hàng quốc tế quan tâm.', '<p>So với sản phẩm c&ugrave;ng loại của nhiều nước kh&aacute;c, &ocirc;ng James Koh, cố vấn Chủ tịch Hội đồng c&ocirc;ng nghiệp nội thất Singapore, đ&aacute;nh gi&aacute; đồ gỗ của Việt Nam tốt về chất lượng, kiểu d&aacute;ng v&agrave; gi&aacute; cả cạnh tranh, được người d&acirc;n Singapore v&agrave; nhiều nh&agrave; mua h&agrave;ng quốc tế quan t&acirc;m.</p>\r\n\r\n<p><img alt="" src="/mvc_go_moc/public/hinhtintuc/images/go3.jpg" style="height:300px; width:400px" /></p>\r\n\r\n<p>&Ocirc;ng James Koh cho bi?t, kho?ng 10 n?m nay nhi?u doanh nghi?p ?? <a href="http://chogo.vn">g? Vi?t Nam</a> tham gia h?i ch? IFFS/AFS ? Singapore, ???c nh?ng nh&agrave; mua h&agrave;ng qu?c t? quan t&acirc;m v&agrave; ?&aacute;nh gi&aacute; cao. M?t s? doanh nghi?p Vi?t Nam th??ng xuy&ecirc;n tham gia h?i ch? n&agrave;y v&agrave; c&oacute; ???c ??n h&agrave;ng t? ?&acirc;y.</p>\r\n\r\n<p>IFFS/AFS 2013 di?n ra v&agrave;o th&aacute;ng 3 r?i thu h&uacute;t 26 doanh nghi?p Vi?t Nam tham gia v?i di?n t&iacute;ch tr?ng b&agrave;y s?n ph?m h?n 1.000 m2&nbsp;c?ng ?&atilde; ?em v? nh?ng k?t qu? ban ??u kh&aacute; t?t.</p>\r\n\r\n<p><img alt="" src="/mvc_go_moc/public/hinhtintuc/images/go1.jpg" style="height:197px; width:255px" /></p>\r\n\r\n<p>Theo th?ng k&ecirc; c?a C&ocirc;ng ty TNHH D?ch v? Th??ng m?i ??u t? PNY &ndash; ??n v? ??a ?o&agrave;n doanh nhi?p <a href="http://chogo.vn">?? g? Vi?t Nam</a> sang Singapore tham d? h?i ch? n&agrave;y, ch? t&iacute;nh ri&ecirc;ng s? ki?n IFFS/AFS 2013 di?n ra v&agrave;o th&aacute;ng 3 r?i, ?&atilde; c&oacute; 145 kh&aacute;ch mua h&agrave;ng t?i gian h&agrave;ng Vi?t Nam v?i t?ng gi&aacute; tr? ??n h&agrave;ng nh?n ???c l&agrave; h?n 2 tri?u ?&ocirc; la M?. Theo ??n v? n&agrave;y th&igrave; gi&aacute; tr? ??n h&agrave;ng kh&ocirc;ng d?ng l?i con s? ?&oacute; m&agrave; s? t?ng l&ecirc;n sau h?i ch?.</p>\r\n\r\n<p><img alt="" src="/mvc_go_moc/public/hinhtintuc/images/2.jpg" style="height:194px; width:259px" /></p>\r\n\r\n<p>Theo ban t? ch?c, h?i ch? IFFS/AFS 2014 (s? di?n ra t? ng&agrave;y 13 ??n 16-3-2014) ??n nay ?&atilde; c&oacute; h?n 50% s? doanh nghi?p Vi?t Nam d? IFFS/AFS 2013 t&aacute;i ??ng k&yacute; tham gia.</p>\r\n\r\n<p>Theo l&atilde;nh ??o C&ocirc;ng ty PNY &ndash; ??i di?n ban t? ch?c IFFS t?i Vi?t Nam, doanh nghi?p ??ng k&yacute; tham gia h?i ch? s? ???c gi?m 20% gi&aacute; gian h&agrave;ng tr?ng khi ??ng k&yacute; v&agrave; ??t c?c 50% tr??c ng&agrave;y 15-9-2012; ???c thi?t l?p gian h&agrave;ng chung Vietnam Pavilion; brochure gi?i thi?u chung cho gian h&agrave;ng Vietnam Pavilion nh?m qu?ng b&aacute; s?n ph?m c?a doanh nghi?p; h? tr? t? v?n v? nh&acirc;n s? v&agrave; marketing&hellip;</p>\r\n', '1386330906go3.jpg', 'Dương Tuấn Cảnh', '2013-12-06', '2013-12-06', 1),
(2, 'Căn hộ siêu sang kết hợp phong cách Đông - Tây ở Quận 7, Sài Gòn', 'can-ho-sieu-sang', 'Sự kết hợp khéo léo giữa phong cách Châu Âu hiện đại và châu Á cổ điển đã mang đến cho ngôi nhà của vợ chồng anh Đạt sự cá tính và trẻ trung.', '<p><a href="http://afamily.vn/nha-hay/khong-gian-song-ngot-ngao-voi-den-nhap-nhay-20144171311134.chn" target="_blank">Kh&ocirc;ng gian sống</a>&nbsp;của gia đ&igrave;nh anh Đạt l&agrave; ng&ocirc;i nh&agrave; 3 tầng xinh xắn tọa lạc tr&ecirc;n tuyến đường 15 đ&ocirc;ng đ&uacute;c, phường T&acirc;n Kiểng, Quận 7, Hồ Ch&iacute; Minh. M&agrave;u sơn s&aacute;ng v&agrave; chất liệu sơn được chọn kỹ kết hợp với hệ thống ban c&ocirc;ng, cửa sổ v&agrave; c&acirc;y xanh bố tr&iacute; hợp l&yacute; gi&uacute;p ngoại thất ng&ocirc;i nh&agrave; tho&aacute;ng đ&atilde;ng, m&aacute;t mẻ v&agrave; kh&ocirc;ng k&eacute;m phần bắt mắt.</p>\r\n\r\n<p><img alt="" src="/ci_207/public/hinhtintuc/images/nha-quan-7-1-3c143.jpg" style="height:900px; width:600px" /></p>\r\n\r\n<p><em>Ngoại thất của ng&ocirc;i nh&agrave; v&ocirc; c&ugrave;ng nhẹ nh&agrave;ng với m&agrave;u sơn s&aacute;ng v&agrave; c&acirc;y xanh.</em></p>\r\n\r\n<p><img alt="" src="/ci_207/public/hinhtintuc/images/nha-quan-7-3-3c143.jpg" style="height:400px; width:600px" /></p>\r\n\r\n<p><em>Hi&ecirc;n nh&agrave; rộng, tho&aacute;ng.</em></p>\r\n\r\n<p>L&agrave; người y&ecirc;u nghệ thuật v&agrave; th&iacute;ch sự mới mẻ, anh Đạt đ&atilde; &aacute;p dụng nhiều phong c&aacute;ch trang tr&iacute; trong ng&ocirc;i nh&agrave;. Tầng trệt được thiết kế theo phong c&aacute;ch ch&acirc;u &Aacute; đậm n&eacute;t. Tiền sảnh của&nbsp;<a href="http://afamily.vn/nha-hay/ngoi-nha-go-13m-dep-hut-hon-va-cuc-tien-nghi-2014426152720733.chn" target="_blank">ng&ocirc;i nh&agrave;</a>&nbsp;rất bắt mắt nhờ những v&aacute;ch ngăn họa tiết hoa mềm mại. Th&ecirc;m v&agrave;o đ&oacute;, nhờ khoảng giếng trời v&agrave; bể c&aacute; nhỏ m&agrave; kh&ocirc;ng gian n&agrave;y lại c&agrave;ng tho&aacute;ng m&aacute;t, thư th&aacute;i.</p>\r\n', '1405743867nha-quan-7-3-3c143.jpg', 'afamily', '2014-07-19', '2014-07-19', 1),
(3, 'Ngôi nhà gỗ 13m² đẹp hút hồn và cực tiện nghi', 'ngoi-nha-go-dep', 'Diện tích tuy nhỏ nhưng nhờ vào cách bài trí thông minh mà ngôi nhà bằng gỗ này vẫn rất quyến rũ và tiện lợi trong sinh hoạt.', '<p>Nh&igrave;n theo sơ đồ mặt cắt, c&oacute; thể thấy căn nh&agrave; t&iacute; hon được chia ra l&agrave;m ba phần bao gồm nơi tiếp kh&aacute;ch, khu tắm v&agrave; bếp nấu li&ecirc;n ho&agrave;n v&agrave; một g&aacute;c x&eacute;p s&aacute;t m&aacute;i, ch&iacute;nh l&agrave;&nbsp;<a href="http://afamily.vn/nha-hay/noi-rong-phong-ngu-cua-tre-nho-bai-tri-noi-that-sang-tao-20142614216297.chn" target="_blank">ph&ograve;ng ngủ</a>. C&aacute;ch b&agrave;i tr&iacute; th&ocirc;ng minh v&agrave; hiện đại khiến ng&ocirc;i nh&agrave; d&ugrave; c&oacute; diện t&iacute;ch chỉ 13m&sup2; vẫn v&ocirc; c&ugrave;ng tiện dụng.</p>\r\n\r\n<p>To&agrave;n bộ b&ecirc;n trong&nbsp;<a href="http://afamily.vn/nha-hay/6-ngoi-nha-ti-hon-co-thiet-ke-sieu-dep-tren-the-gioi-20140331114322662.chn" target="_blank">ng&ocirc;i nh&agrave;</a>&nbsp;đều được ốp gỗ th&ocirc;ng s&aacute;ng m&agrave;u rất ấm c&uacute;ng. Ri&ecirc;ng s&agrave;n nh&agrave; l&agrave; gỗ n&acirc;u b&oacute;ng sạch sẽ, dễ l&agrave;m ch&ugrave;i. Chủ nh&agrave; đ&atilde; lắp cửa sổ quanh nh&agrave; bởi ai cũng biết &aacute;nh s&aacute;ng sẽ l&agrave;m cho căn hộ nhỏ tho&aacute;ng, s&aacute;ng hơn. Cửa sổ được bố tr&iacute; ở những điểm quan trọng như ph&ograve;ng kh&aacute;ch, chỗ k&ecirc; b&agrave;n l&agrave;m việc, bồn rửa, bếp ga hay khoảng đệm nh&agrave; tắm.</p>\r\n\r\n<p><img alt="" src="/ci_207/public/hinhtintuc/images/ngoi-nha-go-13m.JPG" style="height:814px; width:540px" /></p>\r\n\r\n<p><a href="http://afamily.vn/nha-hay/5-cach-luu-tru-o-gam-cau-thang-phong-khach-tien-ma-van-sang-2014050809227579.chn" target="_blank">Ph&ograve;ng kh&aacute;ch</a>&nbsp;rất đơn giản với sofa gỗ ki&ecirc;m ngăn chứa đồ ở ph&iacute;a dưới. Với k&iacute;ch thước tương đối lớn, chiếc sofa n&agrave;y ho&agrave;n to&agrave;n c&oacute; thể biến th&agrave;nh nơi ngả lưng cơ động. Vấn đề lưu trữ trong nh&agrave; được giải quyết bằng một v&agrave;i thanh kệ mở tr&ecirc;n tường. Thiết kế b&agrave;n gập&nbsp;ở ph&iacute;a dưới m&aacute;y t&iacute;nh nhanh ch&oacute;ng biến th&agrave;nh b&agrave;n l&agrave;m việc cơ động khi cần. Chiếc m&aacute;y t&iacute;nh hiện đại vừa đ&oacute;ng vai tr&ograve; l&agrave; tivi, vừa đ&aacute;p ứng nhu cầu l&agrave;m việc của chủ nh&agrave;.</p>\r\n\r\n<p><img alt="" src="/ci_207/public/hinhtintuc/images/ngoi-nha-go-13m1.JPG" style="height:359px; width:540px" /></p>\r\n\r\n<p>Bếp được chia ra l&agrave;m hai theo chiều dọc với v&aacute;ch ngăn l&agrave; hệ kệ mở lớn chứa c&aacute;c loại gia vị nấu ăn. Nửa c&ograve;n lại được bố tr&iacute; th&agrave;nh nh&agrave; tắm v&agrave; nh&agrave; vệ sinh.</p>\r\n\r\n<p><img alt="" src="/ci_207/public/hinhtintuc/images/ngoi-nha-go-13m2.JPG" style="height:359px; width:540px" /></p>\r\n', '1405744365ngoi-nha-go-13m-dep-hut-hon-va-cuc-tien-nghi.jpg', 'afamily', '2014-07-19', '2014-07-19', 1),
(4, 'Gỗ sồi liên tục tăng giá', 'go-soi-lien-tuc-tang-gia', 'Gỗ sồi liên tục tăng giá, từ đầu năm đến nay giá gỗ sồi tăng hơn 10% và sang tháng 3 giá gỗ sồi vẫn tiếp tục tăng. Bạn có đơn hàng Gỗ sồi hãy mua gỗ sồi ngay từ bây giờ để có giá gỗ tốt nhất.', '<p><strong>Gỗ sồi</strong>&nbsp;trắng xẻ sấy nhập khẩu từ Mỹ Gi&aacute; th&aacute;ng 02/2014 c&aacute;c bạn tham khảo nh&eacute;</p>\r\n\r\n<p><span style="font-size:13px; line-height:1.6em">Gỗ sồi trắng 4/4 &quot; (26mm) loại 1C gi&aacute; 730 USD/M3</span></p>\r\n\r\n<p>Gỗ sồi trắng 4/4 &quot; (26mm) loại 2C gi&aacute; 620 USD/M3</p>\r\n\r\n<p>Gỗ sồi trắng 4/4 &quot; (26mm) loại 3C gi&aacute; 520 USD/M3</p>\r\n\r\n<p>.....</p>\r\n\r\n<p>v&agrave; c&ograve;n nhiều quy c&aacute;ch gỗ sồi kh&aacute;c. Bạn đang cần gỗ sồi h&atilde;y li&ecirc;n lạc với ch&uacute;ng t&ocirc;i ngay từ b&acirc;y giờ để giữ gi&aacute;. Sang th&aacute;ng 3/2014 sẽ &aacute;p dụng gi&aacute; gỗ sồi nhập khẩu mới nh&eacute;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>(<em>Gi&aacute; gỗ sồi</em>&nbsp;quy đổi ra VNĐ tại thời điểm thanh to&aacute;n, Gi&aacute; gỗ chưa bao gồm thuế GTGT)</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Gi&aacute; Gỗ sồi xẻ sấy</strong>&nbsp;ở tr&ecirc;n c&oacute; t&iacute;nh chất tham khảo v&igrave; thay đổi tại mỗi thời điểm. Khi bạn c&oacute; nhu cầu về&nbsp;<em>gỗ sồi&nbsp;</em>h&atilde;y gọi cho ch&uacute;ng t&ocirc;i để c&oacute; gi&aacute; tốt nhất. Hotline: 0938 170 688 Ms.Tuyền</p>\r\n\r\n<p><img alt="Gỗ sồi trắng xẻ sấy nhập khẩu" src="/ci_207/public/hinhtintuc/images/go_soi_tang_gia.jpg" style="height:350px; width:700px" /></p>\r\n', '1405770960go_soi_tang_gia.jpg', 'afamily', '2014-07-19', '2014-07-19', 1),
(5, 'Nghề làm Gỗ Lũa ở Hà Nội', 'nghe-lam-go-lua-ha-noi', 'Gỗ lũa kết hợp với cây cảnh, đá cảnh là thú chơi và thưởng thức nghệ thuật của ông cha truyền lại. Ở Hà Nội, người làm được gỗ lũa nghệ thuật không nhiều nhưng từ lâu nó đã trở thành mặt hàng cao cấp được ưa chuộng không chỉ với người Việt Nam mà cả người nước ngoài.', '<p>Gỗ lũa l&agrave; phần l&otilde;i b&ecirc;n trong của c&aacute;c gốc c&acirc;y cổ thụ kh&ocirc;. L&agrave; phần gốc, lại l&agrave; l&otilde;i n&ecirc;n gỗ lũa rất cứng, kh&ocirc;ng bao giờ bị mục n&aacute;t, mối mọt. Từ đ&acirc;y, những nghệ nh&acirc;n với trị tuệ s&aacute;ng tạo v&agrave; đ&ocirc;i b&agrave;n tay kh&eacute;o l&eacute;o đ&atilde; l&agrave;m n&ecirc;n những vật phẩm để trang tr&iacute; nội thất, ngoại thất.</p>\r\n\r\n<p>Lũa c&acirc;y c&oacute; ở suối, n&uacute;i v&agrave; đồng bằng, những lũa c&acirc;y nằm ở đ&aacute;y suối hoặc ngang d&ograve;ng suối chảy, được nước suối s&oacute;i m&ograve;n thường l&agrave; những c&acirc;y lũa đẹp, c&oacute; độ đen b&oacute;ng, c&oacute; thời gian tương đối d&agrave;i v&igrave; chục năm c&oacute; khi h&agrave;ng trăm năm. Loại n&agrave;y được giữ l&acirc;u bền, ch&iacute;nh v&igrave; vậy m&agrave; c&oacute; gi&aacute; trị cao, những lũa c&acirc;y trong c&aacute;c khu rừng s&acirc;u, tr&ecirc;n đ&egrave;o n&uacute;i, c&oacute; nhiều chủng loại, về s&aacute;ng thế cũng đa dạng, m&agrave;u sắc uyển chuyển theo m&ugrave;a của mu&ocirc;n ng&agrave;n c&acirc;y rừng.</p>\r\n\r\n<p><img alt="" src="/ci_207/public/hinhtintuc/images/ban-ghe-lua.jpg" style="height:400px; width:533px" /></p>\r\n\r\n<p>Ng&agrave;y nay người đi rừng, l&ecirc;n n&uacute;i ng&agrave;y một tăng để t&igrave;m c&acirc;y về b&aacute;n cho l&agrave;ng chơi lũa, những lũa c&acirc;y thuộc khu vực trung du, đồng bằng tuy c&oacute; cũng nhiều nhưng gi&aacute; trị vật chất kh&ocirc;ng cao v&igrave; phần lớn c&aacute;c c&acirc;y ở dạng thảo mộc, b&aacute;n thảo mộc hoặc thi&ecirc;n về phần gỗ thịt kh&ocirc;ng l&acirc;u năm, do đ&oacute; &iacute;t l&otilde;i, d&ugrave; thi&ecirc;n nhi&ecirc;n hay con người tạo th&agrave;nh cũng kh&oacute; c&oacute; thể giữ được bền l&acirc;u.</p>\r\n\r\n<p><img alt="go lua ha noi" src="/ci_207/public/hinhtintuc/images/ban-ghe-lua3.jpg" style="height:183px; width:276px" /></p>\r\n', '1405774569go_lua_2.jpg', 'afamily', '2014-07-19', '2014-07-19', 1);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
