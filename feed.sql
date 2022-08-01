-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 18, 2022 at 05:48 PM
-- Server version: 10.3.35-MariaDB-log-cll-lve
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `debuwnjs_feed`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `user` varchar(50) NOT NULL,
  `pass` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `user`, `pass`) VALUES
(1, 'admin@gmail.com', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mobile` bigint(20) NOT NULL,
  `message` text NOT NULL,
  `Date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `faculty`
--

CREATE TABLE `faculty` (
  `id` int(11) NOT NULL,
  `user_alias` varchar(30) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `designation` varchar(100) NOT NULL,
  `programme` varchar(50) NOT NULL,
  `semester` varchar(10) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(75) NOT NULL,
  `mobile` bigint(20) NOT NULL,
  `date` datetime NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `faculty`
--

INSERT INTO `faculty` (`id`, `user_alias`, `Name`, `designation`, `programme`, `semester`, `email`, `password`, `mobile`, `date`, `status`) VALUES
(12, 'Abdu8067', 'Martin Bateman', 'Senior Lecturer', 'School of Psychology and Computer Science', 'Summer', 'mbateman@uclan.ac.uk', 'bateman', 12345678, '2022-06-28 12:57:01', 0),
(14, 'Aman0123', 'Amanda Jane', 'Senior Lecturer', 'School of Psychology and Computer Science', 'Summer', 'ajgrehory@uclan.ac.uk', 'jane', 123456789, '2022-07-03 06:01:57', 0),
(15, 'Jane0123', 'Jane C. Read', 'Professor', 'School of Psychology and Computer Science', 'Summer', 'jcread@uclan.ac.uk', 'read', 123456789, '2022-07-03 06:03:55', 0),
(16, 'Gavi0123', 'Gavin Sim', 'Lecturer', 'School of Psychology and Computer Science', 'Summer', 'grsim@uclan.ac.uk', 'sim', 123456789, '2022-07-03 06:05:45', 0),
(18, 'Kare0123', 'Karen Oshea', 'Lecturer', 'School of Psychology and Computer Science', 'Summer', 'koshea@uclan.ac.uk', 'oshea', 123456789, '2022-07-03 06:11:10', 0);

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` int(11) NOT NULL,
  `student_id` varchar(50) NOT NULL,
  `faculty_id` varchar(50) NOT NULL,
  `Teacher provided the course outline having weekly content plan w` enum('5','4','3','2','1') NOT NULL,
  `Course objectives,learning outcomes and grading criteria are cle` enum('5','4','3','2','1') NOT NULL,
  `Course integrates throretical course concepts with the real worl` enum('5','4','3','2','1') NOT NULL,
  `Teacher is punctual,arrives on time and leaves on time` enum('5','4','3','2','1') NOT NULL,
  `Teacher is good at stimulating the interest in the course conten` enum('5','4','3','2','1') NOT NULL,
  `Teacher is good at explaining the subject matter` enum('5','4','3','2','1') NOT NULL,
  `Teacher's presentation was clear,loud ad easy to understand` enum('5','4','3','2','1') NOT NULL,
  `Teacher is good at using innovative teaching methods/ways` enum('5','4','3','2','1') NOT NULL,
  `Teacher is available and helpful during counseling hours` enum('5','4','3','2','1') NOT NULL,
  `Teacher has competed the whole course as per course outline` enum('5','4','3','2','1') NOT NULL,
  `Teacher was always fair and impartial:` enum('5','4','3','2','1') NOT NULL,
  `Assessments conducted are clearly connected to maximize learinin` enum('5','4','3','2','1') NOT NULL,
  `What I liked about the course` text NOT NULL,
  `Why I disliked about the course` text NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `student_id`, `faculty_id`, `Teacher provided the course outline having weekly content plan w`, `Course objectives,learning outcomes and grading criteria are cle`, `Course integrates throretical course concepts with the real worl`, `Teacher is punctual,arrives on time and leaves on time`, `Teacher is good at stimulating the interest in the course conten`, `Teacher is good at explaining the subject matter`, `Teacher's presentation was clear,loud ad easy to understand`, `Teacher is good at using innovative teaching methods/ways`, `Teacher is available and helpful during counseling hours`, `Teacher has competed the whole course as per course outline`, `Teacher was always fair and impartial:`, `Assessments conducted are clearly connected to maximize learinin`, `What I liked about the course`, `Why I disliked about the course`, `date`) VALUES
(20, 'admin@gmail.com', 'admin@gmail.com', '5', '5', '5', '5', '5', '5', '5', '5', '5', '4', '2', '3', '\r\nThe lecturer is detailed during classes', 'So boring\r\n', '2022-06-28'),
(21, '', 'admin@gmail.com', '4', '3', '4', '3', '3', '3', '3', '3', '2', '2', '2', '2', '\r\nalign with my site of interest ', '\r\nNothing', '2022-07-06'),
(22, 'Asood@uclan.ac.uk', 'mbateman@uclan.ac.uk', '3', '4', '3', '2', '4', '3', '4', '4', '4', '5', '4', '2', '\r\n', '\r\n', '2022-07-12');

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

CREATE TABLE `files` (
  `notice_id` int(11) NOT NULL,
  `attachment` varchar(255) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `Description` text NOT NULL,
  `Date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `files`
--

INSERT INTO `files` (`notice_id`, `attachment`, `subject`, `Description`, `Date`) VALUES
(8, 'AteekCV_java (1).docx', 'aaaaa', 'dfdfdfd', '2016-07-03 12:39:35');

-- --------------------------------------------------------

--
-- Table structure for table `module`
--

CREATE TABLE `module` (
  `Course` varchar(20) NOT NULL,
  `name` varchar(25) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `module`
--

INSERT INTO `module` (`Course`, `name`) VALUES
('', 'Martin Bateman'),
('', 'Amanda Jane'),
('', 'Jane C. Read'),
('', 'Gavin Sim'),
('', 'Karen Oshea'),
('Threat Modelling', ''),
('Incidence Response', ''),
('Digital Security', ''),
('Introduction To Cryp', ''),
('Trends in Cybercrime', ''),
('Security Operation (', ''),
('Masters Project', 'Martin Bateman'),
('Introduction to Pent', 'Gavin Sim'),
('Masters Project', 'Martin Bateman'),
('Introduction to Pent', 'Gavin Sim');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` char(40) NOT NULL,
  `email` varchar(40) NOT NULL,
  `pass` varchar(40) NOT NULL,
  `mobile` bigint(11) NOT NULL,
  `programme` varchar(20) NOT NULL,
  `semester` varchar(10) NOT NULL,
  `gender` varchar(40) NOT NULL,
  `hobbies` varchar(40) NOT NULL,
  `image` varchar(50) NOT NULL,
  `dob` date NOT NULL,
  `regid` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `pass`, `mobile`, `programme`, `semester`, `gender`, `hobbies`, `image`, `dob`, `regid`) VALUES
(15, 'Allmen_Showboy', 'admin@gmail.com', '21232f297a57a5a743894a0e4a801fc3', 8067581855, 'B.Tech', 'Summer', 'm', 'reading', 'Allmen.png', '1991-06-24', '2022-06-24 22:44:40'),
(16, 'Albert Timilehin', 'albert@gmail.com', '21232f297a57a5a743894a0e4a801fc3', 2347033900578, 'Phd', 'Summer', 'm', 'reading', 'B360-9146.JPG', '1997-12-20', '2022-07-03 05:22:03'),
(17, 'Albert Oloruntola', 'nelllywayne.ot@gmail.com', '21232f297a57a5a743894a0e4a801fc3', 7448823289, 'Masters', 'Summer', 'm', 'reading', 'Screenshot 2022-06-26 at 03.54.39.png', '1980-02-03', '2022-07-04 12:17:55'),
(18, 'Chidiadi', 'Conwaogu@uclan.ac.uk', 'd7f33c1bffdc41e5b5d4b462c93b56b0', 7863410999, 'Masters', 'Summer', 'm', 'reading,singin,playing', 'B178E6BF-FD71-4342-9465-63F085A9493C.jpeg', '2000-01-01', '2022-07-06 05:19:03'),
(19, 'Ayodeji', 'aaoadebayo@uclan.ac.uk', '9fecc9d8860f83cdd00dd65bf78be71b', 7577389104, 'Masters', 'Summer', 'm', 'reading', '992F4371-15A7-4D05-B14D-14A5E7ADE3F3.jpeg', '0000-00-00', '2022-07-11 03:56:51'),
(20, 'Akorede', 'akastala@uclan.ac.uk', '0ad3ea6b49104c17bac02b9a2fb29cf9', 713658652, 'Masters', 'Summer', 'f', 'reading,singin', 'IMG_9232.JPG', '0000-00-00', '2022-07-11 05:09:07'),
(21, 'Oluwatosin Grace Oloruntola', 'Asood@uclan.ac.uk', 'b305e42d352e04891a426012c19a6e50', 7404427036, 'Masters', 'Summer', 'f', 'singin', 'edit.jpg', '0000-00-00', '2022-07-12 12:38:30'),
(22, 'Martin Bateman (Student)', 'mbateman@uclan.ac.uk', 'c2522ef74f04a4a50d951b5b24b33806', 0, 'Masters', 'Summer', 'm', '', 'download.jpg', '0000-00-00', '2022-07-15 06:18:12'),
(23, 'Albert Oloruntola', 'atoloruntola@uclan.ac.uk', '81af8240b9d7de23250ce57393fa6a64', 0, '2021/2022', 'Semester 2', '', '', '', '0000-00-00', '2022-07-18 04:57:39'),
(24, 'Tosin', 'tgoloruntola@uclan.ac.uk', '81af8240b9d7de23250ce57393fa6a64', 0, '2022/2023', 'Semester 3', '', '', '', '0000-00-00', '2022-07-18 06:16:34');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faculty`
--
ALTER TABLE `faculty`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`notice_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);
ALTER TABLE `user` ADD FULLTEXT KEY `name` (`name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `faculty`
--
ALTER TABLE `faculty`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
  MODIFY `notice_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
