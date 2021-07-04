-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 18, 2021 at 10:36 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `ID` int(11) NOT NULL,
  `User_ID` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `Rec_id` int(11) NOT NULL,
  `Service_con_id` int(11) NOT NULL,
  `Psy_id` int(11) NOT NULL,
  `Session_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `ID` int(11) NOT NULL,
  `Time` time NOT NULL,
  `Date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `ID` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`ID`, `Name`) VALUES
(1, 'depression'),
(2, 'hopeless'),
(3, 'sad'),
(4, 'emtiness'),
(5, 'alone'),
(6, 'confused');

-- --------------------------------------------------------

--
-- Table structure for table `content_scaling`
--

CREATE TABLE `content_scaling` (
  `ID` int(11) NOT NULL,
  `Cat_ID` int(11) NOT NULL,
  `Res_ID` int(11) NOT NULL,
  `Scaling` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `dua`
--

CREATE TABLE `dua` (
  `ID` int(11) NOT NULL,
  `Res_ID` int(11) NOT NULL,
  `Source` varchar(50) NOT NULL,
  `Dua_Name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `hadiths`
--

CREATE TABLE `hadiths` (
  `ID` int(11) NOT NULL,
  `Res_ID` int(11) NOT NULL,
  `Narrates` varchar(50) NOT NULL,
  `Source` varchar(50) NOT NULL,
  `file text` varchar(225) NOT NULL,
  `category` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hadiths`
--

INSERT INTO `hadiths` (`ID`, `Res_ID`, `Narrates`, `Source`, `file text`, `category`) VALUES
(1, 2, 'al bukhari', 'al bukhar', 'img/sadh1.png', 'sad'),
(2, 2, 'al bukhari', 'al bukhar', 'img/sadh2.png', 'sad'),
(3, 2, 'al bukhari', 'al bukhar', 'img/deph1.png', 'depression'),
(4, 2, 'al bukhari', 'al bukhari', 'img/deph2.png', 'depressed'),
(5, 2, 'al bukhari', 'al bukhar', 'img/angh1.png', 'angry'),
(6, 1, 'al bukhari', 'al bukhar', 'img/angh2.png', 'angry'),
(7, 2, 'al bukhari', 'al bukhar', 'img/dish1.png', 'disblief'),
(8, 2, 'al bukhari', 'al bukhari', 'img/dish2.png', 'disblief'),
(9, 2, 'al bukhari', 'al bukhar', 'img/anxh1.png', 'anxiety'),
(10, 2, 'al bukhari', 'al bukhar', 'img/gulh1.png', 'guilt');

-- --------------------------------------------------------

--
-- Table structure for table `psychiatrist`
--

CREATE TABLE `psychiatrist` (
  `ID` int(11) NOT NULL,
  `User_ID` int(11) NOT NULL,
  `Avaiblity` bigint(20) NOT NULL,
  `Speciality` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `quranic_verse`
--

CREATE TABLE `quranic_verse` (
  `ID` int(11) NOT NULL,
  `Res_Id` int(11) NOT NULL,
  `Verse_No` int(11) NOT NULL,
  `file text` varchar(225) NOT NULL,
  `category` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `quranic_verse`
--

INSERT INTO `quranic_verse` (`ID`, `Res_Id`, `Verse_No`, `file text`, `category`) VALUES
(1, 1, 1, 'img/sadver1.png', 'sadness'),
(2, 1, 2, 'img/anxiety1.png', 'anxiety'),
(3, 1, 46, 'img/depv2.png', 'depression'),
(4, 1, 126, 'img/depv1.png', 'depression'),
(5, 1, 124, 'img/dis1.png', 'disblief'),
(6, 1, 23, 'img/sadver2.png', 'sadness'),
(7, 1, 34, 'img/dis2.png', 'disblief'),
(8, 1, 124, 'img/dis3.png', 'disblief'),
(9, 1, 124, 'img/ang1.png', 'angry'),
(10, 1, 34, 'img/ang2.png', 'angry'),
(11, 1, 34, 'img/anx1.png', 'anxiety'),
(12, 1, 34, 'img/anx2.png', 'anxiety'),
(13, 1, 34, 'img/g1.png', 'guilt'),
(14, 1, 23, 'img/g2.png', 'guilt');

-- --------------------------------------------------------

--
-- Table structure for table `recommendation`
--

CREATE TABLE `recommendation` (
  `Rec_Id` int(11) NOT NULL,
  `Res_ID` int(11) NOT NULL,
  `User_ID` int(11) NOT NULL,
  `Cat_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `recommendation`
--

INSERT INTO `recommendation` (`Rec_Id`, `Res_ID`, `User_ID`, `Cat_ID`) VALUES
(1, 0, 1, 1),
(2, 0, 3, 2);

-- --------------------------------------------------------

--
-- Table structure for table `resouce_category`
--

CREATE TABLE `resouce_category` (
  `ID` int(11) NOT NULL,
  `Res_ID` int(11) NOT NULL,
  `Scholar` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `resource`
--

CREATE TABLE `resource` (
  `Res_Id` int(11) NOT NULL,
  `Res_Type` varchar(50) NOT NULL,
  `Rec_ID` int(11) NOT NULL,
  `Cat_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `resource`
--

INSERT INTO `resource` (`Res_Id`, `Res_Type`, `Rec_ID`, `Cat_ID`) VALUES
(1, 'quranic_verse', 1, 1),
(2, 'hadiths', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `service_consumer`
--

CREATE TABLE `service_consumer` (
  `ID` int(11) NOT NULL,
  `login_time` time NOT NULL,
  `cat_id` int(11) NOT NULL,
  `Favourites` varchar(500) NOT NULL,
  `Rec_ID` int(11) NOT NULL,
  `Session_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `session`
--

CREATE TABLE `session` (
  `ID` int(11) NOT NULL,
  `User_ID` int(11) NOT NULL,
  `No_Session` varchar(50) NOT NULL,
  `Cat_ID` int(11) NOT NULL,
  `Description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `ID` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `User_Category_Id` int(11) NOT NULL,
  `Password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`ID`, `Name`, `Email`, `User_Category_Id`, `Password`) VALUES
(1, '', 'Syedafazilawali@gmail.com', 0, '$2y$10$r1ysHEcIHyI83K2oedgKBOszKOrDehPztZLLgHRCAlC'),
(3, '', 'Zubair@gmail', 0, '$2y$10$6mc4/ge3DBnlx/lWxen3eOXhAk2HReyhUeFw9ANb6T9'),
(4, '', 'linta@gmail.com', 0, '$2y$10$nOBr1njOxNWjp0TQNK0iR.3M53JzduBAjfcgKwfGLQf'),
(5, '', 'sukena@gmail.com', 0, '$2y$10$jUAFgJD0sknuoWBcbsZzD.8cEndL7O2Gc8edDMKL/hN'),
(6, 'Jawaid', 'Jawaid@gmail.com', 0, '$2y$10$I5KGUnWhXJUKRO9JyGk8Yu4DkHX4tajQSSIs7.U1Cmc'),
(7, 'Syeda Fazila Wali', '', 0, '  '),
(9, 'arham', 'arhamahmedkhan@gmail.com', 0, 'arham'),
(10, 'wali', 'wali@gmail.com', 0, '$2y$10$Jwf3PYwbpoUiqb559NB0JeRVGpD6cNq3/JPnkExjRkN'),
(11, 'kanza', 'kanza@gmail.com', 0, '$2y$10$gvC7hrL5LM7VqulgbyfgT.WXjdDqAHHiK/cFpobjskT'),
(12, 'sania', 'sania@gmail.com', 0, 'sania'),
(13, 'mahad', 'mahad@gmail.com', 0, 'mahad');

-- --------------------------------------------------------

--
-- Table structure for table `user_category`
--

CREATE TABLE `user_category` (
  `ID` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD KEY `User_ID` (`User_ID`),
  ADD KEY `Psy_id` (`Psy_id`),
  ADD KEY `Rec_id` (`Rec_id`),
  ADD KEY `Service_con_id` (`Service_con_id`),
  ADD KEY `Session_id` (`Session_id`),
  ADD KEY `cat_id` (`cat_id`);

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `content_scaling`
--
ALTER TABLE `content_scaling`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `Cat_ID` (`Cat_ID`),
  ADD KEY `Res_ID` (`Res_ID`);

--
-- Indexes for table `dua`
--
ALTER TABLE `dua`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `Res_ID` (`Res_ID`);

--
-- Indexes for table `hadiths`
--
ALTER TABLE `hadiths`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `Res_ID` (`Res_ID`);

--
-- Indexes for table `psychiatrist`
--
ALTER TABLE `psychiatrist`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `User_ID` (`User_ID`);

--
-- Indexes for table `quranic_verse`
--
ALTER TABLE `quranic_verse`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `Res_Id` (`Res_Id`);

--
-- Indexes for table `recommendation`
--
ALTER TABLE `recommendation`
  ADD PRIMARY KEY (`Rec_Id`);

--
-- Indexes for table `resouce_category`
--
ALTER TABLE `resouce_category`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `Res_ID` (`Res_ID`);

--
-- Indexes for table `resource`
--
ALTER TABLE `resource`
  ADD PRIMARY KEY (`Res_Id`),
  ADD KEY `Cat_ID` (`Cat_ID`);

--
-- Indexes for table `service_consumer`
--
ALTER TABLE `service_consumer`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `cat_id` (`cat_id`),
  ADD KEY `Rec_ID` (`Rec_ID`),
  ADD KEY `Session_ID` (`Session_ID`);

--
-- Indexes for table `session`
--
ALTER TABLE `session`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `User_ID` (`User_ID`),
  ADD KEY `Cat_ID` (`Cat_ID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `Email` (`Email`);

--
-- Indexes for table `user_category`
--
ALTER TABLE `user_category`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appointment`
--
ALTER TABLE `appointment`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `content_scaling`
--
ALTER TABLE `content_scaling`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dua`
--
ALTER TABLE `dua`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hadiths`
--
ALTER TABLE `hadiths`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `psychiatrist`
--
ALTER TABLE `psychiatrist`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `quranic_verse`
--
ALTER TABLE `quranic_verse`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `recommendation`
--
ALTER TABLE `recommendation`
  MODIFY `Rec_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `resouce_category`
--
ALTER TABLE `resouce_category`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `resource`
--
ALTER TABLE `resource`
  MODIFY `Res_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `service_consumer`
--
ALTER TABLE `service_consumer`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `session`
--
ALTER TABLE `session`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `user_category`
--
ALTER TABLE `user_category`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `admin`
--
ALTER TABLE `admin`
  ADD CONSTRAINT `admin_ibfk_1` FOREIGN KEY (`User_ID`) REFERENCES `user` (`ID`),
  ADD CONSTRAINT `admin_ibfk_2` FOREIGN KEY (`Psy_id`) REFERENCES `psychiatrist` (`ID`),
  ADD CONSTRAINT `admin_ibfk_3` FOREIGN KEY (`Rec_id`) REFERENCES `recommendation` (`Rec_Id`),
  ADD CONSTRAINT `admin_ibfk_4` FOREIGN KEY (`Service_con_id`) REFERENCES `service_consumer` (`ID`),
  ADD CONSTRAINT `admin_ibfk_5` FOREIGN KEY (`Session_id`) REFERENCES `session` (`ID`),
  ADD CONSTRAINT `admin_ibfk_6` FOREIGN KEY (`cat_id`) REFERENCES `category` (`ID`);

--
-- Constraints for table `content_scaling`
--
ALTER TABLE `content_scaling`
  ADD CONSTRAINT `content_scaling_ibfk_1` FOREIGN KEY (`Cat_ID`) REFERENCES `category` (`ID`),
  ADD CONSTRAINT `content_scaling_ibfk_2` FOREIGN KEY (`Res_ID`) REFERENCES `resource` (`Res_Id`);

--
-- Constraints for table `dua`
--
ALTER TABLE `dua`
  ADD CONSTRAINT `dua_ibfk_1` FOREIGN KEY (`Res_ID`) REFERENCES `resource` (`Res_Id`);

--
-- Constraints for table `hadiths`
--
ALTER TABLE `hadiths`
  ADD CONSTRAINT `hadiths_ibfk_1` FOREIGN KEY (`Res_ID`) REFERENCES `resource` (`Res_Id`);

--
-- Constraints for table `psychiatrist`
--
ALTER TABLE `psychiatrist`
  ADD CONSTRAINT `psychiatrist_ibfk_1` FOREIGN KEY (`User_ID`) REFERENCES `user` (`ID`);

--
-- Constraints for table `quranic_verse`
--
ALTER TABLE `quranic_verse`
  ADD CONSTRAINT `quranic_verse_ibfk_1` FOREIGN KEY (`Res_Id`) REFERENCES `resource` (`Res_Id`);

--
-- Constraints for table `resouce_category`
--
ALTER TABLE `resouce_category`
  ADD CONSTRAINT `resouce_category_ibfk_1` FOREIGN KEY (`Res_ID`) REFERENCES `resource` (`Res_Id`);

--
-- Constraints for table `resource`
--
ALTER TABLE `resource`
  ADD CONSTRAINT `resource_ibfk_1` FOREIGN KEY (`Cat_ID`) REFERENCES `category` (`ID`);

--
-- Constraints for table `service_consumer`
--
ALTER TABLE `service_consumer`
  ADD CONSTRAINT `service_consumer_ibfk_1` FOREIGN KEY (`cat_id`) REFERENCES `category` (`ID`),
  ADD CONSTRAINT `service_consumer_ibfk_2` FOREIGN KEY (`Rec_ID`) REFERENCES `recommendation` (`Rec_Id`),
  ADD CONSTRAINT `service_consumer_ibfk_3` FOREIGN KEY (`Session_ID`) REFERENCES `session` (`ID`);

--
-- Constraints for table `session`
--
ALTER TABLE `session`
  ADD CONSTRAINT `session_ibfk_1` FOREIGN KEY (`User_ID`) REFERENCES `user` (`ID`),
  ADD CONSTRAINT `session_ibfk_2` FOREIGN KEY (`Cat_ID`) REFERENCES `category` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
