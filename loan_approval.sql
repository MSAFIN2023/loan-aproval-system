-- phpMyAdmin SQL Dump
-- version 2.11.6
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 19, 2023 at 05:46 PM
-- Server version: 5.0.51
-- PHP Version: 5.2.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `loan_approval`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`username`, `password`) VALUES
('admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `apply`
--

CREATE TABLE `apply` (
  `id` int(11) NOT NULL,
  `uname` varchar(20) NOT NULL,
  `status` int(11) NOT NULL,
  `detail` varchar(50) NOT NULL,
  `rdate` varchar(20) NOT NULL,
  `verify_st` int(11) NOT NULL,
  `cramt` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `apply`
--

INSERT INTO `apply` (`id`, `uname`, `status`, `detail`, `rdate`, `verify_st`, `cramt`) VALUES
(1, '5001711', 1, 'Good_Debt', '18-04-2023', 1, '100000');

-- --------------------------------------------------------

--
-- Table structure for table `reg_mgr`
--

CREATE TABLE `reg_mgr` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `mobile` bigint(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `branch` varchar(20) NOT NULL,
  `uname` varchar(20) NOT NULL,
  `pass` varchar(20) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reg_mgr`
--

INSERT INTO `reg_mgr` (`id`, `name`, `mobile`, `email`, `branch`, `uname`, `pass`, `status`) VALUES
(1, 'Ganesh', 9638956745, 'ganesh@gmail.com', 'Trichy', 'ganesh', '123456', 0);

-- --------------------------------------------------------

--
-- Table structure for table `transfer`
--

CREATE TABLE `transfer` (
  `id` int(11) NOT NULL,
  `uname` varchar(20) NOT NULL,
  `account` varchar(20) NOT NULL,
  `taccount` varchar(20) NOT NULL,
  `amount` int(11) NOT NULL,
  `dtime` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `log_st` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transfer`
--


-- --------------------------------------------------------

--
-- Table structure for table `user_reg`
--

CREATE TABLE `user_reg` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `dob` varchar(15) NOT NULL,
  `mobile` bigint(20) NOT NULL,
  `email` varchar(40) NOT NULL,
  `address` varchar(50) NOT NULL,
  `uname` varchar(20) NOT NULL,
  `pass` varchar(20) NOT NULL,
  `manager` varchar(20) NOT NULL,
  `rdate` varchar(15) NOT NULL,
  `status` int(11) NOT NULL,
  `log_st` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_reg`
--

INSERT INTO `user_reg` (`id`, `name`, `gender`, `dob`, `mobile`, `email`, `address`, `uname`, `pass`, `manager`, `rdate`, `status`, `log_st`) VALUES
(1, 'Ravi', 'Male', '1999-06-05', 8527418525, 'ravi@gmail.com', '55,DD', '5001711', '24892', 'ganesh', '17-04-2023', 0, 0);
