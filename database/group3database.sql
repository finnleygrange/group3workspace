-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 12, 2023 at 01:58 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `group3database`
--

-- --------------------------------------------------------

--
-- Table structure for table `client`
--

CREATE TABLE `client` (
  `ClientID` int(11) NOT NULL,
  `ClientName` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `complianceauditor`
--

CREATE TABLE `complianceauditor` (
  `AuditID` int(11) NOT NULL,
  `ClientID` int(11) NOT NULL,
  `Year` int(11) NOT NULL,
  `NumberOfAuditFindings` int(11) NOT NULL,
  `NumberOfGreenComplience` int(11) NOT NULL,
  `NumberOfAmberNonComplience` int(11) NOT NULL,
  `NumberOfRedNonComplience` int(11) NOT NULL,
  `NumberOfAudits` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `improvementtraker`
--

CREATE TABLE `improvementtraker` (
  `TrackerID` int(11) NOT NULL,
  `ClientID` int(11) NOT NULL,
  `Year` int(11) NOT NULL,
  `NumberOfActions` int(11) NOT NULL,
  `NumberOfActionsOpen` int(11) NOT NULL,
  `NumberOfDueActions` int(11) NOT NULL,
  `NumberOfOutstanding` int(11) NOT NULL,
  `NumberReqireingV&V` int(11) NOT NULL,
  `NumberOfActionsClosedBeforeDueDate` int(11) NOT NULL,
  `NumberOfActionsClosedAfterDueDate` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `legalregister`
--

CREATE TABLE `legalregister` (
  `RegisterID` int(11) NOT NULL,
  `ClientID` int(11) NOT NULL,
  `NumberOfRedNonComplience` int(11) NOT NULL,
  `NumberOfAmberNonComplience` int(11) NOT NULL,
  `NumberOfGreenComplience` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `riskregisters`
--

CREATE TABLE `riskregisters` (
  `RiskID` int(11) NOT NULL,
  `ClientID` int(11) NOT NULL,
  `NumberOf60PlusAspects` int(11) NOT NULL,
  `NumberOf12PlusHazards` int(11) NOT NULL,
  `NumberOfClimateRisks` int(11) NOT NULL,
  `NumberOfClimateOpportunities` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `useractions`
--

CREATE TABLE `useractions` (
  `TrackerID` int(11) NOT NULL,
  `UserID` int(11) NOT NULL,
  `NumberOfActions` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `UserID` int(11) NOT NULL,
  `ClientID` int(11) NOT NULL,
  `FirstName` text NOT NULL,
  `LastName` text NOT NULL,
  `Username` text NOT NULL,
  `Password` text NOT NULL,
  `Emails` text NOT NULL,
  `Permission` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`ClientID`);

--
-- Indexes for table `complianceauditor`
--
ALTER TABLE `complianceauditor`
  ADD PRIMARY KEY (`AuditID`),
  ADD KEY `ClientID` (`ClientID`);

--
-- Indexes for table `improvementtraker`
--
ALTER TABLE `improvementtraker`
  ADD PRIMARY KEY (`TrackerID`),
  ADD KEY `ClientID` (`ClientID`);

--
-- Indexes for table `legalregister`
--
ALTER TABLE `legalregister`
  ADD PRIMARY KEY (`RegisterID`),
  ADD KEY `ClientID` (`ClientID`);

--
-- Indexes for table `riskregisters`
--
ALTER TABLE `riskregisters`
  ADD PRIMARY KEY (`RiskID`),
  ADD KEY `ClientID` (`ClientID`);

--
-- Indexes for table `useractions`
--
ALTER TABLE `useractions`
  ADD KEY `TrackerID` (`TrackerID`),
  ADD KEY `UserID` (`UserID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`UserID`),
  ADD KEY `ClientID` (`ClientID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `client`
--
ALTER TABLE `client`
  MODIFY `ClientID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `complianceauditor`
--
ALTER TABLE `complianceauditor`
  MODIFY `AuditID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `improvementtraker`
--
ALTER TABLE `improvementtraker`
  MODIFY `TrackerID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `legalregister`
--
ALTER TABLE `legalregister`
  MODIFY `RegisterID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `riskregisters`
--
ALTER TABLE `riskregisters`
  MODIFY `RiskID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `UserID` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `complianceauditor`
--
ALTER TABLE `complianceauditor`
  ADD CONSTRAINT `complianceauditor_ibfk_1` FOREIGN KEY (`ClientID`) REFERENCES `client` (`ClientID`);

--
-- Constraints for table `improvementtraker`
--
ALTER TABLE `improvementtraker`
  ADD CONSTRAINT `improvementtraker_ibfk_1` FOREIGN KEY (`ClientID`) REFERENCES `client` (`ClientID`);

--
-- Constraints for table `legalregister`
--
ALTER TABLE `legalregister`
  ADD CONSTRAINT `legalregister_ibfk_1` FOREIGN KEY (`ClientID`) REFERENCES `client` (`ClientID`);

--
-- Constraints for table `riskregisters`
--
ALTER TABLE `riskregisters`
  ADD CONSTRAINT `riskregisters_ibfk_1` FOREIGN KEY (`ClientID`) REFERENCES `client` (`ClientID`);

--
-- Constraints for table `useractions`
--
ALTER TABLE `useractions`
  ADD CONSTRAINT `useractions_ibfk_1` FOREIGN KEY (`TrackerID`) REFERENCES `improvementtraker` (`TrackerID`),
  ADD CONSTRAINT `useractions_ibfk_2` FOREIGN KEY (`UserID`) REFERENCES `users` (`UserID`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`ClientID`) REFERENCES `client` (`ClientID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
