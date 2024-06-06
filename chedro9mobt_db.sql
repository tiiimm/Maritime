-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 06, 2024 at 09:42 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `chedro9mobt_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `ched_staffs`
--

CREATE TABLE `ched_staffs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `position` varchar(255) NOT NULL,
  `regional_office_assigned` varchar(255) NOT NULL,
  `birthdate` date NOT NULL,
  `contact_number` varchar(255) NOT NULL,
  `top_level_access` tinyint(1) NOT NULL DEFAULT 0,
  `created_by` bigint(20) UNSIGNED NOT NULL,
  `updated_by` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ched_staffs`
--

INSERT INTO `ched_staffs` (`id`, `user_id`, `position`, `regional_office_assigned`, `birthdate`, `contact_number`, `top_level_access`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 2, 'staff', 'region IX', '1998-09-23', '09606695349', 1, 1, 1, '2024-05-03 05:41:53', '2024-05-03 05:41:53');

-- --------------------------------------------------------

--
-- Table structure for table `competencies`
--

CREATE TABLE `competencies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `function_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

CREATE TABLE `files` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `file_type` varchar(255) NOT NULL,
  `uploader` bigint(20) UNSIGNED NOT NULL,
  `recepient` bigint(20) UNSIGNED NOT NULL,
  `link` varchar(255) NOT NULL,
  `created_by` bigint(20) UNSIGNED NOT NULL,
  `updated_by` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `files`
--

INSERT INTO `files` (`id`, `name`, `description`, `file_type`, `uploader`, `recepient`, `link`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'CSS', NULL, 'CSS', 4, 6, 'https://res.cloudinary.com/darla3bck/image/upload/v1714719588/CSS.jpg', 4, 4, '2024-05-03 06:59:49', '2024-05-03 06:59:49');

-- --------------------------------------------------------

--
-- Table structure for table `functions`
--

CREATE TABLE `functions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `description` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `marina_staffs`
--

CREATE TABLE `marina_staffs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `birthdate` date NOT NULL,
  `gender` varchar(255) NOT NULL,
  `contact_number` varchar(255) NOT NULL,
  `position` varchar(255) NOT NULL,
  `top_level_access` tinyint(1) NOT NULL DEFAULT 0,
  `created_by` bigint(20) UNSIGNED NOT NULL,
  `updated_by` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `maritime_programs`
--

CREATE TABLE `maritime_programs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `mhei_id` bigint(20) UNSIGNED NOT NULL,
  `course` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'OFFERED',
  `created_by` bigint(20) UNSIGNED NOT NULL,
  `updated_by` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `maritime_programs`
--

INSERT INTO `maritime_programs` (`id`, `mhei_id`, `course`, `description`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 1, 'BSMT', 'Bachelor of Science in Marine Transportation', 'OFFERED', 3, 3, '2024-05-03 06:31:45', '2024-05-03 06:31:45');

-- --------------------------------------------------------

--
-- Table structure for table `mheis`
--

CREATE TABLE `mheis` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `institutional_code` varchar(255) NOT NULL,
  `school_name` varchar(255) NOT NULL,
  `school_type` varchar(255) NOT NULL,
  `region` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `contact_number` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'ENABLED',
  `logo` varchar(255) DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED NOT NULL,
  `updated_by` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mheis`
--

INSERT INTO `mheis` (`id`, `institutional_code`, `school_name`, `school_type`, `region`, `address`, `email`, `contact_number`, `status`, `logo`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, '9096', 'Our Lady of Triumph Institute of Technology Incorporated', 'PUBLIC', 'IX', 'Purok Tugas, Balangasan District, Pagadian City', 'ourladyoftriumphpagadian@olt.edu.pj', '(088)9256677', 'ENABLED', 'http://res.cloudinary.com/darla3bck/image/upload/v1714715490/ns4fk9jnkhxsyoedqufe.jpg', 2, 2, '2024-05-03 05:51:30', '2024-05-03 05:51:30'),
(2, '999999', 'ZPPSU', 'PUBLIC', 'IX', 'Baliwasan, Zamboanga City', 'onrubia.fatima98@gmail.com', '09128888888', 'ENABLED', '', 2, 2, '2024-05-07 05:39:35', '2024-05-07 05:39:35');

-- --------------------------------------------------------

--
-- Table structure for table `mhei_staffs`
--

CREATE TABLE `mhei_staffs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `mhei_id` bigint(20) UNSIGNED NOT NULL,
  `birthdate` date DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `contact_number` varchar(255) DEFAULT NULL,
  `position` varchar(255) DEFAULT NULL,
  `educational_background` varchar(255) DEFAULT NULL,
  `top_level_access` tinyint(1) NOT NULL DEFAULT 0,
  `created_by` bigint(20) UNSIGNED NOT NULL,
  `updated_by` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mhei_staffs`
--

INSERT INTO `mhei_staffs` (`id`, `user_id`, `mhei_id`, `birthdate`, `gender`, `contact_number`, `position`, `educational_background`, `top_level_access`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 3, 1, NULL, 'MALE', '(088)9256677', NULL, NULL, 1, 2, 2, '2024-05-03 05:51:30', '2024-05-03 05:51:30'),
(2, 14, 2, NULL, NULL, '09128888888', NULL, NULL, 1, 2, 2, '2024-05-07 05:39:36', '2024-05-07 05:39:36');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(2, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(3, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(4, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(5, '2016_06_01_000004_create_oauth_clients_table', 1),
(6, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(7, '2019_08_19_000000_create_failed_jobs_table', 1),
(8, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(9, '2023_11_14_035200_create_roles_table', 1),
(10, '2023_11_14_035225_create_users_table', 1),
(11, '2023_11_14_035308_create_mheis_table', 1),
(12, '2023_11_14_035403_create_mhei_staffs_table', 1),
(13, '2023_11_14_035435_create_martime_programs_table', 1),
(14, '2023_11_14_035452_create_files_table', 1),
(15, '2023_11_16_035732_create_students_table', 1),
(16, '2023_11_16_035753_create_shipping_companies_table', 1),
(17, '2023_11_16_035810_create_shipping_company_staffs_table', 1),
(18, '2023_11_16_035820_create_vessels_table', 1),
(19, '2023_11_16_035919_create_vessel_staffs_table', 1),
(20, '2023_11_16_035946_create_pcg_staffs_table', 1),
(21, '2023_11_16_040002_create_ched_staffs_table', 1),
(22, '2023_11_16_125259_create_marina_staffs_table', 1),
(23, '2024_02_04_183138_create_obt_applications_table', 1),
(24, '2024_02_19_075231_add_logo_to_mheis_table', 1),
(25, '2024_02_19_075449_add_logo_to_shipping_companies_table', 1),
(26, '2024_02_19_075529_add_image_to_vessels_table', 1),
(27, '2024_02_27_073152_create_supervisors_table', 1),
(28, '2024_02_27_074611_create_student_vessels_table', 1),
(29, '2024_02_27_074659_create_voyages_table', 1),
(30, '2024_04_08_073846_add_region_to_shipping_companies_table', 1),
(31, '2024_04_08_075839_add_port_of_registry_to_vessels_table', 1),
(32, '2024_04_08_095914_create_functions_table', 1),
(33, '2024_04_08_095925_create_competencies_table', 1),
(34, '2024_04_08_100003_create_sub_competencies_table', 1),
(35, '2024_04_08_100009_create_tasks_table', 1),
(36, '2024_04_08_110513_create_student_attendances_table', 1),
(37, '2024_04_08_110518_create_student_tasks_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `scopes` text DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('00a29db5308072c2d1c257247ffd93c37f7c9a744c6672ad2570966fc6e36ef44ed3efe5bdf0d659', 11, 1, 'LaravelPasswordGrantClient', '[]', 1, '2024-05-06 01:18:55', '2024-05-06 01:21:26', '2025-05-06 09:18:55'),
('0b6d0064dae121bdd19a40017c993001406bd5aa3f75a89f800deffd6ebaabb8640cf6d47ece312c', 4, 1, 'LaravelPasswordGrantClient', '[]', 1, '2024-05-03 06:30:37', '2024-05-03 06:38:21', '2025-05-03 14:30:37'),
('0d9a2e2e8d2d1f84f77fc3a12d9bfe033c21b55e0ddf0af01437bfc674c59cdd354b35eb9e0d80ff', 2, 1, 'LaravelPasswordGrantClient', '[]', 1, '2024-05-03 05:46:47', '2024-05-03 06:30:15', '2025-05-03 13:46:47'),
('221e5b322d06a70b0cd0b576336ef38c06a42cdfcaef50c1dd3733e61d75f9777d33c1fb5027b25c', 2, 1, 'LaravelPasswordGrantClient', '[]', 1, '2024-05-03 07:02:42', '2024-05-03 07:04:51', '2025-05-03 15:02:42'),
('23b5618eac21c154c615561e8eb1bbf4071b5b86a4e4cd2b99ce35b49999be8b387b641c5dd44dd4', 2, 1, 'LaravelPasswordGrantClient', '[]', 1, '2024-05-05 23:39:27', '2024-05-06 00:24:52', '2025-05-06 07:39:27'),
('2896ed3f5b5db794a7db0755ebf396713530da06c8cfc480220fff85c244befe48769b906eb64f7e', 3, 1, 'LaravelPasswordGrantClient', '[]', 1, '2024-05-06 01:32:44', '2024-05-06 01:32:47', '2025-05-06 09:32:44'),
('37547f7660ef0a666ec1b4098b00e1e322535c74562034b74f6d347bcd721eb34f1986a060e5cfbf', 2, 1, 'LaravelPasswordGrantClient', '[]', 0, '2024-05-07 05:38:13', '2024-05-07 05:38:14', '2025-05-07 13:38:13'),
('4d2ce47ed431852905e40b013aa4c51300ff254d928b00bba38b3b3600bdb1b1a6a148ffa6f9d812', 4, 1, 'LaravelPasswordGrantClient', '[]', 1, '2024-05-03 06:52:31', '2024-05-03 07:01:51', '2025-05-03 14:52:31'),
('4e097f0d221fb4ab99d4c286e220908d4a40aaf7d462075bc6e3f4ac63070d5b8d3d3a01455506dc', 2, 1, 'LaravelPasswordGrantClient', '[]', 1, '2024-05-03 06:38:42', '2024-05-03 06:51:56', '2025-05-03 14:38:42'),
('5144f9921e3e8649bcf929065e673091ba0b63287edd3c3492e54d817e4ffeb0817a09d7868b5950', 6, 1, 'LaravelPasswordGrantClient', '[]', 1, '2024-05-03 07:03:45', '2024-05-03 07:05:15', '2025-05-03 15:03:45'),
('61c5ee29039777d1d63ce56fc2d1de00e26141236e4b017c97f7c89e71f039947e45aa6d3e03e084', 5, 1, 'LaravelPasswordGrantClient', '[]', 1, '2024-05-03 06:23:16', '2024-05-03 06:30:46', '2025-05-03 14:23:16'),
('61de4cccd3290d9b0b68eaded32aab8459d46f5f5302433da3d8fe2b21062544be61d448cb5ab21d', 4, 1, 'LaravelPasswordGrantClient', '[]', 1, '2024-05-03 06:07:21', '2024-05-03 06:22:56', '2025-05-03 14:07:21'),
('67e13d4d880914e4795d96aa5db4dd9b846d18465a9376f51ffb59517aa912968f37f37673c87591', 7, 1, 'LaravelPasswordGrantClient', '[]', 1, '2024-05-06 01:22:15', '2024-05-06 01:32:05', '2025-05-06 09:22:15'),
('8ba6c5a259f446ddcff1a50e75c684b8daf3f7053d28ff6b5013dd1e8574cfc54d6cc1807eca0278', 7, 1, 'LaravelPasswordGrantClient', '[]', 1, '2024-05-03 06:49:07', '2024-05-03 06:54:43', '2025-05-03 14:49:07'),
('9952ede0fd0ae117b71fa5ff289c95d33f143f4ca8a570d9754313bd3844a0ae15061b57ed150712', 3, 1, 'LaravelPasswordGrantClient', '[]', 1, '2024-05-03 06:59:35', '2024-05-03 07:04:34', '2025-05-03 14:59:35'),
('aba6023fa0b59f5c7654236f4fe8d71ee7da2e244306ebc3d39901d3a6a9a69158705781f9824aeb', 7, 1, 'LaravelPasswordGrantClient', '[]', 1, '2024-05-03 06:47:27', '2024-05-03 06:48:43', '2025-05-03 14:47:27'),
('afe6514f24e53b24d057f11ae4447b3f436bcfb1575d540f052b7ea77f5422b73f70d904139fb99b', 3, 1, 'LaravelPasswordGrantClient', '[]', 1, '2024-05-03 06:01:56', '2024-05-03 06:06:57', '2025-05-03 14:01:56'),
('b6ea289be0c34e315a689d130671bc7e51da8eff69f27e1d2ad90634244f11405a59026412903e1b', 3, 1, 'LaravelPasswordGrantClient', '[]', 1, '2024-05-06 01:12:49', '2024-05-06 01:17:48', '2025-05-06 09:12:49'),
('bf67058d0f7ca832d5d07ecb41922a510b53f692931e3347d21ca4c40951f25ab256f533f78f3dac', 5, 1, 'LaravelPasswordGrantClient', '[]', 1, '2024-05-03 06:57:18', '2024-05-03 06:59:20', '2025-05-03 14:57:18'),
('bfcce0b1e8a8873b91b87db6929d367e630ae140467efb93ddecffdc0713d019a1d4e3bcbddc6d58', 6, 1, 'LaravelPasswordGrantClient', '[]', 1, '2024-05-03 06:37:31', '2024-05-03 07:00:46', '2025-05-03 14:37:31'),
('c13ca2b60255d83f523fa0833d96c88068895130ebf454dabb73df94eefce7e28014179b2e544c1d', 2, 1, 'LaravelPasswordGrantClient', '[]', 1, '2024-05-06 00:32:16', '2024-05-06 00:35:27', '2025-05-06 08:32:16'),
('c568b45a60abe8a23a865c8e2cad4aa106fb6882c5edc98fd1582428346eee079e56250aa5871942', 3, 1, 'LaravelPasswordGrantClient', '[]', 1, '2024-05-03 06:30:59', '2024-05-03 06:36:17', '2025-05-03 14:30:59'),
('c7a4fce661a8d4f5951daa1921b000dcf62e6ce0e846235a5918f62c7ee1708d1c211022dd818d9a', 2, 1, 'LaravelPasswordGrantClient', '[]', 1, '2024-05-03 07:01:39', '2024-05-03 07:01:48', '2025-05-03 15:01:39'),
('cb398d93d3566eb34e3a2d2e0d07b24f9202cf51ce68aa9f2f346c13cce02c2ed97b45ba6fe4a785', 2, 1, 'LaravelPasswordGrantClient', '[]', 1, '2024-05-06 01:10:14', '2024-05-06 01:12:27', '2025-05-06 09:10:14'),
('dd30a318c1066c3adde992e0d54731d9966049175127343fc36a90cca8c4e5d4da75d10d1c3ccd22', 4, 1, 'LaravelPasswordGrantClient', '[]', 0, '2024-05-06 00:35:45', '2024-05-06 00:35:45', '2025-05-06 08:35:45');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `secret` varchar(100) DEFAULT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `redirect` text NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'CHED MARITIME MS OBT IMCS APP Personal Access Client', 'VDnwm2KR2COBhS2p7k4mAINvj3cTKngqDtycaGue', NULL, 'http://localhost', 1, 0, 0, '2024-05-03 05:41:53', '2024-05-03 05:41:53'),
(2, NULL, 'CHED MARITIME MS OBT IMCS APP Password Grant Client', 'SjLuydBHhvmunyAHjKfDmtI9uY53RUkNituRyfxo', 'users', 'http://localhost', 0, 1, 0, '2024-05-03 05:41:53', '2024-05-03 05:41:53');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2024-05-03 05:41:53', '2024-05-03 05:41:53');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) NOT NULL,
  `access_token_id` varchar(100) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `obt_applications`
--

CREATE TABLE `obt_applications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `student_id` bigint(20) UNSIGNED NOT NULL,
  `applicable_id` bigint(20) UNSIGNED NOT NULL,
  `mhei_id` bigint(20) UNSIGNED NOT NULL,
  `applicable_type` varchar(255) NOT NULL,
  `applied_by` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'PENDING',
  `remarks` varchar(255) DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED NOT NULL,
  `updated_by` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `obt_applications`
--

INSERT INTO `obt_applications` (`id`, `student_id`, `applicable_id`, `mhei_id`, `applicable_type`, `applied_by`, `status`, `remarks`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 'App\\Models\\Vessel', 'Student', 'APPROVED', NULL, 6, 4, '2024-05-03 06:45:19', '2024-05-03 06:53:04'),
(2, 2, 1, 1, 'App\\Models\\Vessel', 'Student', 'PENDING', NULL, 11, 11, '2024-05-06 01:19:28', '2024-05-06 01:19:28');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pcg_staffs`
--

CREATE TABLE `pcg_staffs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `rank` varchar(255) NOT NULL,
  `unit_assigned` varchar(255) NOT NULL,
  `unit_address` varchar(255) NOT NULL,
  `birthdate` date DEFAULT NULL,
  `contact_number` varchar(255) NOT NULL,
  `top_level_access` tinyint(1) NOT NULL DEFAULT 0,
  `created_by` bigint(20) UNSIGNED NOT NULL,
  `updated_by` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pcg_staffs`
--

INSERT INTO `pcg_staffs` (`id`, `user_id`, `rank`, `unit_assigned`, `unit_address`, `birthdate`, `contact_number`, `top_level_access`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 5, 'CO', 'Zamboanga City Station', 'Zamboanga City', NULL, '09350459795', 0, 2, 2, '2024-05-03 06:22:42', '2024-05-03 06:22:42');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'ENABLED',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `title`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'ADMINISTRATOR', 'System Administrator', 'ENABLED', '2024-05-03 05:41:52', '2024-05-03 05:41:52'),
(2, 'MHEI STAFF', 'Maritime Higher Education Institutions', 'ENABLED', '2024-05-03 05:41:52', '2024-05-03 05:41:52'),
(3, 'CHED STAFF', 'Commission on Higher Education', 'ENABLED', '2024-05-03 05:41:52', '2024-05-03 05:41:52'),
(4, 'SHIPPING COMPANY STAFF', 'Shipping Company Staff to manage the company vessels', 'ENABLED', '2024-05-03 05:41:52', '2024-05-03 05:41:52'),
(5, 'SHIP MASTER', 'Vessel\'s Ship Master', 'ENABLED', '2024-05-03 05:41:52', '2024-05-03 05:41:52'),
(6, 'SHIP CHIEF ENGINEER', 'Vessel\'s Chief Engineer', 'ENABLED', '2024-05-03 05:41:52', '2024-05-03 05:41:52'),
(7, 'SHIP TRAINING OFFICER', 'Vessel\'s Training Officer', 'ENABLED', '2024-05-03 05:41:52', '2024-05-03 05:41:52'),
(8, 'PCG STAFF', 'Philippine Coast Guard', 'ENABLED', '2024-05-03 05:41:52', '2024-05-03 05:41:52'),
(9, 'MARINA STAFF', 'Marina', 'ENABLED', '2024-05-03 05:41:52', '2024-05-03 05:41:52'),
(10, 'STUDENT', 'Student', 'ENABLED', '2024-05-03 05:41:52', '2024-05-03 05:41:52'),
(11, 'SUPERVISOR', 'On-board Training Supervisor', 'ENABLED', '2024-05-03 05:41:52', '2024-05-03 05:41:52');

-- --------------------------------------------------------

--
-- Table structure for table `shipping_companies`
--

CREATE TABLE `shipping_companies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `region` varchar(255) DEFAULT NULL,
  `contact_number` varchar(255) NOT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED NOT NULL,
  `updated_by` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shipping_companies`
--

INSERT INTO `shipping_companies` (`id`, `company_name`, `address`, `region`, `contact_number`, `logo`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Aleson Shipping Lines Incorporated', 'Zamboanga City', 'IX', '09350459795', 'http://res.cloudinary.com/darla3bck/image/upload/v1714716397/ofktqscbab6kl05f5byg.png', 2, 2, '2024-05-03 06:06:37', '2024-05-03 06:06:37'),
(4, 'Fast Cat', 'Muntinlupa City', 'NCR', '0927 088 2925', 'http://res.cloudinary.com/darla3bck/image/upload/v1714718596/ger4fxp77368c1cmibe2.jpg', 2, 2, '2024-05-03 06:43:17', '2024-05-03 06:43:17');

-- --------------------------------------------------------

--
-- Table structure for table `shipping_company_staffs`
--

CREATE TABLE `shipping_company_staffs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `shipping_company_id` bigint(20) UNSIGNED NOT NULL,
  `birthdate` date DEFAULT NULL,
  `position` varchar(255) DEFAULT NULL,
  `gender` varchar(255) NOT NULL,
  `contact_number` varchar(255) DEFAULT NULL,
  `top_level_access` tinyint(1) NOT NULL DEFAULT 0,
  `created_by` bigint(20) UNSIGNED NOT NULL,
  `updated_by` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shipping_company_staffs`
--

INSERT INTO `shipping_company_staffs` (`id`, `user_id`, `shipping_company_id`, `birthdate`, `position`, `gender`, `contact_number`, `top_level_access`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 4, 1, NULL, NULL, 'MALE', '09350459795', 1, 2, 2, '2024-05-03 06:06:37', '2024-05-03 06:06:37'),
(4, 10, 4, NULL, NULL, 'MALE', '0927 088 2925', 1, 2, 2, '2024-05-03 06:43:17', '2024-05-03 06:43:17');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `maritime_program_id` bigint(20) UNSIGNED NOT NULL,
  `file_id` bigint(20) UNSIGNED DEFAULT NULL,
  `student_system_code` varchar(255) NOT NULL,
  `student_number` varchar(255) NOT NULL,
  `sirb_number` varchar(255) DEFAULT NULL,
  `sid_number` varchar(255) DEFAULT NULL,
  `gender` varchar(255) NOT NULL,
  `birthdate` date DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `civil_status` varchar(255) DEFAULT NULL,
  `citizenship` varchar(255) DEFAULT NULL,
  `religion` varchar(255) DEFAULT NULL,
  `height` double DEFAULT NULL,
  `weight` double DEFAULT NULL,
  `contact_number` varchar(255) DEFAULT NULL,
  `qr_code` varchar(255) DEFAULT NULL,
  `year_car` year(4) NOT NULL,
  `resume_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED NOT NULL,
  `updated_by` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `user_id`, `maritime_program_id`, `file_id`, `student_system_code`, `student_number`, `sirb_number`, `sid_number`, `gender`, `birthdate`, `address`, `civil_status`, `citizenship`, `religion`, `height`, `weight`, `contact_number`, `qr_code`, `year_car`, `resume_id`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 6, 1, NULL, '9096-P18-0243', 'P18-0243', NULL, NULL, 'MALE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '09350459795', '$2y$12$qYPeh4K1mBA7a0ziShjmvuRdDy6hS9BOtW6qvKpHGBz7Ny3VxAOhu', '2022', NULL, 3, 3, '2024-05-03 06:34:19', '2024-05-03 06:34:19'),
(2, 11, 1, NULL, '9096-P18-1234', 'P18-1234', NULL, NULL, 'MALE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0926 454 0121', '$2y$12$70d4CgSmT9iU9paqXgYHuugW2l9yrBCTYqeLhNn5jRe3TuHMslAiS', '2022', NULL, 3, 3, '2024-05-06 01:15:26', '2024-05-06 01:15:26');

-- --------------------------------------------------------

--
-- Table structure for table `student_attendances`
--

CREATE TABLE `student_attendances` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `student_id` bigint(20) UNSIGNED NOT NULL,
  `vessel_id` bigint(20) UNSIGNED NOT NULL,
  `mhei_id` bigint(20) UNSIGNED NOT NULL,
  `attendance_for` date NOT NULL,
  `remarks` varchar(255) NOT NULL,
  `created_by` bigint(20) UNSIGNED NOT NULL,
  `updated_by` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `student_tasks`
--

CREATE TABLE `student_tasks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `student_id` bigint(20) UNSIGNED NOT NULL,
  `vessel_id` bigint(20) UNSIGNED NOT NULL,
  `mhei_id` bigint(20) UNSIGNED NOT NULL,
  `task_id` bigint(20) UNSIGNED NOT NULL,
  `remarks` varchar(255) NOT NULL,
  `created_by` bigint(20) UNSIGNED NOT NULL,
  `updated_by` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `student_vessels`
--

CREATE TABLE `student_vessels` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `student_id` bigint(20) UNSIGNED NOT NULL,
  `vessel_id` bigint(20) UNSIGNED NOT NULL,
  `mhei_id` bigint(20) UNSIGNED NOT NULL,
  `assigned_on` date DEFAULT NULL,
  `removed_on` date DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED NOT NULL,
  `updated_by` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `student_vessels`
--

INSERT INTO `student_vessels` (`id`, `student_id`, `vessel_id`, `mhei_id`, `assigned_on`, `removed_on`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, '2024-05-03', NULL, 4, 4, '2024-05-03 06:53:04', '2024-05-03 06:53:04');

-- --------------------------------------------------------

--
-- Table structure for table `sub_competencies`
--

CREATE TABLE `sub_competencies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `competency_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `supervisors`
--

CREATE TABLE `supervisors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `mhei_id` bigint(20) UNSIGNED NOT NULL,
  `birthdate` date DEFAULT NULL,
  `gender` varchar(255) NOT NULL,
  `contact_number` varchar(255) DEFAULT NULL,
  `position` varchar(255) DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'Active',
  `created_by` bigint(20) UNSIGNED NOT NULL,
  `updated_by` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `supervisors`
--

INSERT INTO `supervisors` (`id`, `user_id`, `mhei_id`, `birthdate`, `gender`, `contact_number`, `position`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 7, 1, NULL, 'MALE', '09350459795', 'OTS', 'Active', 3, 3, '2024-05-03 06:36:02', '2024-05-03 06:36:02');

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

CREATE TABLE `tasks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sub_competency_id` bigint(20) UNSIGNED NOT NULL,
  `description` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `default_password` tinyint(1) NOT NULL DEFAULT 0,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'ACTIVE',
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `email_verified_at`, `password`, `default_password`, `role_id`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'administrator', 'administrator', 'administrator@ched.com', NULL, '$2y$10$8Scewv36XOzoxyNI//eaCujLJmPFVfiHBa2IC70ne.TmlABrRUIV6', 0, 1, 'ACTIVE', NULL, '2024-05-03 05:41:52', '2024-05-03 05:41:52'),
(2, 'chedstaff', 'chedstaff', 'chedstaff@ched.com', NULL, '$2y$10$8Scewv36XOzoxyNI//eaCujLJmPFVfiHBa2IC70ne.TmlABrRUIV6', 0, 3, 'ACTIVE', NULL, '2024-05-03 05:41:53', '2024-05-03 05:41:53'),
(3, 'Our Lady of Triumph Institute of Technology Incorporated', 'MHEI-9096', 'ourladyoftriumphpagadian@olt.edu.pj', NULL, '$2y$10$8Scewv36XOzoxyNI//eaCujLJmPFVfiHBa2IC70ne.TmlABrRUIV6', 0, 2, 'ACTIVE', NULL, '2024-05-03 05:51:30', '2024-05-06 01:13:11'),
(4, 'Aleson Shipping Lines Incorporated', 'SC-aleson', 'ramisoaldrin28@gmail.com', NULL, '$2y$12$otH2I1cD7u7mMO25JtDw5eEHrPWTDmNlKYfuqoIaePxLmmKWsEl/O', 0, 4, 'ACTIVE', NULL, '2024-05-03 06:06:37', '2024-05-03 06:08:02'),
(5, 'PCG Zamboanga Station', 'pcgzamboanga', 'ramisoaldrin28@icloud.com', NULL, '$2y$12$P9gBUhmLbjnD9X3cNg9m9ug6JKK3wzVEmqn4W2M5YDXUCxH3at7au', 0, 8, 'ACTIVE', NULL, '2024-05-03 06:22:42', '2024-05-03 06:25:11'),
(6, 'Al-Sharif C. Fernandez', 'SC-9096-P18-0243', 'sakjdhgjsa@gmail.com', NULL, '$2y$12$idfliSaT..vzhVGLZI6rcOlwR41lHaoLVU68E1O/YHZxuGfrjgfje', 0, 10, 'ACTIVE', NULL, '2024-05-03 06:34:19', '2024-05-03 07:03:51'),
(7, '2M Alfredo V. Exclamador Jr. R.N', 'alfredoexlamador', 'timaiburno@gmail.com', NULL, '$2y$12$27lsJ9K0ub1b2v6hmCDz9OnCCOFCoUPC0I//f5sAOa/In.qmQYV96', 0, 11, 'ACTIVE', NULL, '2024-05-03 06:36:02', '2024-05-03 06:47:34'),
(10, 'Fast Cat', 'SC-fastcat', 'aldrinfrancis.ramiso@sibugaytech.edu.ph', NULL, '$2y$12$ymAYhSy/HnDfwHhVVNrNMeSxm0oJX7WRW.6JBegNZw5SarXE2.9He', 1, 4, 'ACTIVE', NULL, '2024-05-03 06:43:17', '2024-05-03 06:43:17'),
(11, 'JAMES O. ALCAIDE', 'SC-9096-P18-1234', 'fatimamercy.onrubia@deped.gov.ph', NULL, '$2y$12$Xlk4V0Ht0XDihX8DFSdKPeK3gdYFgjgGYvlkkMbcxRwO8n6OzaX4a', 0, 10, 'ACTIVE', NULL, '2024-05-06 01:15:26', '2024-05-06 01:19:12'),
(14, 'ZPPSU', 'MHEI-999999', 'onrubia.fatima98@gmail.com', NULL, '$2y$12$52mGZjFK/mb4v02QQYZrwubHSEmEZiWNx6AF5IZCR0BosnANI/kKK', 1, 2, 'ACTIVE', NULL, '2024-05-07 05:39:35', '2024-05-07 05:39:35'),
(15, 'rody', 'rody', 'rgarcia@gmail.com', NULL, '$2y$10$O1ZuCbLajzGo3RSntbpLQeqLfpQ7qbDjmn4GUjeYVnMdZpzYWCRxe', 0, 10, 'ACTIVE', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vessels`
--

CREATE TABLE `vessels` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `shipping_company_id` bigint(20) UNSIGNED NOT NULL,
  `imo_number` varchar(255) DEFAULT NULL,
  `registry_number` varchar(255) DEFAULT NULL,
  `vessel_name` varchar(255) NOT NULL,
  `port_of_registry` varchar(255) DEFAULT NULL,
  `vessel_type` varchar(255) NOT NULL,
  `grt` double NOT NULL,
  `kw` double NOT NULL,
  `flag` varchar(255) NOT NULL,
  `route` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED NOT NULL,
  `updated_by` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vessels`
--

INSERT INTO `vessels` (`id`, `shipping_company_id`, `imo_number`, `registry_number`, `vessel_name`, `port_of_registry`, `vessel_type`, `grt`, `kw`, `flag`, `route`, `image`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, '09-0000114', 'MV Trisha Kerstin 3', 'Zamboanga City', 'Passenger', 621.57, 970.17, 'Philippines', 'Zamboanga-Basilan', 'http://res.cloudinary.com/darla3bck/image/upload/v1714717080/a7xnynpjfybnynsxogtx.jpg', 2, 2, '2024-05-03 06:18:01', '2024-05-03 06:18:01'),
(2, 4, NULL, NULL, 'Fastcat M15', 'Cebu', 'Passenger', 650, 900, 'Philippines', 'Cebu-Dapitan', 'http://res.cloudinary.com/darla3bck/image/upload/v1714718688/mn1gxjsomcolc1jt08db.jpg', 2, 2, '2024-05-03 06:44:49', '2024-05-03 06:44:49');

-- --------------------------------------------------------

--
-- Table structure for table `vessel_staffs`
--

CREATE TABLE `vessel_staffs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `vessel_id` bigint(20) UNSIGNED NOT NULL,
  `birthdate` date NOT NULL,
  `nationality` varchar(255) NOT NULL,
  `rank` varchar(255) NOT NULL,
  `contact_number` varchar(255) NOT NULL,
  `created_by` bigint(20) UNSIGNED NOT NULL,
  `updated_by` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `voyages`
--

CREATE TABLE `voyages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `vessel_id` bigint(20) UNSIGNED NOT NULL,
  `embarkation_date` date NOT NULL,
  `disembarkation_date` date NOT NULL,
  `origin` varchar(255) NOT NULL,
  `arrival` varchar(255) NOT NULL,
  `created_by` bigint(20) UNSIGNED NOT NULL,
  `updated_by` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `voyages`
--

INSERT INTO `voyages` (`id`, `vessel_id`, `embarkation_date`, `disembarkation_date`, `origin`, `arrival`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 1, '2024-05-03', '2025-08-01', 'Zamboanga', 'Basilan', 4, 4, '2024-05-03 06:55:39', '2024-05-03 06:55:39');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ched_staffs`
--
ALTER TABLE `ched_staffs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ched_staffs_contact_number_unique` (`contact_number`),
  ADD KEY `ched_staffs_user_id_foreign` (`user_id`),
  ADD KEY `ched_staffs_created_by_foreign` (`created_by`),
  ADD KEY `ched_staffs_updated_by_foreign` (`updated_by`);

--
-- Indexes for table `competencies`
--
ALTER TABLE `competencies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `competencies_function_id_foreign` (`function_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `files_name_unique` (`name`),
  ADD KEY `files_uploader_foreign` (`uploader`),
  ADD KEY `files_recepient_foreign` (`recepient`),
  ADD KEY `files_created_by_foreign` (`created_by`),
  ADD KEY `files_updated_by_foreign` (`updated_by`);

--
-- Indexes for table `functions`
--
ALTER TABLE `functions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `marina_staffs`
--
ALTER TABLE `marina_staffs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `marina_staffs_contact_number_unique` (`contact_number`),
  ADD KEY `marina_staffs_user_id_foreign` (`user_id`),
  ADD KEY `marina_staffs_created_by_foreign` (`created_by`),
  ADD KEY `marina_staffs_updated_by_foreign` (`updated_by`);

--
-- Indexes for table `maritime_programs`
--
ALTER TABLE `maritime_programs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `maritime_programs_mhei_id_foreign` (`mhei_id`),
  ADD KEY `maritime_programs_created_by_foreign` (`created_by`),
  ADD KEY `maritime_programs_updated_by_foreign` (`updated_by`);

--
-- Indexes for table `mheis`
--
ALTER TABLE `mheis`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `mheis_institutional_code_unique` (`institutional_code`),
  ADD UNIQUE KEY `mheis_school_name_unique` (`school_name`),
  ADD KEY `mheis_created_by_foreign` (`created_by`),
  ADD KEY `mheis_updated_by_foreign` (`updated_by`);

--
-- Indexes for table `mhei_staffs`
--
ALTER TABLE `mhei_staffs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `mhei_staffs_contact_number_unique` (`contact_number`),
  ADD KEY `mhei_staffs_user_id_foreign` (`user_id`),
  ADD KEY `mhei_staffs_mhei_id_foreign` (`mhei_id`),
  ADD KEY `mhei_staffs_created_by_foreign` (`created_by`),
  ADD KEY `mhei_staffs_updated_by_foreign` (`updated_by`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `obt_applications`
--
ALTER TABLE `obt_applications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `obt_applications_student_id_foreign` (`student_id`),
  ADD KEY `obt_applications_created_by_foreign` (`created_by`),
  ADD KEY `obt_applications_updated_by_foreign` (`updated_by`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `pcg_staffs`
--
ALTER TABLE `pcg_staffs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pcg_staffs_contact_number_unique` (`contact_number`),
  ADD KEY `pcg_staffs_user_id_foreign` (`user_id`),
  ADD KEY `pcg_staffs_created_by_foreign` (`created_by`),
  ADD KEY `pcg_staffs_updated_by_foreign` (`updated_by`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_title_unique` (`title`);

--
-- Indexes for table `shipping_companies`
--
ALTER TABLE `shipping_companies`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `shipping_companies_company_name_unique` (`company_name`),
  ADD KEY `shipping_companies_created_by_foreign` (`created_by`),
  ADD KEY `shipping_companies_updated_by_foreign` (`updated_by`);

--
-- Indexes for table `shipping_company_staffs`
--
ALTER TABLE `shipping_company_staffs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `shipping_company_staffs_contact_number_unique` (`contact_number`),
  ADD KEY `shipping_company_staffs_user_id_foreign` (`user_id`),
  ADD KEY `shipping_company_staffs_shipping_company_id_foreign` (`shipping_company_id`),
  ADD KEY `shipping_company_staffs_created_by_foreign` (`created_by`),
  ADD KEY `shipping_company_staffs_updated_by_foreign` (`updated_by`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `students_student_system_code_unique` (`student_system_code`),
  ADD UNIQUE KEY `students_student_number_unique` (`student_number`),
  ADD UNIQUE KEY `students_sirb_number_unique` (`sirb_number`),
  ADD UNIQUE KEY `students_sid_number_unique` (`sid_number`),
  ADD UNIQUE KEY `students_contact_number_unique` (`contact_number`),
  ADD UNIQUE KEY `students_qr_code_unique` (`qr_code`),
  ADD KEY `students_user_id_foreign` (`user_id`),
  ADD KEY `students_maritime_program_id_foreign` (`maritime_program_id`),
  ADD KEY `students_file_id_foreign` (`file_id`),
  ADD KEY `students_resume_id_foreign` (`resume_id`),
  ADD KEY `students_created_by_foreign` (`created_by`),
  ADD KEY `students_updated_by_foreign` (`updated_by`);

--
-- Indexes for table `student_attendances`
--
ALTER TABLE `student_attendances`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_attendances_student_id_foreign` (`student_id`),
  ADD KEY `student_attendances_vessel_id_foreign` (`vessel_id`),
  ADD KEY `student_attendances_mhei_id_foreign` (`mhei_id`),
  ADD KEY `student_attendances_created_by_foreign` (`created_by`),
  ADD KEY `student_attendances_updated_by_foreign` (`updated_by`);

--
-- Indexes for table `student_tasks`
--
ALTER TABLE `student_tasks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_tasks_student_id_foreign` (`student_id`),
  ADD KEY `student_tasks_vessel_id_foreign` (`vessel_id`),
  ADD KEY `student_tasks_mhei_id_foreign` (`mhei_id`),
  ADD KEY `student_tasks_task_id_foreign` (`task_id`),
  ADD KEY `student_tasks_created_by_foreign` (`created_by`),
  ADD KEY `student_tasks_updated_by_foreign` (`updated_by`);

--
-- Indexes for table `student_vessels`
--
ALTER TABLE `student_vessels`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_vessels_student_id_foreign` (`student_id`),
  ADD KEY `student_vessels_vessel_id_foreign` (`vessel_id`),
  ADD KEY `student_vessels_mhei_id_foreign` (`mhei_id`),
  ADD KEY `student_vessels_created_by_foreign` (`created_by`),
  ADD KEY `student_vessels_updated_by_foreign` (`updated_by`);

--
-- Indexes for table `sub_competencies`
--
ALTER TABLE `sub_competencies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sub_competencies_competency_id_foreign` (`competency_id`);

--
-- Indexes for table `supervisors`
--
ALTER TABLE `supervisors`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `supervisors_contact_number_unique` (`contact_number`),
  ADD KEY `supervisors_user_id_foreign` (`user_id`),
  ADD KEY `supervisors_mhei_id_foreign` (`mhei_id`),
  ADD KEY `supervisors_created_by_foreign` (`created_by`),
  ADD KEY `supervisors_updated_by_foreign` (`updated_by`);

--
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tasks_sub_competency_id_foreign` (`sub_competency_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Indexes for table `vessels`
--
ALTER TABLE `vessels`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `vessels_vessel_name_unique` (`vessel_name`),
  ADD UNIQUE KEY `vessels_imo_number_unique` (`imo_number`),
  ADD UNIQUE KEY `vessels_registry_number_unique` (`registry_number`),
  ADD KEY `vessels_shipping_company_id_foreign` (`shipping_company_id`),
  ADD KEY `vessels_created_by_foreign` (`created_by`),
  ADD KEY `vessels_updated_by_foreign` (`updated_by`);

--
-- Indexes for table `vessel_staffs`
--
ALTER TABLE `vessel_staffs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `vessel_staffs_contact_number_unique` (`contact_number`),
  ADD KEY `vessel_staffs_user_id_foreign` (`user_id`),
  ADD KEY `vessel_staffs_vessel_id_foreign` (`vessel_id`),
  ADD KEY `vessel_staffs_created_by_foreign` (`created_by`),
  ADD KEY `vessel_staffs_updated_by_foreign` (`updated_by`);

--
-- Indexes for table `voyages`
--
ALTER TABLE `voyages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `voyages_vessel_id_foreign` (`vessel_id`),
  ADD KEY `voyages_created_by_foreign` (`created_by`),
  ADD KEY `voyages_updated_by_foreign` (`updated_by`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ched_staffs`
--
ALTER TABLE `ched_staffs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `competencies`
--
ALTER TABLE `competencies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `functions`
--
ALTER TABLE `functions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `marina_staffs`
--
ALTER TABLE `marina_staffs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `maritime_programs`
--
ALTER TABLE `maritime_programs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `mheis`
--
ALTER TABLE `mheis`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `mhei_staffs`
--
ALTER TABLE `mhei_staffs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `obt_applications`
--
ALTER TABLE `obt_applications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pcg_staffs`
--
ALTER TABLE `pcg_staffs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `shipping_companies`
--
ALTER TABLE `shipping_companies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `shipping_company_staffs`
--
ALTER TABLE `shipping_company_staffs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `student_attendances`
--
ALTER TABLE `student_attendances`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `student_tasks`
--
ALTER TABLE `student_tasks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `student_vessels`
--
ALTER TABLE `student_vessels`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sub_competencies`
--
ALTER TABLE `sub_competencies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `supervisors`
--
ALTER TABLE `supervisors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `vessels`
--
ALTER TABLE `vessels`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `vessel_staffs`
--
ALTER TABLE `vessel_staffs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `voyages`
--
ALTER TABLE `voyages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `ched_staffs`
--
ALTER TABLE `ched_staffs`
  ADD CONSTRAINT `ched_staffs_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `ched_staffs_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `ched_staffs_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `competencies`
--
ALTER TABLE `competencies`
  ADD CONSTRAINT `competencies_function_id_foreign` FOREIGN KEY (`function_id`) REFERENCES `functions` (`id`);

--
-- Constraints for table `files`
--
ALTER TABLE `files`
  ADD CONSTRAINT `files_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `files_recepient_foreign` FOREIGN KEY (`recepient`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `files_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `files_uploader_foreign` FOREIGN KEY (`uploader`) REFERENCES `users` (`id`);

--
-- Constraints for table `marina_staffs`
--
ALTER TABLE `marina_staffs`
  ADD CONSTRAINT `marina_staffs_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `marina_staffs_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `marina_staffs_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `maritime_programs`
--
ALTER TABLE `maritime_programs`
  ADD CONSTRAINT `maritime_programs_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `maritime_programs_mhei_id_foreign` FOREIGN KEY (`mhei_id`) REFERENCES `mheis` (`id`),
  ADD CONSTRAINT `maritime_programs_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`);

--
-- Constraints for table `mheis`
--
ALTER TABLE `mheis`
  ADD CONSTRAINT `mheis_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `mheis_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`);

--
-- Constraints for table `mhei_staffs`
--
ALTER TABLE `mhei_staffs`
  ADD CONSTRAINT `mhei_staffs_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `mhei_staffs_mhei_id_foreign` FOREIGN KEY (`mhei_id`) REFERENCES `mheis` (`id`),
  ADD CONSTRAINT `mhei_staffs_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `mhei_staffs_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `obt_applications`
--
ALTER TABLE `obt_applications`
  ADD CONSTRAINT `obt_applications_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `obt_applications_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`),
  ADD CONSTRAINT `obt_applications_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`);

--
-- Constraints for table `pcg_staffs`
--
ALTER TABLE `pcg_staffs`
  ADD CONSTRAINT `pcg_staffs_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `pcg_staffs_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `pcg_staffs_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `shipping_companies`
--
ALTER TABLE `shipping_companies`
  ADD CONSTRAINT `shipping_companies_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `shipping_companies_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`);

--
-- Constraints for table `shipping_company_staffs`
--
ALTER TABLE `shipping_company_staffs`
  ADD CONSTRAINT `shipping_company_staffs_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `shipping_company_staffs_shipping_company_id_foreign` FOREIGN KEY (`shipping_company_id`) REFERENCES `shipping_companies` (`id`),
  ADD CONSTRAINT `shipping_company_staffs_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `shipping_company_staffs_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `students`
--
ALTER TABLE `students`
  ADD CONSTRAINT `students_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `students_file_id_foreign` FOREIGN KEY (`file_id`) REFERENCES `files` (`id`),
  ADD CONSTRAINT `students_maritime_program_id_foreign` FOREIGN KEY (`maritime_program_id`) REFERENCES `maritime_programs` (`id`),
  ADD CONSTRAINT `students_resume_id_foreign` FOREIGN KEY (`resume_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `students_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `students_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `student_attendances`
--
ALTER TABLE `student_attendances`
  ADD CONSTRAINT `student_attendances_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `student_attendances_mhei_id_foreign` FOREIGN KEY (`mhei_id`) REFERENCES `mheis` (`id`),
  ADD CONSTRAINT `student_attendances_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`),
  ADD CONSTRAINT `student_attendances_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `student_attendances_vessel_id_foreign` FOREIGN KEY (`vessel_id`) REFERENCES `vessels` (`id`);

--
-- Constraints for table `student_tasks`
--
ALTER TABLE `student_tasks`
  ADD CONSTRAINT `student_tasks_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `student_tasks_mhei_id_foreign` FOREIGN KEY (`mhei_id`) REFERENCES `mheis` (`id`),
  ADD CONSTRAINT `student_tasks_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`),
  ADD CONSTRAINT `student_tasks_task_id_foreign` FOREIGN KEY (`task_id`) REFERENCES `tasks` (`id`),
  ADD CONSTRAINT `student_tasks_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `student_tasks_vessel_id_foreign` FOREIGN KEY (`vessel_id`) REFERENCES `vessels` (`id`);

--
-- Constraints for table `student_vessels`
--
ALTER TABLE `student_vessels`
  ADD CONSTRAINT `student_vessels_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `student_vessels_mhei_id_foreign` FOREIGN KEY (`mhei_id`) REFERENCES `mheis` (`id`),
  ADD CONSTRAINT `student_vessels_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`),
  ADD CONSTRAINT `student_vessels_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `student_vessels_vessel_id_foreign` FOREIGN KEY (`vessel_id`) REFERENCES `vessels` (`id`);

--
-- Constraints for table `sub_competencies`
--
ALTER TABLE `sub_competencies`
  ADD CONSTRAINT `sub_competencies_competency_id_foreign` FOREIGN KEY (`competency_id`) REFERENCES `competencies` (`id`);

--
-- Constraints for table `supervisors`
--
ALTER TABLE `supervisors`
  ADD CONSTRAINT `supervisors_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `supervisors_mhei_id_foreign` FOREIGN KEY (`mhei_id`) REFERENCES `mheis` (`id`),
  ADD CONSTRAINT `supervisors_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `supervisors_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `tasks`
--
ALTER TABLE `tasks`
  ADD CONSTRAINT `tasks_sub_competency_id_foreign` FOREIGN KEY (`sub_competency_id`) REFERENCES `sub_competencies` (`id`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Constraints for table `vessels`
--
ALTER TABLE `vessels`
  ADD CONSTRAINT `vessels_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `vessels_shipping_company_id_foreign` FOREIGN KEY (`shipping_company_id`) REFERENCES `shipping_companies` (`id`),
  ADD CONSTRAINT `vessels_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`);

--
-- Constraints for table `vessel_staffs`
--
ALTER TABLE `vessel_staffs`
  ADD CONSTRAINT `vessel_staffs_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `vessel_staffs_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `vessel_staffs_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `vessel_staffs_vessel_id_foreign` FOREIGN KEY (`vessel_id`) REFERENCES `vessels` (`id`);

--
-- Constraints for table `voyages`
--
ALTER TABLE `voyages`
  ADD CONSTRAINT `voyages_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `voyages_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `voyages_vessel_id_foreign` FOREIGN KEY (`vessel_id`) REFERENCES `vessels` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
