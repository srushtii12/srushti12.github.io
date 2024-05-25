-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 03, 2023 at 02:54 PM
-- Server version: 5.5.8
-- PHP Version: 5.3.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `clg_insurance`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_entry`
--

CREATE TABLE IF NOT EXISTS `tbl_entry` (
  `eid` int(11) NOT NULL AUTO_INCREMENT,
  `rdate` varchar(12) NOT NULL,
  `people` varchar(10) NOT NULL,
  `age1` int(10) NOT NULL,
  `age2` int(10) NOT NULL,
  `age3` int(10) NOT NULL,
  `age4` int(10) NOT NULL,
  `age5` int(10) NOT NULL,
  `title` varchar(50) NOT NULL,
  `desc` longtext NOT NULL,
  PRIMARY KEY (`eid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `tbl_entry`
--


-- --------------------------------------------------------

--
-- Table structure for table `tbl_entry1`
--

CREATE TABLE IF NOT EXISTS `tbl_entry1` (
  `eeid` int(11) NOT NULL AUTO_INCREMENT,
  `rdate` varchar(12) NOT NULL,
  `uid` int(10) NOT NULL,
  `user` varchar(40) NOT NULL,
  `amt1` varchar(20) NOT NULL,
  `amt2` varchar(20) NOT NULL,
  `totalamt` varchar(20) NOT NULL,
  `cat` int(10) NOT NULL,
  PRIMARY KEY (`eeid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `tbl_entry1`
--

INSERT INTO `tbl_entry1` (`eeid`, `rdate`, `uid`, `user`, `amt1`, `amt2`, `totalamt`, `cat`) VALUES
(1, '2023-04-15', 3, 'Anup Kumar', '2251', '200', '2451', 1001);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_payment`
--

CREATE TABLE IF NOT EXISTS `tbl_payment` (
  `pay_id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(10) NOT NULL,
  `uid` int(10) NOT NULL,
  `uname` varchar(50) NOT NULL,
  `pay_date` varchar(12) NOT NULL,
  `month` int(10) NOT NULL,
  `installment` varchar(20) NOT NULL,
  PRIMARY KEY (`pay_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `tbl_payment`
--

INSERT INTO `tbl_payment` (`pay_id`, `pid`, `uid`, `uname`, `pay_date`, `month`, `installment`) VALUES
(1, 12, 1, 'Anup Kumar', '2021-11-29', 1, '15458.333333333'),
(2, 12, 1, 'Anup Kumar', '2021-11-29', 2, '15458.333333333'),
(3, 12, 1, 'Anup Kumar', '2021-11-29', 3, '15458.333333333'),
(4, 10, 1, 'Anup Kumar', '2021-11-29', 1, '9250'),
(5, 14, 3, 'Anup Kumar', '2021-12-11', 1, '3138.8888888889'),
(6, 17, 3, 'Anup Kumar', '2022-05-31', 1, '6937.5'),
(7, 18, 3, 'Anup Kumar', '2023-04-15', 1, '3138.8888888889');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_policy`
--

CREATE TABLE IF NOT EXISTS `tbl_policy` (
  `pid` int(11) NOT NULL AUTO_INCREMENT,
  `pdate` varchar(12) NOT NULL,
  `uid` int(10) NOT NULL,
  `uname` varchar(50) NOT NULL,
  `amount` varchar(10) NOT NULL,
  `period` varchar(20) NOT NULL,
  `rate` varchar(10) NOT NULL,
  `rate_amt` varchar(10) NOT NULL,
  `tot_amt` varchar(10) NOT NULL,
  `months` varchar(20) NOT NULL,
  `installments` varchar(20) NOT NULL,
  `status` varchar(20) NOT NULL,
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=19 ;

--
-- Dumping data for table `tbl_policy`
--

INSERT INTO `tbl_policy` (`pid`, `pdate`, `uid`, `uname`, `amount`, `period`, `rate`, `rate_amt`, `tot_amt`, `months`, `installments`, `status`) VALUES
(10, '2021-11-26', 1, 'Anup Kumar', '200000', '2', '11', '22000', '222000', '24', '9250', 'Active'),
(11, '2021-11-27', 1, 'Anup Kumar', '700000', '6', '3', '21000', '721000', '72', '10013.888888889', 'Active'),
(12, '2021-11-27', 1, 'Anup Kumar', '350000', '2', '6', '21000', '371000', '24', '15458.333333333', 'Active'),
(14, '2021-12-11', 3, 'Anup Kumar', '200000', '6', '13', '26000', '226000', '72', '3138.8888888889', 'Active'),
(16, '2021-12-11', 3, 'Anup Kumar', '150000', '2', '11', '16500', '166500', '24', '6937.5', 'Inactive'),
(17, '2022-05-31', 3, 'Anup Kumar', '150000', '2', '11', '16500', '166500', '24', '6937.5', 'Active'),
(18, '2023-04-15', 3, 'Anup Kumar', '200000', '6', '13', '26000', '226000', '72', '3138.8888888889', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_profile`
--

CREATE TABLE IF NOT EXISTS `tbl_profile` (
  `pid` int(11) NOT NULL AUTO_INCREMENT,
  `pdate` varchar(12) NOT NULL,
  `cid` varchar(11) NOT NULL,
  `cname` varchar(50) NOT NULL,
  `contact` varchar(12) NOT NULL,
  `email` varchar(100) NOT NULL,
  `address` varchar(300) NOT NULL,
  `company` varchar(40) NOT NULL,
  `caddress` varchar(300) NOT NULL,
  `designation` varchar(20) NOT NULL,
  `income` varchar(20) NOT NULL,
  `assets` varchar(300) NOT NULL,
  `liability` varchar(300) NOT NULL,
  `photo` varchar(500) NOT NULL,
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `tbl_profile`
--

INSERT INTO `tbl_profile` (`pid`, `pdate`, `cid`, `cname`, `contact`, `email`, `address`, `company`, `caddress`, `designation`, `income`, `assets`, `liability`, `photo`) VALUES
(1, '2021-11-25', '1', 'Anup Kumar', '9579047478', 'anup7ask@gmail.com', 'bh hg bgh', 'Radha Enterprize', 'jgh hjg hbh bh', 'Developer', '120000', 'hj jhbhj b', 'bhbh\r\nbhbvh\r\nbhb\r\nhvh', 'eJellyfish.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE IF NOT EXISTS `tbl_users` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `udate` varchar(12) NOT NULL,
  `uname` varchar(50) NOT NULL,
  `contact` varchar(12) NOT NULL,
  `pass` varchar(20) NOT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`uid`, `udate`, `uname`, `contact`, `pass`) VALUES
(1, '2021-11-02', 'Anup Kumar', '9579047478', 'a123'),
(2, '2021-11-06', 'Prem Kumar', '7766776676', 'p123'),
(3, '2021-12-05', 'Anup Kumar', '9579047478', 'a123'),
(4, '2022-11-15', 'Smita', '9518716903', 'Smita@123');
