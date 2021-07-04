-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 06, 2021 at 10:44 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `projects`
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
-- Error reading structure for table projects.dua: #1932 - Table 'projects.dua' doesn't exist in engine
-- Error reading data for table projects.dua: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'FROM `projects`.`dua`' at line 1

-- --------------------------------------------------------

--
-- Table structure for table `duas`
--

CREATE TABLE `duas` (
  `dua id` int(225) NOT NULL,
  `file text` varchar(225) NOT NULL,
  `category` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `duas`
--

INSERT INTO `duas` (`dua id`, `file text`, `category`) VALUES
(1, 'img/duaanx1.png', 'anxiety'),
(2, 'img/duaanx2.png', 'anxiety'),
(3, 'img/duaanx3.png', 'anxiety'),
(4, 'img/duaanx4.png', 'anxiety'),
(5, 'img/duaanx5.png', 'anxiety'),
(6, 'img/duahop1.png', 'hopeless'),
(7, 'img/duahop2.png', 'hopeless'),
(8, 'img/duahop3.png', 'hopeless'),
(9, 'img/duahop4.png', 'hopeless'),
(9, 'img/duahop5.png', 'hopeless'),
(10, 'img/duafear1.png', 'fear'),
(11, 'img/duafear22.png', 'fear'),
(12, 'img/duafear3.png', 'fear'),
(13, 'img/duafear4.png', 'fear'),
(14, 'img/duafear5.png', 'fear'),
(15, 'img/duadis1.png', 'dis'),
(16, 'img/duadis2.png', 'dis'),
(17, 'img/duadis3.png', 'dis'),
(18, 'img/duadis4.png', 'dis'),
(19, 'img/duadis2.png', 'dis'),
(20, 'img/duaemp1.png', 'emptiness'),
(21, 'img/duaemp2.png', 'emptiness'),
(22, 'img/duaemp3.png', 'emptiness'),
(23, 'img/duaemp4.png', 'emptiness'),
(24, 'img/duaemp5.png', 'emptiness'),
(25, 'img/duasad.png', 'sadness'),
(25, 'img/duasad1.png', 'sadness'),
(26, 'img/duasad2.png', 'sadness'),
(27, 'img/duasad3.png', 'sadness'),
(28, 'img/duasad4.png', 'sadness'),
(29, 'img/duasad5.png', 'sadness'),
(25, 'img/duaangry.png', 'angery'),
(25, 'img/duaanger.png', 'angery'),
(26, 'img/duaanger2.png', 'angery'),
(27, 'img/duaanger3.png', 'angery'),
(27, 'img/duaanger4.png', 'angery'),
(28, 'img/duaanger5.png', 'angery'),
(29, 'img/duaself1.png', 'self'),
(30, 'img/duaself2.png', 'self'),
(31, 'img/duaself3.png', 'self'),
(31, 'img/duaself4.png', 'self'),
(32, 'img/duaself5.png', 'self'),
(33, 'img/duatir1.png', 'tired'),
(34, 'img/duatir2.png', 'tired'),
(35, 'img/duatir3.png', 'tired'),
(35, 'img/duatir4.png', 'tired'),
(36, 'img/duatir5.png', 'tired'),
(37, 'img/duafus1.png', 'fust'),
(38, 'img/duafus2.png', 'fust'),
(39, 'img/duafus3.png', 'fust'),
(40, 'img/duafus4.png', 'fust'),
(41, 'img/duafus5.png', 'fust'),
(42, 'img/duaguilt1.png', 'guilt'),
(43, 'img/duaguilt2.png', 'guilt'),
(44, 'img/duaguilt3.png', 'guilt'),
(45, 'img/duaguilt4.png', 'guilt'),
(46, 'img/duaguilt5.png', 'guilt'),
(48, 'img/duaan1.png', 'an'),
(49, 'img/duaan1.png', 'ans'),
(50, 'img/duaan2.png', 'ans'),
(51, 'img/duaan3.png', 'ans'),
(53, 'img/duaan4.png', 'ans'),
(54, 'img/duaan5.png', 'ans');

-- --------------------------------------------------------

--
-- Table structure for table `hadees`
--

CREATE TABLE `hadees` (
  `id` int(225) NOT NULL,
  `file text` varchar(225) NOT NULL,
  `category` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hadees`
--

INSERT INTO `hadees` (`id`, `file text`, `category`) VALUES
(1, 'img/hadfear1.png', 'fear'),
(2, 'img/hadfear2.png', 'fear'),
(3, 'img/hadfear3.png', 'fear'),
(4, 'img/hadfear4.png', 'fear'),
(5, 'img/hadfear5.png', 'fear');

-- --------------------------------------------------------

--
-- Table structure for table `hadiths`
--
-- Error reading structure for table projects.hadiths: #1932 - Table 'projects.hadiths' doesn't exist in engine
-- Error reading data for table projects.hadiths: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'FROM `projects`.`hadiths`' at line 1

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
(1, 1, 1, 'img/sadq1.png', 'sadness'),
(2, 1, 93, 'img/empq1.png', 'emptiness'),
(3, 1, 46, 'img/depv2.png', 'depression'),
(4, 1, 126, 'img/depv1.png', 'depression'),
(5, 1, 2, 'img/empq2.png', 'emptiness'),
(6, 1, 23, 'img/sadq2.png', 'sadness'),
(7, 1, 93, 'img/empq3.png', 'emptiness'),
(8, 1, 455, 'img/empq4.png', 'emptiness'),
(9, 1, 35, 'img/anq1.png', 'anxiety'),
(10, 1, 3, 'img/anq2.png', 'anxiety'),
(11, 1, 93, 'img/anq3.png', 'anxiety'),
(12, 1, 1, 'img/anq4.png', 'anxiety'),
(13, 1, 93, 'img/anq5.png', 'anxiety'),
(14, 1, 93, 'img/sadq3.png', 'sadness'),
(15, 1, 2, 'img/sadq4.png', 'sadness'),
(16, 1, 1, 'img/sadq5.png', 'sadness'),
(17, 1, 23, 'img/fearq1.png', 'fear'),
(18, 1, 2, 'img/fearq2.png', 'fear'),
(19, 1, 93, 'img/fearq3.png', 'fear'),
(20, 1, 2, 'img/fearq4.png', 'fear'),
(21, 1, 93, 'img/fearq5.png', 'fear'),
(22, 1, 3, 'img/angq1.png', 'angery'),
(23, 1, 2, 'img/angq2.png', 'angery'),
(24, 1, 93, 'img/angq3.png', 'angery'),
(25, 1, 455, 'img/angq4.png', 'angery'),
(26, 1, 93, 'img/angq5.png', 'angery'),
(27, 1, 93, 'img/empq3.png', 'emptiness'),
(28, 1, 455, 'img/empq4.png', 'emptiness'),
(29, 1, 1, 'img/empq5.png', 'emptiness'),
(30, 1, 93, 'img/hopq1.png', 'hopeless'),
(31, 1, 2, 'img/hopq2.png', 'hopeless'),
(32, 1, 1, 'img/hopq3.png', 'hopeless'),
(33, 1, 93, 'img/hopq4.png', 'hopeless'),
(34, 1, 455, 'img/hopq5.png', 'hopeless'),
(35, 1, 1, 'img/tir1.png', 'tired'),
(36, 1, 2, 'img/tir2.png', 'tired'),
(37, 1, 3, 'img/tir3.png', 'tired'),
(38, 1, 2, 'img/tir4.png', 'tired'),
(39, 1, 93, 'img/tir5.png', 'tired'),
(40, 1, 93, 'img/fustq1.png', 'fust'),
(41, 1, 2, 'img/fustq2.png', 'fust'),
(42, 1, 1, 'img/fustq3.png', 'fust'),
(43, 1, 455, 'img/fustq4.png', 'fust'),
(44, 1, 1, 'img/fustq5.png', 'fust'),
(45, 1, 93, 'img/disq1.png', 'dis'),
(46, 1, 455, 'img/disq2.png', 'dis'),
(47, 1, 23, 'img/disq3.png', 'dis'),
(48, 1, 455, 'img/disq4.png', 'dis'),
(49, 1, 93, 'img/disq5.png', 'dis'),
(50, 1, 1, 'img/ansq1.png', 'ans'),
(51, 1, 455, 'img/ansq2.png', 'ans'),
(52, 1, 93, 'img/ansq3.png', 'ans'),
(53, 1, 2, 'img/ansq4.png', 'ans'),
(54, 1, 3, 'img/ansq5.png', 'ans'),
(55, 1, 93, 'img/guiq1.png', 'guilt'),
(56, 1, 455, 'img/guiq2.png', 'guilt'),
(57, 1, 1, 'img/guiq3.png', 'guilt'),
(58, 1, 455, 'img/guiq4.png', 'guilt'),
(59, 1, 1, 'img/guiq5.png', 'guilt'),
(60, 1, 3, 'img/selfq4.png', 'self'),
(61, 1, 455, 'img/selfq5.png', 'self');

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
-- Error reading structure for table projects.resource: #1932 - Table 'projects.resource' doesn't exist in engine
-- Error reading data for table projects.resource: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'FROM `projects`.`resource`' at line 1

-- --------------------------------------------------------

--
-- Table structure for table `resources`
--

CREATE TABLE `resources` (
  `res_id` int(10) NOT NULL,
  `category` varchar(225) NOT NULL,
  `file text` int(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
(14, 'zara', 'zara@gmail.com', 0, '1234'),
(15, 'hira', 'hira@gmail.com', 0, '786'),
(16, 'sarah tariq', 'sarahtariq12@gmail.com', 0, '1234'),
(17, 'adnan', 'adnan@gmail.com', 0, '12345'),
(18, 'he', 'he@gmail.com', 0, '1234'),
(19, 'sarah h', 'sarahh@gmail.com', 0, '1234'),
(20, 'asrah', 'asrah1@gmail.com', 0, '12346');

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
-- AUTO_INCREMENT for table `psychiatrist`
--
ALTER TABLE `psychiatrist`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `quranic_verse`
--
ALTER TABLE `quranic_verse`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

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
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

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
