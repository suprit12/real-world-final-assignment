-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 16, 2020 at 06:22 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `modernweb`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add haircut', 7, 'add_haircut'),
(26, 'Can change haircut', 7, 'change_haircut'),
(27, 'Can delete haircut', 7, 'delete_haircut'),
(28, 'Can view haircut', 7, 'view_haircut'),
(29, 'Can add home content', 8, 'add_homecontent'),
(30, 'Can change home content', 8, 'change_homecontent'),
(31, 'Can delete home content', 8, 'delete_homecontent'),
(32, 'Can view home content', 8, 'view_homecontent'),
(33, 'Can add feedback', 9, 'add_feedback'),
(34, 'Can change feedback', 9, 'change_feedback'),
(35, 'Can delete feedback', 9, 'delete_feedback'),
(36, 'Can view feedback', 9, 'view_feedback'),
(37, 'Can add bookings', 10, 'add_bookings'),
(38, 'Can change bookings', 10, 'change_bookings'),
(39, 'Can delete bookings', 10, 'delete_bookings'),
(40, 'Can view bookings', 10, 'view_bookings');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$180000$xYZBiwBjihR6$3m53LIvThZ23DEmR21ylwYK99U35zpNaRAcCBLa0Xwc=', '2020-02-15 17:50:45.987325', 1, 'lenovo', '', '', 'suprit.sharma11@gmail.com', 1, 1, '2020-02-15 10:02:06.178329'),
(2, 'pbkdf2_sha256$180000$EFaOpHrv3yxM$vSC4MRCH9TXj/+i+hKgncYyDlEcmv6BgP8IPm6yzX/Y=', NULL, 0, 'suprit', '', '', 'suprit@gmail.com', 0, 1, '2020-02-16 09:34:24.699853'),
(3, 'pbkdf2_sha256$180000$czcChdK14Qkw$9RS95iCAd1id1jCBqfFVL1E29ZUjd+bxhkciWcpcTZo=', NULL, 0, 'sup', '', '', 'sup@gmail.com', 0, 1, '2020-02-16 10:07:00.733042'),
(4, 'pbkdf2_sha256$180000$qmOERQ6Prcvk$DwlQBhGqVvVaL6Hp1RwwKr6K9oNzilwQ31LQCOZb7Ck=', NULL, 0, 'adfsd', '', '', 'zdvxbv@gmail.com', 0, 1, '2020-02-16 11:00:33.108304'),
(5, 'pbkdf2_sha256$180000$d3fEXfbuDc9d$hGbYw7uZ80JMYgU56DXmJ9GS6K9RTJ30NUTKywd56+s=', NULL, 0, 'qwerty', '', '', 'wer@gmail.com', 0, 1, '2020-02-16 11:58:44.680564'),
(7, 'pbkdf2_sha256$180000$WMNeT9OSoACs$QYsqTMzF1+N9Lyt7q6UgO42azDgftt1bY6y9SkCIUNA=', '2020-02-16 12:08:51.048875', 0, 'suprit1', '', '', 'sljvbh@ksdfn', 0, 1, '2020-02-16 12:08:42.412871'),
(8, 'pbkdf2_sha256$180000$mFx4c2C8KyNl$2WRTid/kG6TTLhFK/3FgP15r9AJRYYJpGWByfBk9F0s=', '2020-02-16 12:09:45.578574', 0, 'supr', '', '', 'qwe@gmail.com', 0, 1, '2020-02-16 12:09:34.297452');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2020-02-15 10:05:00.098748', '1', 'Haircut object (1)', 1, '[{\"added\": {}}]', 7, 1),
(2, '2020-02-15 10:42:38.105506', '1', 'Haircut object (1)', 2, '[{\"changed\": {\"fields\": [\"Image\", \"Detail\"]}}]', 7, 1),
(3, '2020-02-15 13:53:28.016902', '1', 'HomeContent object (1)', 1, '[{\"added\": {}}]', 8, 1),
(4, '2020-02-15 13:59:19.164840', '1', 'HomeContent object (1)', 2, '[]', 8, 1),
(5, '2020-02-15 14:06:30.753716', '2', 'HomeContent object (2)', 1, '[{\"added\": {}}]', 8, 1),
(6, '2020-02-15 15:06:36.023104', '1', 'Haircut object (1)', 1, '[{\"added\": {}}]', 7, 1),
(7, '2020-02-15 15:07:50.650174', '2', 'Haircut object (2)', 1, '[{\"added\": {}}]', 7, 1),
(8, '2020-02-15 15:09:19.626922', '1', 'HomeContent object (1)', 1, '[{\"added\": {}}]', 8, 1),
(9, '2020-02-15 15:09:42.383129', '2', 'HomeContent object (2)', 1, '[{\"added\": {}}]', 8, 1),
(10, '2020-02-15 16:18:21.030633', '1', 'Haircut object (1)', 1, '[{\"added\": {}}]', 7, 1),
(11, '2020-02-15 17:46:45.198731', '2', 'Haircut object (2)', 1, '[{\"added\": {}}]', 7, 1),
(12, '2020-02-15 17:47:08.088964', '2', 'Haircut object (2)', 2, '[{\"changed\": {\"fields\": [\"Heading\"]}}]', 7, 1),
(13, '2020-02-16 08:50:28.953015', '3', 'Haircut object (3)', 1, '[{\"added\": {}}]', 7, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(10, 'moduleA7', 'bookings'),
(9, 'moduleA7', 'feedback'),
(7, 'moduleA7', 'haircut'),
(8, 'moduleA7', 'homecontent'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2020-02-15 09:58:25.177932'),
(2, 'auth', '0001_initial', '2020-02-15 09:58:26.873262'),
(3, 'admin', '0001_initial', '2020-02-15 09:58:36.833077'),
(4, 'admin', '0002_logentry_remove_auto_add', '2020-02-15 09:58:39.598710'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2020-02-15 09:58:39.658021'),
(6, 'contenttypes', '0002_remove_content_type_name', '2020-02-15 09:58:40.481636'),
(7, 'auth', '0002_alter_permission_name_max_length', '2020-02-15 09:58:41.361688'),
(8, 'auth', '0003_alter_user_email_max_length', '2020-02-15 09:58:41.484558'),
(9, 'auth', '0004_alter_user_username_opts', '2020-02-15 09:58:41.527689'),
(10, 'auth', '0005_alter_user_last_login_null', '2020-02-15 09:58:42.157027'),
(11, 'auth', '0006_require_contenttypes_0002', '2020-02-15 09:58:42.184861'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2020-02-15 09:58:42.228732'),
(13, 'auth', '0008_alter_user_username_max_length', '2020-02-15 09:58:42.322851'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2020-02-15 09:58:42.444381'),
(15, 'auth', '0010_alter_group_name_max_length', '2020-02-15 09:58:42.549075'),
(16, 'auth', '0011_update_proxy_permissions', '2020-02-15 09:58:42.592823'),
(18, 'sessions', '0001_initial', '2020-02-15 09:58:43.180159'),
(22, 'moduleA7', '0001_initial', '2020-02-15 15:03:31.596822'),
(23, 'moduleA7', '0002_feedback', '2020-02-15 15:12:20.681953'),
(24, 'moduleA7', '0003_delete_haircut', '2020-02-15 16:14:52.480993'),
(25, 'moduleA7', '0004_haircut', '2020-02-15 16:16:27.124168'),
(26, 'moduleA7', '0005_bookings', '2020-02-15 17:09:16.129389');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `modulea7_bookings`
--

CREATE TABLE `modulea7_bookings` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `haircut` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `modulea7_bookings`
--

INSERT INTO `modulea7_bookings` (`id`, `name`, `phone`, `email`, `haircut`) VALUES
(4, 'dasfsdfsa', '464', 'asfsdf@gmail.com', 'uhsdbds'),
(5, 'ajkb', '987764', 'piudfv@a6ysdg', 'szad');

-- --------------------------------------------------------

--
-- Table structure for table `modulea7_feedback`
--

CREATE TABLE `modulea7_feedback` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `message` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `modulea7_feedback`
--

INSERT INTO `modulea7_feedback` (`id`, `name`, `phone`, `email`, `message`) VALUES
(1, 'LICjb', 'zoc;vbn', 'oxidfu@lzdfjb', 'lzdfjvblaifvbpidfubadfuvb'),
(2, 'xpfign', 'a;odfbn', 'xlcjb@zlkcvj', 'zkjcbvladfjbpidvfuv'),
(3, 'sdfa', '', '', ''),
(4, 'dasfsdf', '464', 'asfsdf@gmail.com', 'asfasf'),
(5, 'hghgk', '464', 'asfsdf@gmail.com', 'asd'),
(6, 'asdasd', '987764', 'piudfv@a6ysdg', 'asdasd');

-- --------------------------------------------------------

--
-- Table structure for table `modulea7_haircut`
--

CREATE TABLE `modulea7_haircut` (
  `id` int(11) NOT NULL,
  `image` varchar(100) NOT NULL,
  `heading` varchar(255) NOT NULL,
  `detail` longtext NOT NULL,
  `price` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `modulea7_haircut`
--

INSERT INTO `modulea7_haircut` (`id`, `image`, `heading`, `detail`, `price`) VALUES
(1, 'img_3.jpg', 'Crew Cut', 'A crew cut is a type of haircut in which the upright hair on the top of the head is cut relatively short, graduated in length from the longest hair that forms a short pomp (pompadour) at the front hairline to the shortest at the back of the crown so that in side profile, the outline of the top hair approaches the horizontal.', 20),
(2, 'img_7.jpg', 'Dreadlock', 'Hair color is the pigmentation of hair follicles due to two types of melanin: eumelanin and pheomelanin. Generally, if more eumelanin is present, the color of the hair is darker; if less eumelanin is present, the hair is lighter.', 30),
(3, 'img_1_dFCJwaw.jpg', 'Beard and Shaving', 'However, there are the rare certain times in life where shaving your beard is just as important as growing one. so we provide you the best beard and shaving in the town.', 15);

-- --------------------------------------------------------

--
-- Table structure for table `modulea7_homecontent`
--

CREATE TABLE `modulea7_homecontent` (
  `id` int(11) NOT NULL,
  `serviceHead` varchar(255) NOT NULL,
  `servicesDetail` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `modulea7_homecontent`
--

INSERT INTO `modulea7_homecontent` (`id`, `serviceHead`, `servicesDetail`) VALUES
(1, 'Mustache Expert', 'Wondering how to get the perfect style for your mustache? Here\'s how to do it.'),
(2, 'Haircut Styler', 'Hairstyle Changer is a hairstyle app for girls to try out various trending hairstyles. It is a one stop to get hairstyles ideas. A trending hairstyle game for girls to try different hairstyles by placing it on their face');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `modulea7_bookings`
--
ALTER TABLE `modulea7_bookings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `modulea7_feedback`
--
ALTER TABLE `modulea7_feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `modulea7_haircut`
--
ALTER TABLE `modulea7_haircut`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `modulea7_homecontent`
--
ALTER TABLE `modulea7_homecontent`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `modulea7_bookings`
--
ALTER TABLE `modulea7_bookings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `modulea7_feedback`
--
ALTER TABLE `modulea7_feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `modulea7_haircut`
--
ALTER TABLE `modulea7_haircut`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `modulea7_homecontent`
--
ALTER TABLE `modulea7_homecontent`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
