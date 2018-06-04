-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 18, 2018 at 12:32 PM
-- Server version: 5.7.22-0ubuntu18.04.1
-- PHP Version: 7.2.5-0ubuntu0.18.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ncbt`
--

-- --------------------------------------------------------

--
-- Table structure for table `attribute`
--

CREATE TABLE `attribute` (
  `id` int(11) UNSIGNED NOT NULL,
  `subject` int(11) UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `data_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `has_ref` tinyint(1) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attribute`
--

INSERT INTO `attribute` (`id`, `subject`, `name`, `data_type`, `has_ref`) VALUES
(1, 1, 'title', 'text', 0),
(2, 1, 'description', 'long text', 0),
(3, 3, 'privilege', 'text', 0),
(4, 3, 'description', 'long text', 0),
(5, 4, 'role', 'role', 1),
(6, 4, 'subject', 'subject', 1),
(7, 4, 'writing', 'privilege_grant', 1),
(8, 4, 'reading', 'privilege_grant', 1),
(9, 5, 'title', 'text', 0),
(10, 5, 'description', 'long text', 0),
(11, 5, 'image', 'file', 0),
(12, 6, 'title', 'text', 0),
(13, 6, 'description', 'text', 0),
(14, 6, 'image', 'file', 0),
(15, 7, 'title', 'text', 0),
(16, 7, 'description', 'long text', 0),
(17, 8, 'value', 'text', 0),
(18, 8, 'description', 'long text', 0),
(19, 9, 'names', 'text', 0),
(20, 9, 'phone', 'text', 0),
(21, 9, 'location', 'text', 0),
(22, 9, 'weight', 'numeric', 0),
(23, 9, 'gender', 'text', 0),
(24, 9, 'age', 'numeric', 0),
(25, 10, 'name', 'text', 0),
(26, 10, 'location', 'text', 0),
(27, 10, 'code', 'text', 0),
(28, 11, 'donor names', 'donor', 1),
(29, 11, 'donor phone', 'donor', 1),
(30, 11, 'site', 'site', 1),
(31, 11, 'blood type', 'blood_type', 1),
(32, 11, 'rhesus', 'rhesus', 1),
(33, 11, 'quantity', 'numeric', 0),
(34, 11, 'donated at', 'date', 0),
(35, 12, 'title', 'text', 0),
(36, 12, 'description', 'long text', 0),
(37, 11, 'record_id', 'text', 0),
(38, 14, 'blood record key', 'blood', 1),
(39, 14, 'donor names', 'donor', 1),
(40, 14, 'donor phone', 'donor', 1),
(41, 14, 'exam', 'exam', 1),
(42, 14, 'status', 'text', 0),
(43, 14, 'description', 'long text', 0),
(44, 14, 'recorded on', 'date', 0),
(45, 15, 'name', 'text', 0),
(46, 15, 'location', 'long text', 0),
(47, 15, 'phone', 'text', 0),
(48, 15, 'email', 'text', 0),
(49, 16, 'name', 'text', 0),
(50, 16, 'description', 'long text', 0),
(51, 16, 'location', 'text', 0),
(52, 17, 'name', 'text', 0),
(53, 17, 'location', 'text', 0),
(54, 17, 'phone', 'text', 0),
(55, 17, 'email', 'text', 0),
(56, 17, 'website', 'text', 0),
(57, 18, 'site name', 'site', 1),
(58, 18, 'date', 'date', 0),
(59, 18, 'location', 'text', 0);

-- --------------------------------------------------------

--
-- Table structure for table `blood`
--

CREATE TABLE `blood` (
  `id` int(11) UNSIGNED NOT NULL,
  `donor_names` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `donor_phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `site` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blood_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rhesus` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` int(11) UNSIGNED DEFAULT NULL,
  `donated_at` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `record_id` varchar(121) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blood_type`
--

CREATE TABLE `blood_type` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blood_type`
--

INSERT INTO `blood_type` (`id`, `title`, `description`) VALUES
(2, 'AB', ' individuals have both A and B antigens on the surface of their RBCs, and their blood plasma does not contain any antibodies against either A or B antigen. Therefore, an individual with type AB blood can receive blood from any group (with AB being preferable), but cannot donate blood to any group other than AB. They are known as universal recipients.'),
(3, 'A', ' individuals have the A antigen on the surface of their RBCs, and blood serum containing IgM antibodies against the B antigen. Therefore, a group A individual can receive blood only from individuals of groups A or O (with A being preferable), and can donate blood to individuals with type A or AB.'),
(4, 'B', ' individuals have the A antigen on the surface of their RBCs, and blood serum containing IgM antibodies against the B antigen. Therefore, a group A individual can receive blood only from individuals of groups A or O (with A being preferable), and can donate blood to individuals with type A or AB.'),
(5, 'O', 'individuals do not have either A or B antigens on the surface of their RBCs, and their blood serum contains IgM anti-A and anti-B antibodies. Therefore, a group O individual can receive blood only from a group O individual, but can donate blood to individuals of any ABO blood group (i.e., A, B, O or AB). ');

-- --------------------------------------------------------

--
-- Table structure for table `credentials`
--

CREATE TABLE `credentials` (
  `id` int(11) UNSIGNED NOT NULL,
  `user` int(11) UNSIGNED DEFAULT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_log` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `credentials`
--

INSERT INTO `credentials` (`id`, `user`, `username`, `password`, `type`, `last_log`, `status`) VALUES
(3, 3, 'admin', '098f6bcd4621d373cade4e832627b4f6', '2', '30-09-2016 10:09:04', 1),
(4, 4, 'donor', '098f6bcd4621d373cade4e832627b4f6', '5', '14-05-2018 11:05:22', 1),
(5, 5, 'selector1', '098f6bcd4621d373cade4e832627b4f6', '4', '14-05-2018 11:05:12', 1),
(6, 6, 'dev', '098f6bcd4621d373cade4e832627b4f6', '3', '15-05-2018 11:05:22', 1),
(7, 7, 'davejuelz@gmail.com', '197ecfe0bbfbcf7f62a9eaf5d479bee5', '4', '17-05-2018 09:05:28', 1);

-- --------------------------------------------------------

--
-- Table structure for table `donor`
--

CREATE TABLE `donor` (
  `id` int(11) UNSIGNED NOT NULL,
  `names` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weight` int(11) UNSIGNED DEFAULT NULL,
  `gender` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `age` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `exam`
--

CREATE TABLE `exam` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `exam`
--

INSERT INTO `exam` (`id`, `title`, `description`) VALUES
(2, 'HIV', 'testing HIV');

-- --------------------------------------------------------

--
-- Table structure for table `exam_result`
--

CREATE TABLE `exam_result` (
  `id` int(11) UNSIGNED NOT NULL,
  `blood_record_key` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `donor_names` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `donor_phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `exam` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `recorded_on` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `feature`
--

CREATE TABLE `feature` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `feature`
--

INSERT INTO `feature` (`id`, `title`, `description`, `image`) VALUES
(1, 'Blood collection', 'We collect blood and reserve it for those who most need it.', '../images/uploaded/992937047153.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `image`
--

CREATE TABLE `image` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `path` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `added_on` datetime DEFAULT NULL,
  `added_by` int(11) UNSIGNED DEFAULT NULL,
  `status` tinyint(1) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `image`
--

INSERT INTO `image` (`id`, `name`, `path`, `added_on`, `added_by`, `status`) VALUES
(1, '521826087661.jpg', '../images/uploaded/521826087661.jpg', '2018-05-17 09:05:28', 6, 0),
(2, '992937047153.jpg', '../images/uploaded/992937047153.jpg', '2018-05-17 09:05:31', 6, 0);

-- --------------------------------------------------------

--
-- Table structure for table `institution`
--

CREATE TABLE `institution` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `id` int(11) UNSIGNED NOT NULL,
  `user` tinyint(1) UNSIGNED DEFAULT NULL,
  `sender` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `receiver` int(11) UNSIGNED DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `status` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`id`, `user`, `sender`, `email`, `message`, `receiver`, `created_on`, `status`) VALUES
(1, NULL, 'David NIWEWE', 'davejuelz@gmail.com', 'Hello testing if the message is working.', 0, '2018-05-17 09:05:28', 1);

-- --------------------------------------------------------

--
-- Table structure for table `privilege`
--

CREATE TABLE `privilege` (
  `id` int(11) UNSIGNED NOT NULL,
  `role` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reading` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `writing` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `privilege`
--

INSERT INTO `privilege` (`id`, `role`, `reading`, `writing`, `subject`) VALUES
(2, 'administrator', 'forbidden', 'forbidden', 'privilege_grant'),
(3, 'administrator', 'allowed', 'allowed', 'privilege'),
(4, 'administrator', 'allowed', 'allowed', 'role'),
(5, 'donor', 'forbidden', 'forbidden', 'role'),
(6, 'developer', 'allowed', 'allowed', 'slider'),
(7, 'developer', 'allowed', 'allowed', 'feature'),
(8, 'administrator', 'allowed', 'allowed', 'blood_type'),
(9, 'administrator', 'allowed', 'allowed', 'rhesus'),
(10, 'administrator', 'allowed', 'allowed', 'donor'),
(11, 'selector', 'allowed', 'allowed', 'donor'),
(12, 'administrator', 'allowed', 'allowed', 'site'),
(13, 'administrator', 'allowed', 'allowed', 'blood'),
(14, 'administrator', 'allowed', 'allowed', 'exam'),
(15, 'administrator', 'allowed', 'allowed', 'exam_result'),
(16, 'selector', 'allowed', 'allowed', 'donor'),
(17, 'selector', 'allowed', 'allowed', 'blood'),
(18, 'administrator', 'allowed', 'allowed', 'regional_centers'),
(19, 'administrator', 'allowed', 'allowed', 'institution'),
(20, 'administrator', 'allowed', 'allowed', 'schedule');

-- --------------------------------------------------------

--
-- Table structure for table `privilege_grant`
--

CREATE TABLE `privilege_grant` (
  `id` int(11) UNSIGNED NOT NULL,
  `privilege` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `privilege_grant`
--

INSERT INTO `privilege_grant` (`id`, `privilege`, `description`) VALUES
(2, 'allowed', 'You are allowed to perform the specified action.'),
(3, 'forbidden', 'You are forbidden to perform the specified action.');

-- --------------------------------------------------------

--
-- Table structure for table `reference`
--

CREATE TABLE `reference` (
  `id` int(11) UNSIGNED NOT NULL,
  `attribute` int(11) UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reference`
--

INSERT INTO `reference` (`id`, `attribute`, `name`) VALUES
(1, 5, 'title'),
(2, 6, 'title'),
(3, 7, 'privilege'),
(4, 8, 'privilege'),
(5, 28, 'names'),
(6, 29, 'phone'),
(7, 30, 'NAME'),
(8, 31, 'title'),
(9, 32, 'VALUE'),
(10, 38, 'record_id'),
(11, 39, 'names'),
(12, 40, 'phone'),
(13, 41, 'title'),
(14, 57, 'NAME');

-- --------------------------------------------------------

--
-- Table structure for table `regional_centers`
--

CREATE TABLE `regional_centers` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rhesus`
--

CREATE TABLE `rhesus` (
  `id` int(11) UNSIGNED NOT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rhesus`
--

INSERT INTO `rhesus` (`id`, `value`, `description`) VALUES
(2, 'positive', 'You have the Rh.'),
(3, 'negative', 'You do not have the Rh.');

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`id`, `title`, `description`) VALUES
(2, 'administrator', 'This is the default user of the system. With all privileges.'),
(3, 'developer', 'This role is mainly for a user who understand the concept of database management, he has privileges on top of the administrator.'),
(4, 'selector', 'Selects donors and able to add them.'),
(5, 'donor', 'donates blood.'),
(6, 'laboratory', 'Manages the lab.'),
(7, 'supervisor', 'Overviews actions happening in the system.');

-- --------------------------------------------------------

--
-- Table structure for table `schedule`
--

CREATE TABLE `schedule` (
  `id` int(11) UNSIGNED NOT NULL,
  `site_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `site`
--

CREATE TABLE `site` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE `slider` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`id`, `title`, `description`, `image`) VALUES
(1, 'Welcome', 'Donate blood and save lives.', '../images/uploaded/521826087661.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_on` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int(11) UNSIGNED DEFAULT NULL,
  `last_update` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attr_number` int(11) UNSIGNED DEFAULT NULL,
  `enable_commenting` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `enable_liking` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `enable_display_views` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`id`, `title`, `created_on`, `created_by`, `last_update`, `attr_number`, `enable_commenting`, `enable_liking`, `enable_display_views`) VALUES
(1, 'role', '01-05-2018 12:05:24', 3, '01-05-2018 12:05:24', 2, 'false', 'false', 'false'),
(3, 'privilege_grant', '01-05-2018 12:05:49', 3, '01-05-2018 12:05:49', 2, 'false', 'false', 'false'),
(4, 'privilege', '01-05-2018 01:05:00', 3, '01-05-2018 01:05:00', 4, 'false', 'false', 'false'),
(5, 'slider', '15-05-2018 10:05:38', 3, '15-05-2018 10:05:38', 3, 'false', 'false', 'false'),
(6, 'feature', '15-05-2018 10:05:45', 3, '15-05-2018 10:05:45', 3, 'false', 'false', 'false'),
(7, 'blood_type', '18-05-2018 10:05:26', 3, '18-05-2018 10:05:26', 2, 'false', 'false', 'false'),
(8, 'rhesus', '18-05-2018 11:05:15', 3, '18-05-2018 11:05:15', 2, 'false', 'false', 'false'),
(9, 'donor', '18-05-2018 11:05:09', 3, '18-05-2018 11:05:10', 6, 'false', 'false', 'false'),
(10, 'site', '18-05-2018 11:05:54', 3, '18-05-2018 11:05:54', 3, 'false', 'false', 'false'),
(11, 'blood', '18-05-2018 11:05:46', 3, '18-05-2018 11:05:46', 8, 'false', 'false', 'false'),
(12, 'exam', '18-05-2018 11:05:20', 3, '18-05-2018 11:05:20', 2, 'false', 'false', 'false'),
(14, 'exam_result', '18-05-2018 12:05:16', 3, '18-05-2018 12:05:16', 7, 'false', 'false', 'false'),
(15, 'regional_centers', '18-05-2018 12:05:01', 3, '18-05-2018 12:05:01', 4, 'false', 'false', 'false'),
(17, 'institution', '18-05-2018 12:05:12', 3, '18-05-2018 12:05:12', 5, 'false', 'false', 'false'),
(18, 'schedule', '18-05-2018 12:05:47', 3, '18-05-2018 12:05:47', 3, 'false', 'false', 'false');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) UNSIGNED NOT NULL,
  `fname` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lname` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `oname` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `fname`, `lname`, `oname`, `email`, `phone`, `address`) VALUES
(3, 'David', 'NIWEWE', 'Jules', 'admin@mail.lock', '250788323693', 'Kigali/Rwanda'),
(4, 'tes ', 'test', '', 'test@donor.mail', '25788266666', 'Kigali-Rwanda'),
(5, 'user1', 'selector', '', 'selector1@selector.mail', '07888888', 'Kigali-Rwanda'),
(6, 'dev', 'dev', '', 'dev@hell.boy', '25788266666', 'Kigali-Rwanda'),
(7, 'David', 'NIWEWE', NULL, 'davejuelz@gmail.com', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attribute`
--
ALTER TABLE `attribute`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blood`
--
ALTER TABLE `blood`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blood_type`
--
ALTER TABLE `blood_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `credentials`
--
ALTER TABLE `credentials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `donor`
--
ALTER TABLE `donor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exam`
--
ALTER TABLE `exam`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exam_result`
--
ALTER TABLE `exam_result`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feature`
--
ALTER TABLE `feature`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `image`
--
ALTER TABLE `image`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `institution`
--
ALTER TABLE `institution`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `privilege`
--
ALTER TABLE `privilege`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `privilege_grant`
--
ALTER TABLE `privilege_grant`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reference`
--
ALTER TABLE `reference`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `regional_centers`
--
ALTER TABLE `regional_centers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rhesus`
--
ALTER TABLE `rhesus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `schedule`
--
ALTER TABLE `schedule`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `site`
--
ALTER TABLE `site`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attribute`
--
ALTER TABLE `attribute`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;
--
-- AUTO_INCREMENT for table `blood`
--
ALTER TABLE `blood`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `blood_type`
--
ALTER TABLE `blood_type`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `credentials`
--
ALTER TABLE `credentials`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `donor`
--
ALTER TABLE `donor`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `exam`
--
ALTER TABLE `exam`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `exam_result`
--
ALTER TABLE `exam_result`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `feature`
--
ALTER TABLE `feature`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `image`
--
ALTER TABLE `image`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `institution`
--
ALTER TABLE `institution`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `privilege`
--
ALTER TABLE `privilege`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `privilege_grant`
--
ALTER TABLE `privilege_grant`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `reference`
--
ALTER TABLE `reference`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `regional_centers`
--
ALTER TABLE `regional_centers`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `rhesus`
--
ALTER TABLE `rhesus`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `schedule`
--
ALTER TABLE `schedule`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `site`
--
ALTER TABLE `site`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `subject`
--
ALTER TABLE `subject`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
