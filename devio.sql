-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 09, 2024 at 09:57 PM
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
-- Database: `devio`
--

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_02_18_105053_create_posts_table', 1),
(6, '2024_03_07_111337_create_tags_table', 1),
(7, '2024_03_09_101402_create_post_tag_table', 2);

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
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `description`, `user_id`, `image`, `created_at`, `updated_at`) VALUES
(2, 'Rem ut quas omnis non est.', 'Nostrum alias aut dignissimos voluptatibus tenetur exercitationem vel. Ipsa autem ipsum sed architecto. Enim aliquid porro rerum eum saepe. Ratione qui corporis et consequatur magni inventore accusamus. Exercitationem aut est corporis odit corrupti expedita. Voluptatem nostrum rerum debitis et dignissimos ut. Molestias est odit nisi.', 1, NULL, '2024-03-08 10:40:53', '2024-03-08 10:40:53'),
(7, 'Aut totam reprehenderit et ut.', 'Ut voluptas adipisci repellat sequi. Qui ut quaerat cumque dolorum eaque. Mollitia porro non quos soluta ratione. Nulla odit et et ullam. Aut sunt harum et quae consequatur neque. Blanditiis pariatur temporibus eos quidem qui sit.', 5, NULL, '2024-03-08 10:40:53', '2024-03-08 10:40:53'),
(8, 'Fugiat porro totam deleniti quaerat id.', 'Sed laudantium consequuntur optio et pariatur eveniet animi. Quibusdam dolorem autem sit et adipisci dolorem. Voluptas fugiat similique qui non ex id cum optio. Velit sint enim blanditiis et consectetur et. Modi in eos facilis dolorem deleniti. Ipsam et quas est quos quae inventore asperiores laborum. Maiores voluptas nihil quod autem omnis tenetur consequuntur. Et rerum rerum doloribus reiciendis delectus similique. Aliquam at est omnis mollitia.', 4, NULL, '2024-03-08 10:40:53', '2024-03-08 10:40:53'),
(10, 'Fuga aut omnis voluptatem ad voluptatem in esse hic.', 'Aliquid nobis rerum maiores aperiam. Fugiat soluta similique nulla ad perspiciatis. Voluptatem fugiat incidunt nihil alias rerum ratione. Non dolorem enim quia voluptatem. Ut nostrum assumenda doloremque ducimus rerum.', 3, NULL, '2024-03-08 10:40:53', '2024-03-08 10:40:53'),
(12, 'Et tempora doloremque vitae quia aspernatur.', 'Modi labore ratione voluptatem accusantium occaecati. Voluptate quia qui qui ex alias nam. Quis odit quia ipsum maiores quo nemo. Doloremque ratione qui aut vel. Eos eos in rem aut fugiat voluptas eum. Eum sit odit sed necessitatibus unde et praesentium sunt.', 5, NULL, '2024-03-08 10:40:53', '2024-03-08 10:40:53'),
(13, 'Qui molestias ullam ullam rerum necessitatibus illum.', 'Labore sint voluptate dolorem maxime iste aut. Nisi veritatis eius placeat aut. Maxime aut consectetur ducimus odit aperiam corrupti cum. Aut eum minima labore. Tempore architecto illo in magnam velit.', 4, NULL, '2024-03-08 10:40:53', '2024-03-08 10:40:53'),
(14, 'Suscipit quia qui fugiat sint.', 'Quidem dolor unde tempore dolorem voluptate itaque enim. Voluptatum est saepe tempora voluptatem hic provident. Velit est eveniet perferendis. Omnis velit temporibus qui et illum et ullam. Dolorum dolor qui id dolorem iure. Modi officia debitis aspernatur quia. Rerum qui dolorem rerum magnam. Perspiciatis quia possimus eligendi officia.', 5, NULL, '2024-03-08 10:40:53', '2024-03-08 10:40:53'),
(15, 'Temporibus molestiae nobis deserunt aperiam.', 'Fuga nostrum soluta reprehenderit cupiditate. Tenetur debitis aut quaerat temporibus rerum tempora sint sapiente. Debitis distinctio aut voluptates. Dicta quos saepe eius est fuga labore autem. Dolores vel dolor occaecati quis. Natus quae fugiat illum consequatur ipsum est praesentium. Aut odio sunt delectus.', 4, NULL, '2024-03-08 10:40:53', '2024-03-08 10:40:53'),
(18, 'Minus magni ab nesciunt.', 'Illo veniam est voluptatem et dolore placeat. Pariatur doloribus commodi impedit reiciendis reprehenderit laboriosam deleniti. Ipsam quo rem exercitationem provident. Optio harum earum tempore qui beatae accusamus minus. Libero doloribus impedit dolor rerum eaque labore nostrum alias. Temporibus a rerum in reprehenderit aperiam accusamus. Enim sed corporis labore in repudiandae temporibus. Est at excepturi debitis ad magni omnis deleniti.', 3, NULL, '2024-03-08 10:40:53', '2024-03-08 10:40:53'),
(19, 'Suscipit ipsa rerum neque mollitia quibusdam reprehenderit.', 'Nam possimus repellat aut et sit. Qui magni aliquam ut maiores dolores ullam vero. Non autem et et maiores temporibus enim ipsum. Eum quaerat harum cumque rerum optio accusantium. Et qui hic deserunt temporibus qui facilis et. Provident sit ut ut ut. Et nam quia numquam quisquam ex.', 4, NULL, '2024-03-08 10:40:53', '2024-03-08 10:40:53'),
(25, 'Similique voluptatem est cumque aliquid necessitatibus quia dolores deleniti.', 'Tempora repellendus qui repudiandae. Aliquam cupiditate commodi earum voluptatibus est et voluptates. Earum maxime sunt vitae et et accusamus. Consectetur assumenda quidem aspernatur. Voluptas incidunt a optio nulla. Sunt recusandae esse voluptas reiciendis dolorem quaerat esse. Cupiditate odio dolorum deleniti magni libero enim.', 4, NULL, '2024-03-08 10:40:53', '2024-03-08 10:40:53'),
(31, 'Et fugiat unde in velit necessitatibus veritatis.', 'Modi in laborum maxime reprehenderit maxime temporibus. Id ducimus earum et explicabo magni placeat. Quis eligendi autem sapiente sequi voluptates placeat est. Quis aut non magni error quis nemo. Eius illum qui provident labore quis tenetur sit.', 1, NULL, '2024-03-08 10:40:53', '2024-03-08 10:40:53'),
(47, 'Autem voluptas maiores quaerat excepturi harum sunt.', 'Et placeat ipsa architecto ullam expedita dolorum veritatis veniam. Esse delectus facere ipsam animi. Quaerat facere voluptatem cupiditate. Recusandae quia ad cumque tempora. Totam sed adipisci assumenda. Doloremque voluptas numquam provident quia voluptatem.', 4, NULL, '2024-03-08 10:40:53', '2024-03-08 10:40:53'),
(48, 'Unde ut reiciendis dicta enim eligendi.', 'Consequatur iste aliquam quidem rerum eius qui impedit ipsam. Et qui explicabo nisi voluptatum soluta et voluptas iusto. Magnam aut sapiente animi qui. Facere iste nam laborum ut. Et quisquam blanditiis et non.', 1, NULL, '2024-03-08 10:40:53', '2024-03-08 10:40:53'),
(50, 'Est aspernatur ducimus enim magnam.', 'Rerum delectus vel est earum ut est. Cupiditate tempore reiciendis aut molestiae. Numquam tenetur voluptatem sint ut optio. Qui velit repudiandae architecto non et officiis. Voluptatum ut quam quia quasi. Voluptates error iure voluptatibus distinctio consectetur velit ipsam voluptas. Quidem exercitationem ratione eligendi eaque. Aut officiis facere quas vitae repellat dolores rerum. Optio qui non earum mollitia.', 1, NULL, '2024-03-08 10:40:53', '2024-03-08 10:40:53'),
(52, 'Voluptates cumque expedita sed exercitationem molestias accusamus.', 'Facere natus aut quasi perspiciatis modi. Rerum autem veritatis quo natus. Ratione non nemo veniam hic nisi. Amet dolorum officia ut eos dicta sunt omnis. Rerum impedit sit fugit dolorem accusantium voluptatem in. Quos blanditiis soluta tempora consequatur voluptatem. Similique mollitia recusandae tempora dolor provident iste veniam.', 5, NULL, '2024-03-08 10:40:53', '2024-03-08 10:40:53'),
(53, 'Et facilis adipisci sapiente deserunt at facere.', 'Iusto omnis fugiat sit nobis vitae. Enim fugit aut distinctio animi officiis. Consequatur dolorem velit provident. Quidem asperiores est eum et est. Maxime sed iusto et voluptas neque aliquam aut.', 5, NULL, '2024-03-08 10:40:53', '2024-03-08 10:40:53'),
(54, 'Eveniet reprehenderit culpa non fuga dolores consequuntur.', 'Eveniet qui sed quo eum. Asperiores repellat nobis facere quaerat reprehenderit vel cumque. Rem et nisi aliquid et. Necessitatibus sunt delectus inventore rerum eos consequatur illum. Deserunt optio commodi deserunt maiores.', 4, NULL, '2024-03-08 10:40:53', '2024-03-08 10:40:53'),
(55, 'Et accusantium aliquid debitis nam corrupti.', 'Voluptatem commodi fugiat aut. Cupiditate nesciunt voluptatem perspiciatis amet. Sint esse sed est. Necessitatibus quis et est excepturi aliquam. In quia rerum delectus reiciendis et a eligendi. Voluptatem aliquam libero maiores distinctio itaque quis. Voluptatem saepe error assumenda aut mollitia.', 1, NULL, '2024-03-08 10:40:53', '2024-03-08 10:40:53'),
(56, 'Minus qui natus animi est quidem omnis nihil.', 'Rerum in minus explicabo quibusdam. Aliquid sit voluptatibus totam est reprehenderit eum rerum. Qui necessitatibus vel quam aperiam totam et quo. Et totam pariatur quos minus atque voluptatum. Aut laudantium voluptatem velit et nihil in. Sed in architecto velit quae facere. Facilis maxime quia ut. Et eos corrupti dicta perferendis doloribus id voluptatibus. Dignissimos ipsum deserunt aut et omnis quia consequatur.', 3, NULL, '2024-03-08 10:40:53', '2024-03-08 10:40:53'),
(57, 'Dolor qui voluptatem explicabo fuga et reprehenderit.', 'Delectus maxime natus qui nesciunt laboriosam adipisci est. Quia est nisi laudantium est aliquam et. Voluptatem itaque explicabo molestias. Quo minus omnis ut minima a. Optio nostrum aliquid nisi voluptas.', 1, NULL, '2024-03-08 10:40:53', '2024-03-08 10:40:53'),
(59, 'Sint quia ad corporis fugiat.', 'Eos hic commodi aspernatur laborum. Libero ea minima rerum vel tempora ut facilis quisquam. Ad nam inventore quas facere fugiat magnam molestiae. Molestias et vel sed magni est voluptatem. Assumenda fugiat odit nihil qui alias. Non sequi et qui id magnam. Consequatur nobis sit quod asperiores.', 3, NULL, '2024-03-08 10:40:53', '2024-03-08 10:40:53'),
(61, 'Necessitatibus et non quo odit ut aut fugit.', 'Sit nulla quia in. Veritatis et quaerat eum harum veritatis rerum rerum. Placeat assumenda labore earum. Soluta quia eligendi in rerum laboriosam. Enim harum soluta laudantium qui aperiam tenetur placeat inventore. Temporibus tempora natus deserunt. Corporis perspiciatis nulla odit qui et. Perferendis dolores iusto aperiam.', 5, NULL, '2024-03-08 10:40:53', '2024-03-08 10:40:53'),
(62, 'Repellendus quos provident repellendus ut quasi occaecati.', 'A quas quis harum beatae. Sit aut similique cumque. Omnis et velit necessitatibus dolorum. Ipsa repellendus soluta quas. Est fugit consequuntur itaque aspernatur rerum.', 4, NULL, '2024-03-08 10:40:53', '2024-03-08 10:40:53'),
(64, 'Nostrum consequatur et occaecati aspernatur asperiores unde officiis.', 'Et voluptas dolorem architecto enim odio. Voluptas distinctio rem porro est quae voluptas. Qui perspiciatis adipisci sed temporibus. Est consequatur sunt deserunt doloribus. Aspernatur velit sit expedita aut consequatur reiciendis. Iusto aliquid iure possimus sed eos numquam voluptatum. Quibusdam sed aut suscipit accusantium.', 5, NULL, '2024-03-08 10:40:53', '2024-03-08 10:40:53'),
(65, 'Ipsam quia fugiat nam rerum et.', 'Fugiat officia et laudantium blanditiis consequatur. Nemo recusandae voluptatibus in. Ea dolorum sunt officia rem. Rem est explicabo nihil est modi suscipit. Nam id illum rerum consequatur quo numquam expedita. Impedit odio aut cupiditate et. Accusamus aspernatur ipsam inventore vero aut dolor. Nulla eaque rerum sint et ullam unde.', 4, NULL, '2024-03-08 10:40:53', '2024-03-08 10:40:53'),
(66, 'Voluptatem aut soluta est eos.', 'Corporis quas ipsum molestiae voluptatem illo aut voluptas. Voluptas tempore voluptatum eos nemo beatae labore explicabo. Iure inventore quasi nulla ratione aperiam sint rerum. Ut consectetur tenetur voluptatibus. Totam sit vel soluta dolor qui dolor sunt. Deserunt aliquid quae vero sit.', 1, NULL, '2024-03-08 10:40:53', '2024-03-08 10:40:53'),
(67, 'Illo praesentium eum perferendis.', 'Voluptas occaecati voluptas soluta voluptatem repudiandae molestiae voluptatibus. Non saepe hic atque ut odit. Ipsum minima sed velit officiis. Porro voluptas cumque dolorem consequatur. Autem praesentium et eligendi recusandae. Tempora molestiae consequuntur asperiores repellat.', 5, NULL, '2024-03-08 10:40:53', '2024-03-08 10:40:53'),
(68, 'Quos autem molestiae fugit est laboriosam.', 'Qui numquam quis et dolor hic. Vero sed non quidem tempora nihil ex nam error. Ullam et nulla similique est. Autem pariatur voluptatem quisquam minima eum ea. Hic est cupiditate dolores molestiae quam. Sint praesentium nam quia et. Laboriosam ut itaque est neque fugiat totam eveniet.', 1, NULL, '2024-03-08 10:40:53', '2024-03-08 10:40:53'),
(69, 'Et qui illum consequatur in qui.', 'Assumenda eius velit harum quis corrupti dolorem at. Quos totam eaque sint est unde. Odit aut mollitia impedit. Aliquam aliquid provident et assumenda est porro et. Est iure qui labore. Voluptatibus distinctio omnis minima tempora eveniet ducimus dicta.', 5, NULL, '2024-03-08 10:40:53', '2024-03-08 10:40:53'),
(70, 'Repellendus voluptatum optio ratione delectus enim adipisci non.', 'Est velit nostrum accusamus est. Blanditiis soluta aperiam eos sed molestias. Magnam tenetur quisquam dolor voluptas. Dolor aliquid quia aspernatur veniam perferendis eligendi. Quidem veniam et cupiditate deleniti quia quo. Impedit eveniet beatae dolores qui dignissimos.', 4, NULL, '2024-03-08 10:40:53', '2024-03-08 10:40:53'),
(72, 'Cupiditate quidem esse voluptatibus repellendus consequuntur fugit tenetur quidem.', 'Corrupti similique quasi temporibus optio reiciendis vel. Iste nostrum delectus provident sunt. Sed provident id eaque et. Recusandae rem cum nostrum et aut optio vero quisquam. In similique nam ad consequatur. Doloribus incidunt corporis sint amet quisquam aliquam est.', 4, NULL, '2024-03-08 10:40:53', '2024-03-08 10:40:53'),
(74, 'Dolor non excepturi rerum quisquam.', 'Ex earum tempora consequatur non autem. Et delectus minus rerum aut nisi saepe earum. Reprehenderit earum est quisquam harum totam animi modi. Voluptatem rerum odio quis ad qui odit repellat.', 4, NULL, '2024-03-08 10:40:53', '2024-03-08 10:40:53'),
(75, 'Consectetur dolores similique blanditiis dicta fugiat dolor rem rerum.', 'Ipsam impedit similique ea doloribus. Occaecati veritatis autem ut id. Tempore ab eos est libero a. Iure autem maxime perspiciatis qui enim expedita tempore. Vel nihil quibusdam accusantium quisquam. Ab amet est autem ut dolorum.', 1, NULL, '2024-03-08 10:40:53', '2024-03-08 10:40:53'),
(76, 'Vero voluptates in voluptas perspiciatis nesciunt illo eos velit.', 'Ab vitae nulla necessitatibus ut magni facere quia. Cupiditate voluptatibus laborum similique est quibusdam omnis. Explicabo corrupti voluptas aspernatur molestiae qui eaque. Corporis officia modi et veritatis quod maiores eveniet.', 3, NULL, '2024-03-08 10:40:53', '2024-03-08 10:40:53'),
(77, 'Sed dignissimos vel fuga earum aut quas.', 'Maiores magni omnis qui laudantium et. Fuga magni et voluptates qui quia. Reprehenderit illo labore est a ex. Eum nam id excepturi minima eos repellat. Vel consequatur accusamus saepe mollitia eius suscipit.', 3, NULL, '2024-03-08 10:40:53', '2024-03-08 10:40:53'),
(80, 'Iure dolore nisi suscipit esse aspernatur blanditiis quasi id.', 'Doloremque ut in fugit aliquam. Consequatur tempore dolor quibusdam unde commodi. Quia numquam quibusdam incidunt exercitationem. Eos quia aut quisquam amet quia in modi. Sint ut nobis et quidem atque perferendis quis. Quis dolorum quo doloribus rerum. Et deleniti cumque placeat et ex blanditiis accusamus. Facere voluptatem nobis voluptatibus tenetur consequatur nihil.', 3, NULL, '2024-03-08 10:40:53', '2024-03-08 10:40:53'),
(81, 'Enim aliquam sed dolores aut.', 'Qui nisi ratione quas quia praesentium aut. Accusantium deleniti exercitationem corrupti autem qui sint est iusto. At consequatur nam veritatis error. Recusandae laborum est provident. Doloremque molestias voluptatem odit beatae. Est blanditiis numquam sit architecto ipsa. Sit tempore praesentium quisquam voluptatem.', 4, NULL, '2024-03-08 10:40:53', '2024-03-08 10:40:53'),
(82, 'Facilis laboriosam doloribus in veritatis.', 'Voluptatum cumque qui repellendus expedita expedita voluptatem. Saepe repellat qui culpa quis est qui. Consequatur exercitationem neque dolor doloremque id. Et qui et occaecati et quod magnam. Atque esse sunt beatae sapiente ab consequatur delectus.', 5, NULL, '2024-03-08 10:40:53', '2024-03-08 10:40:53'),
(85, 'Voluptas sit rerum natus laborum sit qui.', 'Similique voluptatem impedit facilis pariatur ut quae occaecati. Voluptas veniam quos sit magnam rerum cumque ut. Est officiis in tenetur aperiam voluptas et. Necessitatibus aut amet voluptas molestias alias officiis itaque. Neque occaecati sint id molestias aut. Veniam molestiae eum architecto consequatur voluptatem. Non velit expedita a non. Eius fugit consectetur ut odit sed. Iste eum temporibus sequi perferendis.', 4, NULL, '2024-03-08 10:40:53', '2024-03-08 10:40:53'),
(86, 'Voluptatem porro voluptas reprehenderit tenetur alias itaque.', 'Ut dolore at ut libero. Eveniet est voluptas quibusdam nulla et voluptate occaecati. Explicabo eum autem quidem est. Minima quo dolor distinctio deleniti. Voluptatem totam necessitatibus odit commodi magni qui pariatur sint. Hic illum voluptatem esse ducimus natus enim.', 3, NULL, '2024-03-08 10:40:53', '2024-03-08 10:40:53'),
(90, 'Repellat deleniti a rerum et ipsa perspiciatis.', 'Accusamus eaque exercitationem autem excepturi. Est rerum amet enim dolores eum. Molestias ut officiis rerum rem animi amet est aut. Et ut voluptatibus harum maxime. Tempora in velit repellat modi eaque reprehenderit occaecati voluptate.', 4, NULL, '2024-03-08 10:40:53', '2024-03-08 10:40:53'),
(91, 'Et est provident quae.', 'Omnis blanditiis minima sed voluptatem quia amet. Sed sit qui dolorem non officia autem. Velit illum et omnis qui voluptas similique. Consequatur omnis quisquam laboriosam quia in. Est doloribus aut molestiae odit necessitatibus odio omnis. Consequatur dolor a accusantium esse et sed.', 5, NULL, '2024-03-08 10:40:53', '2024-03-08 10:40:53'),
(95, 'Dicta voluptatibus nihil aut ut veritatis velit voluptatibus odio.', 'Eum nemo quo debitis rerum eius molestias est. Eum consequatur sint aut laborum. Est delectus porro totam dolores repudiandae voluptas ut. Laudantium animi dolorum quis dolores nemo ut. Cupiditate quasi eveniet rerum ipsum nihil qui sit. Eius est odit eos at quaerat. Sit quaerat beatae optio dignissimos et.', 4, NULL, '2024-03-08 10:40:53', '2024-03-08 10:40:53'),
(96, 'Temporibus quasi molestiae laudantium itaque possimus expedita aut.', 'Assumenda eveniet maxime qui earum architecto accusantium. Itaque ab accusamus minus maiores fuga aspernatur mollitia. Aliquam aliquid delectus quibusdam quo. Error id culpa quia illo amet qui animi. Sed veritatis iure id eos soluta vero. Quia ad eum sunt. Consectetur eius aperiam culpa sint commodi. Nulla consequatur consequatur dolorum.', 3, NULL, '2024-03-08 10:40:53', '2024-03-08 10:40:53'),
(97, 'Enim eum aut quo animi laudantium ut.', 'Est ea et pariatur reiciendis quia est. Beatae incidunt error animi nesciunt aliquid libero. Tenetur officia dolor rerum quasi est. Modi sint ut omnis dicta officiis. Omnis assumenda et nesciunt dolores excepturi non odio debitis. Id ex dolorem odit magni et.', 1, NULL, '2024-03-08 10:40:53', '2024-03-08 10:40:53'),
(99, 'Ipsa qui rem qui sequi.', 'Et eum recusandae quia maiores expedita ipsum voluptatem. Voluptas quae iure nihil et eveniet dolores sint. Facere eaque asperiores in quaerat beatae in nemo. Reiciendis dolorum similique ullam modi voluptatibus dolor. Quaerat quam qui quia consectetur omnis aliquam.', 5, NULL, '2024-03-08 10:40:53', '2024-03-08 10:40:53'),
(100, 'Et quis animi rerum in ab aut odit.', 'Rerum temporibus quisquam est officia ducimus quibusdam aliquam. Illo qui dolorum et ipsum maiores quidem eligendi. Voluptatibus aut officiis voluptas atque aliquam cupiditate velit quis. Dolorem dolor eius voluptas. Sint autem non enim cumque hic. Et quia fuga ducimus perferendis commodi repudiandae. Non enim pariatur at qui eum. A cumque velit esse fugiat eos. Ea perspiciatis qui eos ut.', 4, NULL, '2024-03-08 10:40:53', '2024-03-08 10:40:53'),
(101, 'test sport', 'Ea eum excepturitest posttest posttest posttest posttest posttest posttest posttest post exe', 1, 'public/CYIkDo6h85GYgWc8SwSABZYO2ZpGe2Ke2Ansz3jd.jpg', '2024-03-08 10:44:52', '2024-03-09 15:46:31'),
(103, 'natural post', 'Fugiat voluptatum mnatural postnatural postnatural postnatural postnatural postnatural postnatural postnatural postnatural postnatural postnatural postnatural post', 6, 'public/1SSqqc7fqrOZpPikQdyMYKzD6QTyCZ3ZuaVD2V6g.jpg', '2024-03-08 10:57:47', '2024-03-09 15:44:30'),
(105, 'test game', '\"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?\"', 6, 'public/uextNTVLo7HG8G52lMnopAJsG4MpIBbRs0gnDLlJ.jpg', '2024-03-09 08:33:55', '2024-03-09 15:44:19'),
(106, 'sport post 1', '\"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?\"', 5, 'public/VdH10b0b1AEsrwRXgQiBTFpQR2wCI8aH2WEGCOzb.jpg', '2024-03-09 09:02:57', '2024-03-09 15:44:09'),
(108, 'health post', 'Explicabo ExercitatExplicabo ExercitatExplicabo ExercitatExplicabo ExercitatExplicabo ExercitatExplicabo ExercitatExplicabo ExercitatExplicabo ExercitatExplicabo ExercitatExplicabo ExercitatExplicabo ExercitatExplicabo ExercitatExplicabo Exercitatv', 6, 'public/y0c1LCXkIyZxcalLTl6fB3FYwKNVyYsEJPYYD12v.jpg', '2024-03-09 09:53:51', '2024-03-09 15:44:00');

-- --------------------------------------------------------

--
-- Table structure for table `post_tag`
--

CREATE TABLE `post_tag` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `tag_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_tag`
--

INSERT INTO `post_tag` (`id`, `post_id`, `tag_id`, `created_at`, `updated_at`) VALUES
(11, 108, 11, NULL, NULL),
(12, 106, 3, NULL, NULL),
(13, 106, 10, NULL, NULL),
(14, 105, 4, NULL, NULL),
(15, 103, 6, NULL, NULL),
(19, 101, 3, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `name`, `created_at`, `updated_at`) VALUES
(3, 'Sport', '2024-03-08 10:41:47', '2024-03-09 08:01:21'),
(4, 'Games', '2024-03-08 11:38:47', '2024-03-08 11:38:47'),
(6, 'Natural', '2024-03-09 08:01:34', '2024-03-09 08:01:34'),
(7, 'Technology', '2024-03-09 08:01:49', '2024-03-09 08:01:49'),
(8, 'Business', '2024-03-09 08:02:12', '2024-03-09 08:02:12'),
(9, 'Travel', '2024-03-09 08:02:20', '2024-03-09 08:02:20'),
(10, 'Entertainment', '2024-03-09 08:02:29', '2024-03-09 08:02:29'),
(11, 'Health', '2024-03-09 08:02:40', '2024-03-09 08:02:40');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `type` enum('admin','writer') NOT NULL DEFAULT 'admin',
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `type`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Lincoln Weimann', 'parker.rachel@example.org', '2024-03-08 10:40:52', '$2y$12$lXeAGorOq81a4Lx2QKhDpes3eEYYBSLuVi6LZQFbskXHh/xdIigL2', 'writer', 'UrRsosYQ9s', '2024-03-08 10:40:53', '2024-03-08 10:40:53'),
(3, 'Dr. Dan Moen III', 'lew.homenick@example.org', '2024-03-08 10:40:53', '$2y$12$lXeAGorOq81a4Lx2QKhDpes3eEYYBSLuVi6LZQFbskXHh/xdIigL2', 'writer', 'nB6cgrpRFm', '2024-03-08 10:40:53', '2024-03-08 10:40:53'),
(4, 'Margarette Jakubowski II', 'glenna19@example.org', '2024-03-08 10:40:53', '$2y$12$lXeAGorOq81a4Lx2QKhDpes3eEYYBSLuVi6LZQFbskXHh/xdIigL2', 'writer', '5WsVhhuTdJ', '2024-03-08 10:40:53', '2024-03-08 10:40:53'),
(5, 'Mr. Arnoldo Sipes IV', 'umcglynn@example.net', '2024-03-08 10:40:53', '$2y$12$lXeAGorOq81a4Lx2QKhDpes3eEYYBSLuVi6LZQFbskXHh/xdIigL2', 'writer', 'v0y9OQc82M', '2024-03-08 10:40:53', '2024-03-08 10:40:53'),
(6, 'Mo Salem', 'salem@m.com', NULL, '$2y$12$72sv8F7Vy4986sqsc80kLe1qtjOqUNXtv.LpwMhdYL9k6awtUG9Ri', 'admin', NULL, '2024-03-08 10:42:08', '2024-03-09 08:35:52');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_user_id_foreign` (`user_id`);

--
-- Indexes for table `post_tag`
--
ALTER TABLE `post_tag`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_tag_post_id_foreign` (`post_id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;

--
-- AUTO_INCREMENT for table `post_tag`
--
ALTER TABLE `post_tag`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `post_tag`
--
ALTER TABLE `post_tag`
  ADD CONSTRAINT `post_tag_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
