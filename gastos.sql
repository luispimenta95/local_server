-- phpMyAdmin SQL Dump
-- version 5.2.1deb3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Tempo de geração: 11/03/2026 às 16:15
-- Versão do servidor: 8.0.45-0ubuntu0.24.04.1
-- Versão do PHP: 8.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `gastos`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `accounts`
--

CREATE TABLE `accounts` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `accounts`
--

INSERT INTO `accounts` (`id`, `user_id`, `name`, `slug`, `icon`, `created_at`, `updated_at`) VALUES
('a14484a7-0d39-4770-bb09-b31a7c3856ae', 'a14484a7-0a61-409d-9097-77bc139108d5', 'Carteira', 'carteira', 'fas-wallet', '2026-03-10 15:29:13', '2026-03-10 15:31:55');

-- --------------------------------------------------------

--
-- Estrutura para tabela `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `categories`
--

CREATE TABLE `categories` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `categories`
--

INSERT INTO `categories` (`id`, `user_id`, `name`, `slug`, `icon`, `color`, `created_at`, `updated_at`, `deleted_at`) VALUES
('a14484a7-157f-43af-97b4-daab30685c35', 'a14484a7-0a61-409d-9097-77bc139108d5', 'Cartão de Crédito', 'cartao-de-credito', 'fas-credit-card', '#8fbc57', '2026-03-10 15:29:13', '2026-03-10 15:29:13', NULL),
('a14484a7-174c-4331-b954-52a9357e2145', 'a14484a7-0a61-409d-9097-77bc139108d5', 'Salário', 'salario', 'fas-money-bill-wave', '#b9b00a', '2026-03-10 15:29:13', '2026-03-10 15:29:13', NULL),
('a14484a7-18b4-43fd-8d69-71d9ee2c196c', 'a14484a7-0a61-409d-9097-77bc139108d5', 'Educação', 'educacao', 'fas-graduation-cap', '#f69f58', '2026-03-10 15:29:13', '2026-03-10 15:29:13', NULL),
('a14484a7-1a2e-4ac3-87b5-ec022322563b', 'a14484a7-0a61-409d-9097-77bc139108d5', 'Gastos Apartamento', 'gastos-apartamento', 'fas-ellipsis-h', '#6196d0', '2026-03-10 15:29:13', '2026-03-10 15:35:38', '2026-03-10 15:35:38'),
('a144877f-0463-4a40-bab0-ea096346211a', 'a14484a7-0a61-409d-9097-77bc139108d5', 'Moradia', 'moradia', 'fas-house-chimney-user', '#bf2b10', '2026-03-10 15:37:10', '2026-03-10 22:57:21', NULL),
('a144a731-b5d3-4349-bdb1-b83775fc6d07', 'a14484a7-0a61-409d-9097-77bc139108d5', 'Viagem', 'viagem', 'fas-plane-arrival', '#f69f58', '2026-03-10 17:05:49', '2026-03-10 22:08:53', NULL),
('a144aabb-79b5-4597-a0a1-eb52c179f7d2', 'a14484a7-0a61-409d-9097-77bc139108d5', 'Saúde', 'saude', 'fas-hospital', '#ffffff', '2026-03-10 17:15:42', '2026-03-10 22:56:53', NULL),
('a144dc9b-f4bd-4389-8b18-45eec337c697', 'a14484a7-0a61-409d-9097-77bc139108d5', 'Jogos', 'jogos', 'fas-gamepad', '#0009de', '2026-03-10 19:35:10', '2026-03-10 22:11:27', NULL),
('a1452cb7-8201-4510-bec5-2174d2863076', 'a14484a7-0a61-409d-9097-77bc139108d5', 'Outros', 'outros', 'fas-random', '#1b59d1', '2026-03-10 23:19:10', '2026-03-10 23:19:26', NULL),
('a145563d-8f58-4b69-847d-1643a16bcaa7', 'a14484a7-0a61-409d-9097-77bc139108d5', 'Investimentos', 'investimentos', 'fas-chart-line', '#0f766e', '2026-03-11 01:15:16', '2026-03-11 01:15:16', NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `exports`
--

CREATE TABLE `exports` (
  `id` bigint UNSIGNED NOT NULL,
  `completed_at` timestamp NULL DEFAULT NULL,
  `file_disk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `exporter` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `processed_rows` int UNSIGNED NOT NULL DEFAULT '0',
  `total_rows` int UNSIGNED NOT NULL,
  `successful_rows` int UNSIGNED NOT NULL DEFAULT '0',
  `user_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `exports`
--

INSERT INTO `exports` (`id`, `completed_at`, `file_disk`, `file_name`, `exporter`, `processed_rows`, `total_rows`, `successful_rows`, `user_id`, `created_at`, `updated_at`) VALUES
(1, '2026-03-10 15:42:47', 'public', 'export-1-transactions', 'App\\Filament\\Exports\\Transactions\\TransactionExporter', 1, 1, 1, 'a14484a7-0a61-409d-9097-77bc139108d5', '2026-03-10 15:42:47', '2026-03-10 15:42:47');

-- --------------------------------------------------------

--
-- Estrutura para tabela `failed_import_rows`
--

CREATE TABLE `failed_import_rows` (
  `id` bigint UNSIGNED NOT NULL,
  `data` json NOT NULL,
  `import_id` bigint UNSIGNED NOT NULL,
  `validation_error` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `imports`
--

CREATE TABLE `imports` (
  `id` bigint UNSIGNED NOT NULL,
  `completed_at` timestamp NULL DEFAULT NULL,
  `file_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `importer` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `processed_rows` int UNSIGNED NOT NULL DEFAULT '0',
  `total_rows` int UNSIGNED NOT NULL,
  `successful_rows` int UNSIGNED NOT NULL DEFAULT '0',
  `user_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `investments`
--

CREATE TABLE `investments` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `asset_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `investments`
--

INSERT INTO `investments` (`id`, `user_id`, `asset_name`, `amount`, `created_at`, `updated_at`) VALUES
('a144b911-5213-4927-9887-4ad0fe96d9eb', 'a14484a7-0a61-409d-9097-77bc139108d5', 'BTC', 80000, '2026-03-10 17:55:47', '2026-03-10 17:55:47'),
('a144b95d-cc1b-496b-ade5-9040d364d70a', 'a14484a7-0a61-409d-9097-77bc139108d5', 'CDB - FEV/33', 101700, '2026-03-10 17:56:37', '2026-03-10 17:56:37'),
('a144b990-fafd-4305-b959-015fec70b47a', 'a14484a7-0a61-409d-9097-77bc139108d5', 'RENDA VARIÁVEL', 600000, '2026-03-10 17:57:11', '2026-03-10 17:57:11');

-- --------------------------------------------------------

--
-- Estrutura para tabela `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `job_batches`
--

INSERT INTO `job_batches` (`id`, `name`, `total_jobs`, `pending_jobs`, `failed_jobs`, `failed_job_ids`, `options`, `cancelled_at`, `created_at`, `finished_at`) VALUES
('a1448981-22ca-407c-813b-66d70725d15f', '', 2, 0, 0, '[]', 'a:2:{s:13:\"allowFailures\";b:1;s:7:\"finally\";a:1:{i:0;O:47:\"Laravel\\SerializableClosure\\SerializableClosure\":1:{s:12:\"serializable\";O:46:\"Laravel\\SerializableClosure\\Serializers\\Signed\":2:{s:12:\"serializable\";s:6202:\"O:46:\"Laravel\\SerializableClosure\\Serializers\\Native\":5:{s:3:\"use\";a:1:{s:4:\"next\";O:46:\"Filament\\Actions\\Exports\\Jobs\\ExportCompletion\":7:{s:11:\"\0*\0exporter\";O:53:\"App\\Filament\\Exports\\Transactions\\TransactionExporter\":3:{s:9:\"\0*\0export\";O:38:\"Filament\\Actions\\Exports\\Models\\Export\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";N;s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:1;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:8:{s:7:\"user_id\";s:36:\"a14484a7-0a61-409d-9097-77bc139108d5\";s:8:\"exporter\";s:53:\"App\\Filament\\Exports\\Transactions\\TransactionExporter\";s:10:\"total_rows\";i:1;s:9:\"file_disk\";s:6:\"public\";s:10:\"updated_at\";s:19:\"2026-03-10 12:42:47\";s:10:\"created_at\";s:19:\"2026-03-10 12:42:47\";s:2:\"id\";i:1;s:9:\"file_name\";s:21:\"export-1-transactions\";}s:11:\"\0*\0original\";a:8:{s:7:\"user_id\";s:36:\"a14484a7-0a61-409d-9097-77bc139108d5\";s:8:\"exporter\";s:53:\"App\\Filament\\Exports\\Transactions\\TransactionExporter\";s:10:\"total_rows\";i:1;s:9:\"file_disk\";s:6:\"public\";s:10:\"updated_at\";s:19:\"2026-03-10 12:42:47\";s:10:\"created_at\";s:19:\"2026-03-10 12:42:47\";s:2:\"id\";i:1;s:9:\"file_name\";s:21:\"export-1-transactions\";}s:10:\"\0*\0changes\";a:1:{s:9:\"file_name\";s:21:\"export-1-transactions\";}s:8:\"\0*\0casts\";a:4:{s:12:\"completed_at\";s:9:\"timestamp\";s:14:\"processed_rows\";s:7:\"integer\";s:10:\"total_rows\";s:7:\"integer\";s:15:\"successful_rows\";s:7:\"integer\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}}s:12:\"\0*\0columnMap\";a:9:{s:16:\"transaction_type\";s:4:\"Tipo\";s:6:\"amount\";s:5:\"Total\";s:4:\"date\";s:4:\"Data\";s:8:\"finished\";s:10:\"Finalizada\";s:11:\"description\";s:11:\"Descrição\";s:12:\"account.name\";s:5:\"Conta\";s:13:\"category.name\";s:9:\"Categoria\";s:10:\"created_at\";s:9:\"Criada em\";s:10:\"updated_at\";s:13:\"Atualizado em\";}s:10:\"\0*\0options\";a:0:{}}s:9:\"\0*\0export\";O:45:\"Illuminate\\Contracts\\Database\\ModelIdentifier\":5:{s:5:\"class\";s:38:\"Filament\\Actions\\Exports\\Models\\Export\";s:2:\"id\";i:1;s:9:\"relations\";a:0:{}s:10:\"connection\";s:5:\"mysql\";s:15:\"collectionClass\";N;}s:12:\"\0*\0columnMap\";a:9:{s:16:\"transaction_type\";s:4:\"Tipo\";s:6:\"amount\";s:5:\"Total\";s:4:\"date\";s:4:\"Data\";s:8:\"finished\";s:10:\"Finalizada\";s:11:\"description\";s:11:\"Descrição\";s:12:\"account.name\";s:5:\"Conta\";s:13:\"category.name\";s:9:\"Categoria\";s:10:\"created_at\";s:9:\"Criada em\";s:10:\"updated_at\";s:13:\"Atualizado em\";}s:10:\"\0*\0formats\";a:2:{i:0;E:47:\"Filament\\Actions\\Exports\\Enums\\ExportFormat:Csv\";i:1;E:48:\"Filament\\Actions\\Exports\\Enums\\ExportFormat:Xlsx\";}s:10:\"\0*\0options\";a:0:{}s:7:\"chained\";a:1:{i:0;s:2752:\"O:44:\"Filament\\Actions\\Exports\\Jobs\\CreateXlsxFile\":4:{s:11:\"\0*\0exporter\";O:53:\"App\\Filament\\Exports\\Transactions\\TransactionExporter\":3:{s:9:\"\0*\0export\";O:38:\"Filament\\Actions\\Exports\\Models\\Export\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";N;s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:1;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:8:{s:7:\"user_id\";s:36:\"a14484a7-0a61-409d-9097-77bc139108d5\";s:8:\"exporter\";s:53:\"App\\Filament\\Exports\\Transactions\\TransactionExporter\";s:10:\"total_rows\";i:1;s:9:\"file_disk\";s:6:\"public\";s:10:\"updated_at\";s:19:\"2026-03-10 12:42:47\";s:10:\"created_at\";s:19:\"2026-03-10 12:42:47\";s:2:\"id\";i:1;s:9:\"file_name\";s:21:\"export-1-transactions\";}s:11:\"\0*\0original\";a:8:{s:7:\"user_id\";s:36:\"a14484a7-0a61-409d-9097-77bc139108d5\";s:8:\"exporter\";s:53:\"App\\Filament\\Exports\\Transactions\\TransactionExporter\";s:10:\"total_rows\";i:1;s:9:\"file_disk\";s:6:\"public\";s:10:\"updated_at\";s:19:\"2026-03-10 12:42:47\";s:10:\"created_at\";s:19:\"2026-03-10 12:42:47\";s:2:\"id\";i:1;s:9:\"file_name\";s:21:\"export-1-transactions\";}s:10:\"\0*\0changes\";a:1:{s:9:\"file_name\";s:21:\"export-1-transactions\";}s:8:\"\0*\0casts\";a:4:{s:12:\"completed_at\";s:9:\"timestamp\";s:14:\"processed_rows\";s:7:\"integer\";s:10:\"total_rows\";s:7:\"integer\";s:15:\"successful_rows\";s:7:\"integer\";}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:0:{}}s:12:\"\0*\0columnMap\";a:9:{s:16:\"transaction_type\";s:4:\"Tipo\";s:6:\"amount\";s:5:\"Total\";s:4:\"date\";s:4:\"Data\";s:8:\"finished\";s:10:\"Finalizada\";s:11:\"description\";s:11:\"Descrição\";s:12:\"account.name\";s:5:\"Conta\";s:13:\"category.name\";s:9:\"Categoria\";s:10:\"created_at\";s:9:\"Criada em\";s:10:\"updated_at\";s:13:\"Atualizado em\";}s:10:\"\0*\0options\";a:0:{}}s:9:\"\0*\0export\";O:45:\"Illuminate\\Contracts\\Database\\ModelIdentifier\":5:{s:5:\"class\";s:38:\"Filament\\Actions\\Exports\\Models\\Export\";s:2:\"id\";i:1;s:9:\"relations\";a:0:{}s:10:\"connection\";s:5:\"mysql\";s:15:\"collectionClass\";N;}s:12:\"\0*\0columnMap\";a:9:{s:16:\"transaction_type\";s:4:\"Tipo\";s:6:\"amount\";s:5:\"Total\";s:4:\"date\";s:4:\"Data\";s:8:\"finished\";s:10:\"Finalizada\";s:11:\"description\";s:11:\"Descrição\";s:12:\"account.name\";s:5:\"Conta\";s:13:\"category.name\";s:9:\"Categoria\";s:10:\"created_at\";s:9:\"Criada em\";s:10:\"updated_at\";s:13:\"Atualizado em\";}s:10:\"\0*\0options\";a:0:{}}\";}s:19:\"chainCatchCallbacks\";a:0:{}}}s:8:\"function\";s:266:\"function (\\Illuminate\\Bus\\Batch $batch) use ($next) {\n                if (! $batch->cancelled()) {\n                    \\Illuminate\\Container\\Container::getInstance()->make(\\Illuminate\\Contracts\\Bus\\Dispatcher::class)->dispatch($next);\n                }\n            }\";s:5:\"scope\";s:27:\"Illuminate\\Bus\\ChainedBatch\";s:4:\"this\";N;s:4:\"self\";s:32:\"0000000000000eba0000000000000000\";}\";s:4:\"hash\";s:44:\"mb+HJWQrDfsgD4OfUGlCbV0gMaGdhHpwpaFZTLXpMro=\";}}}}', NULL, 1773157367, 1773157367);

-- --------------------------------------------------------

--
-- Estrutura para tabela `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_03_22_195825_create_accounts_table', 1),
(5, '2024_03_22_200640_create_categories_table', 1),
(6, '2024_03_22_201129_create_transactions_table', 1),
(7, '2024_03_26_132923_alter_transactions_table_add_attachment_column', 1),
(8, '2024_03_29_130116_alter_users_table_add_avatar_column', 1),
(9, '2024_03_30_160523_create_notifications_table', 1),
(10, '2024_03_30_160543_create_imports_table', 1),
(11, '2024_03_30_160544_create_exports_table', 1),
(12, '2024_03_30_160545_create_failed_import_rows_table', 1),
(13, '2024_05_28_201612_add_icon_column_to_accounts_table', 1),
(14, '2026_03_10_120000_add_recurrence_and_dates_to_transactions_table', 2),
(15, '2026_03_10_130000_create_investments_table', 3),
(16, '2026_03_10_000000_add_investments_category_to_existing_users', 4);

-- --------------------------------------------------------

--
-- Estrutura para tabela `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `notifications`
--

INSERT INTO `notifications` (`id`, `type`, `notifiable_type`, `notifiable_id`, `data`, `read_at`, `created_at`, `updated_at`) VALUES
('759d8c35-9f14-43a2-8652-3d890bdea68a', 'Filament\\Notifications\\DatabaseNotification', 'App\\Models\\User', 'a14484a7-0a61-409d-9097-77bc139108d5', '{\"actions\":[{\"name\":\"download_csv\",\"color\":null,\"event\":null,\"eventData\":[],\"dispatchDirection\":false,\"dispatchToComponent\":null,\"extraAttributes\":[],\"icon\":null,\"iconPosition\":\"before\",\"iconSize\":null,\"isOutlined\":false,\"isDisabled\":false,\"label\":\"Baixar .csv\",\"shouldClose\":false,\"shouldMarkAsRead\":true,\"shouldMarkAsUnread\":false,\"shouldOpenUrlInNewTab\":true,\"size\":\"sm\",\"tooltip\":null,\"url\":\"\\/filament\\/exports\\/1\\/download?format=csv\",\"view\":\"filament-actions::link-action\"},{\"name\":\"download_xlsx\",\"color\":null,\"event\":null,\"eventData\":[],\"dispatchDirection\":false,\"dispatchToComponent\":null,\"extraAttributes\":[],\"icon\":null,\"iconPosition\":\"before\",\"iconSize\":null,\"isOutlined\":false,\"isDisabled\":false,\"label\":\"Baixar .xlsx\",\"shouldClose\":false,\"shouldMarkAsRead\":true,\"shouldMarkAsUnread\":false,\"shouldOpenUrlInNewTab\":true,\"size\":\"sm\",\"tooltip\":null,\"url\":\"\\/filament\\/exports\\/1\\/download?format=xlsx\",\"view\":\"filament-actions::link-action\"}],\"body\":\"Seu relat\\u00f3rio foi realizado com sucesso e 1 registro foram exportados.\",\"color\":null,\"duration\":\"persistent\",\"icon\":\"heroicon-o-check-circle\",\"iconColor\":\"success\",\"status\":\"success\",\"title\":\"Exporta\\u00e7\\u00e3o completa\",\"view\":\"filament-notifications::notification\",\"viewData\":[],\"format\":\"filament\"}', '2026-03-10 22:24:48', '2026-03-10 15:42:47', '2026-03-10 22:24:48');

-- --------------------------------------------------------

--
-- Estrutura para tabela `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('sDVZanvCCZWPkQ9GMYf7RJO94S4wfJP0teSdXJhp', 'a14484a7-0a61-409d-9097-77bc139108d5', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:148.0) Gecko/20100101 Firefox/148.0', 'YTo4OntzOjY6Il90b2tlbiI7czo0MDoic2p1dU94Z0o3MFl0cmhvZWNLcXJ0djNNWUtIRUJ2Zk5NWjJ6OEEyOSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO3M6MzY6ImExNDQ4NGE3LTBhNjEtNDA5ZC05MDk3LTc3YmMxMzkxMDhkNSI7czoxNzoicGFzc3dvcmRfaGFzaF93ZWIiO3M6NjA6IiQyeSQxMiRXRmxMSDlIRVNFOXlQRnBlem52OUZlMlNCZUhrcUFIRmowSFNHbGl0MEhNdnovSWdFNG5sQyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC90cmFuc2FjdGlvbnMvdHJhbnNhY3Rpb25zIjt9czo2OiJ0YWJsZXMiO2E6MTp7czoyNToiTGlzdFRyYW5zYWN0aW9uc19wZXJfcGFnZSI7czoyOiIxOCI7fXM6MTc6IkRhc2hib2FyZF9maWx0ZXJzIjthOjQ6e3M6OToic3RhcnREYXRlIjtOO3M6NzoiZW5kRGF0ZSI7TjtzOjk6ImFjY291bnRJZCI7TjtzOjc6InByZXZpZXciO047fXM6ODoiZmlsYW1lbnQiO2E6MDp7fX0=', 1773194307);

-- --------------------------------------------------------

--
-- Estrutura para tabela `transactions`
--

CREATE TABLE `transactions` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `transaction_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` int NOT NULL,
  `date` date NOT NULL,
  `finished` tinyint(1) NOT NULL,
  `recurrence` tinyint(1) NOT NULL DEFAULT '0',
  `due_date` date DEFAULT NULL,
  `payment_date` date DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `account_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attachment` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `transactions`
--

INSERT INTO `transactions` (`id`, `user_id`, `transaction_type`, `amount`, `date`, `finished`, `recurrence`, `due_date`, `payment_date`, `description`, `account_id`, `category_id`, `attachment`, `created_at`, `updated_at`) VALUES
('a144a8ad-5402-460b-aac5-6ec43cec17eb', 'a14484a7-0a61-409d-9097-77bc139108d5', 'expense', 3888, '2026-03-27', 1, 1, '2026-03-27', '2026-03-06', 'Conta de Água', 'a14484a7-0d39-4770-bb09-b31a7c3856ae', 'a144877f-0463-4a40-bab0-ea096346211a', NULL, '2026-03-10 17:09:57', '2026-03-10 17:09:57'),
('a144a8ad-589b-43ca-9b81-17406088c05c', 'a14484a7-0a61-409d-9097-77bc139108d5', 'expense', 0, '2026-04-27', 0, 1, '2026-04-27', NULL, 'Conta de Água', 'a14484a7-0d39-4770-bb09-b31a7c3856ae', 'a144877f-0463-4a40-bab0-ea096346211a', NULL, '2026-03-10 17:09:57', '2026-03-10 17:09:57'),
('a144a8ad-5a9f-4dee-b8fa-edd6546a3834', 'a14484a7-0a61-409d-9097-77bc139108d5', 'expense', 0, '2026-05-27', 0, 1, '2026-05-27', NULL, 'Conta de Água', 'a14484a7-0d39-4770-bb09-b31a7c3856ae', 'a144877f-0463-4a40-bab0-ea096346211a', NULL, '2026-03-10 17:09:57', '2026-03-10 17:09:57'),
('a144a8ad-5c67-40c3-bd1d-23e749203fa8', 'a14484a7-0a61-409d-9097-77bc139108d5', 'expense', 0, '2026-06-27', 0, 1, '2026-06-27', NULL, 'Conta de Água', 'a14484a7-0d39-4770-bb09-b31a7c3856ae', 'a144877f-0463-4a40-bab0-ea096346211a', NULL, '2026-03-10 17:09:57', '2026-03-10 17:09:57'),
('a144a8ad-5e8c-46de-aa33-da09786fed85', 'a14484a7-0a61-409d-9097-77bc139108d5', 'expense', 0, '2026-07-27', 0, 1, '2026-07-27', NULL, 'Conta de Água', 'a14484a7-0d39-4770-bb09-b31a7c3856ae', 'a144877f-0463-4a40-bab0-ea096346211a', NULL, '2026-03-10 17:09:57', '2026-03-10 17:09:57'),
('a144a8ad-60a0-4e3e-9220-ae0f79333f08', 'a14484a7-0a61-409d-9097-77bc139108d5', 'expense', 0, '2026-08-27', 0, 1, '2026-08-27', NULL, 'Conta de Água', 'a14484a7-0d39-4770-bb09-b31a7c3856ae', 'a144877f-0463-4a40-bab0-ea096346211a', NULL, '2026-03-10 17:09:57', '2026-03-10 17:09:57'),
('a144a8ad-6262-47ad-a29f-dca5cf97dc82', 'a14484a7-0a61-409d-9097-77bc139108d5', 'expense', 0, '2026-09-27', 0, 1, '2026-09-27', NULL, 'Conta de Água', 'a14484a7-0d39-4770-bb09-b31a7c3856ae', 'a144877f-0463-4a40-bab0-ea096346211a', NULL, '2026-03-10 17:09:57', '2026-03-10 17:09:57'),
('a144a8ad-6409-4eee-b56c-50364ae51520', 'a14484a7-0a61-409d-9097-77bc139108d5', 'expense', 0, '2026-10-27', 0, 1, '2026-10-27', NULL, 'Conta de Água', 'a14484a7-0d39-4770-bb09-b31a7c3856ae', 'a144877f-0463-4a40-bab0-ea096346211a', NULL, '2026-03-10 17:09:57', '2026-03-10 17:09:57'),
('a144a8ad-65f0-447a-ac4c-7f4ea22554bd', 'a14484a7-0a61-409d-9097-77bc139108d5', 'expense', 0, '2026-11-27', 0, 1, '2026-11-27', NULL, 'Conta de Água', 'a14484a7-0d39-4770-bb09-b31a7c3856ae', 'a144877f-0463-4a40-bab0-ea096346211a', NULL, '2026-03-10 17:09:57', '2026-03-10 17:09:57'),
('a144a8ad-67b2-456e-9dab-599766b4f48f', 'a14484a7-0a61-409d-9097-77bc139108d5', 'expense', 0, '2026-12-27', 0, 1, '2026-12-27', NULL, 'Conta de Água', 'a14484a7-0d39-4770-bb09-b31a7c3856ae', 'a144877f-0463-4a40-bab0-ea096346211a', NULL, '2026-03-10 17:09:57', '2026-03-10 17:09:57'),
('a144a8ad-697d-4f64-9d44-d20ded5b8997', 'a14484a7-0a61-409d-9097-77bc139108d5', 'expense', 0, '2027-01-27', 0, 1, '2027-01-27', NULL, 'Conta de Água', 'a14484a7-0d39-4770-bb09-b31a7c3856ae', 'a144877f-0463-4a40-bab0-ea096346211a', NULL, '2026-03-10 17:09:57', '2026-03-10 17:09:57'),
('a144a8ad-6b57-4938-b644-19fef85c52f8', 'a14484a7-0a61-409d-9097-77bc139108d5', 'expense', 0, '2027-02-27', 0, 1, '2027-02-27', NULL, 'Conta de Água', 'a14484a7-0d39-4770-bb09-b31a7c3856ae', 'a144877f-0463-4a40-bab0-ea096346211a', NULL, '2026-03-10 17:09:57', '2026-03-10 17:09:57'),
('a144a925-373e-49a9-a7b6-317829406d45', 'a14484a7-0a61-409d-9097-77bc139108d5', 'income', 49000, '2026-03-17', 0, 1, '2026-03-17', NULL, 'Viagem Gabriel/Fernanda', 'a14484a7-0d39-4770-bb09-b31a7c3856ae', 'a144a731-b5d3-4349-bdb1-b83775fc6d07', NULL, '2026-03-10 17:11:16', '2026-03-10 17:11:16'),
('a144a925-3bd5-4a50-bdbd-cee4f4ee79f6', 'a14484a7-0a61-409d-9097-77bc139108d5', 'income', 49000, '2026-04-17', 0, 1, '2026-04-17', NULL, 'Viagem Gabriel/Fernanda', 'a14484a7-0d39-4770-bb09-b31a7c3856ae', 'a144a731-b5d3-4349-bdb1-b83775fc6d07', NULL, '2026-03-10 17:11:16', '2026-03-10 17:11:53'),
('a144a925-3dc6-49b9-923d-862683884b60', 'a14484a7-0a61-409d-9097-77bc139108d5', 'income', 49000, '2026-05-17', 0, 1, '2026-05-17', NULL, 'Viagem Gabriel/Fernanda', 'a14484a7-0d39-4770-bb09-b31a7c3856ae', 'a144a731-b5d3-4349-bdb1-b83775fc6d07', NULL, '2026-03-10 17:11:16', '2026-03-10 17:11:16'),
('a144a925-3fe1-4eb9-ba6e-4d66fad38e22', 'a14484a7-0a61-409d-9097-77bc139108d5', 'income', 49000, '2026-06-17', 0, 1, '2026-06-17', NULL, 'Viagem Gabriel/Fernanda', 'a14484a7-0d39-4770-bb09-b31a7c3856ae', 'a144a731-b5d3-4349-bdb1-b83775fc6d07', NULL, '2026-03-10 17:11:16', '2026-03-10 17:11:16'),
('a144a925-41c1-4bcd-85f2-53fafe365f2f', 'a14484a7-0a61-409d-9097-77bc139108d5', 'income', 49000, '2026-07-17', 0, 1, '2026-07-17', NULL, 'Viagem Gabriel/Fernanda', 'a14484a7-0d39-4770-bb09-b31a7c3856ae', 'a144a731-b5d3-4349-bdb1-b83775fc6d07', NULL, '2026-03-10 17:11:16', '2026-03-10 17:11:16'),
('a144a925-4394-409c-9ab9-a776ffbb5954', 'a14484a7-0a61-409d-9097-77bc139108d5', 'income', 49000, '2026-08-17', 0, 1, '2026-08-17', NULL, 'Viagem Gabriel/Fernanda', 'a14484a7-0d39-4770-bb09-b31a7c3856ae', 'a144a731-b5d3-4349-bdb1-b83775fc6d07', NULL, '2026-03-10 17:11:16', '2026-03-10 17:11:16'),
('a144a925-4566-4186-a0b6-e6e8bcfa6271', 'a14484a7-0a61-409d-9097-77bc139108d5', 'income', 49000, '2026-09-17', 0, 1, '2026-09-17', NULL, 'Viagem Gabriel/Fernanda', 'a14484a7-0d39-4770-bb09-b31a7c3856ae', 'a144a731-b5d3-4349-bdb1-b83775fc6d07', NULL, '2026-03-10 17:11:16', '2026-03-10 17:11:16'),
('a144a925-4728-4fff-8837-e0db96b4098b', 'a14484a7-0a61-409d-9097-77bc139108d5', 'income', 49000, '2026-10-17', 0, 1, '2026-10-17', NULL, 'Viagem Gabriel/Fernanda', 'a14484a7-0d39-4770-bb09-b31a7c3856ae', 'a144a731-b5d3-4349-bdb1-b83775fc6d07', NULL, '2026-03-10 17:11:16', '2026-03-10 17:11:16'),
('a144ab9b-198b-4b91-9e3f-5da8788f5478', 'a14484a7-0a61-409d-9097-77bc139108d5', 'expense', 44000, '2026-04-30', 0, 1, '2026-04-30', NULL, 'Adriana - Faxina', 'a14484a7-0d39-4770-bb09-b31a7c3856ae', 'a144877f-0463-4a40-bab0-ea096346211a', NULL, '2026-03-10 17:18:09', '2026-03-10 17:18:09'),
('a144ab9b-1e69-4b5e-86e2-1944103d5596', 'a14484a7-0a61-409d-9097-77bc139108d5', 'expense', 44000, '2026-05-30', 0, 1, '2026-05-30', NULL, 'Adriana - Faxina', 'a14484a7-0d39-4770-bb09-b31a7c3856ae', 'a144877f-0463-4a40-bab0-ea096346211a', NULL, '2026-03-10 17:18:09', '2026-03-10 17:18:09'),
('a144ab9b-2057-4e87-8a7c-662f609e8037', 'a14484a7-0a61-409d-9097-77bc139108d5', 'expense', 44000, '2026-06-30', 0, 1, '2026-06-30', NULL, 'Adriana - Faxina', 'a14484a7-0d39-4770-bb09-b31a7c3856ae', 'a144877f-0463-4a40-bab0-ea096346211a', NULL, '2026-03-10 17:18:09', '2026-03-10 17:18:09'),
('a144ab9b-225a-4cb4-9d6f-78cff5bf9fac', 'a14484a7-0a61-409d-9097-77bc139108d5', 'expense', 44000, '2026-07-30', 0, 1, '2026-07-30', NULL, 'Adriana - Faxina', 'a14484a7-0d39-4770-bb09-b31a7c3856ae', 'a144877f-0463-4a40-bab0-ea096346211a', NULL, '2026-03-10 17:18:09', '2026-03-10 17:18:09'),
('a144ab9b-24cf-4244-a8f6-083b0df0a3bf', 'a14484a7-0a61-409d-9097-77bc139108d5', 'expense', 44000, '2026-08-30', 0, 1, '2026-08-30', NULL, 'Adriana - Faxina', 'a14484a7-0d39-4770-bb09-b31a7c3856ae', 'a144877f-0463-4a40-bab0-ea096346211a', NULL, '2026-03-10 17:18:09', '2026-03-10 17:18:09'),
('a144ab9b-276a-49e8-89c1-da5ee0652951', 'a14484a7-0a61-409d-9097-77bc139108d5', 'expense', 44000, '2026-09-30', 0, 1, '2026-09-30', NULL, 'Adriana - Faxina', 'a14484a7-0d39-4770-bb09-b31a7c3856ae', 'a144877f-0463-4a40-bab0-ea096346211a', NULL, '2026-03-10 17:18:09', '2026-03-10 17:18:09'),
('a144ab9b-2a54-4d53-8cf2-b83baa59640b', 'a14484a7-0a61-409d-9097-77bc139108d5', 'expense', 44000, '2026-10-30', 0, 1, '2026-10-30', NULL, 'Adriana - Faxina', 'a14484a7-0d39-4770-bb09-b31a7c3856ae', 'a144877f-0463-4a40-bab0-ea096346211a', NULL, '2026-03-10 17:18:09', '2026-03-10 17:18:09'),
('a144ab9b-2cc3-4622-acb6-450ca26b70cf', 'a14484a7-0a61-409d-9097-77bc139108d5', 'expense', 44000, '2026-11-30', 0, 1, '2026-11-30', NULL, 'Adriana - Faxina', 'a14484a7-0d39-4770-bb09-b31a7c3856ae', 'a144877f-0463-4a40-bab0-ea096346211a', NULL, '2026-03-10 17:18:09', '2026-03-10 17:18:09'),
('a144ab9b-2f23-4a25-9aea-c11509c544b7', 'a14484a7-0a61-409d-9097-77bc139108d5', 'expense', 44000, '2026-12-30', 0, 1, '2026-12-30', NULL, 'Adriana - Faxina', 'a14484a7-0d39-4770-bb09-b31a7c3856ae', 'a144877f-0463-4a40-bab0-ea096346211a', NULL, '2026-03-10 17:18:09', '2026-03-10 17:18:09'),
('a144ad72-f847-4ac1-b0af-7adbf1a81d77', 'a14484a7-0a61-409d-9097-77bc139108d5', 'expense', 9780, '2026-04-17', 0, 1, '2026-04-17', NULL, 'Cartão itau gold', 'a14484a7-0d39-4770-bb09-b31a7c3856ae', 'a14484a7-157f-43af-97b4-daab30685c35', NULL, '2026-03-10 17:23:18', '2026-03-10 17:23:18'),
('a144ad72-fd29-4c77-bcf6-a79e1163c7f6', 'a14484a7-0a61-409d-9097-77bc139108d5', 'expense', 9780, '2026-05-17', 0, 1, '2026-05-17', NULL, 'Cartão itau gold', 'a14484a7-0d39-4770-bb09-b31a7c3856ae', 'a14484a7-157f-43af-97b4-daab30685c35', NULL, '2026-03-10 17:23:18', '2026-03-10 17:23:18'),
('a144ad72-ff4c-466f-b7b4-d01aa3ec514b', 'a14484a7-0a61-409d-9097-77bc139108d5', 'expense', 9780, '2026-06-17', 0, 1, '2026-06-17', NULL, 'Cartão itau gold', 'a14484a7-0d39-4770-bb09-b31a7c3856ae', 'a14484a7-157f-43af-97b4-daab30685c35', NULL, '2026-03-10 17:23:18', '2026-03-10 17:23:18'),
('a144ae18-1817-462d-88be-2029015ac3ad', 'a14484a7-0a61-409d-9097-77bc139108d5', 'income', 10000, '2026-04-17', 0, 1, '2026-04-17', NULL, 'Televisão Rogério', 'a14484a7-0d39-4770-bb09-b31a7c3856ae', 'a14484a7-157f-43af-97b4-daab30685c35', NULL, '2026-03-10 17:25:06', '2026-03-10 17:25:06'),
('a144ae18-1cd2-4333-a8bc-e648ba3ac66a', 'a14484a7-0a61-409d-9097-77bc139108d5', 'income', 10000, '2026-05-17', 0, 1, '2026-05-17', NULL, 'Televisão Rogério', 'a14484a7-0d39-4770-bb09-b31a7c3856ae', 'a14484a7-157f-43af-97b4-daab30685c35', NULL, '2026-03-10 17:25:06', '2026-03-10 17:25:06'),
('a144ae18-1f11-4fd7-907c-b49baae68b67', 'a14484a7-0a61-409d-9097-77bc139108d5', 'income', 10000, '2026-06-17', 0, 1, '2026-06-17', NULL, 'Televisão Rogério', 'a14484a7-0d39-4770-bb09-b31a7c3856ae', 'a14484a7-157f-43af-97b4-daab30685c35', NULL, '2026-03-10 17:25:06', '2026-03-10 17:25:06'),
('a144aea6-66c1-4e7a-b629-331872e62030', 'a14484a7-0a61-409d-9097-77bc139108d5', 'expense', 17163, '2026-03-23', 0, 1, '2026-03-23', NULL, 'Conta de Luz', 'a14484a7-0d39-4770-bb09-b31a7c3856ae', 'a144877f-0463-4a40-bab0-ea096346211a', NULL, '2026-03-10 17:26:39', '2026-03-11 00:38:47'),
('a144aea6-6bb3-4eae-8d0d-ea09c1d98418', 'a14484a7-0a61-409d-9097-77bc139108d5', 'expense', 0, '2026-04-23', 0, 1, '2026-04-23', NULL, 'Conta de Luz', 'a14484a7-0d39-4770-bb09-b31a7c3856ae', 'a144877f-0463-4a40-bab0-ea096346211a', NULL, '2026-03-10 17:26:39', '2026-03-11 01:09:36'),
('a144aea6-6dd0-4288-af63-38d9f1c01422', 'a14484a7-0a61-409d-9097-77bc139108d5', 'expense', 0, '2026-05-23', 0, 1, '2026-05-23', NULL, 'Conta de Luz', 'a14484a7-0d39-4770-bb09-b31a7c3856ae', 'a144877f-0463-4a40-bab0-ea096346211a', NULL, '2026-03-10 17:26:39', '2026-03-10 17:26:39'),
('a144aea6-701a-45b1-bcf5-555f71e4e0da', 'a14484a7-0a61-409d-9097-77bc139108d5', 'expense', 0, '2026-06-23', 0, 1, '2026-06-23', NULL, 'Conta de Luz', 'a14484a7-0d39-4770-bb09-b31a7c3856ae', 'a144877f-0463-4a40-bab0-ea096346211a', NULL, '2026-03-10 17:26:39', '2026-03-10 17:26:39'),
('a144aea6-7280-4cf8-b6d4-f2515c39ca54', 'a14484a7-0a61-409d-9097-77bc139108d5', 'expense', 0, '2026-07-23', 0, 1, '2026-07-23', NULL, 'Conta de Luz', 'a14484a7-0d39-4770-bb09-b31a7c3856ae', 'a144877f-0463-4a40-bab0-ea096346211a', NULL, '2026-03-10 17:26:39', '2026-03-10 17:26:39'),
('a144aea6-74c6-4029-9675-11fa4d9cd314', 'a14484a7-0a61-409d-9097-77bc139108d5', 'expense', 0, '2026-08-23', 0, 1, '2026-08-23', NULL, 'Conta de Luz', 'a14484a7-0d39-4770-bb09-b31a7c3856ae', 'a144877f-0463-4a40-bab0-ea096346211a', NULL, '2026-03-10 17:26:39', '2026-03-10 17:26:39'),
('a144aea6-772a-4742-ac2e-fa113f9c6faf', 'a14484a7-0a61-409d-9097-77bc139108d5', 'expense', 0, '2026-09-23', 0, 1, '2026-09-23', NULL, 'Conta de Luz', 'a14484a7-0d39-4770-bb09-b31a7c3856ae', 'a144877f-0463-4a40-bab0-ea096346211a', NULL, '2026-03-10 17:26:39', '2026-03-10 17:26:39'),
('a144aea6-7978-4c78-8e03-18550dff508a', 'a14484a7-0a61-409d-9097-77bc139108d5', 'expense', 0, '2026-10-23', 0, 1, '2026-10-23', NULL, 'Conta de Luz', 'a14484a7-0d39-4770-bb09-b31a7c3856ae', 'a144877f-0463-4a40-bab0-ea096346211a', NULL, '2026-03-10 17:26:39', '2026-03-10 17:26:39'),
('a144aea6-7bd3-411b-918a-663aa77b19af', 'a14484a7-0a61-409d-9097-77bc139108d5', 'expense', 0, '2026-11-23', 0, 1, '2026-11-23', NULL, 'Conta de Luz', 'a14484a7-0d39-4770-bb09-b31a7c3856ae', 'a144877f-0463-4a40-bab0-ea096346211a', NULL, '2026-03-10 17:26:39', '2026-03-10 17:26:39'),
('a144aea6-7bd3-411b-918a-663aa77b19hf', 'a14484a7-0a61-409d-9097-77bc139108d5', 'expense', 0, '2026-12-23', 0, 1, '2026-12-23', NULL, 'Conta de Luz', 'a14484a7-0d39-4770-bb09-b31a7c3856ae', 'a144877f-0463-4a40-bab0-ea096346211a', NULL, '2026-03-10 17:26:39', '2026-03-10 17:26:39'),
('a144af29-a6a7-45b8-9c37-f86ca1fe45f8', 'a14484a7-0a61-409d-9097-77bc139108d5', 'expense', 52000, '2026-04-30', 0, 1, '2026-04-30', NULL, 'Psicóloga', 'a14484a7-0d39-4770-bb09-b31a7c3856ae', 'a144aabb-79b5-4597-a0a1-eb52c179f7d2', NULL, '2026-03-10 17:28:05', '2026-03-10 17:28:05'),
('a144af29-ab94-49b3-a48c-d4905acbd085', 'a14484a7-0a61-409d-9097-77bc139108d5', 'expense', 52000, '2026-05-30', 0, 1, '2026-05-30', NULL, 'Psicóloga', 'a14484a7-0d39-4770-bb09-b31a7c3856ae', 'a144aabb-79b5-4597-a0a1-eb52c179f7d2', NULL, '2026-03-10 17:28:05', '2026-03-10 17:28:05'),
('a144af29-ad8d-4ff1-9a32-cc15501b3694', 'a14484a7-0a61-409d-9097-77bc139108d5', 'expense', 52000, '2026-06-30', 0, 1, '2026-06-30', NULL, 'Psicóloga', 'a14484a7-0d39-4770-bb09-b31a7c3856ae', 'a144aabb-79b5-4597-a0a1-eb52c179f7d2', NULL, '2026-03-10 17:28:05', '2026-03-10 17:28:05'),
('a144af29-af77-4d72-94f6-d7957e95b7e3', 'a14484a7-0a61-409d-9097-77bc139108d5', 'expense', 52000, '2026-07-30', 0, 1, '2026-07-30', NULL, 'Psicóloga', 'a14484a7-0d39-4770-bb09-b31a7c3856ae', 'a144aabb-79b5-4597-a0a1-eb52c179f7d2', NULL, '2026-03-10 17:28:05', '2026-03-10 17:28:05'),
('a144b0a3-f5b4-4b0a-bc04-c0f28d2025a9', 'a14484a7-0a61-409d-9097-77bc139108d5', 'income', 329645, '2026-04-15', 0, 1, '2026-04-15', NULL, 'Salário 60%', 'a14484a7-0d39-4770-bb09-b31a7c3856ae', 'a14484a7-174c-4331-b954-52a9357e2145', NULL, '2026-03-10 17:32:13', '2026-03-10 17:32:13'),
('a144b0a3-fb27-4b69-ad1b-86d18a56bf5f', 'a14484a7-0a61-409d-9097-77bc139108d5', 'income', 329645, '2026-05-15', 0, 1, '2026-05-15', NULL, 'Salário 60%', 'a14484a7-0d39-4770-bb09-b31a7c3856ae', 'a14484a7-174c-4331-b954-52a9357e2145', NULL, '2026-03-10 17:32:13', '2026-03-10 17:32:13'),
('a144b0a3-fd54-45d4-8472-cf667b0be446', 'a14484a7-0a61-409d-9097-77bc139108d5', 'income', 329645, '2026-06-15', 0, 1, '2026-06-15', NULL, 'Salário 60%', 'a14484a7-0d39-4770-bb09-b31a7c3856ae', 'a14484a7-174c-4331-b954-52a9357e2145', NULL, '2026-03-10 17:32:13', '2026-03-10 17:32:13'),
('a144b102-5009-4666-b21e-a76063698bc4', 'a14484a7-0a61-409d-9097-77bc139108d5', 'expense', 9990, '2026-04-15', 0, 1, '2026-04-15', NULL, 'Internet', 'a14484a7-0d39-4770-bb09-b31a7c3856ae', 'a144877f-0463-4a40-bab0-ea096346211a', NULL, '2026-03-10 17:33:15', '2026-03-10 17:33:15'),
('a144b102-559b-4554-bbf9-b25b409f75a3', 'a14484a7-0a61-409d-9097-77bc139108d5', 'expense', 9990, '2026-05-15', 0, 1, '2026-05-15', NULL, 'Internet', 'a14484a7-0d39-4770-bb09-b31a7c3856ae', 'a144877f-0463-4a40-bab0-ea096346211a', NULL, '2026-03-10 17:33:15', '2026-03-10 17:33:15'),
('a144b102-57f3-4121-a361-adf44ded8754', 'a14484a7-0a61-409d-9097-77bc139108d5', 'expense', 9990, '2026-06-15', 0, 1, '2026-06-15', NULL, 'Internet', 'a14484a7-0d39-4770-bb09-b31a7c3856ae', 'a144877f-0463-4a40-bab0-ea096346211a', NULL, '2026-03-10 17:33:15', '2026-03-10 17:33:15'),
('a144b102-59f3-4b61-99b6-dce6855f3f3d', 'a14484a7-0a61-409d-9097-77bc139108d5', 'expense', 9990, '2026-07-15', 0, 1, '2026-07-15', NULL, 'Internet', 'a14484a7-0d39-4770-bb09-b31a7c3856ae', 'a144877f-0463-4a40-bab0-ea096346211a', NULL, '2026-03-10 17:33:15', '2026-03-10 17:33:15'),
('a144b102-5ca3-4088-842a-cd8edccb188f', 'a14484a7-0a61-409d-9097-77bc139108d5', 'expense', 9990, '2026-08-15', 0, 1, '2026-08-15', NULL, 'Internet', 'a14484a7-0d39-4770-bb09-b31a7c3856ae', 'a144877f-0463-4a40-bab0-ea096346211a', NULL, '2026-03-10 17:33:15', '2026-03-10 17:33:15'),
('a144b102-5eba-44a4-916c-473d2ed7e579', 'a14484a7-0a61-409d-9097-77bc139108d5', 'expense', 9990, '2026-09-15', 0, 1, '2026-09-15', NULL, 'Internet', 'a14484a7-0d39-4770-bb09-b31a7c3856ae', 'a144877f-0463-4a40-bab0-ea096346211a', NULL, '2026-03-10 17:33:15', '2026-03-10 17:33:15'),
('a144b102-60bb-4f55-b352-7a88d2c6630b', 'a14484a7-0a61-409d-9097-77bc139108d5', 'expense', 9990, '2026-10-15', 0, 1, '2026-10-15', NULL, 'Internet', 'a14484a7-0d39-4770-bb09-b31a7c3856ae', 'a144877f-0463-4a40-bab0-ea096346211a', NULL, '2026-03-10 17:33:15', '2026-03-10 17:33:15'),
('a144b102-62dd-4226-9596-ae9ade7464a4', 'a14484a7-0a61-409d-9097-77bc139108d5', 'expense', 9990, '2026-11-15', 0, 1, '2026-11-15', NULL, 'Internet', 'a14484a7-0d39-4770-bb09-b31a7c3856ae', 'a144877f-0463-4a40-bab0-ea096346211a', NULL, '2026-03-10 17:33:15', '2026-03-10 17:33:15'),
('a144b102-6565-4605-83e3-a4fec9ba9cae', 'a14484a7-0a61-409d-9097-77bc139108d5', 'expense', 9990, '2026-12-15', 0, 1, '2026-12-15', NULL, 'Internet', 'a14484a7-0d39-4770-bb09-b31a7c3856ae', 'a144877f-0463-4a40-bab0-ea096346211a', NULL, '2026-03-10 17:33:15', '2026-03-10 17:33:15'),
('a144b164-2645-4ccf-b983-bee7f3c75bf3', 'a14484a7-0a61-409d-9097-77bc139108d5', 'expense', 48479, '2026-04-10', 0, 0, '2026-04-10', NULL, 'Condominio', 'a14484a7-0d39-4770-bb09-b31a7c3856ae', 'a144877f-0463-4a40-bab0-ea096346211a', NULL, '2026-03-10 17:34:19', '2026-03-10 17:34:19'),
('a144b1c6-75bd-43bb-96d6-0c32ec795fa3', 'a14484a7-0a61-409d-9097-77bc139108d5', 'income', 30000, '2026-03-15', 0, 1, '2026-03-15', NULL, 'Site Bocayuva Tintas', 'a14484a7-0d39-4770-bb09-b31a7c3856ae', 'a14484a7-174c-4331-b954-52a9357e2145', NULL, '2026-03-10 17:35:24', '2026-03-10 17:35:24'),
('a144b1c6-7ace-4df1-90ae-a3cf540b39a8', 'a14484a7-0a61-409d-9097-77bc139108d5', 'income', 30000, '2026-04-15', 0, 1, '2026-04-15', NULL, 'Site Bocayuva Tintas', 'a14484a7-0d39-4770-bb09-b31a7c3856ae', 'a14484a7-174c-4331-b954-52a9357e2145', NULL, '2026-03-10 17:35:24', '2026-03-10 17:35:24'),
('a144b1c6-7d06-44e2-a730-8323bdab823c', 'a14484a7-0a61-409d-9097-77bc139108d5', 'income', 30000, '2026-05-15', 0, 1, '2026-05-15', NULL, 'Site Bocayuva Tintas', 'a14484a7-0d39-4770-bb09-b31a7c3856ae', 'a14484a7-174c-4331-b954-52a9357e2145', NULL, '2026-03-10 17:35:24', '2026-03-10 17:35:24'),
('a144b1c6-7fce-48cd-948f-e2a6921e4173', 'a14484a7-0a61-409d-9097-77bc139108d5', 'income', 30000, '2026-06-15', 0, 1, '2026-06-15', NULL, 'Site Bocayuva Tintas', 'a14484a7-0d39-4770-bb09-b31a7c3856ae', 'a14484a7-174c-4331-b954-52a9357e2145', NULL, '2026-03-10 17:35:24', '2026-03-10 17:35:24'),
('a144b1c6-8202-4395-9cb4-d0f87148cd55', 'a14484a7-0a61-409d-9097-77bc139108d5', 'income', 30000, '2026-07-15', 0, 1, '2026-07-15', NULL, 'Site Bocayuva Tintas', 'a14484a7-0d39-4770-bb09-b31a7c3856ae', 'a14484a7-174c-4331-b954-52a9357e2145', NULL, '2026-03-10 17:35:24', '2026-03-10 17:35:24'),
('a144b1c6-843b-4d85-95e6-0ad7294b0bf1', 'a14484a7-0a61-409d-9097-77bc139108d5', 'income', 30000, '2026-08-15', 0, 1, '2026-08-15', NULL, 'Site Bocayuva Tintas', 'a14484a7-0d39-4770-bb09-b31a7c3856ae', 'a14484a7-174c-4331-b954-52a9357e2145', NULL, '2026-03-10 17:35:24', '2026-03-10 17:35:24'),
('a144b1c6-867d-403e-8be7-c518170c83e8', 'a14484a7-0a61-409d-9097-77bc139108d5', 'income', 30000, '2026-09-15', 0, 1, '2026-09-15', NULL, 'Site Bocayuva Tintas', 'a14484a7-0d39-4770-bb09-b31a7c3856ae', 'a14484a7-174c-4331-b954-52a9357e2145', NULL, '2026-03-10 17:35:24', '2026-03-10 17:35:24'),
('a144b1c6-895d-4cc4-8b92-62bbdc58c262', 'a14484a7-0a61-409d-9097-77bc139108d5', 'income', 30000, '2026-10-15', 0, 1, '2026-10-15', NULL, 'Site Bocayuva Tintas', 'a14484a7-0d39-4770-bb09-b31a7c3856ae', 'a14484a7-174c-4331-b954-52a9357e2145', NULL, '2026-03-10 17:35:24', '2026-03-10 17:35:24'),
('a144b1c6-8bb8-4d57-8f85-15742a7c4ef0', 'a14484a7-0a61-409d-9097-77bc139108d5', 'income', 30000, '2026-11-15', 0, 1, '2026-11-15', NULL, 'Site Bocayuva Tintas', 'a14484a7-0d39-4770-bb09-b31a7c3856ae', 'a14484a7-174c-4331-b954-52a9357e2145', NULL, '2026-03-10 17:35:24', '2026-03-10 17:35:24'),
('a144b2e6-60f5-41c6-ad44-840aac890708', 'a14484a7-0a61-409d-9097-77bc139108d5', 'income', 30000, '2026-03-13', 0, 0, '2026-03-13', NULL, 'Salário durante férias Serasa', 'a14484a7-0d39-4770-bb09-b31a7c3856ae', 'a14484a7-174c-4331-b954-52a9357e2145', NULL, '2026-03-10 17:38:32', '2026-03-10 17:38:32'),
('a144b46e-0bb9-42ba-a830-f8345ad3341e', 'a14484a7-0a61-409d-9097-77bc139108d5', 'expense', 15000, '2026-03-15', 0, 1, '2026-03-15', NULL, 'Pagamento garagem ', 'a14484a7-0d39-4770-bb09-b31a7c3856ae', 'a144877f-0463-4a40-bab0-ea096346211a', NULL, '2026-03-10 17:42:49', '2026-03-10 17:42:49'),
('a144b46e-10b9-467e-87f0-765d9dd6f8bb', 'a14484a7-0a61-409d-9097-77bc139108d5', 'expense', 15000, '2026-04-15', 0, 1, '2026-04-15', NULL, 'Pagamento garagem ', 'a14484a7-0d39-4770-bb09-b31a7c3856ae', 'a144877f-0463-4a40-bab0-ea096346211a', NULL, '2026-03-10 17:42:49', '2026-03-10 17:42:49'),
('a144b46e-13f3-46e4-8341-28e94641d364', 'a14484a7-0a61-409d-9097-77bc139108d5', 'expense', 15000, '2026-05-15', 0, 1, '2026-05-15', NULL, 'Pagamento garagem ', 'a14484a7-0d39-4770-bb09-b31a7c3856ae', 'a144877f-0463-4a40-bab0-ea096346211a', NULL, '2026-03-10 17:42:49', '2026-03-10 17:42:49'),
('a144b46e-1626-45df-830c-776bd9304d3a', 'a14484a7-0a61-409d-9097-77bc139108d5', 'expense', 15000, '2026-06-15', 0, 1, '2026-06-15', NULL, 'Pagamento garagem ', 'a14484a7-0d39-4770-bb09-b31a7c3856ae', 'a144877f-0463-4a40-bab0-ea096346211a', NULL, '2026-03-10 17:42:49', '2026-03-10 17:42:49'),
('a144b46e-18a9-44ef-84b0-7a67a77f666f', 'a14484a7-0a61-409d-9097-77bc139108d5', 'expense', 15000, '2026-07-15', 0, 1, '2026-07-15', NULL, 'Pagamento garagem ', 'a14484a7-0d39-4770-bb09-b31a7c3856ae', 'a144877f-0463-4a40-bab0-ea096346211a', NULL, '2026-03-10 17:42:49', '2026-03-10 17:42:49'),
('a144b46e-1b21-4a9f-bfdb-a1e769049d27', 'a14484a7-0a61-409d-9097-77bc139108d5', 'expense', 15000, '2026-08-15', 0, 1, '2026-08-15', NULL, 'Pagamento garagem ', 'a14484a7-0d39-4770-bb09-b31a7c3856ae', 'a144877f-0463-4a40-bab0-ea096346211a', NULL, '2026-03-10 17:42:49', '2026-03-10 17:42:49'),
('a144b46e-1dec-4abf-a5d3-e245693370c8', 'a14484a7-0a61-409d-9097-77bc139108d5', 'expense', 15000, '2026-09-15', 0, 1, '2026-09-15', NULL, 'Pagamento garagem ', 'a14484a7-0d39-4770-bb09-b31a7c3856ae', 'a144877f-0463-4a40-bab0-ea096346211a', NULL, '2026-03-10 17:42:49', '2026-03-10 17:42:49'),
('a144b46e-24a0-4300-a133-3f05845eaf68', 'a14484a7-0a61-409d-9097-77bc139108d5', 'expense', 15000, '2026-10-15', 0, 1, '2026-10-15', NULL, 'Pagamento garagem ', 'a14484a7-0d39-4770-bb09-b31a7c3856ae', 'a144877f-0463-4a40-bab0-ea096346211a', NULL, '2026-03-10 17:42:49', '2026-03-10 17:42:49'),
('a144b46e-2834-4be6-8737-a34cdabb3cbe', 'a14484a7-0a61-409d-9097-77bc139108d5', 'expense', 15000, '2026-11-15', 0, 1, '2026-11-15', NULL, 'Pagamento garagem ', 'a14484a7-0d39-4770-bb09-b31a7c3856ae', 'a144877f-0463-4a40-bab0-ea096346211a', NULL, '2026-03-10 17:42:49', '2026-03-10 17:42:49'),
('a144b5d2-d653-459f-a6c5-6d3b38cc23f9', 'a14484a7-0a61-409d-9097-77bc139108d5', 'income', 30000, '2026-03-31', 0, 1, '2026-03-31', NULL, 'Salário 40%', 'a14484a7-0d39-4770-bb09-b31a7c3856ae', 'a14484a7-174c-4331-b954-52a9357e2145', NULL, '2026-03-10 17:46:43', '2026-03-10 17:46:43'),
('a144b5d2-db7b-4d30-9ad8-976355c389d8', 'a14484a7-0a61-409d-9097-77bc139108d5', 'income', 0, '2026-04-30', 0, 1, '2026-04-30', NULL, 'Salário 40%', 'a14484a7-0d39-4770-bb09-b31a7c3856ae', 'a14484a7-174c-4331-b954-52a9357e2145', NULL, '2026-03-10 17:46:43', '2026-03-10 17:46:43'),
('a144b5d2-de37-4938-848a-789f9a6b8728', 'a14484a7-0a61-409d-9097-77bc139108d5', 'income', 0, '2026-05-31', 0, 1, '2026-05-31', NULL, 'Salário 40%', 'a14484a7-0d39-4770-bb09-b31a7c3856ae', 'a14484a7-174c-4331-b954-52a9357e2145', NULL, '2026-03-10 17:46:43', '2026-03-10 17:46:43'),
('a144b5d2-e085-445f-bace-097cb3b4af51', 'a14484a7-0a61-409d-9097-77bc139108d5', 'income', 0, '2026-06-30', 0, 1, '2026-06-30', NULL, 'Salário 40%', 'a14484a7-0d39-4770-bb09-b31a7c3856ae', 'a14484a7-174c-4331-b954-52a9357e2145', NULL, '2026-03-10 17:46:43', '2026-03-10 17:46:43'),
('a144b5d2-e301-4463-976f-bfc9e5e4f74f', 'a14484a7-0a61-409d-9097-77bc139108d5', 'income', 0, '2026-07-31', 0, 1, '2026-07-31', NULL, 'Salário 40%', 'a14484a7-0d39-4770-bb09-b31a7c3856ae', 'a14484a7-174c-4331-b954-52a9357e2145', NULL, '2026-03-10 17:46:43', '2026-03-10 17:46:43'),
('a144b5d2-e573-4170-898f-068c2880375a', 'a14484a7-0a61-409d-9097-77bc139108d5', 'income', 0, '2026-08-31', 0, 1, '2026-08-31', NULL, 'Salário 40%', 'a14484a7-0d39-4770-bb09-b31a7c3856ae', 'a14484a7-174c-4331-b954-52a9357e2145', NULL, '2026-03-10 17:46:43', '2026-03-10 17:46:43'),
('a144b5d2-e84c-4472-920b-14441f513470', 'a14484a7-0a61-409d-9097-77bc139108d5', 'income', 0, '2026-09-30', 0, 1, '2026-09-30', NULL, 'Salário 40%', 'a14484a7-0d39-4770-bb09-b31a7c3856ae', 'a14484a7-174c-4331-b954-52a9357e2145', NULL, '2026-03-10 17:46:43', '2026-03-10 17:46:43'),
('a144b5d2-eb02-47f4-bac3-0776d14785dd', 'a14484a7-0a61-409d-9097-77bc139108d5', 'income', 0, '2026-10-31', 0, 1, '2026-10-31', NULL, 'Salário 40%', 'a14484a7-0d39-4770-bb09-b31a7c3856ae', 'a14484a7-174c-4331-b954-52a9357e2145', NULL, '2026-03-10 17:46:43', '2026-03-10 17:46:43'),
('a144b5d2-edc6-4a55-89f8-54353522e111', 'a14484a7-0a61-409d-9097-77bc139108d5', 'income', 0, '2026-11-30', 0, 1, '2026-11-30', NULL, 'Salário 40%', 'a14484a7-0d39-4770-bb09-b31a7c3856ae', 'a14484a7-174c-4331-b954-52a9357e2145', NULL, '2026-03-10 17:46:43', '2026-03-10 17:46:43'),
('a144dce4-f674-4663-b74e-4b59aa3a228a', 'a14484a7-0a61-409d-9097-77bc139108d5', 'income', 19004, '2026-03-06', 1, 0, '2026-03-06', NULL, 'SuperBet', 'a14484a7-0d39-4770-bb09-b31a7c3856ae', 'a144dc9b-f4bd-4389-8b18-45eec337c697', NULL, '2026-03-10 19:35:58', '2026-03-10 19:35:58'),
('a144ddd4-329a-4d8b-956d-b6c8a0088e70', 'a14484a7-0a61-409d-9097-77bc139108d5', 'expense', 17189, '2026-03-17', 1, 1, '2026-03-17', '2026-03-06', 'Cartão itau Uniclass', 'a14484a7-0d39-4770-bb09-b31a7c3856ae', 'a14484a7-157f-43af-97b4-daab30685c35', NULL, '2026-03-10 19:38:35', '2026-03-10 19:38:35'),
('a144ddd4-37a5-4642-8e6b-f6721bd85bde', 'a14484a7-0a61-409d-9097-77bc139108d5', 'expense', 0, '2026-04-17', 0, 1, '2026-04-17', NULL, 'Cartão itau Uniclass', 'a14484a7-0d39-4770-bb09-b31a7c3856ae', 'a14484a7-157f-43af-97b4-daab30685c35', NULL, '2026-03-10 19:38:35', '2026-03-10 19:38:35'),
('a144ddd4-39a4-445d-a860-3bdd4706f13a', 'a14484a7-0a61-409d-9097-77bc139108d5', 'expense', 0, '2026-05-17', 0, 1, '2026-05-17', NULL, 'Cartão itau Uniclass', 'a14484a7-0d39-4770-bb09-b31a7c3856ae', 'a14484a7-157f-43af-97b4-daab30685c35', NULL, '2026-03-10 19:38:35', '2026-03-10 19:38:35'),
('a144ddd4-3b9c-4c7e-bdd5-bc8dae40eed9', 'a14484a7-0a61-409d-9097-77bc139108d5', 'expense', 0, '2026-06-17', 0, 1, '2026-06-17', NULL, 'Cartão itau Uniclass', 'a14484a7-0d39-4770-bb09-b31a7c3856ae', 'a14484a7-157f-43af-97b4-daab30685c35', NULL, '2026-03-10 19:38:35', '2026-03-10 19:38:35'),
('a144ddd4-3dee-44cb-84a2-8783f6626d92', 'a14484a7-0a61-409d-9097-77bc139108d5', 'expense', 0, '2026-07-17', 0, 1, '2026-07-17', NULL, 'Cartão itau Uniclass', 'a14484a7-0d39-4770-bb09-b31a7c3856ae', 'a14484a7-157f-43af-97b4-daab30685c35', NULL, '2026-03-10 19:38:35', '2026-03-10 19:38:35'),
('a144ddd4-4021-40eb-a753-2b8cf36c5a25', 'a14484a7-0a61-409d-9097-77bc139108d5', 'expense', 0, '2026-08-17', 0, 1, '2026-08-17', NULL, 'Cartão itau Uniclass', 'a14484a7-0d39-4770-bb09-b31a7c3856ae', 'a14484a7-157f-43af-97b4-daab30685c35', NULL, '2026-03-10 19:38:35', '2026-03-10 19:38:35'),
('a144ddd4-4254-48ed-b1c5-c2a6465a0138', 'a14484a7-0a61-409d-9097-77bc139108d5', 'expense', 0, '2026-09-17', 0, 1, '2026-09-17', NULL, 'Cartão itau Uniclass', 'a14484a7-0d39-4770-bb09-b31a7c3856ae', 'a14484a7-157f-43af-97b4-daab30685c35', NULL, '2026-03-10 19:38:35', '2026-03-10 19:38:35'),
('a144ddd4-44a4-4a60-aef4-6832e9830ddc', 'a14484a7-0a61-409d-9097-77bc139108d5', 'expense', 0, '2026-10-17', 0, 1, '2026-10-17', NULL, 'Cartão itau Uniclass', 'a14484a7-0d39-4770-bb09-b31a7c3856ae', 'a14484a7-157f-43af-97b4-daab30685c35', NULL, '2026-03-10 19:38:35', '2026-03-10 19:38:35'),
('a145236e-78e2-4eab-9500-304cc094ebae', 'a14484a7-0a61-409d-9097-77bc139108d5', 'income', 60000, '2026-03-25', 0, 0, '2026-03-25', NULL, 'Divida Victor', 'a14484a7-0d39-4770-bb09-b31a7c3856ae', 'a144dc9b-f4bd-4389-8b18-45eec337c697', NULL, '2026-03-10 22:53:12', '2026-03-10 22:53:12'),
('a1452431-f637-4bde-86b3-07d1d752f364', 'a14484a7-0a61-409d-9097-77bc139108d5', 'expense', 15000, '2026-03-13', 0, 0, '2026-03-13', NULL, 'Limpeza de pele', 'a14484a7-0d39-4770-bb09-b31a7c3856ae', 'a144aabb-79b5-4597-a0a1-eb52c179f7d2', NULL, '2026-03-10 22:55:20', '2026-03-10 22:55:20'),
('a1452d36-f5ed-417a-b2cb-d4ed8e2a4851', 'a14484a7-0a61-409d-9097-77bc139108d5', 'expense', 150000, '2026-03-31', 0, 0, '2026-03-31', NULL, 'Parcela celular', 'a14484a7-0d39-4770-bb09-b31a7c3856ae', 'a1452cb7-8201-4510-bec5-2174d2863076', NULL, '2026-03-10 23:20:33', '2026-03-10 23:20:33'),
('a14553cf-3c8b-431a-92e1-dc53474fa057', 'a14484a7-0a61-409d-9097-77bc139108d5', 'expense', 29803, '2026-04-10', 0, 1, '2026-04-10', NULL, 'Curso de inglês', 'a14484a7-0d39-4770-bb09-b31a7c3856ae', 'a14484a7-18b4-43fd-8d69-71d9ee2c196c', NULL, '2026-03-11 01:08:29', '2026-03-11 01:08:29'),
('a14553cf-40ff-44f9-bde8-a94f3dc25334', 'a14484a7-0a61-409d-9097-77bc139108d5', 'expense', 29803, '2026-05-10', 0, 1, '2026-05-10', NULL, 'Curso de inglês', 'a14484a7-0d39-4770-bb09-b31a7c3856ae', 'a14484a7-18b4-43fd-8d69-71d9ee2c196c', NULL, '2026-03-11 01:08:29', '2026-03-11 01:08:29'),
('a14553cf-42f4-43d1-901d-aa101b39d331', 'a14484a7-0a61-409d-9097-77bc139108d5', 'expense', 29803, '2026-06-10', 0, 1, '2026-06-10', NULL, 'Curso de inglês', 'a14484a7-0d39-4770-bb09-b31a7c3856ae', 'a14484a7-18b4-43fd-8d69-71d9ee2c196c', NULL, '2026-03-11 01:08:29', '2026-03-11 01:08:29'),
('a14553cf-44fd-43d9-933f-e44f1318580f', 'a14484a7-0a61-409d-9097-77bc139108d5', 'expense', 29803, '2026-07-10', 0, 1, '2026-07-10', NULL, 'Curso de inglês', 'a14484a7-0d39-4770-bb09-b31a7c3856ae', 'a14484a7-18b4-43fd-8d69-71d9ee2c196c', NULL, '2026-03-11 01:08:29', '2026-03-11 01:08:29'),
('a14553cf-46fb-4ace-a5ef-f22c6b2c9a18', 'a14484a7-0a61-409d-9097-77bc139108d5', 'expense', 29803, '2026-08-10', 0, 1, '2026-08-10', NULL, 'Curso de inglês', 'a14484a7-0d39-4770-bb09-b31a7c3856ae', 'a14484a7-18b4-43fd-8d69-71d9ee2c196c', NULL, '2026-03-11 01:08:29', '2026-03-11 01:08:29'),
('a14553cf-48fc-4928-8ebf-7adabe43f3c6', 'a14484a7-0a61-409d-9097-77bc139108d5', 'expense', 29803, '2026-09-10', 0, 1, '2026-09-10', NULL, 'Curso de inglês', 'a14484a7-0d39-4770-bb09-b31a7c3856ae', 'a14484a7-18b4-43fd-8d69-71d9ee2c196c', NULL, '2026-03-11 01:08:29', '2026-03-11 01:08:29'),
('a14553cf-4bb5-4017-b92d-141abe348ee1', 'a14484a7-0a61-409d-9097-77bc139108d5', 'expense', 29803, '2026-10-10', 0, 1, '2026-10-10', NULL, 'Curso de inglês', 'a14484a7-0d39-4770-bb09-b31a7c3856ae', 'a14484a7-18b4-43fd-8d69-71d9ee2c196c', NULL, '2026-03-11 01:08:29', '2026-03-11 01:08:29'),
('a14553cf-4ddc-4663-9ae7-2d76aca06815', 'a14484a7-0a61-409d-9097-77bc139108d5', 'expense', 29803, '2026-11-10', 0, 1, '2026-11-10', NULL, 'Curso de inglês', 'a14484a7-0d39-4770-bb09-b31a7c3856ae', 'a14484a7-18b4-43fd-8d69-71d9ee2c196c', NULL, '2026-03-11 01:08:29', '2026-03-11 01:08:29'),
('a14553cf-514a-49f0-bd7d-5303e473e574', 'a14484a7-0a61-409d-9097-77bc139108d5', 'expense', 29803, '2026-12-10', 0, 1, '2026-12-10', NULL, 'Curso de inglês', 'a14484a7-0d39-4770-bb09-b31a7c3856ae', 'a14484a7-18b4-43fd-8d69-71d9ee2c196c', NULL, '2026-03-11 01:08:29', '2026-03-11 01:08:29'),
('a14553cf-540f-4683-83e7-9cdec5ec1880', 'a14484a7-0a61-409d-9097-77bc139108d5', 'expense', 29803, '2027-01-10', 0, 1, '2027-01-10', NULL, 'Curso de inglês', 'a14484a7-0d39-4770-bb09-b31a7c3856ae', 'a14484a7-18b4-43fd-8d69-71d9ee2c196c', NULL, '2026-03-11 01:08:29', '2026-03-11 01:08:29'),
('a14553cf-565e-40f2-bd46-0321b06f94fe', 'a14484a7-0a61-409d-9097-77bc139108d5', 'expense', 29803, '2027-02-10', 0, 1, '2027-02-10', NULL, 'Curso de inglês', 'a14484a7-0d39-4770-bb09-b31a7c3856ae', 'a14484a7-18b4-43fd-8d69-71d9ee2c196c', NULL, '2026-03-11 01:08:29', '2026-03-11 01:08:29'),
('a14553cf-58a2-45aa-a312-663bdfba8bef', 'a14484a7-0a61-409d-9097-77bc139108d5', 'expense', 29803, '2027-03-10', 0, 1, '2027-03-10', NULL, 'Curso de inglês', 'a14484a7-0d39-4770-bb09-b31a7c3856ae', 'a14484a7-18b4-43fd-8d69-71d9ee2c196c', NULL, '2026-03-11 01:08:29', '2026-03-11 01:08:29'),
('a14556e3-9749-4f23-925f-e4248ea71d07', 'a14484a7-0a61-409d-9097-77bc139108d5', 'expense', 25000, '2026-03-15', 0, 1, '2026-03-15', NULL, 'Aporte B3', 'a14484a7-0d39-4770-bb09-b31a7c3856ae', 'a145563d-8f58-4b69-847d-1643a16bcaa7', NULL, '2026-03-11 01:17:05', '2026-03-11 01:18:50'),
('a14556e3-9af1-48cf-b5f7-2f00d5a87ef1', 'a14484a7-0a61-409d-9097-77bc139108d5', 'expense', 25000, '2026-04-15', 0, 1, '2026-04-15', NULL, 'Aporte B3', 'a14484a7-0d39-4770-bb09-b31a7c3856ae', 'a145563d-8f58-4b69-847d-1643a16bcaa7', NULL, '2026-03-11 01:17:05', '2026-03-11 01:17:05'),
('a14556e3-9d0d-4ba4-960d-66d543608826', 'a14484a7-0a61-409d-9097-77bc139108d5', 'expense', 25000, '2026-05-15', 0, 1, '2026-05-15', NULL, 'Aporte B3', 'a14484a7-0d39-4770-bb09-b31a7c3856ae', 'a145563d-8f58-4b69-847d-1643a16bcaa7', NULL, '2026-03-11 01:17:05', '2026-03-11 01:17:05'),
('a14556e3-9f69-4fda-9d71-d13d43b7ab76', 'a14484a7-0a61-409d-9097-77bc139108d5', 'expense', 25000, '2026-06-15', 0, 1, '2026-06-15', NULL, 'Aporte B3', 'a14484a7-0d39-4770-bb09-b31a7c3856ae', 'a145563d-8f58-4b69-847d-1643a16bcaa7', NULL, '2026-03-11 01:17:05', '2026-03-11 01:17:05'),
('a14556e3-a1e7-4f4c-a67f-4157addd4bfc', 'a14484a7-0a61-409d-9097-77bc139108d5', 'expense', 25000, '2026-07-15', 0, 1, '2026-07-15', NULL, 'Aporte B3', 'a14484a7-0d39-4770-bb09-b31a7c3856ae', 'a145563d-8f58-4b69-847d-1643a16bcaa7', NULL, '2026-03-11 01:17:05', '2026-03-11 01:17:05'),
('a14556e3-a46b-403c-a68b-2ed7a543a597', 'a14484a7-0a61-409d-9097-77bc139108d5', 'expense', 25000, '2026-08-15', 0, 1, '2026-08-15', NULL, 'Aporte B3', 'a14484a7-0d39-4770-bb09-b31a7c3856ae', 'a145563d-8f58-4b69-847d-1643a16bcaa7', NULL, '2026-03-11 01:17:05', '2026-03-11 01:17:05'),
('a14556e3-a704-4ed0-9970-4b4ff29a5d29', 'a14484a7-0a61-409d-9097-77bc139108d5', 'expense', 25000, '2026-09-15', 0, 1, '2026-09-15', NULL, 'Aporte B3', 'a14484a7-0d39-4770-bb09-b31a7c3856ae', 'a145563d-8f58-4b69-847d-1643a16bcaa7', NULL, '2026-03-11 01:17:05', '2026-03-11 01:17:05'),
('a14556e3-a986-4a81-9c8a-bdff06017e0e', 'a14484a7-0a61-409d-9097-77bc139108d5', 'expense', 25000, '2026-10-15', 0, 1, '2026-10-15', NULL, 'Aporte B3', 'a14484a7-0d39-4770-bb09-b31a7c3856ae', 'a145563d-8f58-4b69-847d-1643a16bcaa7', NULL, '2026-03-11 01:17:05', '2026-03-11 01:17:05'),
('a14556e3-ac06-4eea-94c5-a8dedecbdca7', 'a14484a7-0a61-409d-9097-77bc139108d5', 'expense', 25000, '2026-11-15', 0, 1, '2026-11-15', NULL, 'Aporte B3', 'a14484a7-0d39-4770-bb09-b31a7c3856ae', 'a145563d-8f58-4b69-847d-1643a16bcaa7', NULL, '2026-03-11 01:17:05', '2026-03-11 01:17:05'),
('a14556e3-af2a-4ac4-aa3b-c205a599bf3e', 'a14484a7-0a61-409d-9097-77bc139108d5', 'expense', 25000, '2026-12-15', 0, 1, '2026-12-15', NULL, 'Aporte B3', 'a14484a7-0d39-4770-bb09-b31a7c3856ae', 'a145563d-8f58-4b69-847d-1643a16bcaa7', NULL, '2026-03-11 01:17:05', '2026-03-11 01:17:05'),
('a14556e3-b18d-4732-9588-149e665e7ea7', 'a14484a7-0a61-409d-9097-77bc139108d5', 'expense', 25000, '2027-01-15', 0, 1, '2027-01-15', NULL, 'Aporte B3', 'a14484a7-0d39-4770-bb09-b31a7c3856ae', 'a145563d-8f58-4b69-847d-1643a16bcaa7', NULL, '2026-03-11 01:17:05', '2026-03-11 01:17:05'),
('a14556e3-b48c-4eed-8c49-349b8fc068b5', 'a14484a7-0a61-409d-9097-77bc139108d5', 'expense', 25000, '2027-02-15', 0, 1, '2027-02-15', NULL, 'Aporte B3', 'a14484a7-0d39-4770-bb09-b31a7c3856ae', 'a145563d-8f58-4b69-847d-1643a16bcaa7', NULL, '2026-03-11 01:17:05', '2026-03-11 01:17:05');

-- --------------------------------------------------------

--
-- Estrutura para tabela `users`
--

CREATE TABLE `users` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `avatar`, `remember_token`, `created_at`, `updated_at`) VALUES
('a14484a7-0a61-409d-9097-77bc139108d5', 'Luis Felipe', 'luisfelipearaujopimenta@gmail.com', NULL, '$2y$12$WFlLH9HESE9yPFpeznv9Fe2SBeHkqAHFj0HSGlit0HMvz/IgE4nlC', NULL, 'TXJvCuYuPmu2RoRyPhql4EJnUA3VXQxFUXRLBMT22ujLGDUysXKKIunigw1X', '2026-03-10 15:29:13', '2026-03-10 15:29:13');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `accounts_user_id_slug_unique` (`user_id`,`slug`);

--
-- Índices de tabela `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Índices de tabela `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Índices de tabela `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_user_id_slug_unique` (`user_id`,`slug`);

--
-- Índices de tabela `exports`
--
ALTER TABLE `exports`
  ADD PRIMARY KEY (`id`),
  ADD KEY `exports_user_id_foreign` (`user_id`);

--
-- Índices de tabela `failed_import_rows`
--
ALTER TABLE `failed_import_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `failed_import_rows_import_id_foreign` (`import_id`);

--
-- Índices de tabela `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Índices de tabela `imports`
--
ALTER TABLE `imports`
  ADD PRIMARY KEY (`id`),
  ADD KEY `imports_user_id_foreign` (`user_id`);

--
-- Índices de tabela `investments`
--
ALTER TABLE `investments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `investments_user_id_foreign` (`user_id`);

--
-- Índices de tabela `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Índices de tabela `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Índices de tabela `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Índices de tabela `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Índices de tabela `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transactions_user_id_foreign` (`user_id`),
  ADD KEY `transactions_account_id_foreign` (`account_id`),
  ADD KEY `transactions_category_id_foreign` (`category_id`);

--
-- Índices de tabela `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `exports`
--
ALTER TABLE `exports`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `failed_import_rows`
--
ALTER TABLE `failed_import_rows`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `imports`
--
ALTER TABLE `imports`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `accounts`
--
ALTER TABLE `accounts`
  ADD CONSTRAINT `accounts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `exports`
--
ALTER TABLE `exports`
  ADD CONSTRAINT `exports_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `failed_import_rows`
--
ALTER TABLE `failed_import_rows`
  ADD CONSTRAINT `failed_import_rows_import_id_foreign` FOREIGN KEY (`import_id`) REFERENCES `imports` (`id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `imports`
--
ALTER TABLE `imports`
  ADD CONSTRAINT `imports_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `investments`
--
ALTER TABLE `investments`
  ADD CONSTRAINT `investments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_account_id_foreign` FOREIGN KEY (`account_id`) REFERENCES `accounts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `transactions_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `transactions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
