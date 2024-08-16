-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 18, 2022 at 01:05 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ttms`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `u_id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `role` varchar(40) NOT NULL,
  `status` varchar(23) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`u_id`, `username`, `password`, `role`, `status`) VALUES
(10, 'habitu/10', '81dc9bdb52d04dc20036dbd8313ed055', 'admin', '1'),
(11, 'habitu/11', '81dc9bdb52d04dc20036dbd8313ed055', 'ebmersu', '1'),
(12, 'habitu/12', '81dc9bdb52d04dc20036dbd8313ed055', 'wmersu', '1'),
(13, 'biniam/13', '81dc9bdb52d04dc20036dbd8313ed055', 'director', '1'),
(14, 'habitu/14', '81dc9bdb52d04dc20036dbd8313ed055', 'teacher', '1'),
(15, 'nigusu/15', '81dc9bdb52d04dc20036dbd8313ed055', 'wmersu', '1'),
(16, 'hilena/16', '81dc9bdb52d04dc20036dbd8313ed055', 'wmersu', '1'),
(17, 'biniam/17', 'd6d9dbd662b58c3e9aee21887ed66397', 'wmersu', '1'),
(18, 'simegnaw/18', 'b3d3cf1979cf9a989eeefe224bbb7ebb', 'wmersu', '1'),
(19, 'senayt/19', 'ce90345b7128e7bfba1e66ec9626092c', 'teacher', '1'),
(20, 'elisai/20', '4bcea9d9e2eab0e7ca7657ca7d9ab9fe', 'teacher', '0'),
(21, 'guta/21', 'e7a015e7a73f10eec1b2f94c2b92b5dd', 'director', '1'),
(22, 'habtie/22', '0e5151efd31c14fbdec4de4b9c28093d', 'teacher', '1'),
(23, 'hagos/23', 'ee239cd3f7b5c5aa4cf44070aef7c2c2', 'teacher', '1'),
(24, 'meron/24', '5f304229faea3c369c69e5830ed8198d', 'teacher', '1'),
(25, 'wubetu/24', 'aa9b5cab18f759e082d296ea9769afd5', 'director', '1'),
(26, 'tadese/26', '721a51991badc292069f08d2c0100522', 'director', '1'),
(27, 'medanit/27', 'b866700ce38e29e0bfedf0b9febef851', 'director', '1'),
(28, 'beti/28', 'a90196bca61f5636ffc153b0fbf6ced5', 'director', '1'),
(29, 'senayt/29', '1cc3249efd67028367f9fb2699a9607f', 'teacher', '1'),
(30, 'wubet/30', 'cf0e2352ed5f2aca979778e3c23ff3f2', 'teacher', '1');

-- --------------------------------------------------------

--
-- Table structure for table `apply_date`
--

CREATE TABLE `apply_date` (
  `ApplyDateID` int(11) NOT NULL,
  `StartDate` date NOT NULL,
  `EndDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `apply_date`
--

INSERT INTO `apply_date` (`ApplyDateID`, `StartDate`, `EndDate`) VALUES
(1, '2023-07-01', '2023-07-05');

-- --------------------------------------------------------

--
-- Table structure for table `archive_result`
--

CREATE TABLE `archive_result` (
  `Ar_id` int(11) NOT NULL,
  `RID` int(11) NOT NULL,
  `wcode` varchar(88) NOT NULL,
  `Fname` varchar(45) NOT NULL,
  `Lname` varchar(45) NOT NULL,
  `major` varchar(50) NOT NULL,
  `T_woreda_id` varchar(88) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `archive_school_form`
--

CREATE TABLE `archive_school_form` (
  `Aid` int(11) NOT NULL,
  `trid` int(11) NOT NULL,
  `Fname` varchar(45) NOT NULL,
  `Lname` varchar(45) NOT NULL,
  `dateofocp` date NOT NULL,
  `major` varchar(88) NOT NULL,
  `wcode` int(11) NOT NULL,
  `sid` varchar(110) NOT NULL,
  `service` int(11) NOT NULL,
  `first_choice` varchar(110) NOT NULL,
  `second_choice` varchar(88) NOT NULL,
  `third_choice` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `archive_school_result`
--

CREATE TABLE `archive_school_result` (
  `Arid` int(11) NOT NULL,
  `RID` int(11) NOT NULL,
  `sid` varchar(110) NOT NULL,
  `wcode` varchar(45) NOT NULL,
  `Fname` varchar(50) NOT NULL,
  `Lname` varchar(88) NOT NULL,
  `major` varchar(45) NOT NULL,
  `T_School_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `archive_transfer_form`
--

CREATE TABLE `archive_transfer_form` (
  `Ar_id` int(11) NOT NULL,
  `wtrid` int(11) NOT NULL,
  `Fname` varchar(88) NOT NULL,
  `Lname` varchar(45) NOT NULL,
  `dateofocp` date NOT NULL,
  `major` varchar(88) NOT NULL,
  `wcode` varchar(45) NOT NULL,
  `service` int(11) NOT NULL,
  `first_choice` varchar(50) NOT NULL,
  `second_choice` varchar(88) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `request_table`
--

CREATE TABLE `request_table` (
  `R_id` int(11) NOT NULL,
  `Did` int(11) NOT NULL,
  `wcode` int(11) NOT NULL,
  `sid` varchar(100) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Amharic` int(11) NOT NULL,
  `English` int(11) NOT NULL,
  `Biology` int(11) NOT NULL,
  `Chemistry` int(11) NOT NULL,
  `Physics` int(11) NOT NULL,
  `ICT` int(11) NOT NULL,
  `Total_teach` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `request_table`
--

INSERT INTO `request_table` (`R_id`, `Did`, `wcode`, `sid`, `Name`, `Amharic`, `English`, `Biology`, `Chemistry`, `Physics`, `ICT`, `Total_teach`) VALUES
(1, 13, 1, '100', 'biniam', 0, 1, 1, 0, 1, 1, 7),
(2, 21, 1, '101', 'guta', 1, 1, 0, 0, 1, 0, 4),
(3, 25, 2, '102', 'wubetu', 0, 1, 0, 0, 1, 0, 4),
(4, 26, 8, '103', 'tadese', 0, 0, 0, 1, 0, 1, 7),
(5, 28, 6, '104', 'beti', 0, 0, 1, 1, 0, 0, 5);

-- --------------------------------------------------------

--
-- Table structure for table `result`
--

CREATE TABLE `result` (
  `RID` int(11) NOT NULL,
  `sid` varchar(100) NOT NULL,
  `wcode` int(11) NOT NULL,
  `Fname` varchar(40) NOT NULL,
  `Lname` varchar(100) NOT NULL,
  `major` varchar(100) NOT NULL,
  `T_School_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `school`
--

CREATE TABLE `school` (
  `sid` int(11) NOT NULL,
  `sname` varchar(50) NOT NULL,
  `slevel` varchar(100) NOT NULL,
  `wcode` int(11) NOT NULL,
  `rank` int(11) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `school`
--

INSERT INTO `school` (`sid`, `sname`, `slevel`, `wcode`, `rank`, `date`) VALUES
(100, 'schoolA', 'Secondary School', 1, 2, '2023-04-16'),
(101, 'schoolB', 'Secondary School', 2, 2, '2023-04-16'),
(102, 'schoolC', 'primary School', 8, 2, '2023-04-16'),
(103, 'schoolD', 'primary School', 8, 2, '2023-04-16'),
(104, 'Abay Minch', 'Secondary School', 6, 2, '2023-04-17'),
(105, 'Gishi Abay', 'Secondary School', 7, 2, '2023-04-17');

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `t_id` int(11) NOT NULL,
  `Fname` varchar(50) NOT NULL,
  `Lname` varchar(100) NOT NULL,
  `age` varchar(40) NOT NULL,
  `sex` varchar(20) NOT NULL,
  `role` varchar(100) NOT NULL,
  `dateofocp` date NOT NULL,
  `levelofedu` varchar(30) NOT NULL,
  `major` varchar(100) NOT NULL,
  `wcode` int(11) NOT NULL,
  `sid` varchar(100) NOT NULL,
  `service` int(11) DEFAULT NULL,
  `salary` int(11) NOT NULL,
  `To_day` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`t_id`, `Fname`, `Lname`, `age`, `sex`, `role`, `dateofocp`, `levelofedu`, `major`, `wcode`, `sid`, `service`, `salary`, `To_day`) VALUES
(13, 'biniam', 'fenta', '23', 'male', 'director', '2017-05-16', 'Degree', 'Biology', 1, '100', 163123200, 3000, '2023-05-16'),
(14, 'habitu', 'kenaw', '23', 'male', 'teacher', '2017-05-16', 'Degree', 'Biology', 1, '100', 163123200, 3000, '2023-05-16'),
(19, 'senayt', 'bassie', '23', 'femal', 'teacher', '2017-05-16', 'Degree', 'Biology', 1, '100', 163123200, 3000, '2023-05-21'),
(20, 'elisai', 'elias', '23', 'male', 'teacher', '2016-04-16', 'Degree', 'Amharic', 1, '100', 197251200, 3000, '2023-05-21'),
(21, 'guta', 'dasalegn', '23', 'femal', 'teacher', '2019-05-16', 'Degree', 'English', 1, '102', 100051200, 1234, '2023-05-21'),
(22, 'habtie', 'dagne', '23', 'male', 'director', '2017-05-16', 'Degree', 'ICT', 1, '100', 163123200, 5345, '2023-05-21'),
(23, 'hagos', 'belay', '23', 'male', 'teacher', '2016-12-09', 'Degree', 'Biology', 1, '103', 176770800, 3465, '2023-05-21'),
(24, 'meron', 'birhanu', '23', 'femal', 'teacher', '2019-05-17', 'Degree', 'Amharic', 1, '100', 99964800, 4906, '2023-05-21'),
(25, 'wubetu', 'minwyelet', '23', 'male', 'teacher', '2015-05-17', 'Degree', 'Amharic', 6, '101', 226195200, 5345, '2023-05-21'),
(26, 'tadese', 'demilew', '25', 'male', 'teacher', '2016-04-17', 'Degree', 'Physics', 6, '102', 197164800, 3465, '2023-05-21'),
(27, 'medanit', 'fekadu', '24', 'male', 'teacher', '2018-04-17', 'Degree', 'Chemistry', 6, '103', 134092800, 4906, '2023-05-21'),
(28, 'beti', 'negrew', '22', 'male', 'teacher', '2018-04-17', 'Degree', 'ICT', 6, '104', 134092800, 5345, '2023-05-21'),
(29, 'senayt', 'Alamiy', '20', 'femal', 'teacher', '2018-12-17', 'Degree', 'ICT', 6, '104', 113007600, 5345, '2023-05-21'),
(30, 'wubet', 'salehu', '23', 'male', 'teacher', '2017-03-17', 'Degree', 'Amharic', 6, '101', 168303600, 5345, '2023-05-21');

-- --------------------------------------------------------

--
-- Table structure for table `transfer_form`
--

CREATE TABLE `transfer_form` (
  `trid` int(11) NOT NULL,
  `Fname` varchar(100) NOT NULL,
  `Lname` varchar(100) NOT NULL,
  `age` varchar(40) NOT NULL,
  `sex` varchar(20) NOT NULL,
  `dateofocp` date NOT NULL,
  `levelofedu` varchar(100) NOT NULL,
  `major` varchar(100) NOT NULL,
  `wcode` int(11) NOT NULL,
  `sid` varchar(100) NOT NULL,
  `service` int(11) NOT NULL,
  `multiplayer` double NOT NULL,
  `sum_E` int(11) NOT NULL,
  `first_choice` varchar(100) NOT NULL,
  `second_choice` varchar(100) NOT NULL,
  `third_choice` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transfer_form`
--

INSERT INTO `transfer_form` (`trid`, `Fname`, `Lname`, `age`, `sex`, `dateofocp`, `levelofedu`, `major`, `wcode`, `sid`, `service`, `multiplayer`, `sum_E`, `first_choice`, `second_choice`, `third_choice`, `status`) VALUES
(14, 'habitu', 'kenaw', '23', 'male', '2015-05-17', 'Degree', 'Amharic', 1, 'schoolA', 226195200, 1.1, 262483200, '112', '113', '114', 'transfered'),
(19, 'senayt', 'bassie', '23', 'femal', '2016-04-17', 'Degree', 'Physics', 1, 'schoolA', 197164800, 1.1, 228268800, '111', '114', '113', 'transfered'),
(20, 'elisai', 'elias', '23', 'male', '2018-04-17', 'Degree', 'Chemistry', 1, 'schoolA', 134092800, 1.1, 154828800, '111', '114', '112', 'transfered'),
(22, 'habtie', 'dagne', '23', 'male', '2018-04-17', 'Degree', 'ICT', 2, 'schoolB', 134092800, 1.2, 154828800, '111', '112', '113', 'transfered'),
(23, 'hagos', 'belay', '23', 'male', '2018-12-17', 'Degree', 'ICT', 2, 'schoolB', 113007600, 1.2, 128559600, '111', '112', '113', 'pandding'),
(24, 'meron', 'birhanu', '23', 'femal', '2017-03-17', 'Degree', 'Amharic', 2, 'schoolB', 168303600, 1.2, 194223600, '112', '114', '113', 'transfered');


-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `u_id` int(11) NOT NULL,
  `fname` varchar(100) NOT NULL,
  `lname` text NOT NULL,
  `age` int(11) NOT NULL,
  `sex` varchar(10) NOT NULL,
  `wcode` int(11) NOT NULL,
  `role` varchar(100) NOT NULL,
  `status` varchar(40) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`u_id`, `fname`, `lname`, `age`, `sex`, `wcode`, `role`, `status`, `date`) VALUES
(10, 'habitu', 'kenaw', 23, 'male', 0, 'admin', 'Hasaccount', '2023-03-16'),
(11, 'habitu', 'kenaw', 23, 'male', 0, 'ebmersu', 'Hasaccount', '2023-03-16'),
(12, 'habitu', 'kenaw', 23, 'male', 1, 'wmersu', 'Hasaccount', '2023-03-16'),
(13, 'biniam', 'fenta', 23, 'male', 1, 'director', 'Hasaccount', '2023-03-16'),
(14, 'habitu', 'kenaw', 23, 'male', 1, 'teacher', 'Hasaccount', '2023-03-16'),
(15, 'nigusu', 'kasaw', 25, 'male', 2, 'wmersu', 'Hasaccount', '2023-06-16'),
(16, 'hilena', 'worku', 23, 'female', 3, 'wmersu', 'Hasaccount', '2023-06-17'),
(17, 'biniam', 'fenta', 20, 'male', 4, 'wmersu', 'Hasaccount', '2023-06-28'),
(18, 'simegnaw', 'asefa', 20, 'male', 5, 'wmersu', 'Hasaccount', '2023-06-30'),
(19, 'senayt', 'bassie', 23, 'female', 1, 'teacher', 'Hasaccount', '2023-06-16'),
(20, 'elisai', 'elias', 23, 'male', 1, 'teacher', 'Hasaccount', '2023-06-16'),
(21, 'guta', 'dasalegn', 23, 'male', 1, 'director', 'Hasaccount', '2023-06-16'),
(22, 'habtie', 'dagne', 23, 'male', 6, 'teacher', 'Hasaccount', '2023-06-17'),
(23, 'hagos', 'belay', 23, 'male', 6, 'teacher', 'Hasaccount', '2023-06-17'),
(24, 'meron', 'birhanu', 23, 'female', 6, 'teacher', 'Hasaccount', '2023-06-17'),
(25, 'wubetu', 'minwyelet', 23, 'male', 2, 'director', 'Hasaccount', '2023-06-17'),
(26, 'tadese', 'demilew', 25, 'male', 8, 'director', 'Hasaccount', '2023-06-17'),
(27, 'medanit', 'fekadu', 24, 'femal', 7, 'director', 'Hasaccount', '2022-06-17'),
(28, 'beti', 'negrew', 22, 'femal', 6, 'director', 'Hasaccount', '2023-06-17'),
(29, 'senayt', 'Alamiy', 20, 'femal', 8, 'teacher', 'Hasaccount', '2023-06-28'),
(30, 'wubet', 'salehu', 23, 'male', 8, 'teacher', 'Hasaccount', '2023-06-28');

-- --------------------------------------------------------

--
-- Table structure for table `woreda`
--

CREATE TABLE `woreda` (
  `wcode` int(11) NOT NULL,
  `wname` varchar(50) NOT NULL,
  `multiplayer` double NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `woreda`
--

INSERT INTO `woreda` (`wcode`, `wname`, `multiplayer`, `date`) VALUES
(1, 'Itang Special', 1.1, '2023-05-16'),
(2, 'Abob', 1.2, '2023-05-16'),
(3, 'Gog', 1.2,  '2023-05-16'),
(4, 'Jore', 1.2, '2023-05-16'),
(5, 'Dimma', 1.2, '2023-05-16'),
(6, 'Godere', 1.2, '2023-05-16'),
(7, 'Lare', 1.2,  '2023-05-16'),
(8, 'Akobo', 1.2, '2023-05-17');

-- --------------------------------------------------------

--
-- Table structure for table `wtow_result`
--

CREATE TABLE `wtow_result` (
  `RID` int(11) NOT NULL,
  `wcode` varchar(100) NOT NULL,
  `Fname` varchar(100) NOT NULL,
  `Lname` varchar(100) NOT NULL,
  `major` varchar(100) NOT NULL,
  `T_woreda_id` varchar(40) NOT NULL,
  `status` varchar(50) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `w_request_table`
--

CREATE TABLE `w_request_table` (
  `Wrid` int(11) NOT NULL,
  `wcode` varchar(100) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Amharic` int(11) NOT NULL,
  `English` int(11) NOT NULL,
  `Biology` int(11) NOT NULL,
  `Chemistry` int(11) NOT NULL,
  `Physics` int(11) NOT NULL,
  `ICT` int(11) NOT NULL,
  `Total_teach` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `w_request_table`
--

INSERT INTO `w_request_table` (`Wrid`, `wcode`, `Name`, `Amharic`, `English`, `Biology`, `Chemistry`, `Physics`, `ICT`, `Total_teach`) VALUES
(1, 'Itang Special', 'habitu', 1, 2, 1, 2, 2, 1, 9),
(2, 'Abob', 'nigusu', 3, 2, 1, 2, 2, 1, 11),
(3, 'Gog', 'biniam', 1, 2, 1, 1, 2, 2, 9);

-- --------------------------------------------------------

--
-- Table structure for table `w_transfer_form`
--

CREATE TABLE `w_transfer_form` (
  `wtrid` int(11) NOT NULL,
  `Fname` varchar(100) NOT NULL,
  `Lname` varchar(100) NOT NULL,
  `age` varchar(40) NOT NULL,
  `sex` varchar(3) NOT NULL,
  `dateofocp` date NOT NULL,
  `levelofedu` varchar(100) NOT NULL,
  `major` varchar(40) NOT NULL,
  `wcode` varchar(100) NOT NULL,
  `service` int(11) NOT NULL,
  `multiplayer` double NOT NULL,
  `sum_E` int(11) NOT NULL,
  `first_choice` varchar(40) NOT NULL,
  `second_choice` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- 
-- Dumping data for table `w_transfer_form`
--

INSERT INTO `w_transfer_form` (`wtrid`, `Fname`, `Lname`, `age`, `sex`, `dateofocp`, `levelofedu`, `major`, `wcode`, `service`, `multiplayer`, `sum_E`, `first_choice`, `second_choice`) VALUES
(19, 'senayt', 'bassie', '23', 'femal', '2016-04-17', 'Degree', 'Physics', 'Itang Special', 194918400, 1.1, 226022400, 'Lare', 'Itang Special'),
(20, 'elisai', 'elias', '23', 'male', '2018-04-17', 'Degree', 'Chemistry', 'Itang Special', 131846400, 1.2, 152582400, 'Jore', 'Abob'),
(21, 'guta', 'dasalegn', '23', 'male', '2018-04-17', 'Degree', 'ICT', 'Itang Special', 131846400, 1.2, 152582400, 'Akobo', 'Gog'),
(22, 'habtie', 'dagne', '23', 'male', '2018-12-17', 'Degree', 'ICT', 'Godere', 110761200, 1.2, 126313200, 'Abob', 'Lare'),
(23, 'hagos', 'belay', '23', 'male', '2017-03-17', 'Degree', 'Amharic', 'Godere', 166057200, 1.2, 191977200, 'Dimma', 'Abob'),
(24, 'meron', 'birhanu', '23', 'femal', '2016-02-08', 'Degree', 'Chemistry', 'Godere', 200876400, 1.2, 231980400, 'Jore', 'Akobo');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`u_id`);

--
-- Indexes for table `apply_date`
--
ALTER TABLE `apply_date`
  ADD PRIMARY KEY (`ApplyDateID`);

--
-- Indexes for table `archive_result`
--
ALTER TABLE `archive_result`
  ADD PRIMARY KEY (`Ar_id`);

--
-- Indexes for table `archive_school_form`
--
ALTER TABLE `archive_school_form`
  ADD PRIMARY KEY (`Aid`);

--
-- Indexes for table `archive_school_result`
--
ALTER TABLE `archive_school_result`
  ADD PRIMARY KEY (`Arid`);

--
-- Indexes for table `archive_transfer_form`
--
ALTER TABLE `archive_transfer_form`
  ADD PRIMARY KEY (`Ar_id`);

--
-- Indexes for table `request_table`
--
ALTER TABLE `request_table`
  ADD PRIMARY KEY (`R_id`);

--
-- Indexes for table `result`
--
ALTER TABLE `result`
  ADD PRIMARY KEY (`RID`);

--
-- Indexes for table `school`
--
ALTER TABLE `school`
  ADD PRIMARY KEY (`sid`),
  ADD KEY `wcode` (`wcode`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`t_id`),
  ADD KEY `wcode` (`wcode`),
  ADD KEY `sid` (`sid`);

--
-- Indexes for table `transfer_form`
--
ALTER TABLE `transfer_form`
  ADD PRIMARY KEY (`trid`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`u_id`);

--
-- Indexes for table `woreda`
--
ALTER TABLE `woreda`
  ADD PRIMARY KEY (`wcode`);

--
-- Indexes for table `wtow_result`
--
ALTER TABLE `wtow_result`
  ADD PRIMARY KEY (`RID`);

--
-- Indexes for table `w_request_table`
--
ALTER TABLE `w_request_table`
  ADD PRIMARY KEY (`Wrid`);

--
-- Indexes for table `w_transfer_form`
--
ALTER TABLE `w_transfer_form`
  ADD PRIMARY KEY (`wtrid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `archive_result`
--
ALTER TABLE `archive_result`
  MODIFY `Ar_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `archive_school_form`
--
ALTER TABLE `archive_school_form`
  MODIFY `Aid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `archive_school_result`
--
ALTER TABLE `archive_school_result`
  MODIFY `Arid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `archive_transfer_form`
--
ALTER TABLE `archive_transfer_form`
  MODIFY `Ar_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `request_table`
--
ALTER TABLE `request_table`
  MODIFY `R_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `school`
--
ALTER TABLE `school`
  MODIFY `sid` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT for table `teacher`
--
ALTER TABLE `teacher`
  MODIFY `t_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

-- 
-- Constraints for dumped tables
--

--
-- Constraints for table `school`
--
ALTER TABLE `school`
  ADD CONSTRAINT `school_ibfk_1` FOREIGN KEY (`wcode`) REFERENCES `woreda` (`wcode`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `teacher`
--
ALTER TABLE `teacher`
  ADD CONSTRAINT `teacher_ibfk_1` FOREIGN KEY (`wcode`) REFERENCES `woreda` (`wcode`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
