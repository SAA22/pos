-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Gazdă: localhost:3306
-- Timp de generare: nov. 26, 2020 la 08:54 PM
-- Versiune server: 5.5.65-MariaDB
-- Versiune PHP: 7.3.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Bază de date: `pos`
--

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `Category` text COLLATE utf8_spanish_ci NOT NULL,
  `Date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Eliminarea datelor din tabel `categories`
--

INSERT INTO `categories` (`id`, `Category`, `Date`) VALUES
(1, 'Apa Minerala', '2020-11-10 17:41:44'),
(2, 'Bauturi carbogazoase', '2020-11-12 08:17:58'),
(3, 'Bere', '2020-11-10 17:42:11'),
(4, 'Paste', '2020-11-12 08:17:36'),
(5, 'Lactate', '2020-11-12 08:17:46'),
(6, 'Ulei ', '2020-11-10 17:42:47'),
(11, 'Detergent', '2020-11-10 17:42:55'),
(13, 'Igena Dentara', '2020-11-10 17:43:06');

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `name` text COLLATE utf8_spanish_ci NOT NULL,
  `idDocument` int(11) NOT NULL,
  `email` text COLLATE utf8_spanish_ci NOT NULL,
  `phone` text COLLATE utf8_spanish_ci NOT NULL,
  `address` text COLLATE utf8_spanish_ci NOT NULL,
  `birthdate` date NOT NULL,
  `purchases` int(11) NOT NULL,
  `lastPurchase` datetime NOT NULL,
  `registerDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Eliminarea datelor din tabel `customers`
--

INSERT INTO `customers` (`id`, `name`, `idDocument`, `email`, `phone`, `address`, `birthdate`, `purchases`, `lastPurchase`, `registerDate`) VALUES
(1, 'john Doe', 12345, 'john@gmail.com', '(555)567-9999', 'evergreen terrace 1543', '1986-01-05', 67, '2020-11-26 14:29:00', '2020-11-26 19:29:00'),
(2, 'Jane Doe', 123456785, 'jane@gmail.com', '(555) 789-9045', 'Carlfield 55', '1983-06-22', 17, '2020-11-09 15:49:36', '2020-11-09 20:49:36'),
(3, 'Juan Villegas', 12344321, 'juan@gmail.com', '(305) 455-6677', 'Main Street 45', '1976-04-12', 36, '2020-11-09 16:08:39', '2020-11-09 21:08:39'),
(4, 'Andrew Wallace', 256548520, 'andrew@gmail.com', '(305) 256-6541', 'Abbey Road 45', '1989-08-15', 29, '2020-11-09 22:11:08', '2020-11-12 09:15:31');

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `idCategory` int(11) NOT NULL,
  `code` text COLLATE utf8_spanish_ci NOT NULL,
  `description` text COLLATE utf8_spanish_ci NOT NULL,
  `image` text COLLATE utf8_spanish_ci NOT NULL,
  `stock` int(11) NOT NULL,
  `buyingPrice` float NOT NULL,
  `sellingPrice` float NOT NULL,
  `sales` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Eliminarea datelor din tabel `products`
--

INSERT INTO `products` (`id`, `idCategory`, `code`, `description`, `image`, `stock`, `buyingPrice`, `sellingPrice`, `sales`, `date`) VALUES
(1, 1, '7332708701', 'Apă Carbogazoasă Perrier Lemon Sticlă  0,33l', 'views/img/products/7332708701/923.png', 30, 4.58, 5.58, 0, '2020-11-11 20:58:47'),
(2, 1, '9441486244', 'Apă carbogazoasă San Benedetto elite 0,75l', 'views/img/products/9441486244/979.png', 30, 4, 5, 0, '2020-11-11 20:58:31'),
(3, 1, '8137268891', 'Apă Minerală Naturală Carbogazoasă San Pellegrino,  1l', 'views/img/products/8137268891/443.png', 30, 5.99, 6.99, 0, '2020-11-11 20:58:15'),
(4, 1, '8433274583', 'Apă Minerală Naturală Carbogazoasă San Pellegrino, 750 ml', 'views/img/products/8433274583/165.png', 30, 7.99, 8.99, 0, '2020-11-11 20:56:12'),
(5, 1, '6964827851', 'Apă Minerală Naturală Plată Acqua Panna  San Pellegrino, 750 ml', 'views/img/products/6964827851/436.png', 25, 7.99, 8.99, 0, '2020-11-11 20:55:40'),
(6, 1, '6251590896', 'Apă minerală Plose, 750ml', 'views/img/products/6251590896/394.png', 25, 5.8, 6.8, 0, '2020-11-11 20:55:22'),
(7, 1, '4868487631', 'Apă plată San Benedetto - Pet 0,5l', 'views/img/products/4868487631/356.png', 25, 5.99, 6.99, 0, '2020-11-11 20:55:08'),
(8, 1, '2489748407', 'Apă Plată Vittel - Pet 0,33l', 'views/img/products/2489748407/867.png', 25, 4.33, 5.33, 0, '2020-11-11 20:54:43'),
(9, 1, '0649117047', 'Apă Plată Vitttel - Pet 0,5l', 'views/img/products/0649117047/411.png', 25, 5.33, 6.33, 0, '2020-11-11 20:53:01'),
(10, 2, '2633668539', 'Bautură Bio Carbogazoasă cu Coacaze Adelholzener,  500ml', 'views/img/products/2633668539/825.png', 20, 5.77, 6.77, 0, '2020-11-11 20:52:35'),
(11, 2, '2158101486', 'Cola-Cola Bautură Carbogazoasă 0,5l ', 'views/img/products/2158101486/708.png', 30, 2.99, 3.99, 0, '2020-11-11 20:51:29'),
(12, 2, '5890066004', 'Schweppes Mandarin 1,5l', 'views/img/products/5890066004/866.png', 25, 4.23, 5.23, 0, '2020-11-11 20:49:30'),
(13, 2, '8061943303', 'Sprite Bautură Carbogazoasă 0,5l', 'views/img/products/8061943303/973.png', 25, 4.34, 5.34, 0, '2020-11-11 20:49:06'),
(14, 2, '1459573464', 'Suc Bio de Coacaze Negre Carbogazos Hollinger, 500ml', 'views/img/products/1459573464/108.png', 15, 7.28, 8.28, 0, '2020-11-11 20:48:35'),
(15, 2, '7021851160', 'Suc Bio de Portocale Carbogazos Hollinger, 500ml', 'views/img/products/7021851160/697.png', 15, 5.77, 6.77, 0, '2020-11-11 20:47:56'),
(16, 2, '7718861721', 'Suc Carbogazos Bio Bitter Lemon Isis 0,33l', 'views/img/products/7718861721/873.png', 15, 4.76, 5.76, 0, '2020-11-11 20:47:43'),
(17, 2, '0884743798', 'Suc Carbogazos Bio din Flori de Soc Isis 0,33l', 'views/img/products/0884743798/660.png', 15, 4.76, 5.76, 0, '2020-11-11 20:47:35'),
(18, 2, '9229739348', 'Suc Carbogazos Bio din Portocale și Acerola Isis 0,33l', 'views/img/products/9229739348/946.png', 16, 4.76, 5.76, 0, '2020-11-11 20:47:10'),
(19, 2, '5299171275', 'Suc Carbogazos Bio din Rodie Isis 0,33l', 'views/img/products/5299171275/733.png', 17, 4.76, 5.76, 0, '2020-11-11 20:45:16'),
(20, 3, '6925216380', 'Bere Amstel Lager  0,33 l', 'views/img/products/6925216380/658.png', 25, 3.99, 4.99, 0, '2020-11-11 20:40:45'),
(21, 3, '4841566941', 'Bere Artizanală Capra Noastră  Bere Albă', 'views/img/products/4841566941/190.png', 12, 27, 28, 0, '2020-11-11 20:40:33'),
(22, 3, '0927085279', 'Bere artizanală românească Zăganu Sturionul,  330 ml', 'views/img/products/0927085279/678.png', 10, 8.9, 9.9, 0, '2020-11-11 20:40:15'),
(23, 3, '0704419679', 'Bere Blondă Dab Sticlă 0,66l', 'views/img/products/0704419679/463.png', 10, 4.99, 5.99, 0, '2020-11-11 20:39:48'),
(24, 3, '8282338382', 'Bere Blondă Erdinger Doză 0,5l', 'views/img/products/8282338382/503.png', 10, 5.6, 6.6, 0, '2020-11-11 20:39:33'),
(25, 3, '3411283586', 'Bere Blondă Fără Alcool Clausthaler Classic  Doză 0,5l', 'views/img/products/3411283586/978.png', 10, 3.99, 4.99, 0, '2020-11-11 20:39:10'),
(26, 3, '4588027475', 'Bere Blondă Nefiltrată Paulaner ', 'views/img/products/4588027475/325.png', 10, 5.99, 6.99, 0, '2020-11-11 20:38:42'),
(27, 3, '7303104053', 'Bere Blondă Praga Premium Pils  ', 'views/img/products/7303104053/618.png', 27, 2.24, 3.24, 0, '2020-11-11 20:38:28'),
(28, 3, '7794095621', 'Bere Brună Erdinger Dunkel,  Doză', 'views/img/products/7794095621/985.png', 28, 5.66, 6.66, 0, '2020-11-11 20:38:06'),
(29, 3, '6772758690', 'Bere din grâu nefiltrată la doză, Sanwald  Hefe Weizen', 'views/img/products/6772758690/800.png', 29, 4, 5, 0, '2020-11-11 20:35:06'),
(30, 11, '3736396914', 'Balsam de rufe Lenor Diamond, 50 spălări ', 'views/img/products/3736396914/641.png', 40, 16.98, 17.98, 0, '2020-11-11 20:34:14'),
(31, 11, '4010064533', 'Balsam de rufe Lenor Exotic Bloom ', 'views/img/products/4010064533/504.png', 41, 15.99, 16.99, 0, '2020-11-10 20:31:47'),
(32, 11, '4781641711', 'Balsam de rufe Lenor Parfumelle Gold Orchid, 50 spălari', 'views/img/products/4781641711/409.png', 29, 16.98, 17.98, 0, '2020-11-11 20:33:47'),
(33, 11, '4179211146', 'Balsam de rufe Lenor Spring Awakening, 63 spălări', 'views/img/products/4179211146/286.png', 20, 13.57, 14.57, 0, '2020-11-11 20:34:22'),
(34, 11, '5183987365', 'Detergent capsule Ariel All in One PODS Plus Oxi Effect, 54 spălări', 'views/img/products/5183987365/472.png', 16, 84.99, 85.99, 0, '2020-11-11 20:34:34'),
(35, 11, '4657517725', 'Detergent de vase Fairy Extra  Liliac, 900 ml', 'views/img/products/4657517725/376.png', 18, 11.7, 12.7, 0, '2020-11-11 20:33:00'),
(36, 11, '0713458359', 'Detergent de vase Fairy Pomegranate  Red Orange, 800 ml', 'views/img/products/0713458359/279.png', 18, 7.19, 8.19, 0, '2020-11-11 20:32:42'),
(37, 11, '7448824521', 'Detergent vase pentru mașină de spălat Finish All in One Max, 22 tablete', 'views/img/products/7448824521/469.png', 23, 28.95, 29.95, 0, '2020-11-11 20:32:30'),
(38, 11, '7840690602', 'Dezinfectant înalbitor anticalcar Domestos Pine, 750 ml', 'views/img/products/7840690602/392.png', 19, 5.88, 6.88, 0, '2020-11-11 20:32:04'),
(39, 11, '0485286500', 'Spray dezinfectant multifuncțional Dettol Power,  500 ml', 'views/img/products/0485286500/926.png', 16, 10.99, 11.99, 0, '2020-11-11 20:30:28'),
(40, 13, '2865272248', 'Pastă de dinți Blend a Med Anti cavity Original, 125 ml', 'views/img/products/2865272248/721.png', 20, 4.59, 5.19, 0, '2020-11-11 20:29:40'),
(41, 13, '1283645835', 'Pastă de dinți Cărbune Efect Albire Naturală Black PlaKKontrol, 75ml Italy', 'views/img/products/1283645835/995.png', 21, 23.99, 24.99, 0, '2020-11-11 20:29:17'),
(42, 13, '7292134051', 'Pastă de dinți Colgate Natural Exatracts Charcoal, 75 ml & periuță de dinți Colgate Slim Soft', 'views/img/products/7292134051/286.png', 22, 16.59, 17.59, 0, '2020-11-11 20:28:46'),
(43, 13, '7113305927', 'Pastă de dinți cu cărbune activ UltraBlanc, 75ml', 'views/img/products/7113305927/441.png', 26, 30.98, 31.98, 0, '2020-11-11 20:28:05'),
(44, 13, '9682066026', 'Pastă de dinți Elgydium Kids cu aromă de fructe de pădure, 50 ml', 'views/img/products/9682066026/193.png', 25, 16.94, 17.94, 0, '2020-11-11 20:27:19'),
(45, 13, '3235265564', 'Pastă de dinți Pearl Drops Hollywood Smile, 50 ml', 'views/img/products/3235265564/744.png', 18, 13.99, 14.99, 0, '2020-11-11 20:26:55'),
(46, 13, '1809085734', 'Pastă de dinți pentru copii Oral B Stages Frozen Cars, 75 ml', 'views/img/products/1809085734/151.png', 31, 7.49, 8.49, 0, '2020-11-11 20:26:33'),
(47, 13, '3614172729', 'Pastă de dinți Sensodyne Repair and Protect, 75ml', 'views/img/products/3614172729/108.png', 10, 19.97, 20.97, 0, '2020-11-11 20:26:17'),
(48, 13, '0607432413', 'Pastă de dinți Vademecum Charcoal White cu cărbune pentru albire,  75 ml', 'views/img/products/0607432413/908.png', 15, 10.09, 11.09, 0, '2020-11-11 20:11:38'),
(49, 13, '3644845766', 'Pastă de Dinți Opalescence  Original, Formulă  pentru Albirea Dinților și  Îndepartarea Petelor  tub, 133gr', 'views/img/products/3644845766/939.png', 23, 40.53, 41.53, 0, '2020-11-11 20:25:12'),
(50, 5, '6110250806', 'Branză topită  tartinabilă  Puck  borcan,  240gr', 'views/img/products/6110250806/450.png', 20, 28.43, 29.43, 0, '2020-11-11 20:25:01'),
(51, 5, '3309110986', 'Brânză  și Grisine', 'views/img/products/3309110986/231.png', 23, 22.99, 23.99, 0, '2020-11-11 20:24:50'),
(52, 5, '6812094162', 'Branză topită smantană', 'views/img/products/6812094162/375.png', 17, 8.99, 9.99, 0, '2020-11-11 20:09:33'),
(53, 5, '4911651000', 'Branză topită suncă', 'views/img/products/4911651000/200.png', 26, 8.99, 9.99, 0, '2020-11-11 20:08:59'),
(54, 5, '2673732436', 'Lapte condensat  Nestle conserva,  397gr', 'views/img/products/2673732436/959.png', 24, 25.16, 26.16, 0, '2020-11-11 20:24:26'),
(55, 5, '0071727204', 'Lapte Praf de Migdale Bio cu Ciocolata La Mandorle, 400gr', 'views/img/products/0071727204/171.png', 28, 44.99, 45.99, 0, '2020-11-11 20:24:03'),
(56, 5, '3694712409', 'Lapte praf Nido  Nestle, 900g', 'views/img/products/3694712409/159.png', 30, 54.99, 55.99, 0, '2020-11-11 20:23:49'),
(57, 5, '7575062136', 'Lapte Sana', 'views/img/products/7575062136/139.jpg', 19, 8.99, 9.99, 0, '2020-11-10 21:33:15'),
(58, 5, '4023278575', 'Sos Branză Cheddar  LA FIESTA  Borcan,  1kg', 'views/img/products/4023278575/958.png', 26, 39, 40, 0, '2020-11-11 20:23:34'),
(59, 5, '4803611635', 'Soul Kitchen Legume Bio cu Brânză Zwergenwiese,  420ml', 'views/img/products/4803611635/923.png', 29, 16.08, 17.08, -2, '2020-11-12 09:15:31'),
(60, 4, '6333949234', 'Noodles cu ou Blue Dragon, 300g', 'views/img/products/6333949234/825.png', 33, 12.79, 13.79, 0, '2020-11-11 20:22:24'),
(61, 4, '6442790270', 'Paste integrali fusilli no28 La Molisana, 500g', 'views/img/products/6442790270/642.png', 29, 4.69, 5.69, 0, '2020-11-11 20:22:12'),
(62, 4, '4353720610', 'Paste lungi cu ou emiliane taglierini Barilla,  250g', 'views/img/products/4353720610/414.png', 29, 6.9, 7.9, -2, '2020-11-12 09:15:31'),
(63, 4, '8339355981', 'Paste lungi spaghetti n5 Barilla, 1000g', 'views/img/products/8339355981/448.png', 26, 4.29, 5.29, -2, '2020-11-12 09:15:31'),
(64, 4, '6029543796', 'Paste scurte din linte roșie penne Barilla,  250g', 'views/img/products/6029543796/640.png', 46, 13.39, 14.39, 0, '2020-11-11 20:21:22'),
(65, 4, '5350938289', 'Paste scurte penne rigate n73 Barilla, 500g', 'views/img/products/5350938289/776.png', 42, 3.69, 4.69, -2, '2020-11-12 09:15:31'),
(66, 4, '3228696538', 'Paste scurte penne rigate n73 Barilla,  1000g', 'views/img/products/3228696538/460.png', 40, 5.17, 6.17, 0, '2020-11-11 20:19:12'),
(67, 4, '8566735196', 'Paste tagliatelle din grâu dur Antonio di Vaio,  400 g', 'views/img/products/8566735196/419.png', 35, 3.29, 4.29, 0, '2020-11-11 20:18:03'),
(68, 4, '3494100958', 'Paste wok pre fierte Shan Shi,  250g', 'views/img/products/3494100958/840.png', 36, 9.92, 10.92, 0, '2020-11-11 20:12:39'),
(69, 4, '5537407271', 'Tăiței cu sos clasic Soba Nissin, 109g', 'views/img/products/5537407271/341.png', 39, 3.89, 4.89, 0, '2020-11-11 20:12:24'),
(70, 6, '8401747021', 'Floriol ulei Presat la Rece din Semințe de Floarea Soarelui, 250 ml', 'views/img/products/8401747021/265.png', 30, 7.9, 8.9, 0, '2020-11-11 20:12:13'),
(71, 6, '1145797478', 'Ulei de floarea soarelui cu vitamina D Untdelem de la Bunica, 2l', 'views/img/products/1145797478/153.png', 25, 13.69, 14.69, 0, '2020-11-11 20:12:02'),
(72, 6, '1880291991', 'Ulei de floarea soarelui cu vitamina D Untdelemn de la Bunica , 1l', 'views/img/products/1880291991/644.png', 36, 4.49, 5.49, 0, '2020-11-11 20:11:53'),
(73, 6, '8649947779', 'Ulei de floarea soarelui Floriol, 1l', 'views/img/products/8649947779/632.png', 29, 5.17, 6.17, 0, '2020-11-11 20:03:51'),
(74, 6, '6588699393', 'Ulei de floarea soarelui Floriol Omega 3 & 6, 1L', 'views/img/products/6588699393/530.png', 29, 5.9, 6.9, 0, '2020-11-11 20:03:34'),
(75, 6, '7107834913', 'Ulei de floarea soarelui Unisol, 1l', 'views/img/products/7107834913/572.png', 45, 5.17, 6.17, 0, '2020-11-11 20:02:53'),
(76, 6, '2548342854', 'Ulei de floarea soarelui Unisol, 2l', 'views/img/products/2548342854/654.png', 23, 11.3, 12.3, 1, '2020-11-26 19:21:04'),
(77, 6, '3563961886', 'Ulei de măsline Monastiri,  1l', 'views/img/products/3563961886/946.png', 21, 36.99, 37.99, 2, '2020-11-26 19:29:00'),
(78, 6, '6630515408', 'Ulei de măsline extravirgin Mazza, 1l', 'views/img/products/6630515408/247.png', 27, 31.49, 32.49, 2, '2020-11-26 19:29:00');

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `sales`
--

CREATE TABLE `sales` (
  `id` int(11) NOT NULL,
  `code` int(11) NOT NULL,
  `idCustomer` int(11) NOT NULL,
  `idSeller` int(11) NOT NULL,
  `products` text COLLATE utf8_spanish_ci NOT NULL,
  `tax` int(11) NOT NULL,
  `netPrice` float NOT NULL,
  `totalPrice` float NOT NULL,
  `paymentMethod` text COLLATE utf8_spanish_ci NOT NULL,
  `saledate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci ROW_FORMAT=COMPACT;

--
-- Eliminarea datelor din tabel `sales`
--

INSERT INTO `sales` (`id`, `code`, `idCustomer`, `idSeller`, `products`, `tax`, `netPrice`, `totalPrice`, `paymentMethod`, `saledate`) VALUES
(11, 10002, 1, 1, '[{\"id\":\"4\",\"description\":\"Brick Cutter without Disk\",\"quantity\":\"5\",\"stock\":\"20\",\"price\":\"5600\",\"totalPrice\":\"28000\"},{\"id\":\"5\",\"description\":\"Floor Cutter without Disk\",\"quantity\":\"10\",\"stock\":\"20\",\"price\":\"2156\",\"totalPrice\":\"21560\"}]', 9416, 49560, 58976, 'DC-1234512345', '2018-12-04 00:53:28'),
(12, 10003, 3, 1, '[{\"id\":\"5\",\"description\":\"Floor Cutter without Disk\",\"quantity\":\"5\",\"stock\":\"15\",\"price\":\"2156\",\"totalPrice\":\"10780\"}]', 2048, 10780, 12828, 'cash', '2018-12-11 13:44:50'),
(16, 10007, 3, 1, '[{\"id\":\"63\",\"description\":\"carte metro\",\"quantity\":\"1\",\"stock\":\"19\",\"price\":\"69.986\",\"totalPrice\":\"69.99\"},{\"id\":\"61\",\"description\":\"Marmelada\",\"quantity\":\"1\",\"stock\":\"47\",\"price\":\"13.986\",\"totalPrice\":\"13.986\"}]', 0, 83.976, 83.976, 'cash', '2019-11-16 13:02:17'),
(17, 10008, 1, 6, '[{\"id\":\"63\",\"description\":\"carte metro\",\"quantity\":\"1\",\"stock\":\"18\",\"price\":\"69.986\",\"totalPrice\":\"69.99\"},{\"id\":\"62\",\"description\":\"Bomboane\",\"quantity\":\"1\",\"stock\":\"9\",\"price\":\"13.986\",\"totalPrice\":\"13.99\"},{\"id\":\"61\",\"description\":\"Marmelada\",\"quantity\":\"1\",\"stock\":\"46\",\"price\":\"13.986\",\"totalPrice\":\"13.986\"}]', 19, 97.966, 116.966, 'cash', '2020-10-31 11:16:42'),
(18, 10009, 1, 6, '[{\"id\":\"62\",\"description\":\"Bomboane\",\"quantity\":\"1\",\"stock\":\"8\",\"price\":\"13.986\",\"totalPrice\":\"13.99\"},{\"id\":\"63\",\"description\":\"carte metro\",\"quantity\":\"1\",\"stock\":\"17\",\"price\":\"69.986\",\"totalPrice\":\"69.986\"}]', 4, 83.976, 87.976, 'cash', '2020-10-31 11:59:21'),
(20, 10011, 1, 6, '[{\"id\":\"65\",\"description\":\"bauturaracoritoare\",\"quantity\":\"1\",\"stock\":\"39\",\"price\":\"7.2\",\"totalPrice\":\"7.2\"},{\"id\":\"63\",\"description\":\"carte metro\",\"quantity\":\"1\",\"stock\":\"15\",\"price\":\"69.986\",\"totalPrice\":\"69.99\"},{\"id\":\"59\",\"description\":\"Cone Slump\",\"quantity\":\"1\",\"stock\":\"17\",\"price\":\"196\",\"totalPrice\":\"196\"},{\"id\":\"62\",\"description\":\"Bomboane\",\"quantity\":\"1\",\"stock\":\"6\",\"price\":\"13.986\",\"totalPrice\":\"13.986\"}]', 55, 287.176, 342.176, 'cash', '2020-11-02 15:39:59'),
(22, 10013, 2, 6, '', 0, 0, 0, 'cash', '2020-11-02 15:52:07'),
(24, 10015, 3, 6, '[{\"id\":\"28\",\"description\":\"Frame scaffolding scissors\",\"quantity\":\"1\",\"stock\":\"19\",\"price\":\"140\",\"totalPrice\":\"140\"},{\"id\":\"27\",\"description\":\"Modular scaffolding frame\",\"quantity\":\"1\",\"stock\":\"19\",\"price\":\"1260\",\"totalPrice\":\"1260\"},{\"id\":\"26\",\"description\":\"Scaffolding hanging spacer\",\"quantity\":\"1\",\"stock\":\"19\",\"price\":\"2240\",\"totalPrice\":\"2240\"},{\"id\":\"25\",\"description\":\"Hanging scaffolding\",\"quantity\":\"1\",\"stock\":\"19\",\"price\":\"2016\",\"totalPrice\":\"2016\"}]', 1075, 5656, 6731, 'cash', '2020-11-02 16:36:00'),
(27, 10018, 4, 6, '[{\"id\":\"65\",\"description\":\"bauturaracoritoare\",\"quantity\":\"1\",\"stock\":\"35\",\"price\":\"7.2\",\"totalPrice\":\"7.2\"},{\"id\":\"63\",\"description\":\"carte metro\",\"quantity\":\"1\",\"stock\":\"11\",\"price\":\"69.986\",\"totalPrice\":\"69.99\"},{\"id\":\"62\",\"description\":\"Bomboane\",\"quantity\":\"1\",\"stock\":\"4\",\"price\":\"13.986\",\"totalPrice\":\"13.986\"}]', 17, 91.176, 108.176, 'cash', '2020-11-05 23:25:31'),
(29, 10020, 4, 6, '[{\"id\":\"65\",\"description\":\"bauturaracoritoare\",\"quantity\":\"1\",\"stock\":\"33\",\"price\":\"7.2\",\"totalPrice\":\"7.2\"},{\"id\":\"63\",\"description\":\"carte metro\",\"quantity\":\"1\",\"stock\":\"9\",\"price\":\"69.986\",\"totalPrice\":\"69.99\"},{\"id\":\"62\",\"description\":\"Bomboane\",\"quantity\":\"1\",\"stock\":\"2\",\"price\":\"13.986\",\"totalPrice\":\"13.99\"},{\"id\":\"59\",\"description\":\"Cone Slump\",\"quantity\":\"1\",\"stock\":\"13\",\"price\":\"196\",\"totalPrice\":\"196\"}]', 55, 287.18, 342.18, 'cash', '2020-11-05 23:34:26'),
(30, 10021, 4, 6, '[{\"id\":\"63\",\"description\":\"carte metro\",\"quantity\":\"1\",\"stock\":\"8\",\"price\":\"69.986\",\"totalPrice\":\"69.99\"},{\"id\":\"62\",\"description\":\"Bomboane\",\"quantity\":\"1\",\"stock\":\"1\",\"price\":\"13.986\",\"totalPrice\":\"13.986\"}]', 16, 83.976, 99.976, '', '2020-11-05 23:36:02'),
(31, 10022, 3, 6, '[{\"id\":\"65\",\"description\":\"bauturaracoritoare\",\"quantity\":\"1\",\"stock\":\"32\",\"price\":\"7.2\",\"totalPrice\":\"7.2\"},{\"id\":\"63\",\"description\":\"carte metro\",\"quantity\":\"1\",\"stock\":\"7\",\"price\":\"69.986\",\"totalPrice\":\"69.99\"},{\"id\":\"62\",\"description\":\"Bomboane\",\"quantity\":\"1\",\"stock\":\"0\",\"price\":\"13.986\",\"totalPrice\":\"13.99\"},{\"id\":\"59\",\"description\":\"Cone Slump\",\"quantity\":\"1\",\"stock\":\"12\",\"price\":\"196\",\"totalPrice\":\"196\"}]', 55, 287.18, 342.18, 'cash', '2020-11-05 23:55:27'),
(32, 10023, 4, 6, '[{\"id\":\"58\",\"description\":\"Pneumatic tire car\",\"quantity\":\"1\",\"stock\":\"19\",\"price\":\"588\",\"totalPrice\":\"588\"},{\"id\":\"57\",\"description\":\"Scissor Shear\",\"quantity\":\"1\",\"stock\":\"19\",\"price\":\"812\",\"totalPrice\":\"812\"},{\"id\":\"56\",\"description\":\"Lever Shear\",\"quantity\":\"1\",\"stock\":\"19\",\"price\":\"630\",\"totalPrice\":\"630\"}]', 386, 2030, 2416, 'cash', '2020-11-06 00:06:47'),
(33, 10023, 4, 6, '[{\"id\":\"58\",\"description\":\"Pneumatic tire car\",\"quantity\":\"1\",\"stock\":\"19\",\"price\":\"588\",\"totalPrice\":\"588\"},{\"id\":\"57\",\"description\":\"Scissor Shear\",\"quantity\":\"1\",\"stock\":\"19\",\"price\":\"812\",\"totalPrice\":\"812\"},{\"id\":\"56\",\"description\":\"Lever Shear\",\"quantity\":\"1\",\"stock\":\"19\",\"price\":\"630\",\"totalPrice\":\"630\"}]', 386, 2030, 2416, 'cash', '2020-11-06 00:13:56'),
(34, 10024, 2, 6, '[{\"id\":\"65\",\"description\":\"bauturaracoritoare\",\"quantity\":\"1\",\"stock\":\"31\",\"price\":\"7.2\",\"totalPrice\":\"7.2\"},{\"id\":\"58\",\"description\":\"Pneumatic tire car\",\"quantity\":\"1\",\"stock\":\"18\",\"price\":\"588\",\"totalPrice\":\"588\"},{\"id\":\"57\",\"description\":\"Scissor Shear\",\"quantity\":\"1\",\"stock\":\"18\",\"price\":\"812\",\"totalPrice\":\"812\"}]', 211, 1407.2, 1618.2, 'cash', '2020-11-06 00:14:18'),
(35, 10025, 1, 6, '[{\"id\":\"67\",\"description\":\"apa minerala\",\"quantity\":\"1\",\"stock\":\"59\",\"price\":\"4.5\",\"totalPrice\":\"4.5\"},{\"id\":\"66\",\"description\":\"Apa minerala Perrier Lemon\",\"quantity\":\"1\",\"stock\":\"29\",\"price\":\"7.23\",\"totalPrice\":\"7.23\"},{\"id\":\"68\",\"description\":\"test \",\"quantity\":\"1\",\"stock\":\"19\",\"price\":\"30\",\"totalPrice\":\"30\"}]', 5, 41.73, 46.73, 'cash', '2020-11-09 10:56:57'),
(36, 10025, 1, 6, '[{\"id\":\"67\",\"description\":\"apa minerala\",\"quantity\":\"1\",\"stock\":\"59\",\"price\":\"4.5\",\"totalPrice\":\"4.5\"},{\"id\":\"66\",\"description\":\"Apa minerala Perrier Lemon\",\"quantity\":\"1\",\"stock\":\"29\",\"price\":\"7.23\",\"totalPrice\":\"7.23\"},{\"id\":\"68\",\"description\":\"test \",\"quantity\":\"1\",\"stock\":\"19\",\"price\":\"30\",\"totalPrice\":\"30\"}]', 5, 41.73, 46.73, 'cash', '2020-11-09 11:06:39'),
(37, 10026, 1, 6, '[{\"id\":\"68\",\"description\":\"test \",\"quantity\":\"1\",\"stock\":\"18\",\"price\":\"30\",\"totalPrice\":\"30\"},{\"id\":\"67\",\"description\":\"apa minerala\",\"quantity\":\"1\",\"stock\":\"58\",\"price\":\"4.5\",\"totalPrice\":\"4.5\"},{\"id\":\"66\",\"description\":\"Apa minerala Perrier Lemon\",\"quantity\":\"1\",\"stock\":\"28\",\"price\":\"7.23\",\"totalPrice\":\"7.23\"}]', 1, 41.73, 42.73, 'cash', '2020-11-09 11:31:26'),
(42, 10027, 4, 6, '[{\"id\":\"66\",\"description\":\"Apa minerala Perrier Lemon\",\"quantity\":\"1\",\"stock\":\"27\",\"price\":\"7.23\",\"totalPrice\":\"7.23\"},{\"id\":\"65\",\"description\":\"bauturaracoritoare\",\"quantity\":\"1\",\"stock\":\"30\",\"price\":\"7.2\",\"totalPrice\":\"7.2\"},{\"id\":\"63\",\"description\":\"carte metro\",\"quantity\":\"1\",\"stock\":\"6\",\"price\":\"69.986\",\"totalPrice\":\"69.986\"}]', 4, 84.416, 88.416, 'cash', '2020-11-09 12:06:34'),
(43, 10028, 3, 6, '[{\"id\":\"68\",\"description\":\"test \",\"quantity\":\"1\",\"stock\":\"17\",\"price\":\"30\",\"totalPrice\":\"30\"},{\"id\":\"67\",\"description\":\"apa minerala\",\"quantity\":\"1\",\"stock\":\"57\",\"price\":\"4.5\",\"totalPrice\":\"4.5\"},{\"id\":\"66\",\"description\":\"Apa minerala Perrier Lemon\",\"quantity\":\"1\",\"stock\":\"26\",\"price\":\"7.23\",\"totalPrice\":\"7.23\"}]', 8, 41.73, 49.73, 'cash', '2020-11-09 15:46:00'),
(44, 10029, 3, 6, '[{\"id\":\"68\",\"description\":\"test \",\"quantity\":\"1\",\"stock\":\"16\",\"price\":\"30\",\"totalPrice\":\"30\"},{\"id\":\"67\",\"description\":\"apa minerala\",\"quantity\":\"1\",\"stock\":\"56\",\"price\":\"4.5\",\"totalPrice\":\"4.5\"}]', 3, 34.5, 37.5, 'cash', '2020-11-09 15:49:33'),
(45, 10030, 1, 6, '[{\"id\":\"68\",\"description\":\"test \",\"quantity\":\"1\",\"stock\":\"15\",\"price\":\"30\",\"totalPrice\":\"30\"},{\"id\":\"67\",\"description\":\"apa minerala\",\"quantity\":\"1\",\"stock\":\"55\",\"price\":\"4.5\",\"totalPrice\":\"4.5\"}]', 2, 34.5, 36.5, 'cash', '2020-11-09 15:51:42'),
(46, 10031, 1, 6, '[{\"id\":\"68\",\"description\":\"test \",\"quantity\":\"1\",\"stock\":\"14\",\"price\":\"30\",\"totalPrice\":\"30\"},{\"id\":\"67\",\"description\":\"apa minerala\",\"quantity\":\"1\",\"stock\":\"54\",\"price\":\"4.5\",\"totalPrice\":\"4.5\"},{\"id\":\"66\",\"description\":\"Apa minerala Perrier Lemon\",\"quantity\":\"1\",\"stock\":\"25\",\"price\":\"7.23\",\"totalPrice\":\"7.23\"}]', 8, 41.73, 49.73, 'cash', '2020-11-09 15:52:50'),
(47, 10032, 1, 6, '[{\"id\":\"68\",\"description\":\"test \",\"quantity\":\"1\",\"stock\":\"13\",\"price\":\"30\",\"totalPrice\":\"30\"},{\"id\":\"67\",\"description\":\"apa minerala\",\"quantity\":\"1\",\"stock\":\"53\",\"price\":\"4.5\",\"totalPrice\":\"4.5\"},{\"id\":\"66\",\"description\":\"Apa minerala Perrier Lemon\",\"quantity\":\"1\",\"stock\":\"24\",\"price\":\"7.23\",\"totalPrice\":\"7.23\"}]', 8, 41.73, 49.73, 'cash', '2020-11-09 16:06:07'),
(48, 10033, 3, 6, '[{\"id\":\"68\",\"description\":\"test \",\"quantity\":\"1\",\"stock\":\"12\",\"price\":\"30\",\"totalPrice\":\"30\"},{\"id\":\"67\",\"description\":\"apa minerala\",\"quantity\":\"1\",\"stock\":\"52\",\"price\":\"4.5\",\"totalPrice\":\"4.5\"}]', 2, 34.5, 36.5, 'cash', '2020-11-09 16:23:00'),
(49, 10033, 3, 6, '[{\"id\":\"68\",\"description\":\"test \",\"quantity\":\"1\",\"stock\":\"12\",\"price\":\"30\",\"totalPrice\":\"30\"},{\"id\":\"67\",\"description\":\"apa minerala\",\"quantity\":\"1\",\"stock\":\"52\",\"price\":\"4.5\",\"totalPrice\":\"4.5\"}]', 2, 34.5, 36.5, 'cash', '2020-11-09 16:25:26'),
(50, 10034, 3, 6, '[{\"id\":\"56\",\"description\":\"Lever Shear\",\"quantity\":\"1\",\"stock\":\"18\",\"price\":\"630\",\"totalPrice\":\"630\"},{\"id\":\"57\",\"description\":\"Apa Carbogazoasa Perrier Lemon Sticla 0 33l\",\"quantity\":\"1\",\"stock\":\"17\",\"price\":\"812\",\"totalPrice\":\"812\"}]', 72, 1442, 1514, 'cash', '2020-11-09 16:26:51'),
(51, 10035, 2, 6, '[{\"id\":\"57\",\"description\":\"Apa Carbogazoasa Perrier Lemon Sticla 0 33l\",\"quantity\":\"1\",\"stock\":\"16\",\"price\":\"812\",\"totalPrice\":\"812\"},{\"id\":\"58\",\"description\":\"Pneumatic tire car\",\"quantity\":\"1\",\"stock\":\"17\",\"price\":\"588\",\"totalPrice\":\"588\"}]', 70, 1400, 1470, 'cash', '2020-11-09 16:28:13'),
(52, 10036, 1, 6, '[{\"id\":\"67\",\"description\":\"apa minerala\",\"quantity\":\"1\",\"stock\":\"51\",\"price\":\"4.5\",\"totalPrice\":\"4.5\"},{\"id\":\"66\",\"description\":\"Apa minerala Perrier Lemon\",\"quantity\":\"1\",\"stock\":\"23\",\"price\":\"7.23\",\"totalPrice\":\"7.23\"},{\"id\":\"65\",\"description\":\"bauturaracoritoare\",\"quantity\":\"1\",\"stock\":\"29\",\"price\":\"7.2\",\"totalPrice\":\"7.2\"}]', 1, 18.93, 19.93, 'cash', '2020-11-09 16:29:08'),
(53, 10037, 4, 6, '[{\"id\":\"65\",\"description\":\"bauturaracoritoare\",\"quantity\":\"1\",\"stock\":\"28\",\"price\":\"7.2\",\"totalPrice\":\"7.2\"}]', 1, 7.2, 8.2, 'cash', '2020-11-09 16:30:05'),
(54, 10038, 2, 6, '[{\"id\":\"67\",\"description\":\"apa minerala\",\"quantity\":\"1\",\"stock\":\"50\",\"price\":\"4.5\",\"totalPrice\":\"4.5\"},{\"id\":\"66\",\"description\":\"Apa minerala Perrier Lemon\",\"quantity\":\"1\",\"stock\":\"22\",\"price\":\"7.23\",\"totalPrice\":\"7.23\"}]', 1, 11.73, 12.73, 'cash', '2020-11-09 16:34:57'),
(55, 10039, 4, 6, '[{\"id\":\"67\",\"description\":\"apa minerala\",\"quantity\":\"1\",\"stock\":\"49\",\"price\":\"4.5\",\"totalPrice\":\"4.5\"},{\"id\":\"66\",\"description\":\"Apa minerala Perrier Lemon\",\"quantity\":\"1\",\"stock\":\"21\",\"price\":\"7.23\",\"totalPrice\":\"7.23\"}]', 1, 11.73, 12.73, 'cash', '2020-11-09 16:35:55'),
(56, 10040, 4, 6, '[{\"id\":\"52\",\"description\":\"Weighing machine\",\"quantity\":\"1\",\"stock\":\"19\",\"price\":\"182\",\"totalPrice\":\"182\"},{\"id\":\"54\",\"description\":\"Chapeta\",\"quantity\":\"1\",\"stock\":\"19\",\"price\":\"924\",\"totalPrice\":\"924\"}]', 210, 1106, 1316, 'cash', '2020-11-09 16:36:58'),
(57, 10041, 1, 6, '[{\"id\":\"66\",\"description\":\"Apa minerala Perrier Lemon\",\"quantity\":\"1\",\"stock\":\"20\",\"price\":\"7.23\",\"totalPrice\":\"7.23\"},{\"id\":\"65\",\"description\":\"bauturaracoritoare\",\"quantity\":\"1\",\"stock\":\"28\",\"price\":\"7.2\",\"totalPrice\":\"7.2\"}]', 3, 14.43, 17.43, 'cash', '2020-11-09 17:48:40'),
(58, 10042, 4, 6, '[{\"id\":\"66\",\"description\":\"Apa minerala Perrier Lemon\",\"quantity\":\"1\",\"stock\":\"19\",\"price\":\"7.23\",\"totalPrice\":\"7.23\"},{\"id\":\"65\",\"description\":\"bauturaracoritoare\",\"quantity\":\"1\",\"stock\":\"27\",\"price\":\"7.2\",\"totalPrice\":\"7.2\"}]', 3, 14.43, 17.43, 'cash', '2020-11-09 17:50:01'),
(59, 10043, 3, 6, '[{\"id\":\"66\",\"description\":\"Apa minerala Perrier Lemon\",\"quantity\":\"1\",\"stock\":\"18\",\"price\":\"7.23\",\"totalPrice\":\"7.23\"},{\"id\":\"67\",\"description\":\"apa minerala\",\"quantity\":\"1\",\"stock\":\"48\",\"price\":\"4.5\",\"totalPrice\":\"4.5\"}]', 2, 11.73, 13.73, 'cash', '2020-11-09 17:58:56'),
(60, 10044, 2, 6, '[{\"id\":\"67\",\"description\":\"apa minerala\",\"quantity\":\"1\",\"stock\":\"47\",\"price\":\"4.5\",\"totalPrice\":\"4.5\"},{\"id\":\"66\",\"description\":\"Apa minerala Perrier Lemon\",\"quantity\":\"1\",\"stock\":\"17\",\"price\":\"7.23\",\"totalPrice\":\"7.23\"}]', 1, 11.73, 12.73, 'cash', '2020-11-09 18:28:46'),
(61, 10045, 3, 6, '[{\"id\":\"58\",\"description\":\"Pneumatic tire car\",\"quantity\":\"1\",\"stock\":\"16\",\"price\":\"588\",\"totalPrice\":\"588\"},{\"id\":\"59\",\"description\":\"Cone Slump\",\"quantity\":\"1\",\"stock\":\"13\",\"price\":\"196\",\"totalPrice\":\"196\"}]', 39, 784, 823, 'cash', '2020-11-09 18:38:09'),
(62, 10046, 1, 6, '[{\"id\":\"67\",\"description\":\"apa minerala\",\"quantity\":\"1\",\"stock\":\"46\",\"price\":\"4.5\",\"totalPrice\":\"4.5\"},{\"id\":\"66\",\"description\":\"Apa minerala Perrier Lemon\",\"quantity\":\"1\",\"stock\":\"16\",\"price\":\"7.23\",\"totalPrice\":\"7.23\"}]', 1, 11.73, 12.73, 'cash', '2020-11-09 18:39:43'),
(63, 10046, 1, 6, '[{\"id\":\"67\",\"description\":\"apa minerala\",\"quantity\":\"1\",\"stock\":\"46\",\"price\":\"4.5\",\"totalPrice\":\"4.5\"},{\"id\":\"66\",\"description\":\"Apa minerala Perrier Lemon\",\"quantity\":\"1\",\"stock\":\"16\",\"price\":\"7.23\",\"totalPrice\":\"7.23\"}]', 1, 11.73, 12.73, 'cash', '2020-11-09 19:00:44'),
(64, 10047, 1, 6, '[{\"id\":\"67\",\"description\":\"apa minerala\",\"quantity\":\"1\",\"stock\":\"45\",\"price\":\"4.5\",\"totalPrice\":\"4.5\"},{\"id\":\"66\",\"description\":\"Apa minerala Perrier Lemon\",\"quantity\":\"1\",\"stock\":\"15\",\"price\":\"7.23\",\"totalPrice\":\"7.23\"},{\"id\":\"65\",\"description\":\"bauturaracoritoare\",\"quantity\":\"1\",\"stock\":\"26\",\"price\":\"7.2\",\"totalPrice\":\"7.2\"}]', 1, 18.93, 19.93, 'cash', '2020-11-09 19:01:08'),
(65, 10047, 1, 6, '[{\"id\":\"67\",\"description\":\"apa minerala\",\"quantity\":\"1\",\"stock\":\"45\",\"price\":\"4.5\",\"totalPrice\":\"4.5\"},{\"id\":\"66\",\"description\":\"Apa minerala Perrier Lemon\",\"quantity\":\"1\",\"stock\":\"15\",\"price\":\"7.23\",\"totalPrice\":\"7.23\"},{\"id\":\"65\",\"description\":\"bauturaracoritoare\",\"quantity\":\"1\",\"stock\":\"26\",\"price\":\"7.2\",\"totalPrice\":\"7.2\"}]', 1, 18.93, 19.93, 'cash', '2020-11-09 19:09:30'),
(66, 10048, 2, 6, '[{\"id\":\"67\",\"description\":\"apa minerala\",\"quantity\":\"1\",\"stock\":\"44\",\"price\":\"4.5\",\"totalPrice\":\"4.5\"}]', 0, 4.5, 4.5, 'cash', '2020-11-09 20:12:03'),
(67, 10049, 3, 6, '[{\"id\":\"65\",\"description\":\"bauturaracoritoare\",\"quantity\":\"2\",\"stock\":\"24\",\"price\":\"7.2\",\"totalPrice\":\"14.4\"}]', 3, 14.4, 17.4, 'cash', '2020-11-09 20:38:56'),
(68, 10050, 2, 6, '[{\"id\":\"65\",\"description\":\"bauturaracoritoare\",\"quantity\":\"2\",\"stock\":\"22\",\"price\":\"7.2\",\"totalPrice\":\"14.4\"}]', 3, 14.4, 17.4, 'cash', '2020-11-09 20:40:36'),
(69, 10050, 2, 6, '[{\"id\":\"65\",\"description\":\"bauturaracoritoare\",\"quantity\":\"2\",\"stock\":\"22\",\"price\":\"7.2\",\"totalPrice\":\"14.4\"}]', 3, 14.4, 17.4, 'cash', '2020-11-09 20:42:09'),
(70, 10051, 4, 6, '[{\"id\":\"62\",\"description\":\"Bomboane\",\"quantity\":\"1\",\"stock\":\"1\",\"price\":\"13.986\",\"totalPrice\":\"13.986\"}]', 3, 13.986, 16.986, 'cash', '2020-11-09 20:42:30'),
(71, 10052, 3, 6, '[{\"id\":\"65\",\"description\":\"bauturaracoritoare\",\"quantity\":\"2\",\"stock\":\"20\",\"price\":\"7.2\",\"totalPrice\":\"14.4\"}]', 3, 14.4, 17.4, 'cash', '2020-11-09 20:47:22'),
(72, 10053, 2, 6, '[{\"id\":\"57\",\"description\":\"Apa Carbogazoasa Perrier Lemon Sticla 0 33l\",\"quantity\":\"1\",\"stock\":\"15\",\"price\":\"812\",\"totalPrice\":\"812\"}]', 154, 812, 966, 'cash', '2020-11-09 20:48:27'),
(73, 10054, 2, 6, '[{\"id\":\"67\",\"description\":\"apa minerala\",\"quantity\":\"2\",\"stock\":\"42\",\"price\":\"4.5\",\"totalPrice\":\"9\"}]', 2, 9, 11, 'cash', '2020-11-09 20:49:36'),
(74, 10055, 1, 6, '[{\"id\":\"56\",\"description\":\"Lever Shear\",\"quantity\":\"1\",\"stock\":\"17\",\"price\":\"630\",\"totalPrice\":\"630\"}]', 120, 630, 750, 'cash', '2020-11-09 20:51:48'),
(75, 10056, 3, 6, '[{\"id\":\"56\",\"description\":\"Lever Shear\",\"quantity\":\"1\",\"stock\":\"16\",\"price\":\"630\",\"totalPrice\":\"630\"}]', 120, 630, 750, 'cash', '2020-11-09 20:52:30'),
(76, 10057, 1, 6, '[{\"id\":\"56\",\"description\":\"Lever Shear\",\"quantity\":\"1\",\"stock\":\"15\",\"price\":\"630\",\"totalPrice\":\"630\"}]', 120, 630, 750, 'cash', '2020-11-09 20:53:27'),
(77, 10058, 1, 6, '[{\"id\":\"58\",\"description\":\"Pneumatic tire car\",\"quantity\":\"1\",\"stock\":\"15\",\"price\":\"588\",\"totalPrice\":\"588\"}]', 112, 588, 700, 'cash', '2020-11-09 20:55:22'),
(78, 10059, 4, 6, '[{\"id\":\"65\",\"description\":\"bauturaracoritoare\",\"quantity\":\"2\",\"stock\":\"18\",\"price\":\"7.2\",\"totalPrice\":\"14.4\"}]', 3, 14.4, 17.4, 'cash', '2020-11-09 21:00:35'),
(79, 10060, 1, 6, '[{\"id\":\"65\",\"description\":\"bauturaracoritoare\",\"quantity\":\"2\",\"stock\":\"16\",\"price\":\"7.2\",\"totalPrice\":\"14.4\"}]', 2, 14.4, 16.4, 'cash', '2020-11-09 21:07:47'),
(80, 10061, 3, 6, '[{\"id\":\"48\",\"description\":\"Pipe wrench\",\"quantity\":\"1\",\"stock\":\"19\",\"price\":\"672\",\"totalPrice\":\"672\"}]', 101, 672, 773, 'cash', '2020-11-09 21:08:39'),
(81, 10062, 1, 6, '[{\"id\":\"41\",\"description\":\"75 Kva Diesel Power Plant\",\"quantity\":\"1\",\"stock\":\"19\",\"price\":\"5250\",\"totalPrice\":\"5250\"}]', 788, 5250, 6038, 'cash', '2020-11-09 21:09:41'),
(82, 10063, 4, 6, '[{\"id\":\"37\",\"description\":\"10 Kva Diesel Power Plant\",\"quantity\":\"1\",\"stock\":\"19\",\"price\":\"4970\",\"totalPrice\":\"4970\"}]', 746, 4970, 5716, 'cash', '2020-11-09 21:11:08'),
(83, 10064, 1, 1, '[{\"id\":\"78\",\"description\":\"Ulei de măsline extravirgin Mazza, 1l\",\"quantity\":\"1\",\"stock\":\"28\",\"price\":\"32.49\",\"totalPrice\":\"32.49\"},{\"id\":\"77\",\"description\":\"Ulei de măsline Monastiri,  1l\",\"quantity\":\"1\",\"stock\":\"22\",\"price\":\"37.99\",\"totalPrice\":\"37.99\"},{\"id\":\"76\",\"description\":\"Ulei de floarea soarelui Unisol, 2l\",\"quantity\":\"1\",\"stock\":\"23\",\"price\":\"12.3\",\"totalPrice\":\"12.3\"}]', 4, 82.78, 86.78, 'cash', '2020-11-26 19:21:04'),
(84, 10065, 1, 1, '[{\"id\":\"78\",\"description\":\"Ulei de măsline extravirgin Mazza, 1l\",\"quantity\":\"1\",\"stock\":\"27\",\"price\":\"32.49\",\"totalPrice\":\"32.49\"},{\"id\":\"77\",\"description\":\"Ulei de măsline Monastiri,  1l\",\"quantity\":\"1\",\"stock\":\"21\",\"price\":\"37.99\",\"totalPrice\":\"37.99\"}]', 4, 70.48, 74.48, 'cash', '2020-11-26 19:29:00');

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` text COLLATE utf8_spanish_ci NOT NULL,
  `user` text COLLATE utf8_spanish_ci NOT NULL,
  `password` text COLLATE utf8_spanish_ci NOT NULL,
  `profile` text COLLATE utf8_spanish_ci NOT NULL,
  `photo` text COLLATE utf8_spanish_ci NOT NULL,
  `status` int(1) NOT NULL,
  `lastLogin` datetime NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci ROW_FORMAT=COMPACT;

--
-- Eliminarea datelor din tabel `users`
--

INSERT INTO `users` (`id`, `name`, `user`, `password`, `profile`, `photo`, `status`, `lastLogin`, `date`) VALUES
(1, 'User admin', 'admin', '$2a$07$asxx54ahjppf45sd87a5auXBm1Vr2M1NV5t/zNQtGHGpS5fFirrbG', 'Administrator', 'views/img/users/admin/636.jpg', 1, '2020-11-26 19:20:20', '2020-11-26 19:20:20'),
(6, 'adrian', 'adrian', '$2a$07$asxx54ahjppf45sd87a5auGAATtoGV51A5AvyNgO6T.RHjEMNY9xa', 'Administrator', '', 1, '2020-11-26 19:20:09', '2020-11-26 19:20:09');

--
-- Indexuri pentru tabele eliminate
--

--
-- Indexuri pentru tabele `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexuri pentru tabele `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexuri pentru tabele `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexuri pentru tabele `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexuri pentru tabele `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pentru tabele eliminate
--

--
-- AUTO_INCREMENT pentru tabele `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT pentru tabele `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pentru tabele `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT pentru tabele `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT pentru tabele `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
