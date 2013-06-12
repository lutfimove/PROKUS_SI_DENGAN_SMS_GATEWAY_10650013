-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 12, 2013 at 05:08 AM
-- Server version: 5.5.16
-- PHP Version: 5.3.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `gammu`
--

-- --------------------------------------------------------

--
-- Table structure for table `daemons`
--

CREATE TABLE IF NOT EXISTS `daemons` (
  `Start` text NOT NULL,
  `Info` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `gammu`
--

CREATE TABLE IF NOT EXISTS `gammu` (
  `Version` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `gammu`
--

INSERT INTO `gammu` (`Version`) VALUES
(11),
(11),
(11),
(11);

-- --------------------------------------------------------

--
-- Table structure for table `inbox`
--

CREATE TABLE IF NOT EXISTS `inbox` (
  `UpdatedInDB` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ReceivingDateTime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `Text` text NOT NULL,
  `SenderNumber` varchar(20) NOT NULL DEFAULT '',
  `Coding` enum('Default_No_Compression','Unicode_No_Compression','8bit','Default_Compression','Unicode_Compression') NOT NULL DEFAULT 'Default_No_Compression',
  `UDH` text NOT NULL,
  `SMSCNumber` varchar(20) NOT NULL DEFAULT '',
  `Class` int(11) NOT NULL DEFAULT '-1',
  `TextDecoded` text NOT NULL,
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `RecipientID` text NOT NULL,
  `Processed` enum('false','true') NOT NULL DEFAULT 'false',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=29 ;

--
-- Dumping data for table `inbox`
--

INSERT INTO `inbox` (`UpdatedInDB`, `ReceivingDateTime`, `Text`, `SenderNumber`, `Coding`, `UDH`, `SMSCNumber`, `Class`, `TextDecoded`, `ID`, `RecipientID`, `Processed`) VALUES
('2013-05-20 14:41:52', '2010-06-30 14:29:35', '002C002C002C006D004C006500620075002000730074006D0069006B0020007000720061006E00670020006A00740061002000700068006F002E002E0020002E003F', '+6281903799690', 'Default_No_Compression', '', '+62818445009', 2, ',,,mLebu stmik prang jta pho.. .?', 1, 'podi', 'false'),
('2013-05-20 14:41:52', '2010-10-03 03:51:36', '005700610068002C002000700061007900610068002C0020006100730069006B0020006C006F002E0020002E0020002E', '+6285743579745', 'Default_No_Compression', '', '+62816124', -1, 'Wah, payah, asik lo. . .', 2, 'podi', 'false'),
('2013-05-20 14:41:53', '2010-10-03 04:52:03', '0057006100680020006E0079006500730065006C0020006B006F007700650020006700610020006C006900610074000D000A0068006100680061006800610067', '+6285743579745', 'Default_No_Compression', '', '+62816124', -1, 'Wah nyesel kowe ga liat\r\nhahahag', 3, 'podi', 'false'),
('2013-05-20 14:41:53', '2010-07-04 07:57:50', '004F00720061002000610068002C0020006C00670020006A006100200071002000700075006C0061006E0067002C00200074006100720020006A0061006D002000390061006E002C002000710020006A0061006700610020006C0067002C', '+6285743579745', 'Default_No_Compression', '', '+6281612977', -1, 'Ora ah, lg ja q pulang, tar jam 9an, q jaga lg,', 4, 'podi', 'false'),
('2013-05-20 14:41:53', '2010-07-04 11:31:58', '004400690074002000670065006C00200032002000550049004E002000630069006500200061006E006100200050004700530044006E00650020006F00720061003F0062006C007A', '+628975978890', 'Default_No_Compression', '', '+6289644000001', -1, 'Dit gel 2 UIN cie ana PGSDne ora?blz', 5, 'podi', 'false'),
('2013-05-20 14:41:53', '2010-07-04 11:34:33', '004500610070', '+628975978890', 'Default_No_Compression', '', '+6289644000001', -1, 'Eap', 6, 'podi', 'false'),
('2013-05-20 14:41:53', '2010-07-04 11:43:06', '004C006800610020006B006F00200077006E006700690020006E006A0069006F00740020007000610020006400690074003F', '+628975978890', 'Default_No_Compression', '', '+6289644000001', -1, 'Lha ko wngi njiot pa dit?', 7, 'podi', 'false'),
('2013-05-20 14:41:53', '2010-07-04 11:45:04', '004F0068002E0020002E006500610020006D0067006B006F00200069006E0066006F0072006D006100730069006E00650020006A00650020006B0065006C0061006C0065006E002000650061002000620072006F002E0020002E006F006B006F006B002E0020002E006B006F0020006D0069006E006700200062006E006A006100720020006D0061006E0069006E0067002000720061003F', '+628975978890', 'Default_No_Compression', '', '+6289644000001', -1, 'Oh. .ea mgko informasine je kelalen ea bro. .okok. .ko ming bnjar maning ra?', 8, 'podi', 'false'),
('2013-05-20 14:41:54', '2010-07-04 11:47:57', '00450061002000650061002E0020002E006100640069006E00650020006B006F00200061006E00640069006E006700200077006E00670069002000650073006900680020006E0061006E00670020006B006E006500200065002E0020002E00610070006100200077006900730020006D0069006E00670020006A006F0067006A00610020006D0061006E0069006E0067003F', '+628975978890', 'Default_No_Compression', '', '+6289644000001', -1, 'Ea ea. .adine ko anding wngi esih nang kne e. .apa wis ming jogja maning?', 9, 'podi', 'false'),
('2013-05-20 14:41:54', '2010-07-04 11:50:36', '004F0020006F0020006F0068002E0020002E006A0061006E002000710020006200670075006E00670020006B0061006C00610068002E0020002E006B0072006F0020006B0075006C0069006100680065002000700069007700650020006B007900650020006B00750065002E0020002E0067006500680020006E0065006B0020006E0061006E0067002000550049004E0020006900620075006E00650020006B006F002000690073006F0020006E0067006C00650062006F006B006E00610020006100710020006F00720061003F', '+628975978890', 'Default_No_Compression', '', '+6289644000001', -1, 'O o oh. .jan q bgung kalah. .kro kuliahe piwe kye kue. .geh nek nang UIN ibune ko iso nglebokna aq ora?', 10, 'podi', 'false'),
('2013-05-20 14:41:54', '2010-07-04 12:00:05', '002E00650061002000770069007300200067006D00700061006E00670020006C006100680020002E0020002E006B0070006E002200200074006F006B002000630072006900740061006E0069002E0020002E006B006F0020007200610020006D007500640045006E00670020006A0065002E0020002E0068006500680065002E0020002E0065006100200077006900730020007400550072006E007500770075006E002E0020002E006E0065006B00200061006E006100200069006E0066006F0072006D0061007300690020006B00620072006900200061007100200079006F003F', '+628975978890', 'Default_No_Compression', '', '+6289644000001', -1, '.ea wis gmpang lah . .kpn" tok critani. .ko ra mudEng je. .hehe. .ea wis tUrnuwun. .nek ana informasi kbri aq yo?', 11, 'podi', 'false'),
('2013-05-20 14:41:54', '2010-07-04 12:35:56', '0041006400610020006D006500720061006800200061006D006100200063006F006B006C006100740020006D007500640061002000700069006C006900680020006D0061006E0061', '+6281328204713', 'Default_No_Compression', '', '+6281100000', -1, 'Ada merah ama coklat muda pilih mana', 12, 'podi', 'false'),
('2013-05-20 14:41:54', '2010-07-04 13:35:34', '004D0065006E0064006100640061006B0020007200650075006E006900200079006F00200072006500740072006F0020003000310030', '+6287839943245', 'Default_No_Compression', '', '+62818445009', -1, 'Mendadak reuni yo retro 010', 13, 'podi', 'false'),
('2013-05-20 14:41:54', '2010-08-10 15:30:35', '0022003700200068006100720069002C00200041004C004C004100480020006D006E0063006900700074006B0061006E0022000A002200420055004D00490022000A007900670020006400690064006C006D006E0079002000740072006400700074000A00220037002000420045004E005500410022002C000A00220037002000530041004D00550044004500520041002200200026002000640069006100740073006E007900610020006100640061000A002200370020004C00410050004900530020004C0041004E0047004900540022002C000A0064006700200068006900610073006E000A002200370020005700410052004E0041002000500045004C0041004E004700490022000A00730065006200670061006900200074006E00640061000A0022003700200042004900440041', '+6281903799690', 'Default_No_Compression', '050003DE0301', '+62818445009', 2, '"7 hari, ALLAH mnciptkan"\n"BUMI"\nyg didlmny trdpt\n"7 BENUA",\n"7 SAMUDERA" & diatsnya ada\n"7 LAPIS LANGIT",\ndg hiasn\n"7 WARNA PELANGI"\nsebgai tnda\n"7 BIDA', 14, 'podi', 'false'),
('2013-05-20 14:41:54', '2010-08-10 15:31:05', '00440041005200490022000A006D006B0061002000730075007200740020007000720074006D0061002C0064006C006D002000410049004500520045005200270061006E002000280041006C002D00660061007400690068006100680029002000740072006400700074000A0022003700200041005900410054002200200026000A00420073006F00670020007000610067007900200071007400610020006D006C006100650020007000750061007300610020006D0068006E0020006D0061006100660020006C00610068006900720020006200740069006E0020007900610020006B0072006E00610020006D006E0075007300690061002000740061006B0020006C00750070007500740020006400610072006900200064006F00730061002E000A000A002800200061007200690065', '+6281903799690', 'Default_No_Compression', '050003DE0302', '+62818445009', 2, 'DARI"\nmka surt prtma,dlm AIERER''an (Al-fatihah) trdpt\n"7 AYAT" &\nBsog pagy qta mlae puasa mhn maaf lahir btin ya krna mnusia tak luput dari dosa.\n\n( arie', 15, 'podi', 'false'),
('2013-05-20 14:41:54', '2010-08-10 15:30:42', '0066002F0069006E007400650070002F0074006F0062006F006E0067002F00510069006C006900200072006500740072006F00200029', '+6281903799690', 'Default_No_Compression', '050003DE0303', '+62818445009', 2, 'f/intep/tobong/Qili retro )', 16, 'podi', 'false'),
('2013-05-20 14:41:55', '2010-08-19 05:28:05', '0043004F004D0045002000260020004A004F0049004E0020003A000A004200550042004500520020004D0045004D004F0052004100420049004C00490041000A00410054002000320031002000410055004700550053005400200032003000310030002E000A0049004E0020004D00550041005200410020004B00410050005500410053002E000A004900440052002000520070002E00310035003000300030002E000A00530054004100520054002000300035002E0030003000200050004D002000540049004C004C002000440052004F0050000A000A004300500020003A0020004200470058002C0056005A0044002C0048004500520049000A000A002D004300520041005A00590054004500430048004E004F0053004800490054002D000A000A00570041004A0049004200200044004100540041004E004700200021', '+628175455689', 'Default_No_Compression', '', '+62818445009', 2, 'COME & JOIN :\nBUBER MEMORABILIA\nAT 21 AUGUST 2010.\nIN MUARA KAPUAS.\nIDR Rp.15000.\nSTART 05.00 PM TILL DROP\n\nCP : BGX,VZD,HERI\n\n-CRAZYTECHNOSHIT-\n\nWAJIB DATANG !', 17, 'podi', 'false'),
('2013-05-20 14:42:59', '2013-05-20 14:42:56', '007400650073007400200063006F007900790079', '+6285747970842', 'Default_No_Compression', '', '+62816124', -1, 'test coyyy', 18, 'podi', 'false'),
('2013-05-20 14:44:03', '2013-05-20 14:44:00', '0074006500730074', '+6285747970842', 'Default_No_Compression', '', '+62816124', -1, 'test', 19, 'podi', 'false'),
('2013-05-20 14:45:38', '2013-05-20 14:45:35', '006F006B006500650065', '+6285747970842', 'Default_No_Compression', '', '+62816124', -1, 'okeee', 20, 'podi', 'false'),
('2013-05-20 14:49:52', '2013-05-20 14:49:46', '004B006500700061006C0061006B007500200070007500730069006E0067002C006B0061006B0069006B007500200070006500670065006C0032002E002E002E002E002E003A0029', '+6285747247005', 'Default_No_Compression', '', '+62816124', -1, 'Kepalaku pusing,kakiku pegel2.....:)', 21, 'podi', 'false'),
('2013-05-20 16:26:06', '2013-05-20 16:26:03', '0061006400690074007900610020006400690070006F0020007000720061006B006F0073006F000D000A006B0065006800610064006900720061006E002000620075006C0061006E00200069006E00690020003D00200031003000300025', '+6285747970842', 'Default_No_Compression', '', '+62816124', -1, 'aditya dipo prakoso\r\nkehadiran bulan ini = 100%', 22, 'dipoCell', 'false'),
('2013-05-20 16:30:37', '2013-05-20 16:30:33', '005400650073', '+62818468945', 'Default_No_Compression', '', '+62818445009', -1, 'Tes', 23, 'dipoCell', 'false'),
('2013-05-21 01:32:01', '2013-05-21 01:31:57', '00740065007300740069006E00670020006800610072006900200069006E0069', '+6285747970842', 'Default_No_Compression', '', '+62816124', -1, 'testing hari ini', 24, 'mesin01', 'false'),
('2013-05-21 01:32:49', '2013-05-21 01:32:44', '006A0064006B0064006B0073', '+6285713331944', 'Default_No_Compression', '', '+62816124', -1, 'jdkdks', 25, 'mesin01', 'false'),
('2013-05-21 06:21:21', '2013-05-21 06:21:16', '00740065007300740069006E00670020006400610062', '+6285747970842', 'Default_No_Compression', '', '+62816124', -1, 'testing dab', 26, 'mesin02', 'false'),
('2013-05-21 06:22:16', '2013-05-21 06:22:11', '006A0061006A0061006C', '+6287839620315', 'Default_No_Compression', '', '+62818445009', -1, 'jajal', 27, 'mesin02', 'false'),
('2013-05-21 06:22:45', '2013-05-21 06:22:38', '004600610066006100200061006E00630075006B', '+6287839620315', 'Default_No_Compression', '', '+62818445009', -1, 'Fafa ancuk', 28, 'mesin02', 'false');

-- --------------------------------------------------------

--
-- Table structure for table `outbox`
--

CREATE TABLE IF NOT EXISTS `outbox` (
  `UpdatedInDB` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `InsertIntoDB` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `SendingDateTime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `Text` text,
  `DestinationNumber` varchar(20) NOT NULL DEFAULT '',
  `Coding` enum('Default_No_Compression','Unicode_No_Compression','8bit','Default_Compression','Unicode_Compression') NOT NULL DEFAULT 'Default_No_Compression',
  `UDH` text,
  `Class` int(11) DEFAULT '-1',
  `TextDecoded` text NOT NULL,
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `MultiPart` enum('false','true') DEFAULT 'false',
  `RelativeValidity` int(11) DEFAULT '-1',
  `SenderID` varchar(255) DEFAULT NULL,
  `SendingTimeOut` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  `DeliveryReport` enum('default','yes','no') DEFAULT 'default',
  `CreatorID` text NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `outbox_date` (`SendingDateTime`,`SendingTimeOut`),
  KEY `outbox_sender` (`SenderID`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

-- --------------------------------------------------------

--
-- Table structure for table `outbox_multipart`
--

CREATE TABLE IF NOT EXISTS `outbox_multipart` (
  `Text` text,
  `Coding` enum('Default_No_Compression','Unicode_No_Compression','8bit','Default_Compression','Unicode_Compression') NOT NULL DEFAULT 'Default_No_Compression',
  `UDH` text,
  `Class` int(11) DEFAULT '-1',
  `TextDecoded` text,
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `SequencePosition` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`ID`,`SequencePosition`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `pbk`
--

CREATE TABLE IF NOT EXISTS `pbk` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `GroupID` int(11) NOT NULL DEFAULT '-1',
  `Name` text NOT NULL,
  `Number` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `pbk_groups`
--

CREATE TABLE IF NOT EXISTS `pbk_groups` (
  `Name` text NOT NULL,
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `phones`
--

CREATE TABLE IF NOT EXISTS `phones` (
  `ID` text NOT NULL,
  `UpdatedInDB` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `InsertIntoDB` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `TimeOut` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `Send` enum('yes','no') NOT NULL DEFAULT 'no',
  `Receive` enum('yes','no') NOT NULL DEFAULT 'no',
  `IMEI` varchar(35) NOT NULL,
  `Client` text NOT NULL,
  `Battery` int(11) NOT NULL DEFAULT '0',
  `Signal` int(11) NOT NULL DEFAULT '0',
  `Sent` int(11) NOT NULL DEFAULT '0',
  `Received` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`IMEI`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `phones`
--

INSERT INTO `phones` (`ID`, `UpdatedInDB`, `InsertIntoDB`, `TimeOut`, `Send`, `Receive`, `IMEI`, `Client`, `Battery`, `Signal`, `Sent`, `Received`) VALUES
('mesin02', '2013-05-21 06:24:07', '2013-05-21 06:20:17', '2013-05-21 06:24:17', 'yes', 'yes', '353907041682815', 'Gammu 1.28.90, Windows Server 2007 SP1, GCC 4.4, MinGW 3.13', 100, 57, 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `sentitems`
--

CREATE TABLE IF NOT EXISTS `sentitems` (
  `UpdatedInDB` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `InsertIntoDB` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `SendingDateTime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `DeliveryDateTime` timestamp NULL DEFAULT NULL,
  `Text` text NOT NULL,
  `DestinationNumber` varchar(20) NOT NULL DEFAULT '',
  `Coding` enum('Default_No_Compression','Unicode_No_Compression','8bit','Default_Compression','Unicode_Compression') NOT NULL DEFAULT 'Default_No_Compression',
  `UDH` text NOT NULL,
  `SMSCNumber` varchar(20) NOT NULL DEFAULT '',
  `Class` int(11) NOT NULL DEFAULT '-1',
  `TextDecoded` text NOT NULL,
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `SenderID` varchar(255) NOT NULL,
  `SequencePosition` int(11) NOT NULL DEFAULT '1',
  `Status` enum('SendingOK','SendingOKNoReport','SendingError','DeliveryOK','DeliveryFailed','DeliveryPending','DeliveryUnknown','Error') NOT NULL DEFAULT 'SendingOK',
  `StatusError` int(11) NOT NULL DEFAULT '-1',
  `TPMR` int(11) NOT NULL DEFAULT '-1',
  `RelativeValidity` int(11) NOT NULL DEFAULT '-1',
  `CreatorID` text NOT NULL,
  PRIMARY KEY (`ID`,`SequencePosition`),
  KEY `sentitems_date` (`DeliveryDateTime`),
  KEY `sentitems_tpmr` (`TPMR`),
  KEY `sentitems_dest` (`DestinationNumber`),
  KEY `sentitems_sender` (`SenderID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sentitems`
--

INSERT INTO `sentitems` (`UpdatedInDB`, `InsertIntoDB`, `SendingDateTime`, `DeliveryDateTime`, `Text`, `DestinationNumber`, `Coding`, `UDH`, `SMSCNumber`, `Class`, `TextDecoded`, `ID`, `SenderID`, `SequencePosition`, `Status`, `StatusError`, `TPMR`, `RelativeValidity`, `CreatorID`) VALUES
('2013-05-20 14:42:58', '0000-00-00 00:00:00', '2013-05-20 14:42:58', NULL, '007400650073007400200063006F007900790079', '085747970842', 'Default_No_Compression', '', '+62855000000', -1, 'test coyyy', 1, 'podi', 1, 'SendingOKNoReport', -1, 66, 255, 'Gammu 1.28.90'),
('2013-05-20 14:44:01', '0000-00-00 00:00:00', '2013-05-20 14:44:01', NULL, '0074006500730074', '085747970842', 'Default_No_Compression', '', '+62855000000', -1, 'test', 2, 'podi', 1, 'SendingOKNoReport', -1, 67, 255, 'Gammu 1.28.90'),
('2013-05-20 14:45:37', '0000-00-00 00:00:00', '2013-05-20 14:45:37', NULL, '006F006B006500650065', '085747970842', 'Default_No_Compression', '', '+62855000000', -1, 'okeee', 3, 'podi', 1, 'SendingOKNoReport', -1, 68, 255, 'Gammu 1.28.90'),
('2013-05-20 16:26:05', '0000-00-00 00:00:00', '2013-05-20 16:26:05', NULL, '0061006400690074007900610020006400690070006F0020007000720061006B006F0073006F000D000A006B0065006800610064006900720061006E002000620075006C0061006E00200069006E00690020003D00200031003000300025', '085747970842', 'Default_No_Compression', '', '+62855000000', -1, 'aditya dipo prakoso\r\nkehadiran bulan ini = 100%', 4, 'dipoCell', 1, 'SendingOKNoReport', -1, 69, 255, 'Gammu 1.28.90'),
('2013-05-21 01:32:00', '0000-00-00 00:00:00', '2013-05-21 01:32:00', NULL, '00740065007300740069006E00670020006800610072006900200069006E0069', '085747970842', 'Default_No_Compression', '', '+62855000000', -1, 'testing hari ini', 5, 'mesin01', 1, 'SendingOKNoReport', -1, 71, 255, 'Gammu 1.28.90'),
('2013-05-21 06:21:20', '0000-00-00 00:00:00', '2013-05-21 06:21:20', NULL, '00740065007300740069006E00670020006400610062', '085747970842', 'Default_No_Compression', '', '+62855000000', -1, 'testing dab', 6, 'mesin02', 1, 'SendingOKNoReport', -1, 73, 255, 'Gammu 1.28.90');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
