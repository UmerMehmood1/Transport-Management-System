-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 17, 2023 at 05:18 AM
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
-- Database: `tms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `user` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `confirmpassword` varchar(255) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `fname`, `lname`, `user`, `password`, `confirmpassword`, `status`) VALUES
(1, 'Nielmar', 'Mangana', 'nielmarmangana@yahoo.com', '1122', '1122', 'ADMIN'),
(2, 'jude', 'suarez', 'jude@yahoo.com', '1122', '1122', 'CLIENT'),
(3, 'marmar', 'niel', 'marmar@yahoo.com', '1122', '1122', 'CLIENT'),
(4, 'Nielmar', 'Mangana', 'nelmarmangana@yahoo.com', '1122', '1122', 'CLIENT'),
(5, 'Nielmar', 'Mangana', 'nelmarmangana@gmail.com', '1122', '1122', 'CLIENT'),
(8, 'Umer', 'Mehmood', 'umer2762', '1122', '1122', 'ADMIN');

-- --------------------------------------------------------

--
-- Table structure for table `bus`
--

CREATE TABLE `bus` (
  `BUS_ID` int(30) NOT NULL,
  `BUS_NAME` varchar(40) NOT NULL,
  `BUS_TYPE` varchar(40) NOT NULL,
  `DRIVER_ID` int(25) NOT NULL,
  `ROUTE_ID` int(50) NOT NULL,
  `BUS_CAPACITY` int(11) NOT NULL DEFAULT 32,
  `Schedule_ID` int(11) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bus`
--

INSERT INTO `bus` (`BUS_ID`, `BUS_NAME`, `BUS_TYPE`, `DRIVER_ID`, `ROUTE_ID`, `BUS_CAPACITY`, `Schedule_ID`) VALUES
(1, 'AIRCON 99', 'Karton', 1, 1, 32, 1),
(2, 'AIRCON 1', 'Kartons', 4, 1, 32, 1),
(3, 'Karito', 'hh', 3, 1, 32, 1),
(4, 'airconzion', 'zion', 1, 1, 32, 1),
(5, 'Veda', 'Veda-5', 6, 4, 32, 2),
(6, 'Metro', 'Veda-6', 6, 6, 32, 6),
(7, 'Metro', 'Veda-6', 6, 6, 32, 6);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `cust_ID` int(11) NOT NULL,
  `cust_name` varchar(100) NOT NULL,
  `cust_address` varchar(1000) NOT NULL,
  `cust_phone_no` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`cust_ID`, `cust_name`, `cust_address`, `cust_phone_no`) VALUES
(1, 'Umer', 'Qasim Bela', '03111631635');

-- --------------------------------------------------------

--
-- Table structure for table `driver`
--

CREATE TABLE `driver` (
  `DRIVER_ID` int(30) NOT NULL,
  `DRIVER_NAME` varchar(50) NOT NULL,
  `EMPLOY_DATE` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `driver`
--

INSERT INTO `driver` (`DRIVER_ID`, `DRIVER_NAME`, `EMPLOY_DATE`) VALUES
(1, 'Bebot Baja', '2019-02-02'),
(2, 'Mon', '2018-10-01'),
(3, 'BADONG', '2018-11-09'),
(4, 'DAROY', '2018-05-15'),
(5, 'Von', '2018-10-17'),
(6, 'Zain', '2023-05-16');

-- --------------------------------------------------------

--
-- Table structure for table `reservation`
--

CREATE TABLE `reservation` (
  `reservation_ID` int(11) NOT NULL,
  `cust_ID` int(11) NOT NULL,
  `bus_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `reservation`
--

INSERT INTO `reservation` (`reservation_ID`, `cust_ID`, `bus_ID`) VALUES
(2, 1, 4),
(3, 1, 1),
(4, 1, 4),
(5, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `route`
--

CREATE TABLE `route` (
  `ROUTE_ID` int(50) NOT NULL,
  `FAIR` float NOT NULL,
  `START` varchar(50) NOT NULL,
  `FINISH` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `route`
--

INSERT INTO `route` (`ROUTE_ID`, `FAIR`, `START`, `FINISH`) VALUES
(1, 300, 'BINALBAGAN', 'HINIGARAN'),
(2, 1555, 'CHMSC', 'GREENHOUSE'),
(3, 1500, 'BACOLOD', 'ILO-ILO'),
(4, 559, 'dumaguete', 'binalbagan'),
(5, 750, 'Multan', 'Lahore');

-- --------------------------------------------------------

--
-- Table structure for table `schedule`
--

CREATE TABLE `schedule` (
  `SCHEDULE_ID` int(11) NOT NULL,
  `ARRIVAL` date NOT NULL,
  `DEPARTURE` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `schedule`
--

INSERT INTO `schedule` (`SCHEDULE_ID`, `ARRIVAL`, `DEPARTURE`) VALUES
(1, '2018-10-04', '2018-10-04'),
(2, '2018-10-09', '2018-10-10'),
(3, '2018-12-05', '2018-10-06'),
(4, '2018-08-05', '2018-08-06'),
(5, '2018-11-02', '2018-11-02'),
(6, '2018-11-05', '2018-10-04'),
(4449, '2023-05-17', '2023-05-18');

-- --------------------------------------------------------

--
-- Table structure for table `stop`
--

CREATE TABLE `stop` (
  `LOCATION_ID` int(50) NOT NULL,
  `LOCATION_NAME` varchar(40) NOT NULL,
  `ROUTE_ID` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stop`
--

INSERT INTO `stop` (`LOCATION_ID`, `LOCATION_NAME`, `ROUTE_ID`) VALUES
(1, 'candonis', 3),
(2, 'Bacolod', 1),
(3, 'Himamaylan', 3),
(4, 'lacarlota', 4),
(5, 'Aligarh', 1),
(6, 'AliGarh', 1),
(7, 'Multan', 4);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bus`
--
ALTER TABLE `bus`
  ADD PRIMARY KEY (`BUS_ID`),
  ADD KEY `fk_schedule_ID` (`Schedule_ID`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`cust_ID`);

--
-- Indexes for table `driver`
--
ALTER TABLE `driver`
  ADD PRIMARY KEY (`DRIVER_ID`);

--
-- Indexes for table `reservation`
--
ALTER TABLE `reservation`
  ADD PRIMARY KEY (`reservation_ID`);

--
-- Indexes for table `route`
--
ALTER TABLE `route`
  ADD PRIMARY KEY (`ROUTE_ID`);

--
-- Indexes for table `schedule`
--
ALTER TABLE `schedule`
  ADD PRIMARY KEY (`SCHEDULE_ID`);

--
-- Indexes for table `stop`
--
ALTER TABLE `stop`
  ADD PRIMARY KEY (`LOCATION_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `bus`
--
ALTER TABLE `bus`
  MODIFY `BUS_ID` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `cust_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `driver`
--
ALTER TABLE `driver`
  MODIFY `DRIVER_ID` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `reservation`
--
ALTER TABLE `reservation`
  MODIFY `reservation_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `route`
--
ALTER TABLE `route`
  MODIFY `ROUTE_ID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `schedule`
--
ALTER TABLE `schedule`
  MODIFY `SCHEDULE_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4450;

--
-- AUTO_INCREMENT for table `stop`
--
ALTER TABLE `stop`
  MODIFY `LOCATION_ID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bus`
--
ALTER TABLE `bus`
  ADD CONSTRAINT `fk_schedule_ID` FOREIGN KEY (`Schedule_ID`) REFERENCES `schedule` (`SCHEDULE_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
