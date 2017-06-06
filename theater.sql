-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- 主機: 127.0.0.1
-- 產生時間： 2017-06-06 15:39:54
-- 伺服器版本: 5.6.26
-- PHP 版本： 5.5.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `theater`
--

-- --------------------------------------------------------

--
-- 資料表結構 `book`
--

CREATE TABLE IF NOT EXISTS `book` (
  `_id` int(255) NOT NULL,
  `_sid` int(255) NOT NULL,
  `_number` int(255) NOT NULL,
  `_seat` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 資料表結構 `booker`
--

CREATE TABLE IF NOT EXISTS `booker` (
  `_id` int(255) NOT NULL,
  `_bookid` int(255) NOT NULL,
  `_name` varchar(255) NOT NULL,
  `_phone` varchar(255) NOT NULL,
  `_email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 資料表結構 `movie`
--

CREATE TABLE IF NOT EXISTS `movie` (
  `_id` int(255) NOT NULL,
  `_name` varchar(255) NOT NULL,
  `_img` varchar(255) NOT NULL,
  `_video` varchar(255) NOT NULL,
  `_releasetime` int(255) NOT NULL,
  `_release_company` varchar(255) NOT NULL,
  `_language` varchar(255) NOT NULL,
  `_series` varchar(255) NOT NULL,
  `_genric` varchar(255) NOT NULL,
  `_director` varchar(255) NOT NULL,
  `_actor` varchar(255) NOT NULL,
  `_time` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- 資料表的匯出資料 `movie`
--

INSERT INTO `movie` (`_id`, `_name`, `_img`, `_video`, `_releasetime`, `_release_company`, `_language`, `_series`, `_genric`, `_director`, `_actor`, `_time`) VALUES
(1, '寶貝老闆The Boss Baby', '寶貝老闆The Boss Baby.jpg', 'https://www.youtube.com/embed/sCB5pmtdxro', 1490889600, ' 	夢工廠動畫', ' 	英語', '', '', ' 	湯姆·麥葛瑞斯', ' 	      亞歷·鮑德溫     史提夫·布希米     吉米·坎摩爾     麗莎·庫卓     帕頓·奧斯瓦爾特', '97分'),
(2, '神偷奶爸3', '神偷奶爸3.jpg', 'https://www.youtube.com/embed/Eg6Tk3fz1Os', 1498665600, ' 	照明娛樂 環球動畫工作室', ' 	英語', '', '', ' 	皮爾·考芬 克里斯·雷納德', ' 	史提夫·卡爾 克莉絲汀·薇格 特雷·帕克 米蘭達·科斯格羅夫 黛娜·蓋兒 內夫·沙雷爾 史提夫·庫甘 茱莉·安德魯絲 珍妮·斯蕾特 皮爾·考芬', '96分'),
(3, '與你的第100次戀愛', '與你的第100次戀愛.jpg', 'https://www.youtube.com/embed/fRMBymuCijU', 1486137600, 'アスミック・エース株式会社 ', '日文', '', '     爱情 ', '     月川翔', '     miwa，坂口健太郎，龙星凉，真野惠里菜', '     116分'),
(4, '純情 日韓巨星映畫祭：華麗之惡', '華麗之惡.jpg', 'https://www.youtube.com/embed/uhmbhv7pXi4', 1495123200, '可樂藝術文創股份有限公司 ', '韓語', '普遍級', '', '李恩姬 Lee Eun-hee', '《失業女王聯盟》人氣男團EXO 都暻秀（D.O.）、《Who Are You－學校2015》國民初戀 金所泫、《歡唱一家親》深情熟男 朴埇佑、《未生》朴海俊、《愛上變身情人》李凡秀', '114分'),
(5, '明天我要和昨天的妳約會', '明天我要和昨天的妳約會.jpg', 'https://www.youtube.com/embed/2TKt5VEGZQQ', 1489075200, '', '日文', '', '愛情、劇情', '《向陽處的她》三木孝浩', '《要聽神明的話》福士蒼汰、《渴望》小松菜奈、《閃爍的愛情》山田裕貴、《颱風的諾爾達》清原果耶、《寄生獸》東出昌大、《球場上的朝陽》大鷹明良、《惡人》宮崎美子', '111分');

-- --------------------------------------------------------

--
-- 資料表結構 `movietime`
--

CREATE TABLE IF NOT EXISTS `movietime` (
  `_id` int(255) NOT NULL,
  `_sid` int(255) NOT NULL,
  `_time` int(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

--
-- 資料表的匯出資料 `movietime`
--

INSERT INTO `movietime` (`_id`, `_sid`, `_time`) VALUES
(1, 1, 1498788600),
(2, 1, 1498800600),
(3, 2, 1498791600),
(4, 2, 1498803000),
(5, 3, 1498802400),
(6, 3, 1498789200),
(7, 4, 1498806000),
(8, 4, 1498798200),
(9, 5, 1498809600),
(10, 5, 1498821000);

--
-- 已匯出資料表的索引
--

--
-- 資料表索引 `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`_id`);

--
-- 資料表索引 `booker`
--
ALTER TABLE `booker`
  ADD PRIMARY KEY (`_id`);

--
-- 資料表索引 `movie`
--
ALTER TABLE `movie`
  ADD PRIMARY KEY (`_id`);

--
-- 資料表索引 `movietime`
--
ALTER TABLE `movietime`
  ADD PRIMARY KEY (`_id`);

--
-- 在匯出的資料表使用 AUTO_INCREMENT
--

--
-- 使用資料表 AUTO_INCREMENT `book`
--
ALTER TABLE `book`
  MODIFY `_id` int(255) NOT NULL AUTO_INCREMENT;
--
-- 使用資料表 AUTO_INCREMENT `booker`
--
ALTER TABLE `booker`
  MODIFY `_id` int(255) NOT NULL AUTO_INCREMENT;
--
-- 使用資料表 AUTO_INCREMENT `movie`
--
ALTER TABLE `movie`
  MODIFY `_id` int(255) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- 使用資料表 AUTO_INCREMENT `movietime`
--
ALTER TABLE `movietime`
  MODIFY `_id` int(255) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
