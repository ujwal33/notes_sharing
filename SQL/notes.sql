-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 29, 2019 at 01:26 AM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `notes`
--

-- --------------------------------------------------------

--
-- Table structure for table `uploads`
--

CREATE TABLE `uploads` (
  `file_id` int(11) NOT NULL,
  `file_name` varchar(225) NOT NULL,
  `file_description` text NOT NULL,
  `file_type` varchar(225) NOT NULL,
  `file_uploader` varchar(225) NOT NULL,
  `file_uploaded_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `file_uploaded_to` varchar(225) NOT NULL,
  `file` varchar(225) NOT NULL,
  `status` varchar(225) NOT NULL DEFAULT 'not approved yet'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `uploads`
--

INSERT INTO `uploads` (`file_id`, `file_name`, `file_description`, `file_type`, `file_uploader`, `file_uploaded_on`, `file_uploaded_to`, `file`, `status`) VALUES
(63, 'web ppt', 'ppt of notes sharing', 'pptx', 'ujwal', '2019-11-29 00:09:15', 'Computer Science', '492095.pptx', 'not approved yet'),
(60, 'synopsis notes', 'synopsis of notes sharing', 'pdf', 'ujwal', '2019-11-08 09:20:13', 'Computer Science', '373273.pdf', 'approved'),
(61, 'web reoprt', 'report of notes sharing', 'docx', 'ujwal', '2019-11-21 06:57:22', 'Computer Science', '969037.docx', 'approved'),
(59, 'major project', 'synopsis sndb', 'pdf', 'chan', '2019-10-30 08:55:35', 'Computer Science', '493739.pdf', 'approved'),
(62, 'web ppt', 'ppt of notes sharing', 'docx', 'hemanth', '2019-11-11 06:59:05', 'Computer Science', '763609.docx', 'approved');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(225) NOT NULL,
  `name` varchar(225) NOT NULL,
  `about` varchar(300) NOT NULL DEFAULT 'N/A',
  `role` varchar(225) NOT NULL,
  `email` varchar(225) NOT NULL,
  `token` varchar(225) NOT NULL,
  `gender` varchar(225) NOT NULL,
  `password` varchar(225) NOT NULL,
  `course` varchar(225) NOT NULL,
  `image` varchar(225) NOT NULL DEFAULT 'profile.jpg',
  `joindate` varchar(225) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `name`, `about`, `role`, `email`, `token`, `gender`, `password`, `course`, `image`, `joindate`) VALUES
(12, 'root', 'admin root', 'N/A', 'admin', 'root@gmail.com', '', 'N/A', '$2y$10$UExd.f8vQXogrZELXF8KGulQJKUn32p8x4B5SVQ7V/D6.mrSAkAjW', 'Computer Science', 'profile.jpg', '2019-10-10'),
(32, 'varshitha', 'varshitha', 'N/A', 'student', 'varshitha@gmail.com', '', 'Female', '$2y$10$jykkxY.VW3TI4KXuQnk/xOtL.h832dKX8tSjECAI2KfAZvrcUtuiG', 'Electrical', 'profile.jpg', 'November 10, 2019'),
(30, 'sudarshan61kv', 'sudarshan', 'N/A', 'teacher', 'sudarshan61kv@gmail.com', '', 'Male', '$2y$10$vvimFJlSZ1aMiuHM/OeDUeCnyt7XnZXb1otMeUUzlFGlrk9SWaiLS', 'Computer Science', 'profile.jpg', 'November 8, 2019'),
(33, 'hemanth', 'hemanth kumar', 'N/A', 'teacher', 'hemanth@gmail.com', '', 'Male', '$2y$10$4g5Q7tMyZ3d3K6.xdgr3YeQzwdBRq8Coh0PrsIhGN6N0xcOFSYM/W', 'Computer Science', 'profile.jpg', 'November 11, 2019'),
(29, 'ujwal', 'Ujwal K B', 'N/A', 'student', 'un.ujwal@gmail.com', '5f23e579c050c206b20c22e40d7717c1', 'Male', '$2y$10$fed.8mD8JH1X/RHaE7qwQ./4LoxQIC1FoyAjxbUOyg6Vh37.gz4SS', 'Computer Science', 'profile.jpg', 'November 6, 2019'),
(28, 'chan', 'chandini', 'N/A', 'student', 'chandini@unmail.com', 'adc893f9f17d37329d95cb0bc54c429a', 'Female', '$2y$10$rOuzzE8GgFSbOz0myHziB.Y3KJ6qsJdz4ylrX61J9lh7d.KOR22n.', 'Computer Science', 'profile.jpg', 'October 26, 2019');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `uploads`
--
ALTER TABLE `uploads`
  ADD PRIMARY KEY (`file_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `uploads`
--
ALTER TABLE `uploads`
  MODIFY `file_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
