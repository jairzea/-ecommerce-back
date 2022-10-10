-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:8889
-- Tiempo de generación: 10-10-2022 a las 09:40:06
-- Versión del servidor: 5.7.34
-- Versión de PHP: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `evertec`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(4, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(6, '2016_06_01_000004_create_oauth_clients_table', 1),
(7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(8, '2019_08_19_000000_create_failed_jobs_table', 1),
(9, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(10, '2022_09_30_171835_create_orders_table', 1),
(11, '2022_09_30_171846_create_products_table', 1),
(12, '2022_09_30_185153_order_summary_view', 1),
(13, '2022_09_30_185253_view_product_orders', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('0016278518ce9f49b0f964f4044b52e811fb1fa0cc8944812a481d97d348670347e82b4112ea26cf', 1, 1, 'Personal Access Token', '[]', 0, '2022-10-10 10:14:09', '2022-10-10 10:14:09', '2023-10-10 05:14:09'),
('00729c16583588a00beb7d3363ccab5a7e938df76d67031eb4fdce5bbf15794d9f6ccae27411b4da', 2, 1, 'Personal Access Token', '[]', 0, '2022-10-01 20:20:29', '2022-10-01 20:20:29', '2023-10-01 15:20:29'),
('02ffa7cfcc89065ffbd0bedcf446463fabd5fa761d104f84bc71188aa27055884935ec3a152e7983', 1, 1, 'Personal Access Token', '[]', 0, '2022-10-10 12:45:58', '2022-10-10 12:45:58', '2023-10-10 07:45:58'),
('038e8509a559be95edb2795559a0a9114438686d3bc481409f0462d2bf014fea7162021ec74c4ec2', 1, 1, 'Personal Access Token', '[]', 0, '2022-10-01 23:03:19', '2022-10-01 23:03:19', '2023-10-01 18:03:19'),
('0a9b862d036aa87fbadf12d80fd5b0507028646dba65de66bf497bc521e2a729c6b929ac10cbde65', 43, 1, 'Personal Access Token', '[]', 0, '2022-10-01 22:05:12', '2022-10-01 22:05:12', '2023-10-01 17:05:12'),
('1242a0d75e210129c06594ff61a519afe084d92fd95818c28b71dbf3909425a9a36c1860d998ade4', 1, 1, 'Personal Access Token', '[]', 0, '2022-10-01 23:25:47', '2022-10-01 23:25:47', '2023-10-01 18:25:47'),
('1280b655ba28db4f6360958b80f53a8b8eea4294e23cd036b3971424f43c9c1fbd4ac495542f6571', 1, 1, 'Personal Access Token', '[]', 0, '2022-10-02 01:34:44', '2022-10-02 01:34:44', '2023-10-01 20:34:44'),
('1413d2ef72201652cf633dd02467e5d48a9421c8190055c38cc5adf8a32557eb80b00ecdf361c5e4', 2, 1, 'Personal Access Token', '[]', 0, '2022-10-10 14:12:30', '2022-10-10 14:12:30', '2023-10-10 09:12:30'),
('1578c8e0c8dd932c203f66d540a15527a908273edfec26ebc791f6d254ee30befe3fe1d8cf928b92', 1, 1, 'Personal Access Token', '[]', 0, '2022-10-10 01:16:02', '2022-10-10 01:16:02', '2023-10-09 20:16:02'),
('178569179f60df7a093cdffda202f2bd181879a35e1caf55ce69b70ebbd0fd062c736505643991ea', 31, 1, 'Personal Access Token', '[]', 0, '2022-10-01 21:42:03', '2022-10-01 21:42:03', '2023-10-01 16:42:03'),
('1812a47fe8382e8f174acc4389bafb20a9a4447d0f5215fdd4a69a8bd99b682466197463fb4a5f04', 41, 1, 'Personal Access Token', '[]', 0, '2022-10-01 22:05:02', '2022-10-01 22:05:02', '2023-10-01 17:05:02'),
('1baf4f700094077a38cf1f48da634a27b6beb3ee69c4b66be71a6238b4726c7270c74cafb54f2362', 1, 1, 'Personal Access Token', '[]', 0, '2022-10-01 23:25:26', '2022-10-01 23:25:26', '2023-10-01 18:25:26'),
('23094cb27d57aff620b241f6dbb22ac48c6f494eeb6a2df67866e64a1f4c682c9598b7f496c8bb8f', 1, 1, 'Personal Access Token', '[]', 0, '2022-10-02 00:20:33', '2022-10-02 00:20:33', '2023-10-01 19:20:33'),
('2526bb23fd64f4ead97a0802a49ec1ae81f5c6e2b266db551c302b51f91a9aba3ed0c1f5c2619951', 1, 1, 'Personal Access Token', '[]', 0, '2022-10-10 09:56:33', '2022-10-10 09:56:33', '2023-10-10 04:56:33'),
('27e9dcf6c063700ed3eb7382f22529dabb25969889ea5da96bbbf8f9b45bbf93bf5091dcdefa1806', 1, 1, 'Personal Access Token', '[]', 0, '2022-10-10 09:53:17', '2022-10-10 09:53:17', '2023-10-10 04:53:17'),
('2a27be694cc38c196f3f567bd563c76195ebe87c362f0475e1d02634d751e48f1b87cbbcc096c937', 24, 1, 'Personal Access Token', '[]', 0, '2022-10-01 21:18:20', '2022-10-01 21:18:20', '2023-10-01 16:18:20'),
('2b3da8129ad47f060fd3d111194649e41e1df913f7e7fba9b3ee0bcf9ad69115fcf1a2595b0831c3', 35, 1, 'Personal Access Token', '[]', 0, '2022-10-01 22:00:22', '2022-10-01 22:00:22', '2023-10-01 17:00:22'),
('2b8adc708daf60de4139964e28bf67f2f8b5e5d7ec9482e1800044827bcbab5f22becde2495ea693', 1, 1, 'Personal Access Token', '[]', 0, '2022-10-10 00:53:06', '2022-10-10 00:53:06', '2023-10-09 19:53:06'),
('2ef4937b1e1ed8657d5e801669d5f6831153de32f2fe89e7cce2220c919520cf342745e98f9776c3', 4, 1, 'Personal Access Token', '[]', 0, '2022-10-01 20:36:56', '2022-10-01 20:36:56', '2023-10-01 15:36:56'),
('2efa4e9a63d4ebc82b0f735662a83bd092cb57163700535a53eaab31d002dfc3cc643dc8aa83deb0', 1, 1, 'Personal Access Token', '[]', 0, '2022-10-01 23:44:36', '2022-10-01 23:44:36', '2023-10-01 18:44:36'),
('302004d6943e0aca974bf59a082f1e81c130a8cce0cbdc4e5f34586766b943470f363a95f3f3e480', 1, 1, 'Personal Access Token', '[]', 0, '2022-10-10 10:12:10', '2022-10-10 10:12:10', '2023-10-10 05:12:10'),
('304db7f973b4bdb4ed813ce87b9deb16bd02b3697dac454b778cb750704ada8943e6258fe2e4c53e', 14, 1, 'Personal Access Token', '[]', 0, '2022-10-01 20:54:49', '2022-10-01 20:54:49', '2023-10-01 15:54:49'),
('323ac79a1462ef0f4627cf402e08e5a099006979cfa39e3c6701377723ea7f69a2eef41d16c51a37', 53, 1, 'Personal Access Token', '[]', 0, '2022-10-01 22:31:41', '2022-10-01 22:31:41', '2023-10-01 17:31:41'),
('32f45e5c41c9e9a9a5ae54e7b5ac7f6498e273fe7a04bf4577d0c312164ef8bc93650e55ec337963', 8, 1, 'Personal Access Token', '[]', 0, '2022-10-01 20:47:28', '2022-10-01 20:47:28', '2023-10-01 15:47:28'),
('35ba2de1a3d32352f085e58f14c223af9ff73466cd1e8da71a66c683650fb89c7bc5b0cbb3b11599', 1, 1, 'Personal Access Token', '[]', 0, '2022-10-10 00:57:05', '2022-10-10 00:57:05', '2023-10-09 19:57:05'),
('37d8bbb55e78ccb1250e3dcf36babaf943aa7302dee8ae9b49a1a142084dc27b368cd2c1a7b353a1', 51, 1, 'Personal Access Token', '[]', 0, '2022-10-01 22:14:20', '2022-10-01 22:14:20', '2023-10-01 17:14:20'),
('3bcb69c324a297b05b1e9068e60fe1e3371844d869d1c7644aa0e843a4f229ac7b4ab0bf4c909743', 22, 1, 'Personal Access Token', '[]', 0, '2022-10-01 21:13:00', '2022-10-01 21:13:00', '2023-10-01 16:13:00'),
('453395c98cd56e61374f4a1cb23ba1aa602b9d5c89e70220493772b1540bcb02313db779b93f8402', 11, 1, 'Personal Access Token', '[]', 0, '2022-10-01 20:52:39', '2022-10-01 20:52:39', '2023-10-01 15:52:39'),
('455ed38935e522fe0f1e296be3750b83aaed1e28949cfd538eeb41244ba20c288b6051bfa70bcf74', 1, 1, 'Personal Access Token', '[]', 0, '2022-10-10 00:22:35', '2022-10-10 00:22:35', '2023-10-09 19:22:35'),
('46bc2674fafba842d6d7d3d0c82422bd041d337069144ac32df3c383b2397d0174d43bdf8e060694', 1, 1, 'Personal Access Token', '[]', 0, '2022-10-10 01:13:53', '2022-10-10 01:13:53', '2023-10-09 20:13:53'),
('46c122888c7eba0fa446211f03fd9d35af2467a28273a5f964b59398f5d55a4deb97188d8ba04f34', 18, 1, 'Personal Access Token', '[]', 0, '2022-10-01 21:03:33', '2022-10-01 21:03:33', '2023-10-01 16:03:33'),
('476341ecc0d02cad091c348d26a5d8372b894d88f4ed170c5dbc29a0316c6520adf1a3709fe7c2de', 1, 1, 'Personal Access Token', '[]', 0, '2022-10-02 01:34:52', '2022-10-02 01:34:52', '2023-10-01 20:34:52'),
('4b0c085746cfca4a3b5a72bc66d74119f6a08afa1f50c44d0e791ed5079c7798e81937b63556af9a', 15, 1, 'Personal Access Token', '[]', 0, '2022-10-01 20:59:57', '2022-10-01 20:59:57', '2023-10-01 15:59:57'),
('4f01e34e7bf11e853a8631f85643618930fed0a50f1f695a4d63d64282aa2c4b4c6a6e494600b3d0', 59, 1, 'Personal Access Token', '[]', 0, '2022-10-01 23:08:15', '2022-10-01 23:08:15', '2023-10-01 18:08:15'),
('57dc67a6efee18ffcc549b3d9a83c978719223d220929e7becf4e35741d9adc3fb0b2ede64358d19', 1, 1, 'Personal Access Token', '[]', 0, '2022-10-10 06:21:26', '2022-10-10 06:21:26', '2023-10-10 01:21:26'),
('587fa28921d491ddbfab42ef8fb1f2389e8f280f5722b23ee47728fa77cf28ab2d2c2b3e6115386b', 1, 1, 'Personal Access Token', '[]', 0, '2022-10-10 10:09:55', '2022-10-10 10:09:55', '2023-10-10 05:09:55'),
('608209e26af81ba1fb3d7114f1eacda185a9fb65cf4395ae3f35add4ee83d1f26a7a40f2d795f124', 1, 1, 'Personal Access Token', '[]', 0, '2022-10-01 23:25:39', '2022-10-01 23:25:39', '2023-10-01 18:25:39'),
('619550e64ecd10aeb45d42dbb20317f79a38df116352e3774d5146d2f4467cc113daa3a832fb5c03', 1, 1, 'Personal Access Token', '[]', 0, '2022-10-10 01:07:40', '2022-10-10 01:07:40', '2023-10-09 20:07:40'),
('620a453844a1522798f1a69ad360e792a55208e2e44df80de1ce51928794f44464e87c7c85a81872', 1, 1, 'Personal Access Token', '[]', 0, '2022-10-09 11:20:18', '2022-10-09 11:20:18', '2023-10-09 06:20:18'),
('6219a7b839c05c234a8361c434a6ef7082bdc41fb4d146ad11472404e6546d19b3fd0140d611392d', 1, 1, 'Personal Access Token', '[]', 0, '2022-10-10 03:45:37', '2022-10-10 03:45:37', '2023-10-09 22:45:37'),
('65a97ec37a3de3052f6543e94740ca41411736bc39323f0dc680da01c15bb8c88aac5a75cdc9899f', 1, 1, 'Personal Access Token', '[]', 0, '2022-10-10 01:27:18', '2022-10-10 01:27:18', '2023-10-09 20:27:18'),
('6633bddb46767cf7fe93eb37fd31b8d2a3c4ed8b1c4c252784d932e09b1adafe027c9c03b560d50d', 1, 1, 'Personal Access Token', '[]', 0, '2022-10-09 23:41:55', '2022-10-09 23:41:55', '2023-10-09 18:41:55'),
('6810a1f7e4c9d31b88470f6b090fe78fad6ccbf4fd9d5b6d0f595fb534bc05c5304db871ab3643a7', 13, 1, 'Personal Access Token', '[]', 0, '2022-10-01 20:54:00', '2022-10-01 20:54:00', '2023-10-01 15:54:00'),
('68928af7143039939036527866e082e02c5f5f41c23e607ecb65e111160c9b43a21aa7a646dc668f', 16, 1, 'Personal Access Token', '[]', 0, '2022-10-01 21:00:24', '2022-10-01 21:00:24', '2023-10-01 16:00:24'),
('69167df4a3a7ab5935cfdb59d1f6baf5bfe6d0f8e9d70017335e9c4071bb9ef25ef7bea4306238d7', 1, 1, 'Personal Access Token', '[]', 0, '2022-10-10 10:17:40', '2022-10-10 10:17:40', '2023-10-10 05:17:40'),
('69babba604ed86d7898f9b71f179b703e6d2685e9feafb6d90708c259815f3f53a9485b21c4d47ad', 45, 1, 'Personal Access Token', '[]', 0, '2022-10-01 22:05:23', '2022-10-01 22:05:23', '2023-10-01 17:05:23'),
('6afa7bea7ae3e19fbda37484861662cb3a7997415a81288b164e9579c961ca0841fba83db361f906', 49, 1, 'Personal Access Token', '[]', 0, '2022-10-01 22:10:40', '2022-10-01 22:10:40', '2023-10-01 17:10:40'),
('6c263d7440ffbc9f624df53e461d3ec3805f4adf09716d18ee228fe08d7b0ee17f287358361d7684', 9, 1, 'Personal Access Token', '[]', 0, '2022-10-01 20:49:52', '2022-10-01 20:49:52', '2023-10-01 15:49:52'),
('71fd34ffe789ac52d818f25f530b0438588cff22cec04533ab7bc5896e4e7b19a8b11da1c3677670', 1, 1, 'Personal Access Token', '[]', 0, '2022-10-10 10:19:06', '2022-10-10 10:19:06', '2023-10-10 05:19:06'),
('75d54e68f8366112b056f694159b842d3d54c9bd1482bc9932a32d76f985f55c8cbd9d8e18aee134', 1, 1, 'Personal Access Token', '[]', 0, '2022-10-10 03:19:34', '2022-10-10 03:19:34', '2023-10-09 22:19:34'),
('78bc69d505c58e6d303475edea22d47595934a4c807c32348aa08868010f6bcb7ecb3a7f9895825a', 1, 1, 'Personal Access Token', '[]', 0, '2022-10-10 06:01:21', '2022-10-10 06:01:21', '2023-10-10 01:01:21'),
('80e0c846657bff77f95b640a9bb4e1327ddcc61155f40e2d6adbfa5f9ec3ad06d24303d556e04252', 1, 1, 'Personal Access Token', '[]', 0, '2022-10-10 00:57:37', '2022-10-10 00:57:37', '2023-10-09 19:57:37'),
('82819430eaedcd2dfea1dfe497a556408863f42e8539dc3219fab7dbf247fd68ca948832ded424c5', 1, 1, 'Personal Access Token', '[]', 0, '2022-10-02 01:28:42', '2022-10-02 01:28:42', '2023-10-01 20:28:42'),
('851306b6003a4bd3d80cbe6531eb52153afdccb5f4a99ee591da4020390cea9f8ecfe680222dd720', 21, 1, 'Personal Access Token', '[]', 0, '2022-10-01 21:07:54', '2022-10-01 21:07:54', '2023-10-01 16:07:54'),
('86a4075c022e76e881b47e7af0c51458597e0b270e59230e8333d48962b1970a23224ed077501179', 1, 1, 'Personal Access Token', '[]', 0, '2022-10-10 10:18:26', '2022-10-10 10:18:26', '2023-10-10 05:18:26'),
('89b676de64f7ac8fba565189cedbdb92be624e6f69d195fb59e1e52d57916c26932e2615acfa5edf', 1, 1, 'Personal Access Token', '[]', 0, '2022-10-10 05:50:57', '2022-10-10 05:50:57', '2023-10-10 00:50:57'),
('8d3e7dc68113450bc9873987d4f19296471886b89c1a478f8f076f1cfcbc9ec510f1665d916e3905', 37, 1, 'Personal Access Token', '[]', 0, '2022-10-01 22:02:41', '2022-10-01 22:02:41', '2023-10-01 17:02:41'),
('8d6bd0d2d46076ba405bf2db2e251a7cf984d3469f64a0c38e4916d07056c6abbe6ebe0558ea085c', 29, 1, 'Personal Access Token', '[]', 0, '2022-10-01 21:41:25', '2022-10-01 21:41:25', '2023-10-01 16:41:25'),
('8d96a043b2990a4bb0ef5835042123f8761dd19d1b1d8d4fd38d6d5020a0e1f7522c4c671ec21c35', 1, 1, 'Personal Access Token', '[]', 0, '2022-10-10 01:16:51', '2022-10-10 01:16:51', '2023-10-09 20:16:51'),
('8e47ff72e779a4ee3c2c8716a4434355cce7456a2fc4c823e5ce7f33c6c8e79baa21a54821ee46ff', 1, 1, 'Personal Access Token', '[]', 0, '2022-10-10 10:16:47', '2022-10-10 10:16:47', '2023-10-10 05:16:47'),
('8eb883d0f715419559e22c2ada87e04be755c4bc998e9769e3362a26cdc4a02445ec576883d10de5', 1, 1, 'Personal Access Token', '[]', 0, '2022-10-10 10:18:44', '2022-10-10 10:18:44', '2023-10-10 05:18:44'),
('905993cf02352f12e47ba4dbd0c145e5222778415f83e830fefa099e6ad5a78add3ac459450eefa0', 1, 1, 'Personal Access Token', '[]', 0, '2022-10-10 06:08:41', '2022-10-10 06:08:41', '2023-10-10 01:08:41'),
('91d6528bacc19b7d06b9f2d359dd1a593a26b209e38d77d27ebedfbeafb968375464be518f80d21a', 1, 1, 'Personal Access Token', '[]', 0, '2022-10-02 01:34:17', '2022-10-02 01:34:17', '2023-10-01 20:34:17'),
('9218b499344a204eac7365bd03df95519a1063606dbe8662fb8a93f0ac0f6e7b1bd5909324cf25da', 1, 1, 'Personal Access Token', '[]', 0, '2022-10-02 01:34:30', '2022-10-02 01:34:30', '2023-10-01 20:34:30'),
('9363d04a86b4a435527ae503698533dcf9d3a386f4a93a58dfa22095f5299fe28c0b41cd34bf3481', 1, 1, 'Personal Access Token', '[]', 0, '2022-10-10 01:08:44', '2022-10-10 01:08:44', '2023-10-09 20:08:44'),
('93bcf0bbeccac7f03a6ed1b45a37892bdb085093688b251e049380c4fde0b49d34f471cee6900603', 1, 1, 'Personal Access Token', '[]', 0, '2022-10-10 00:54:26', '2022-10-10 00:54:26', '2023-10-09 19:54:26'),
('96b4f0d4b3459b8ac524b086806f224ed860c7d3c2f6935881d1bd8223c4f0b1bd443966459cf688', 1, 1, 'Personal Access Token', '[]', 0, '2022-10-10 10:15:17', '2022-10-10 10:15:17', '2023-10-10 05:15:17'),
('9872646571b085eec45fb8044d4d54b048874479eab1fa59526a492941122c271d5efc41668f7c81', 5, 1, 'Personal Access Token', '[]', 0, '2022-10-01 20:37:34', '2022-10-01 20:37:34', '2023-10-01 15:37:34'),
('9bf7943938f463a4e5362d1aabe6a064e6b01e1ae9ada855a843856299792bebb87cb991ad599a04', 1, 1, 'Personal Access Token', '[]', 0, '2022-10-02 00:21:10', '2022-10-02 00:21:10', '2023-10-01 19:21:10'),
('9e63982dded79200526a1a43064bb7cb6f4c019863922a941335b37ddf792ff740a95278eb064ef5', 7, 1, 'Personal Access Token', '[]', 0, '2022-10-01 20:39:06', '2022-10-01 20:39:06', '2023-10-01 15:39:06'),
('9f170f00c0bba224935aff542e451adb87622c1a47239a68516c1e0acac957c8b7eb87780ecf99ee', 1, 1, 'Personal Access Token', '[]', 0, '2022-10-10 05:54:49', '2022-10-10 05:54:49', '2023-10-10 00:54:49'),
('9fd1a8f6d7bc35a845b0fba0a0ed5c740dc7004ce42c20008108e172ef094cfce83a5e1314c5fdc6', 23, 1, 'Personal Access Token', '[]', 0, '2022-10-01 21:14:19', '2022-10-01 21:14:19', '2023-10-01 16:14:19'),
('a741a8cc29f6dd1165713fcd264f823af68c501c7d4648c3efb783907c9c1637110e3b3999d23c10', 1, 1, 'Personal Access Token', '[]', 0, '2022-10-10 00:52:29', '2022-10-10 00:52:29', '2023-10-09 19:52:29'),
('a8f935a39d0f24f72be471254bcd65f4d4e1fdb477d0f7fdb23aa8bf2eba34d4655c04a4517dcbe5', 21, 1, 'Personal Access Token', '[]', 0, '2022-10-01 21:06:18', '2022-10-01 21:06:18', '2023-10-01 16:06:18'),
('ac03aa56e40fab92c6b2d946cc9c18cb1ede3f8f384449562c103e8c17b1b3a1442f76f3d7cc0977', 1, 1, 'Personal Access Token', '[]', 0, '2022-10-10 03:17:34', '2022-10-10 03:17:34', '2023-10-09 22:17:34'),
('ac2c006ddced1f5170193ed7fc6561583bc6506e9946da36257f661aaf7491548454d06c3ffc2ff4', 12, 1, 'Personal Access Token', '[]', 0, '2022-10-01 20:53:05', '2022-10-01 20:53:05', '2023-10-01 15:53:05'),
('b115b73c0a13d009880847d0aa149ceb6c48d2fc7f432dd09b5572917c4c6bd95acb5658365839a2', 1, 1, 'Personal Access Token', '[]', 0, '2022-10-01 05:29:45', '2022-10-01 05:29:45', '2023-10-01 00:29:45'),
('b5cd76b760566efee9f2136e2981c8c2ec59f299193505a939fa5f99ed83df3e3172316c6988ec12', 1, 1, 'Personal Access Token', '[]', 0, '2022-10-01 23:42:49', '2022-10-01 23:42:49', '2023-10-01 18:42:49'),
('b67ec99319b5277b07089f7727ccadfc5e156b8221a26ef21a48cdb22037897cb4b0cecb737d7439', 10, 1, 'Personal Access Token', '[]', 0, '2022-10-01 20:51:23', '2022-10-01 20:51:23', '2023-10-01 15:51:23'),
('b90e753d54294d54add27fbd2b9940da2305193f6a52e16a2a9c3faa7bafa30cc3e58e66f8633ff8', 3, 1, 'Personal Access Token', '[]', 0, '2022-10-01 20:28:58', '2022-10-01 20:28:58', '2023-10-01 15:28:58'),
('b9c780866e0000f296c0cce66e71dbf87a31f44fb85a7cf0ade77118d73e1d1160497d0bbd4c540f', 19, 1, 'Personal Access Token', '[]', 0, '2022-10-01 21:04:10', '2022-10-01 21:04:10', '2023-10-01 16:04:10'),
('bec987cb3c4ce977eca0f3e38bca0060cd3474168633f13278ecf85631e43068d9e518679b4e2935', 55, 1, 'Personal Access Token', '[]', 0, '2022-10-01 22:31:56', '2022-10-01 22:31:56', '2023-10-01 17:31:56'),
('bfe62ac130b4a0219a19b57278a2070ca3e13039c49bb8220b8fc15202df38d3c77a45a3225aac53', 57, 1, 'Personal Access Token', '[]', 0, '2022-10-01 23:07:58', '2022-10-01 23:07:58', '2023-10-01 18:07:58'),
('c494b6bada975baf1857f1cf4bdacb7b134e6c950ea1cf95ebaae2e705cee1475bbb4b2657c5a0c5', 1, 1, 'Personal Access Token', '[]', 0, '2022-10-10 09:34:31', '2022-10-10 09:34:31', '2023-10-10 04:34:31'),
('c4fb2dce06d21a55cbfe496c1d26fdf4410398e62d0fd6032131d349f7d66c057fcb395021881e3e', 1, 1, 'Personal Access Token', '[]', 0, '2022-10-01 23:14:48', '2022-10-01 23:14:48', '2023-10-01 18:14:48'),
('cb5a0c3cb42b536f339b46c849d0eada7f9509a665b3666bb6b8fb4d48d88e01701219af11b601cb', 39, 1, 'Personal Access Token', '[]', 0, '2022-10-01 22:04:19', '2022-10-01 22:04:19', '2023-10-01 17:04:19'),
('cdfa664ee1541cc059720c7fb65eb7808dd21d9764d3f35ace3d7b5b835c21f40fa689f6fcbe1325', 1, 1, 'Personal Access Token', '[]', 0, '2022-10-02 01:28:26', '2022-10-02 01:28:26', '2023-10-01 20:28:26'),
('d010a039b5ef532af8ed1b755adf8f83c2da42a79fe540d30b60928cb8d6a2f385d2952ad5457d07', 1, 1, 'Personal Access Token', '[]', 0, '2022-10-01 23:18:59', '2022-10-01 23:18:59', '2023-10-01 18:18:59'),
('d09143d0571187059e456e8b0ccab0fad6ee727e653e8c0172fe1d57282db22a22e5c99cbe0a85ec', 9, 1, 'Personal Access Token', '[]', 0, '2022-10-01 20:48:37', '2022-10-01 20:48:37', '2023-10-01 15:48:37'),
('d0bd8635263dc4197caaf385b35c56a4a4bf3eacddba4180e2200a7a83da43fe1dd97d2f0cfbfa6d', 1, 1, 'Personal Access Token', '[]', 0, '2022-10-10 10:17:13', '2022-10-10 10:17:13', '2023-10-10 05:17:13'),
('d15be7e0864b60110b09317dab2a2fed07332ef6544791370d4242e06031c9e5842ce4a7fc89fb21', 1, 1, 'Personal Access Token', '[]', 0, '2022-10-02 01:23:43', '2022-10-02 01:23:43', '2023-10-01 20:23:43'),
('d1a0ade44e1525b049b5f2f98352dd151aef00c2e5777d58d640e30103feca0fb796e200f7a11e6e', 1, 1, 'Personal Access Token', '[]', 0, '2022-10-10 01:28:08', '2022-10-10 01:28:08', '2023-10-09 20:28:08'),
('d39e9c80792a7081831c6946602595dc532d6a57ca8d8cddd4666e9e60e4dc0f8e09969a26072663', 1, 1, 'Personal Access Token', '[]', 0, '2022-10-10 01:12:38', '2022-10-10 01:12:38', '2023-10-09 20:12:38'),
('d5702c34492b8f10d217d63a0aa8ddf4434cdeb687d091ba73e2c93af63f5098a586f2614f15265b', 8, 1, 'Personal Access Token', '[]', 0, '2022-10-01 20:47:53', '2022-10-01 20:47:53', '2023-10-01 15:47:53'),
('d8dca9c767ab9a0ccdbdb89e9354af5d4ed4e816bedc3aa30c5ad5d0ba1248e3a733a709033467be', 1, 1, 'Personal Access Token', '[]', 0, '2022-10-10 00:47:10', '2022-10-10 00:47:10', '2023-10-09 19:47:10'),
('dae48b96c5841b689339928c7819911f0209d0dd17eb2d8b25bb2a1a75d4871ad7cb4729e9c1ecbf', 1, 1, 'Personal Access Token', '[]', 0, '2022-10-10 10:18:07', '2022-10-10 10:18:07', '2023-10-10 05:18:07'),
('dcf1fca2ed6ab6a199059bbf8285731f51c93a267dbcfea65274378d054c9bbce7546a7bd2c4e88d', 27, 1, 'Personal Access Token', '[]', 0, '2022-10-01 21:37:18', '2022-10-01 21:37:18', '2023-10-01 16:37:18'),
('dfd5c611d15a011a549f52b3779cd0a638a8f64f2383e785641a9d52acf29ca3829a6508a07e7368', 1, 1, 'Personal Access Token', '[]', 0, '2022-10-10 10:06:55', '2022-10-10 10:06:55', '2023-10-10 05:06:55'),
('e63b2bd483d70eda00da1b25f817f4af2275669b425ae04ebd3e1fde5951abbc87cc02f184df9022', 47, 1, 'Personal Access Token', '[]', 0, '2022-10-01 22:10:11', '2022-10-01 22:10:11', '2023-10-01 17:10:11'),
('e68e866fc60f2c242ba1c5861c8bd4e9426531a895750595806fc07f48b8ce5f510b82b4bc690e59', 1, 1, 'Personal Access Token', '[]', 0, '2022-10-10 01:08:36', '2022-10-10 01:08:36', '2023-10-09 20:08:36'),
('ea761ece540e13c0e33b520c30373ed6702b69a64aa15f018e8b0c16df7d4b75af3d41fa51a53639', 23, 1, 'Personal Access Token', '[]', 0, '2022-10-01 21:17:51', '2022-10-01 21:17:51', '2023-10-01 16:17:51'),
('ecae9ffc003674f26be911611e78de9bd0d8df415faf52c5c0c68691d3057951c23670244901e2d5', 17, 1, 'Personal Access Token', '[]', 0, '2022-10-01 21:02:36', '2022-10-01 21:02:36', '2023-10-01 16:02:36'),
('f2dd3c29f43d0b50bba6b4f52e4f69b0129237152d185a2f4987b9c33874b44c7e239cb47a929f44', 1, 1, 'Personal Access Token', '[]', 0, '2022-10-01 20:19:30', '2022-10-01 20:19:30', '2023-10-01 15:19:30'),
('f6dcbd833436f5a89553e3904b3741e30cbdf6b4d9056cf4f93a1969a2347cdd62e2f7f348dc41a6', 20, 1, 'Personal Access Token', '[]', 0, '2022-10-01 21:04:30', '2022-10-01 21:04:30', '2023-10-01 16:04:30'),
('f823e41a8b5f0433b0d599f1ff01c27bd848f5a98e928a91b65933d4c983f0be721b957076f2c334', 1, 1, 'Personal Access Token', '[]', 0, '2022-10-02 01:35:01', '2022-10-02 01:35:01', '2023-10-01 20:35:01'),
('fd2009b0859568f16d79e8050ab6cf224615fd3ffeb6bb1ef487aa210c4d2351c6a65758dc806e48', 6, 1, 'Personal Access Token', '[]', 0, '2022-10-01 20:38:28', '2022-10-01 20:38:28', '2023-10-01 15:38:28'),
('fead777749ecbf39527097d9d9de4a4802fabee467ac5bba2304661179c9cf361c89215c72302154', 1, 1, 'Personal Access Token', '[]', 0, '2022-10-10 01:27:34', '2022-10-10 01:27:34', '2023-10-09 20:27:34'),
('ff788691750bc1fd92d1e94ab71b2f882b95e270f7c2897ab826551293e57c2ffa41b92b826f8329', 1, 1, 'Personal Access Token', '[]', 0, '2022-10-02 01:23:03', '2022-10-02 01:23:03', '2023-10-01 20:23:03');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Ecommerce Evertec Personal Access Client', 'OFwDjD5KbH00SM1v34KQGoLgIgaqImgzHf0xjPCp', NULL, 'http://localhost', 1, 0, 0, '2022-10-01 05:29:38', '2022-10-01 05:29:38'),
(2, NULL, 'Ecommerce Evertec Password Grant Client', 'gQRbhzNbI75Y55hca3brEDbjdush7dE80eSrjJBJ', 'users', 'http://localhost', 0, 1, 0, '2022-10-01 05:29:38', '2022-10-01 05:29:38');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2022-10-01 05:29:38', '2022-10-01 05:29:38');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_product` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `requestId` text COLLATE utf8mb4_unicode_ci,
  `reference` text COLLATE utf8mb4_unicode_ci,
  `processUrl` text COLLATE utf8mb4_unicode_ci,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'CREATED',
  `message` text COLLATE utf8mb4_unicode_ci,
  `date_trans` text COLLATE utf8mb4_unicode_ci,
  `method` text COLLATE utf8mb4_unicode_ci,
  `ref_int` text COLLATE utf8mb4_unicode_ci,
  `bank` text COLLATE utf8mb4_unicode_ci,
  `id_cliente` text COLLATE utf8mb4_unicode_ci,
  `llave_secreta` text COLLATE utf8mb4_unicode_ci,
  `token` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `orders`
--

INSERT INTO `orders` (`id`, `customer_name`, `customer_email`, `customer_mobile`, `id_product`, `requestId`, `reference`, `processUrl`, `status`, `message`, `date_trans`, `method`, `ref_int`, `bank`, `id_cliente`, `llave_secreta`, `token`, `created_at`, `updated_at`) VALUES
(1, 'JAIR LEONARDO ZEA', 'jairzeapaez@gmail.com', '321709818', '3', '64184', '1_TEST_1665382776', 'https://checkout-co.placetopay.dev/session/64184/3e3432e6c21ed81d0f66b395e22f81d3', 'PENDING', 'Aprobada', '2021-01-26T20:26:12-05:00', 'Visa', '7403', 'BANCO DE PRUEBAS', 'a2ya10arfxKaJ4/2JgYTCdmnH/DT..iUKz3tUvwroJ3bp1JKZS1MaOTDgYwy', 'o2yo12oZvkSTzXtfg5OH4W.NANK/.FOAS9JhQXzl4VgreY7ovD2MV5qWpOAC', 'Basic YTJ5YTEwYXJmeEthSjQvMkpnWVRDZG1uSC9EVC4uaVVLejN0VXZ3cm9KM2JwMUpLWlMxTWFPVERnWXd5Om8yeW8xMm9admtTVHpYdGZnNU9INFcuTkFOSy8uRk9BUzlKaFFYemw0VmdyZVk3b3ZEMk1WNXFXcE9BQw==', '2021-01-27 11:25:40', '2022-10-10 11:19:37'),
(2, 'JAIR LEONARDO ZEA', 'jairzeapaez@gmail.com', '3217098185', '3', '64177', '2_TEST_1665382354', 'https://checkout-co.placetopay.dev/session/64177/d10883a0b4f6b4f9dd6a9bc650edd7db', 'PENDING', NULL, NULL, NULL, NULL, NULL, 'a2ya10aWPOh/nT9yaH1NO8QiQI5ze5fr4L53RroWjU3tdmK2lKZ2TP3lhSPy', 'o2yo12o.KSUsP7WuZcqEGWHnJU4P.F1jBEJdNXTeBUmXktphcZEDVc8.EcC.', 'Basic YTJ5YTEwYVdQT2gvblQ5eWFIMU5POFFpUUk1emU1ZnI0TDUzUnJvV2pVM3RkbUsybEtaMlRQM2xoU1B5Om8yeW8xMm8uS1NVc1A3V3VaY3FFR1dIbkpVNFAuRjFqQkVKZE5YVGVCVW1Ya3RwaGNaRURWYzguRWNDLg==', '2021-01-27 11:53:01', '2022-10-10 11:12:35'),
(3, 'JAIR LEONARDO ZEA', 'jairzeapaez@gmail.com', '1233455', '4', '32436', '3TEST_1611714670', 'https://dev.placetopay.com/redirection/session/32436/f318d893b2f3334640a36023f8249958', 'APPROVED', 'Aprobada', '2021-01-26T21:31:26-05:00', 'Visa', '7405', 'BANCO DE PRUEBAS', 'a2ya10aVByYd9B7R3.amNT/nXqHROSmXvmgRsbC8dU5gVT51VTXiX7kTRtEq', 'o2yo12owMtlZm/.OR8ZO3PKq.vV8e.Dj5BwqiAKRiOcz6U6zscfe8sXfi0ay', 'Basic YTJ5YTEwYVZCeVlkOUI3UjMuYW1OVC9uWHFIUk9TbVh2bWdSc2JDOGRVNWdWVDUxVlRYaVg3a1RSdEVxOm8yeW8xMm93TXRsWm0vLk9SOFpPM1BLcS52VjhlLkRqNUJ3cWlBS1JpT2N6NlU2enNjZmU4c1hmaTBheQ==', '2021-01-27 12:31:05', '2021-01-27 12:34:22'),
(4, 'JAIR LEONARDO ZEA', 'jairzeapaez@gmail.com', '3214626732', '3', '32437', '4TEST_1611720663', 'https://dev.placetopay.com/redirection/session/32437/0200f53e954346e84f2129b147158d42', 'REJECTED', 'Negada Establecimiento debe comunicarse con el centro de autorizaciones', '2021-01-26T23:11:30-05:00', 'Visa', '7406', 'BANCO DE PRUEBAS', 'a2ya10ay2rNk17CKvrIuVEkW/cbUedAoVIWiuKZG4lJzPEeiWn4LoayLFUzW', 'o2yo12oLv/Xj2H5UpnvjMdzEtu7d.KWAhQ1NP2LizqdrlLUmv8VxERDZn8IW', 'Basic YTJ5YTEwYXkyck5rMTdDS3ZySXVWRWtXL2NiVWVkQW9WSVdpdUtaRzRsSnpQRWVpV240TG9heUxGVXpXOm8yeW8xMm9Mdi9YajJINVVwbnZqTWR6RXR1N2QuS1dBaFExTlAyTGl6cWRybExVbXY4VnhFUkRabjhJVw==', '2021-01-27 14:10:56', '2021-01-27 14:11:33'),
(5, 'JAIR LEONARDO ZEA', 'jairzeapaez@gmail.com', '2345678', '2', '32439', '5TEST_1611722717', 'https://dev.placetopay.com/redirection/session/32439/51afeb6de3e5a820e528f177a4f64332', 'PENDING', NULL, NULL, NULL, NULL, NULL, 'a2ya10aO2DAs4uaNyQa3kwIF.RVtu/ffP2xByPCH89rMd2ySa1YDasUubCZK', 'o2yo12oWS4eW4mSDK4r1jdPxYIkFO0dWzEZtsH4kByMrRWSoMVq1vIzZE9IK', 'Basic YTJ5YTEwYU8yREFzNHVhTnlRYTNrd0lGLlJWdHUvZmZQMnhCeVBDSDg5ck1kMnlTYTFZRGFzVXViQ1pLOm8yeW8xMm9XUzRlVzRtU0RLNHIxamRQeFlJa0ZPMGRXekVadHNINGtCeU1yUldTb01WcTF2SXpaRTlJSw==', '2021-01-27 14:26:23', '2021-01-27 14:45:46'),
(6, 'Lisney hernandez', 'lisneyhernandez@gmail.com', '3112873757', '3', '64144', '6_TEST_1665370861', 'https://checkout-co.placetopay.dev/session/64144/4ad78e8b56c74f67c33fe18e03a2574d', 'PENDING', NULL, NULL, NULL, NULL, NULL, 'a2ya10apRhV/Y/iAa4GtgyPtwRPhujniagH2wPexHWCh43m3X/PhmTFBn3ye', 'o2yo12oa5g/xqcqSZRF9ueQ6H.nKOUMC2g2s3B1f9h2FGOsRcgPPpwFB7BKu', 'Basic YTJ5YTEwYXBSaFYvWS9pQWE0R3RneVB0d1JQaHVqbmlhZ0gyd1BleEhXQ2g0M20zWC9QaG1URkJuM3llOm8yeW8xMm9hNWcveHFjcVNaUkY5dWVRNkgubktPVU1DMmcyczNCMWY5aDJGR09zUmNnUFBwd0ZCN0JLdQ==', '2021-01-27 16:01:59', '2022-10-10 08:01:02'),
(7, 'JAIR LEONARDO ZEA', 'jairzeapaez@gmail.com', '3217098285', '5', '32444', '7TEST_1611736189', 'https://dev.placetopay.com/redirection/session/32444/070b4f730f4d4897c47200b31539da12', 'APPROVED', 'Aprobada', '2021-01-27T03:27:29-05:00', 'Visa', '7412', 'BANCO DE PRUEBAS', 'a2ya10af6EUS5Vqu0mnfvDwtGBkHu6HlqNoArPh6lvL8Sjp4ENCFvLMjLh8q', 'o2yo12oYTQjEosESG87wgE4S1eGJ.PJEGkMe.ZiCurtVR39FYG9RiopLAsfO', 'Basic YTJ5YTEwYWY2RVVTNVZxdTBtbmZ2RHd0R0JrSHU2SGxxTm9BclBoNmx2TDhTanA0RU5DRnZMTWpMaDhxOm8yeW8xMm9ZVFFqRW9zRVNHODd3Z0U0UzFlR0ouUEpFR2tNZS5aaUN1cnRWUjM5RllHOVJpb3BMQXNmTw==', '2021-01-27 18:09:50', '2021-01-27 18:29:49'),
(8, 'JAIR ZEA', 'jairzeapaez@gmail.com', '32145678', '1', '32446', '8TEST_1611736509', 'https://dev.placetopay.com/redirection/session/32446/84a7bf021ac2ff3d97c18b176203a8cb', 'APPROVED', 'Aprobada', '2021-01-27T03:35:26-05:00', 'Visa', '7414', 'BANCO DE PRUEBAS', 'a2ya10aUkvrxnReWmuw87h00NY5YuObfwG4Gyrqs1zg/wls9qnauK5Tm8eMG', 'o2yo12oSVKx5QMMm1hWo5U26hIX4OOi8P5IbGL3FshU.KqD4DFBxyKvQ4RiC', 'Basic YTJ5YTEwYVVrdnJ4blJlV211dzg3aDAwTlk1WXVPYmZ3RzRHeXJxczF6Zy93bHM5cW5hdUs1VG04ZU1HOm8yeW8xMm9TVkt4NVFNTW0xaFdvNVUyNmhJWDRPT2k4UDVJYkdMM0ZzaFUuS3FENERGQnh5S3ZRNFJpQw==', '2021-01-27 18:30:38', '2021-01-27 18:35:31'),
(9, 'JAIR LEONARDO ZEA', 'lisneyhernandez@gmail.com', '321709878', '3', '32447', '9TEST_1611736689', 'https://dev.placetopay.com/redirection/session/32447/f98ea177b6f819c13de5ca571666b3da', 'APPROVED', 'Aprobada', '2021-01-27T03:39:16-05:00', 'Visa', '7415', 'BANCO DE PRUEBAS', 'a2ya10a4gHGXCvZPxpn54OzhZicseA.zmBkxtdMTCB8sj2.nopq8A/US9oX2', 'o2yo12oT6xn66TzJHho.aPImQYpfuh9FtWAi10WyTz8KL5llZyWqaN6VBhoe', 'Basic YTJ5YTEwYTRnSEdYQ3ZaUHhwbjU0T3poWmljc2VBLnptQmt4dGRNVENCOHNqMi5ub3BxOEEvVVM5b1gyOm8yeW8xMm9UNnhuNjZUekpIaG8uYVBJbVFZcGZ1aDlGdFdBaTEwV3lUejhLTDVsbFp5V3FhTjZWQmhvZQ==', '2021-01-27 18:38:03', '2021-01-27 18:39:21'),
(10, 'JAIR LEONARDO ZEA', 'jairzeapaez@gmail.com', '2345678876', '3', '32448', '10TEST_1611737322', 'https://dev.placetopay.com/redirection/session/32448/86d96edb66aad4cd789d30a12800956d', 'PENDING', NULL, NULL, NULL, NULL, NULL, 'a2ya10aizbpmAtCk88EWQMye8dNMe9vvlHlbevwCSpmrvgbr2hzFHgUASnTK', 'o2yo12oSKW2.2Fe8o405kMV0LQSk.f2Rhz.aTwfLrBEyl5/7NZSgf/6Z48va', 'Basic YTJ5YTEwYWl6YnBtQXRDazg4RVdRTXllOGROTWU5dnZsSGxiZXZ3Q1NwbXJ2Z2JyMmh6RkhnVUFTblRLOm8yeW8xMm9TS1cyLjJGZThvNDA1a01WMExRU2suZjJSaHouYVR3ZkxyQkV5bDUvN05aU2dmLzZaNDh2YQ==', '2021-01-27 18:47:52', '2021-01-27 18:52:28'),
(11, 'JAIR ZEA', 'jairzeapaez@gmail.com', '3217098185', '4', '64183', '11_TEST_1665382403', 'https://checkout-co.placetopay.dev/session/64183/866f541ac3872c891815224cc5a9801b', 'PENDING', NULL, NULL, NULL, NULL, NULL, 'a2ya10a6r8f87jfCWAOLMUj55hiXuYJ4sn0VgH0S3bMi3EnnEG1HZYO.TqMa', 'o2yo12osmQ2SXuVTRNgWAaKLGspduMJ.42N3FJyDWCwf63ohFWdn658rYOha', 'Basic YTJ5YTEwYTZyOGY4N2pmQ1dBT0xNVWo1NWhpWHVZSjRzbjBWZ0gwUzNiTWkzRW5uRUcxSFpZTy5UcU1hOm8yeW8xMm9zbVEyU1h1VlRSTmdXQWFLTEdzcGR1TUouNDJOM0ZKeURXQ3dmNjNvaEZXZG42NThyWU9oYQ==', '2021-01-27 18:59:21', '2022-10-10 11:13:24'),
(12, 'JAIR ZEA', 'jairzeapaez@gmail.com', '2345678', '3', '64179', '12_TEST_1665382355', 'https://checkout-co.placetopay.dev/session/64179/37099806c1f70fbd76646fe035df6296', 'PENDING', NULL, NULL, NULL, NULL, NULL, 'a2ya10aMJ47VaX0qlbP5TPM8qx3be2V/w58Z.khze6fzuENvvBSBK8oBpKiq', 'o2yo12oQb3sq0rZShF8SDSBvriaTON.mEuF.Y8OwGgxLQYWprcIOmHFp.iVy', 'Basic YTJ5YTEwYU1KNDdWYVgwcWxiUDVUUE04cXgzYmUyVi93NThaLmtoemU2Znp1RU52dkJTQks4b0JwS2lxOm8yeW8xMm9RYjNzcTByWlNoRjhTRFNCdnJpYVRPTi5tRXVGLlk4T3dHZ3hMUVlXcHJjSU9tSEZwLmlWeQ==', '2021-01-27 19:08:50', '2022-10-10 11:12:36'),
(13, 'Lisney Hernane', 'lis@mail.com', '1234567890', '1', '63207', '13_TEST_1664906043', 'https://checkout-co.placetopay.dev/session/63207/5c7ddc7f921763d0e991cbea859244b8', 'REJECTED', 'La petición ha expirado', '2022-10-07T09:41:09-05:00', '', '', '', NULL, NULL, NULL, '2022-10-01 19:07:22', '2022-10-07 19:41:10'),
(14, 'Lisney Hernane', 'lis@mail.com', '1234567890', '1', '63654', '14_TEST_1665153415', 'https://checkout-co.placetopay.dev/session/63654/6721d71c9b37a761486a4290cd64d63c', 'PENDING', 'La petición se encuentra activa', '2022-10-07T09:40:28-05:00', '', '', '', NULL, NULL, NULL, '2022-10-01 19:59:55', '2022-10-07 19:40:28'),
(15, 'Prueba de registro', 'prueba@mail.com', '3217098185', '2', '63629', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-01 20:08:25', '2022-10-07 09:55:17'),
(16, 'jhvbjh', 'myfsil@mail.com', '3217098185', '2', '63630', NULL, NULL, '', 'La petición se encuentra activa', '2022-10-07T00:28:03-05:00', '', '', '', NULL, NULL, NULL, '2022-10-01 20:52:39', '2022-10-07 10:28:03'),
(17, 'jhvbjh', 'ewawe@mail.com', '3217098185', '2', NULL, NULL, NULL, 'CREATED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-01 20:53:05', '2022-10-01 20:53:05'),
(18, 'Prueba de registro', 'prueba@mail.com', '3217098185', '2', NULL, NULL, NULL, 'CREATED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-01 21:17:51', '2022-10-01 21:17:51'),
(19, 'Prueba de registrosss', 'jujjjislio@mail.com', '3217098185', '2', NULL, NULL, NULL, 'CREATED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-01 21:18:20', '2022-10-01 21:18:20'),
(20, 'Jair Zea', 'jzea@mail.com', '3217896523', '1', NULL, NULL, NULL, 'CREATED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-10 06:57:46', '2022-10-10 06:57:46'),
(21, 'Jair Zea', 'jzea@mail.com', '3217896523', '2', NULL, NULL, NULL, 'CREATED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-10 06:58:21', '2022-10-10 06:58:21'),
(22, 'Jair Zea', 'jzea@mail.com', '3217896523', '1', NULL, NULL, NULL, 'CREATED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-10 07:04:17', '2022-10-10 07:04:17'),
(23, 'Jair Zea', 'jzea@mail.com', '3217896523', '1', NULL, NULL, NULL, 'CREATED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-10 07:06:51', '2022-10-10 07:06:51'),
(24, 'Jair Zea', 'jzea@mail.com', '3217896523', '1', NULL, NULL, NULL, 'CREATED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-10 07:12:31', '2022-10-10 07:12:31'),
(25, 'Jair Zea', 'jzea@mail.com', '3217896523', '1', NULL, NULL, NULL, 'CREATED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-10 07:19:08', '2022-10-10 07:19:08'),
(26, 'Jair Zea', 'jzea@mail.com', '3217896523', '2', NULL, NULL, NULL, 'CREATED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-10 07:22:48', '2022-10-10 07:22:48'),
(27, 'Jair Zea', 'jzea@mail.com', '3217896523', '2', NULL, NULL, NULL, 'CREATED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-10 07:28:37', '2022-10-10 07:28:37'),
(28, 'Jair Zea', 'jzea@mail.com', '3217896523', '2', NULL, NULL, NULL, 'CREATED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-10 07:32:21', '2022-10-10 07:32:21'),
(29, 'Jair Zea', 'jzea@mail.com', '3217896523', '2', NULL, NULL, NULL, 'CREATED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-10 07:48:00', '2022-10-10 07:48:00'),
(30, 'Jair Zea', 'jzea@mail.com', '3217896523', '2', NULL, NULL, NULL, 'CREATED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-10 07:48:34', '2022-10-10 07:48:34'),
(31, 'Jair Zea', 'jzea@mail.com', '3217896523', '2', '64145', '31_TEST_1665370902', 'https://checkout-co.placetopay.dev/session/64145/614fcd2e2c1f4ea2dc7678cf5fcf5efd', 'CREATED', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-10 08:01:40', '2022-10-10 08:01:43'),
(32, 'Jair Zea', 'jairzeapaez@gmail.com', '3217896523', '3', '64181', '32_TEST_1665382357', 'https://checkout-co.placetopay.dev/session/64181/e511c7c8e692b73b0363ad47d1603ad3', 'PENDING', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-10 09:57:09', '2022-10-10 11:12:37'),
(33, 'Jair Zea', 'jairzeapaez@gmail.com', '3217896523', '2', '64175', '33_TEST_1665382353', 'https://checkout-co.placetopay.dev/session/64175/d9e2a72e1fdc3add74d72692609cedbd', 'PENDING', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-10 10:19:13', '2022-10-10 11:12:33'),
(34, 'Jair Zea', 'jairzeapaez@gmail.com', '3217896523', '2', '64185', '34_TEST_1665385876', 'https://checkout-co.placetopay.dev/session/64185/faf989f8de4fce74de5ef1c379569953', 'APPROVED', 'Aprobada', '2022-10-10T02:11:31-05:00', 'Visa', '383070', 'JPMORGAN CHASE BANK, N.A.', NULL, NULL, NULL, '2022-10-10 12:11:13', '2022-10-10 12:21:16'),
(35, 'Jair Zea', 'jairzeapaez@gmail.com', '3217896523', '2', '64186', '35_TEST_1665387466', 'https://checkout-co.placetopay.dev/session/64186/65ac54a3b3c49f61b8f858fcb0ad612f', 'REJECTED', 'La petición ha sido cancelada por el usuario', '2022-10-10T02:39:00-05:00', '', '', '', NULL, NULL, NULL, '2022-10-10 12:37:43', '2022-10-10 12:39:01'),
(36, 'Jair Zea', 'jairzeapaez@gmail.com', '3217896523', '6', '64187', '36_TEST_1665387989', 'https://checkout-co.placetopay.dev/session/64187/90a4836199d2362e7ef8c8a5741af75c', 'PENDING', 'La petición se encuentra pendiente', '2022-10-10T02:47:10-05:00', '', '', '', NULL, NULL, NULL, '2022-10-10 12:46:09', '2022-10-10 12:47:10'),
(37, 'Jair Zea', 'jairzeapaez@gmail.com', '3217896523', '2', '64188', '37_TEST_1665388850', 'https://checkout-co.placetopay.dev/session/64188/42bd8b5867dff02f248749547b1addbd', 'PENDING', 'La petición se encuentra pendiente', '2022-10-10T03:04:19-05:00', '', '', '', NULL, NULL, NULL, '2022-10-10 13:00:48', '2022-10-10 13:04:19');

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `order_summary_views`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `order_summary_views` (
`nombre` text
,`email` varchar(255)
,`nombre_producto` text
,`descripcion_producto` text
,`precio_producto` int(11)
,`imagen_producto` text
,`id_orden` bigint(20) unsigned
,`telefono` varchar(255)
);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sales` int(11) DEFAULT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `img` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `products`
--

INSERT INTO `products` (`id`, `sales`, `name`, `description`, `price`, `img`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Zapatos elegantes 1', 'Esta es una descripcion de prueba para este producto.', 200000, 'https://i2.wp.com/www.zapatos.shopping/wp-content/uploads/2015/01/zapatos-hombre.jpg', '2021-01-27 05:22:27', '2021-01-27 07:53:03'),
(2, NULL, 'Zapatos elegantes 2', 'Esta es una descripcion de prueba para este producto.', 300000, 'https://falabella.scene7.com/is/image/FalabellaCO/4193337_1?wid=800&hei=800&qlt=70', '2021-01-27 05:23:15', '2021-01-27 07:44:51'),
(3, NULL, 'Zapatos elegantes 3', 'Esta es una descripcion de prueba para este producto.', 400000, 'https://repunte.com/wp-content/uploads/2018/05/Botines.jpg', '2021-01-27 05:23:53', '2021-01-27 18:55:20'),
(4, NULL, 'Zapatos elegantes 4', 'Esta es una descripcion de prueba para este producto.', 500000, 'https://i2.wp.com/www.zapatos.shopping/wp-content/uploads/2015/01/zapatos-hombre.jpg', '2021-01-27 05:25:52', '2021-01-27 18:55:54'),
(5, NULL, 'Zapatos elegantes 1ñ', 'Esta es una descripcion de prueba para este producto.', 45000, 'test', '2022-10-02 01:40:15', '2022-10-02 01:40:15'),
(6, NULL, 'Zapatos elegantes 322', 'Esta es una descripcion de prueba para este producto.', 45000, 'test', '2022-10-07 21:22:10', '2022-10-07 21:22:10');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `customer_mobile` text COLLATE utf8mb4_unicode_ci,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `customer_mobile`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Jair Zea', 'jairzeapaez@gmail.com', NULL, '3217896523', '$2y$10$BBn9GJxcVWNedQ.bNaa6/e1Pe5TmwizJpSKiV8zWGesCtLFhVCgq2', NULL, '2022-10-01 05:27:06', '2022-10-01 05:27:06'),
(2, 'Fulanito', 'jd-ruiz05@hotmail.com', NULL, NULL, '$2y$10$ThxMBOXww2nxkznAoJqn3OSTgJ.f4OUB7O015wHFEaZ0eY0aY6GUe', NULL, '2022-10-10 14:12:06', '2022-10-10 14:12:06');

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `view_product_orders`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `view_product_orders` (
`nombre` text
,`telefono` varchar(255)
,`email` varchar(255)
,`created_at` timestamp
,`id_producto` varchar(255)
,`estado` varchar(255)
,`url_pago` text
,`referencia_orden` text
,`requestId` text
,`updateD_at` timestamp
,`id_orden` bigint(20) unsigned
,`id_cliente` text
,`llave_secreta` text
,`nombre_producto` text
,`precio_producto` int(11)
,`imagen_producto` text
,`descripcion_producto` text
);

-- --------------------------------------------------------

--
-- Estructura para la vista `order_summary_views`
--
DROP TABLE IF EXISTS `order_summary_views`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `order_summary_views`  AS SELECT `orders`.`customer_name` AS `nombre`, `orders`.`customer_email` AS `email`, `products`.`name` AS `nombre_producto`, `products`.`description` AS `descripcion_producto`, `products`.`price` AS `precio_producto`, `products`.`img` AS `imagen_producto`, `orders`.`id` AS `id_orden`, `orders`.`customer_mobile` AS `telefono` FROM (`orders` join `products` on((`orders`.`id_product` = `products`.`id`))) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `view_product_orders`
--
DROP TABLE IF EXISTS `view_product_orders`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_product_orders`  AS SELECT `o`.`customer_name` AS `nombre`, `o`.`customer_mobile` AS `telefono`, `o`.`customer_email` AS `email`, `o`.`created_at` AS `created_at`, `o`.`id_product` AS `id_producto`, `o`.`status` AS `estado`, `o`.`processUrl` AS `url_pago`, `o`.`reference` AS `referencia_orden`, `o`.`requestId` AS `requestId`, `o`.`updated_at` AS `updateD_at`, `o`.`id` AS `id_orden`, `o`.`id_cliente` AS `id_cliente`, `o`.`llave_secreta` AS `llave_secreta`, `p`.`name` AS `nombre_producto`, `p`.`price` AS `precio_producto`, `p`.`img` AS `imagen_producto`, `p`.`description` AS `descripcion_producto` FROM (`orders` `o` join `products` `p` on((`o`.`id_product` = `p`.`id`))) ;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indices de la tabla `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indices de la tabla `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indices de la tabla `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indices de la tabla `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indices de la tabla `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
