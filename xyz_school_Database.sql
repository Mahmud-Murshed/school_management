-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 06, 2023 at 09:39 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `xyz_school`
--

-- --------------------------------------------------------

--
-- Table structure for table `assign_students`
--

CREATE TABLE `assign_students` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `roll` int(11) DEFAULT NULL,
  `student_id` int(11) NOT NULL COMMENT 'user_id=student_id',
  `class_id` int(11) DEFAULT NULL,
  `year_id` int(11) DEFAULT NULL,
  `group_id` int(11) DEFAULT NULL,
  `shift_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `assign_students`
--

INSERT INTO `assign_students` (`id`, `roll`, `student_id`, `class_id`, `year_id`, `group_id`, `shift_id`, `created_at`, `updated_at`) VALUES
(12, 3, 21, 11, 5, 1, 1, '2021-09-06 10:02:42', '2021-09-06 10:05:47'),
(13, NULL, 25, 23, 5, 3, 1, '2022-09-04 21:44:07', '2022-09-04 21:44:07'),
(14, 1, 26, 15, 5, 1, 1, '2022-09-04 22:20:54', '2022-09-26 01:35:27'),
(15, 2, 27, 15, 5, NULL, 1, '2022-09-25 02:11:45', '2022-09-26 01:35:27'),
(16, 3, 28, 15, 5, NULL, 1, '2022-09-25 02:18:22', '2022-09-26 01:35:27'),
(17, 4, 29, 15, 5, NULL, 1, '2022-09-25 02:19:17', '2022-09-26 01:35:27'),
(18, 5, 30, 15, 5, NULL, 1, '2022-09-25 02:24:12', '2022-09-26 01:35:27'),
(19, NULL, 26, 15, 6, NULL, 1, '2022-09-26 01:07:12', '2022-09-26 01:07:12');

-- --------------------------------------------------------

--
-- Table structure for table `assign_subjects`
--

CREATE TABLE `assign_subjects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `class_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `full_mark` double NOT NULL,
  `pass_mark` double NOT NULL,
  `subjective_mark` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `assign_subjects`
--

INSERT INTO `assign_subjects` (`id`, `class_id`, `subject_id`, `full_mark`, `pass_mark`, `subjective_mark`, `created_at`, `updated_at`) VALUES
(21, 2, 1, 100, 33, 100, '2021-08-24 06:38:23', '2021-08-24 06:38:23'),
(22, 2, 2, 100, 33, 100, '2021-08-24 06:38:23', '2021-08-24 06:38:23'),
(23, 2, 3, 100, 33, 100, '2021-08-24 06:38:23', '2021-08-24 06:38:23'),
(24, 3, 1, 100, 33, 100, '2021-08-24 06:38:47', '2021-08-24 06:38:47'),
(25, 3, 2, 100, 33, 100, '2021-08-24 06:38:48', '2021-08-24 06:38:48'),
(26, 5, 4, 100, 33, 100, '2021-08-24 06:42:00', '2021-08-24 06:42:00'),
(27, 5, 1, 100, 33, 100, '2021-08-24 06:42:00', '2021-08-24 06:42:00'),
(28, 5, 2, 100, 33, 100, '2021-08-24 06:42:01', '2021-08-24 06:42:01'),
(29, 5, 3, 100, 33, 100, '2021-08-24 06:42:01', '2021-08-24 06:42:01'),
(30, 5, 5, 100, 33, 100, '2021-08-24 06:42:01', '2021-08-24 06:42:01'),
(35, 6, 2, 100, 33, 100, '2021-08-24 06:43:52', '2021-08-24 06:43:52'),
(36, 6, 1, 100, 33, 100, '2021-08-24 06:43:53', '2021-08-24 06:43:53'),
(37, 6, 3, 100, 33, 100, '2021-08-24 06:43:53', '2021-08-24 06:43:53'),
(38, 6, 4, 100, 33, 100, '2021-08-24 06:43:53', '2021-08-24 06:43:53'),
(39, 6, 5, 100, 33, 100, '2021-08-24 06:43:53', '2021-08-24 06:43:53');

-- --------------------------------------------------------

--
-- Table structure for table `designations`
--

CREATE TABLE `designations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `designations`
--

INSERT INTO `designations` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Assistant Teacher', '2021-06-18 04:36:35', '2021-06-18 04:40:39'),
(2, 'Teacher', '2021-06-18 04:37:03', '2021-06-18 04:37:03'),
(3, 'Head Teacher', '2021-06-18 04:40:49', '2021-06-18 04:40:49');

-- --------------------------------------------------------

--
-- Table structure for table `discount_students`
--

CREATE TABLE `discount_students` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `assign_student_id` int(11) NOT NULL,
  `fee_category_id` int(11) DEFAULT NULL,
  `discount` double DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `discount_students`
--

INSERT INTO `discount_students` (`id`, `assign_student_id`, `fee_category_id`, `discount`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 10, '2021-06-19 03:38:56', '2021-07-27 23:16:49'),
(2, 2, 1, 50, '2021-06-19 03:47:28', '2021-06-19 03:47:28'),
(3, 3, 1, 9283, '2021-06-19 09:06:37', '2021-06-19 09:06:37'),
(4, 4, 1, 100, '2021-06-20 00:44:04', '2021-06-20 00:44:04'),
(5, 5, 1, 0, '2021-06-20 00:47:46', '2021-06-20 00:47:46'),
(6, 6, 1, 20, '2021-07-26 21:19:07', '2021-07-26 21:19:07'),
(7, 7, 1, 9283, '2021-07-26 22:27:07', '2021-07-26 22:27:07'),
(8, 8, 1, 5, '2021-08-24 06:46:49', '2021-08-24 06:46:49'),
(9, 9, 1, 0, '2021-09-06 09:57:35', '2021-09-06 09:57:35'),
(10, 10, 1, 0, '2021-09-06 10:00:33', '2021-09-06 10:00:33'),
(11, 11, 1, 10, '2021-09-06 10:01:31', '2021-09-06 10:01:31'),
(12, 12, 1, 23, '2021-09-06 10:02:42', '2021-09-06 10:02:42'),
(13, 13, 1, 10, '2022-09-04 21:44:07', '2022-09-04 21:44:07'),
(14, 14, 1, 10, '2022-09-04 22:20:54', '2022-09-04 22:20:54'),
(15, 15, 1, 10, '2022-09-25 02:11:45', '2022-09-25 02:11:45'),
(16, 16, 1, 10, '2022-09-25 02:18:22', '2022-09-25 02:18:22'),
(17, 17, 1, 10, '2022-09-25 02:19:17', '2022-09-25 02:19:17'),
(18, 18, 1, 10, '2022-09-25 02:24:12', '2022-09-25 02:24:12'),
(19, 19, 1, 10, '2022-09-26 01:07:12', '2022-09-26 01:07:12');

-- --------------------------------------------------------

--
-- Table structure for table `exam_types`
--

CREATE TABLE `exam_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `exam_types`
--

INSERT INTO `exam_types` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'First Terminal Examination', '2021-06-17 07:47:35', '2021-08-24 06:32:49'),
(2, 'Second Terminal Examination', '2021-06-17 07:48:27', '2021-08-24 06:33:02'),
(3, 'Final Examination', '2021-08-24 06:32:20', '2021-08-24 06:32:20');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fee_categories`
--

CREATE TABLE `fee_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fee_categories`
--

INSERT INTO `fee_categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Registration fee', '2021-06-15 04:58:32', '2021-06-15 05:02:35'),
(2, 'Monthly fee', '2021-06-15 05:10:34', '2021-06-15 05:10:42'),
(3, 'Exam Fee', '2021-06-15 06:48:09', '2021-06-15 06:48:09');

-- --------------------------------------------------------

--
-- Table structure for table `fee_category_amounts`
--

CREATE TABLE `fee_category_amounts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fee_category_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `amount` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fee_category_amounts`
--

INSERT INTO `fee_category_amounts` (`id`, `fee_category_id`, `class_id`, `amount`, `created_at`, `updated_at`) VALUES
(53, 1, 15, 1000, '2022-09-04 21:40:17', '2022-09-04 21:40:17'),
(54, 1, 16, 1500, '2022-09-04 21:40:17', '2022-09-04 21:40:17'),
(55, 1, 17, 2000, '2022-09-04 21:40:17', '2022-09-04 21:40:17'),
(56, 1, 18, 2200, '2022-09-04 21:40:17', '2022-09-04 21:40:17'),
(57, 1, 19, 2500, '2022-09-04 21:40:17', '2022-09-04 21:40:17'),
(58, 2, 15, 1000, '2022-09-04 21:40:44', '2022-09-04 21:40:44'),
(59, 2, 16, 1300, '2022-09-04 21:40:44', '2022-09-04 21:40:44'),
(60, 2, 17, 1500, '2022-09-04 21:40:44', '2022-09-04 21:40:44'),
(61, 2, 18, 1700, '2022-09-04 21:40:44', '2022-09-04 21:40:44'),
(62, 2, 19, 2000, '2022-09-04 21:40:44', '2022-09-04 21:40:44'),
(63, 3, 15, 200, '2022-09-04 21:41:07', '2022-09-04 21:41:07'),
(64, 3, 16, 300, '2022-09-04 21:41:08', '2022-09-04 21:41:08'),
(65, 3, 17, 400, '2022-09-04 21:41:08', '2022-09-04 21:41:08'),
(66, 3, 18, 500, '2022-09-04 21:41:08', '2022-09-04 21:41:08'),
(67, 3, 19, 600, '2022-09-04 21:41:08', '2022-09-04 21:41:08');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(8, '2021_06_03_124419_create_sliders_table', 6),
(17, '2021_06_14_152508_create_student_classes_table', 7),
(18, '2021_06_15_085602_create_years_table', 8),
(19, '2021_06_15_093449_create_student_groups_table', 9),
(20, '2021_06_15_100045_create_student_shifts_table', 10),
(21, '2021_06_15_104430_create_fee_categories_table', 11),
(22, '2021_06_15_115958_create_fee_category_amounts_table', 12),
(23, '2021_06_17_133300_create_exam_types_table', 13),
(24, '2021_06_17_150532_create_subjects_table', 14),
(25, '2021_06_17_153401_create_assign_subjects_table', 15),
(26, '2021_06_18_102105_create_designations_table', 16),
(28, '2014_10_12_000000_create_users_table', 17),
(29, '2021_06_18_130324_create_assign_students_table', 18),
(30, '2021_06_18_130849_create_discount_students_table', 18),
(31, '2021_08_25_055603_create_student_marks_table', 19);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `short_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `long_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `image`, `short_title`, `long_title`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(5, '20210605063620180404_083744.jpg', 'First Slide', 'This is our first slide', 22, NULL, '2021-06-05 00:36:24', '2021-06-05 00:36:24'),
(6, '20210614071020171111_065804.jpg', 'second slider', 'scond slider long title is this', 22, NULL, '2021-06-14 01:10:55', '2021-06-14 01:10:55');

-- --------------------------------------------------------

--
-- Table structure for table `student_classes`
--

CREATE TABLE `student_classes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `student_classes`
--

INSERT INTO `student_classes` (`id`, `name`, `created_at`, `updated_at`) VALUES
(15, 'one', '2022-09-04 21:37:22', '2022-09-04 21:37:22'),
(16, 'two', '2022-09-04 21:37:30', '2022-09-04 21:37:30'),
(17, 'Three', '2022-09-04 21:37:40', '2022-09-04 21:37:40'),
(18, 'Four', '2022-09-04 21:37:48', '2022-09-04 21:37:48'),
(19, 'Five', '2022-09-04 21:37:56', '2022-09-04 21:37:56'),
(20, 'Six', '2022-09-04 21:38:03', '2022-09-04 21:38:03'),
(21, 'Seven', '2022-09-04 21:38:19', '2022-09-04 21:38:19'),
(22, 'Eight', '2022-09-04 21:38:26', '2022-09-04 21:38:26'),
(23, 'Nine', '2022-09-04 21:38:31', '2022-09-04 21:38:31'),
(24, 'Ten', '2022-09-04 21:38:36', '2022-09-04 21:38:36'),
(25, 'Eleven', '2022-09-04 21:38:45', '2022-09-04 21:38:45'),
(26, '11', '2022-09-04 22:17:24', '2022-09-04 22:17:24');

-- --------------------------------------------------------

--
-- Table structure for table `student_groups`
--

CREATE TABLE `student_groups` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `student_groups`
--

INSERT INTO `student_groups` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Commerce', '2021-06-15 03:46:40', '2021-06-15 03:51:39'),
(2, 'Arts', '2021-06-15 03:52:09', '2021-06-15 03:52:09'),
(3, 'Science', '2021-06-15 03:52:26', '2021-06-15 03:52:26');

-- --------------------------------------------------------

--
-- Table structure for table `student_marks`
--

CREATE TABLE `student_marks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `student_id` int(11) NOT NULL COMMENT 'student_id=user_id',
  `id_no` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `year_id` int(11) DEFAULT NULL,
  `class_id` int(11) DEFAULT NULL,
  `assign_subject_id` int(11) DEFAULT NULL,
  `exam_type_id` int(11) DEFAULT NULL,
  `marks` double DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `student_marks`
--

INSERT INTO `student_marks` (`id`, `student_id`, `id_no`, `year_id`, `class_id`, `assign_subject_id`, `exam_type_id`, `marks`, `created_at`, `updated_at`) VALUES
(3, 9, '20210008', 4, 2, 21, 1, 99, '2021-08-25 09:36:39', '2021-08-25 09:36:39'),
(5, 4, '20190001', 3, 3, 24, 1, 80, '2021-08-25 22:40:21', '2021-08-25 22:40:21');

-- --------------------------------------------------------

--
-- Table structure for table `student_shifts`
--

CREATE TABLE `student_shifts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `student_shifts`
--

INSERT INTO `student_shifts` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Morning', '2021-06-15 04:11:25', '2021-06-15 04:18:58'),
(2, 'Day', '2021-06-15 04:13:08', '2021-06-15 04:13:33'),
(3, 'Night', '2021-08-25 22:34:17', '2021-08-25 22:34:17');

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Bangla', '2021-06-17 09:16:37', '2021-08-24 06:36:14'),
(2, 'English', '2021-06-17 09:16:56', '2021-08-24 06:36:19'),
(3, 'Mathematics', '2021-06-17 09:20:01', '2021-08-24 06:35:56'),
(4, 'Social Science', '2021-06-17 09:46:23', '2021-08-24 06:36:09'),
(5, 'General Science', '2021-08-24 06:36:33', '2021-08-24 06:36:33'),
(6, 'Religious Studies', '2021-08-24 06:36:57', '2021-08-24 06:41:01'),
(7, 'Physical Education', '2021-08-24 06:37:25', '2021-08-24 06:41:17'),
(8, 'Higher Math', '2022-09-25 02:03:49', '2022-09-25 02:03:49');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `usertype` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'student,employee,admin',
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fname` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mname` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `religion` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_no` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'admin=head of software,operator=computer operator,user=employee',
  `join_date` date DEFAULT NULL,
  `designation_id` int(11) DEFAULT NULL,
  `salary` double DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '0=inactive,1=active',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `usertype`, `name`, `email`, `email_verified_at`, `password`, `mobile`, `address`, `gender`, `image`, `fname`, `mname`, `religion`, `id_no`, `dob`, `code`, `role`, `join_date`, `designation_id`, `salary`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(16, 'Admin', 'Mahmud', 'mahmud@gmail.com', NULL, '$2y$10$eowL9hEiwQHjaadORD6/0.UXw7IFvJ70/sQ9ktbZ0cM2luFZs80Qa', NULL, NULL, 'male', '202209050323images.jpg', NULL, NULL, NULL, NULL, NULL, '5781', 'Admin', NULL, NULL, NULL, 1, NULL, '2021-08-25 22:20:58', '2022-09-04 21:24:10'),
(22, 'Admin', 'murshed', 'murshed@gmail.com', NULL, '$2y$10$WmUgpk614wN8g15xOozoR.LT/F6jFxUjzy0NjAmgdAB4I2WL8tCuG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3767', 'Admin', NULL, NULL, NULL, 1, NULL, '2022-09-04 21:20:34', '2022-09-04 21:20:34'),
(24, 'Operator', 'babu', 'babu@gmail.com', NULL, '$2y$10$NGSZ2ZePUwd80bBoU0FvN.vqMrTribvWBQ40kl9qzWnw/PlJo.vlG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '8014', 'Operator', NULL, NULL, NULL, 1, NULL, '2022-09-04 21:34:31', '2022-09-04 21:34:31'),
(25, 'student', 'xy', NULL, NULL, '$2y$10$CJB8WrgXYBV418z17IWVXebpG3iGRYX1ytS0vkNraNnofcw/NDB2W', '01717271464', 'Thana: Niamatpur', 'Male', NULL, 'Ontor', 'Onamika', 'Islam', '20220001', NULL, '6524', NULL, NULL, NULL, NULL, 1, NULL, '2022-09-04 21:44:07', '2022-09-04 21:44:07'),
(26, 'student', 'uu', NULL, NULL, '$2y$10$kvctdpuuHxItF6JW3QsibOXGnxFXAT9Hf.n08qTNWHs9gfI8QmTdS', '01717271464', 'Thana: Niamatpur', 'Male', NULL, 'oo', 'pp', 'Islam', '20220026', NULL, '6218', NULL, NULL, NULL, NULL, 1, NULL, '2022-09-04 22:20:54', '2022-09-04 22:20:54'),
(27, 'student', 'Mihadu', NULL, NULL, '$2y$10$kxDBTY48Zgzc4gE1gSk97OxPVPxDmu2dupHfxBOc.F34qrzwjO5Su', '01717271464', 'Thana: Niamatpur', 'Male', NULL, 'abdullah', 'mahmuda', 'Islam', '20220027', NULL, '9240', NULL, NULL, NULL, NULL, 1, NULL, '2022-09-25 02:11:45', '2022-09-25 02:20:48'),
(28, 'student', 'mihad', NULL, NULL, '$2y$10$FJh7vHkkgHYmbpFEAzqho.0l69M6M3ZiG6CuIzuYrwHhTIoC564jG', '01717271464', 'Thana: Niamatpur', 'Male', NULL, 'abdullah', 'mahmuda', 'Islam', '20220028', NULL, '771', NULL, NULL, NULL, NULL, 1, NULL, '2022-09-25 02:18:22', '2022-09-25 02:18:22'),
(29, 'student', 'mahmudi', NULL, NULL, '$2y$10$Q5HjBnvJW1NwmyXNKENsS.GeAs9F9jyk7Ito1KAMf.Qjzc6sasQWe', '01717271464', 'Thana: Niamatpur', 'Male', NULL, 'abdullah', 'mahmuda', 'Islam', '20220029', NULL, '1669', NULL, NULL, NULL, NULL, 1, NULL, '2022-09-25 02:19:17', '2022-09-25 02:20:39'),
(30, 'student', 'mahmudul', NULL, NULL, '$2y$10$YWdYxnIBXAjl/l5pn4hqWutII3fNVtyY2VuvXqIIbXtYX2VG7cgiO', '01717271464', 'Thana: Niamatpur', 'Male', NULL, 'abdullah', 'mahmuda', 'Islam', '20220030', NULL, '617', NULL, NULL, NULL, NULL, 1, NULL, '2022-09-25 02:24:12', '2022-09-25 02:24:38'),
(31, 'Operator', 'karim', 'karim@gmail.com', NULL, '$2y$10$b2oJyEdR31zIF3SZRZmPOuDGYl4s/Bju46by2EFHnybz.Ri2Zf266', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4619', 'Operator', NULL, NULL, NULL, 1, NULL, '2022-09-26 01:16:33', '2022-09-26 01:16:33'),
(32, 'Admin', 'karimm', 'karimm@gmail.com', NULL, '$2y$10$.7b/WuZ0wM2rMxaA2t0BZ.Z4vEOub6AJnKxKEGo.lRSkR6SxnnSz.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1792', 'Admin', NULL, NULL, NULL, 1, NULL, '2022-09-26 01:17:02', '2022-09-26 01:17:02');

-- --------------------------------------------------------

--
-- Table structure for table `years`
--

CREATE TABLE `years` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `years`
--

INSERT INTO `years` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, '2019', '2021-06-15 03:14:26', '2021-06-18 10:21:51'),
(3, '2020', '2021-06-18 10:21:57', '2021-06-18 10:21:57'),
(4, '2021', '2021-08-24 06:25:21', '2021-08-24 06:25:21'),
(5, '2022', '2021-08-25 22:23:26', '2021-08-25 22:23:26'),
(6, '2023', '2022-09-26 01:04:57', '2022-09-26 01:04:57');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `assign_students`
--
ALTER TABLE `assign_students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `assign_subjects`
--
ALTER TABLE `assign_subjects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `designations`
--
ALTER TABLE `designations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `designations_name_unique` (`name`);

--
-- Indexes for table `discount_students`
--
ALTER TABLE `discount_students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exam_types`
--
ALTER TABLE `exam_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `exam_types_name_unique` (`name`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fee_categories`
--
ALTER TABLE `fee_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `fee_categories_name_unique` (`name`);

--
-- Indexes for table `fee_category_amounts`
--
ALTER TABLE `fee_category_amounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_classes`
--
ALTER TABLE `student_classes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `student_classes_name_unique` (`name`);

--
-- Indexes for table `student_groups`
--
ALTER TABLE `student_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `student_groups_name_unique` (`name`);

--
-- Indexes for table `student_marks`
--
ALTER TABLE `student_marks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_shifts`
--
ALTER TABLE `student_shifts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `student_shifts_name_unique` (`name`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `subjects_name_unique` (`name`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `years`
--
ALTER TABLE `years`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `years_name_unique` (`name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `assign_students`
--
ALTER TABLE `assign_students`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `assign_subjects`
--
ALTER TABLE `assign_subjects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `designations`
--
ALTER TABLE `designations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `discount_students`
--
ALTER TABLE `discount_students`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `exam_types`
--
ALTER TABLE `exam_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fee_categories`
--
ALTER TABLE `fee_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `fee_category_amounts`
--
ALTER TABLE `fee_category_amounts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `student_classes`
--
ALTER TABLE `student_classes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `student_groups`
--
ALTER TABLE `student_groups`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `student_marks`
--
ALTER TABLE `student_marks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `student_shifts`
--
ALTER TABLE `student_shifts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `years`
--
ALTER TABLE `years`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
