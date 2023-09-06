-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Sep 06, 2023 at 03:39 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `your_database`
--

-- --------------------------------------------------------

--
-- Table structure for table `your_table`
--

CREATE TABLE `your_table` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `your_table`
--

INSERT INTO `your_table` (`id`, `name`, `email`, `phone`) VALUES
(1, 'anup', 'anup@gmail.com', '706850336'),
(2, 'roshan', 'roshan@gmail.com', '7844075102'),
(3, 'amita', 'amita@gmail.com', '6393302686'),
(4, 'savita', 'savita@gmail.com', '8282758256'),
(5, 'archana', 'archana@gmail.com', '7500784545'),
(6, 'ashu', 'ashu@gmail.com', '7068503256'),
(7, 'akash', 'akash@gmail.com', '8545212544'),
(8, 'rohan', 'rohan@gmail.com', '7845212563'),
(9, 'sohan', 'sohan123@gmail.com', '7898653223'),
(10, 'deva', 'deva@gmail.com', '9670523236'),
(11, 'sunil', 'sunil@gmail.com', '9945875232'),
(12, 'sunil', 'sunil@gmail.com', '8785456332');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `your_table`
--
ALTER TABLE `your_table`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `your_table`
--
ALTER TABLE `your_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
