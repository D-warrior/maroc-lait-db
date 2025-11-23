-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 23, 2025 at 11:23 AM
-- Server version: 8.0.30
-- PHP Version: 8.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `maroc_lait`
--

-- --------------------------------------------------------

--
-- Table structure for table `appels_offres`
--

CREATE TABLE `appels_offres` (
  `id` int NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `pdf_file` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `deadline` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `appels_offres`
--

INSERT INTO `appels_offres` (`id`, `title`, `description`, `pdf_file`, `image`, `deadline`, `created_at`) VALUES
(1, 'Appel d\'offres', 'AVIS DE VENTE D\'ANIMAUX 2.', 'Liste_des_Animaux_de_etable-de-LACTOPOLE_a_vendre_Novembre_2024.pdf', 'img/service-2.jpg', '2026-11-30 23:59:59', '2025-08-16 03:14:03'),
(2, 'Céréales et légumineuses - ONICL', 'Appel d\'offres pour la fourniture de céréales et légumineuses.', 'AO_2.pdf', 'img/cereal.jpg', '2025-08-01 00:00:00', '2025-08-16 22:09:44'),
(3, 'Appel d\'offres - Matériel Technique', 'Acquisition de Matériel Technique', 'AVIS AO N°04-2025-ML.pdf', 'Materiel_Technique.jpg', '2025-09-15 00:00:00', '2025-08-16 22:28:21'),
(4, 'Appel d\'offres - Véhicules Utilitaires', 'Acquisition des Véhicules Utilitaires', 'AVIS AO N°05-2025-ML.pdf', 'Vehicules_Utilitaires.jpg', '2025-09-30 00:00:00', '2025-08-16 22:28:21'),
(5, 'Appel d\'offres', 'L\'APPROVISIONNEMENT DES BENEFICIAIRES EN ALIMENTS COMPOSES SUBVENTIONNES.', 'AO_1.pdf', 'img/aliments.png', '2025-07-01 00:00:00', '2025-08-16 22:57:35'),
(6, 'Appel d\'offres', 'AVIS DE VENTE D\'ANIMAUX.', 'Liste_des_animaux_a_vendre.pdf', 'img/service-2.jpg', '2025-08-31 00:00:00', '2025-08-16 22:57:35'),
(7, 'Appel d\'offres', 'Acquisition de Matériel Technique', 'aquisition.pdf', 'milkoscan.png', '2024-12-31 00:00:00', '2025-08-16 23:13:09'),
(8, 'Appel d\'offres', 'Acquisition de Matériel Informatique', 'informatique.pdf', 'materiel_info.png', '2025-01-15 00:00:00', '2025-08-16 23:13:09'),
(9, 'Appel d\'offres', 'Montage et Installation Mobilier de bureau', 'mobilier.pdf', 'mobilier.jpg', '2024-11-30 00:00:00', '2025-08-16 23:37:23'),
(10, 'Appel d\'offres', 'Formation des éleveurs et Techniciens', 'formation.pdf', 'formation.jpg', '2024-10-15 00:00:00', '2025-08-16 23:37:23');

-- --------------------------------------------------------

--
-- Table structure for table `evenements`
--

CREATE TABLE `evenements` (
  `id` int NOT NULL,
  `titre` varchar(255) NOT NULL,
  `sous_titre` varchar(255) DEFAULT NULL,
  `description` text,
  `image` varchar(255) DEFAULT NULL,
  `lien` varchar(255) DEFAULT NULL,
  `auteur` varchar(100) DEFAULT NULL,
  `date_event` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `evenements`
--

INSERT INTO `evenements` (`id`, `titre`, `sous_titre`, `description`, `image`, `lien`, `auteur`, `date_event`) VALUES
(1, 'Programme de soutien aux agriculteurs', 'PROGRAMME DE SOUTIEN', 'Ce programme soutient les agriculteurs avec des formations et aides financières. Il a été lancé pour moderniser l’agriculture et améliorer les revenus des producteurs laitiers.', '../uploads/evenement_img/even.png', 'article3.html', 'Samir Barri', '2022-05-20'),
(2, 'Participation de MAROC LAIT à la 17ème édition SIAM MEKNES', 'SIAM EDITION 2025', 'MAROC LAIT a participé activement à la 17ème édition du SIAM, mettant en avant les innovations et les progrès de la filière laitière au Maroc.', '../uploads/evenement_img/siam.jpg , ../uploads/evenement_img/enc1.png', 'article4.html', 'Samir Barri', '2022-05-20'),
(3, 'CONTRAT PROGRAMME DE LA FILIERE LAITIERE', 'FILIERE LAITIERE', 'Signature du contrat programme visant à renforcer le secteur laitier au Maroc, avec des mesures pour soutenir les éleveurs et améliorer la qualité du lait.', '../uploads/evenement_img/contrat.png', 'article2.html', 'Samir Barri', '2022-05-20');

-- --------------------------------------------------------

--
-- Table structure for table `incitations`
--

CREATE TABLE `incitations` (
  `id` int NOT NULL,
  `title` varchar(255) NOT NULL,
  `link` text NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `incitations`
--

INSERT INTO `incitations` (`id`, `title`, `link`, `image`) VALUES
(1, 'FONDS DE DÉVELOPPEMENT AGRICOLE 2023', 'https://www.agriculture.gov.ma/sites/default/files/2023-05/Book%20SIAM-Fonds%20de%20d%C3%A9veloppement%20agricole%20VF-web.pdf', 'fda.png'),
(2, 'PROTECTION SOCIALE DES AGRICULTEURS', 'https://www.agriculture.gov.ma/sites/default/files/2023-05/Book%20SIAM%20-%20%20La%20Protection%20Sociale%20des%20Agriculteurs%20VF.pdf', 'model.jpg'),
(3, 'La stratégie agricole marocaine Green Generation', 'https://www.agriculture.gov.ma/fr/focus/programme-mapmdrefafd-ue-dappui-la-strategie-agricole-marocaine-generation-green', 'green.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `photos`
--

CREATE TABLE `photos` (
  `id` int NOT NULL,
  `url` text,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `photos`
--

INSERT INTO `photos` (`id`, `url`, `created_at`) VALUES
(1, '../uploads/images/photo_ml (0).jpg', '2025-08-20 06:55:13'),
(2, '../uploads/images/photo_ml (01).jpg', '2025-08-20 06:55:13'),
(3, '../uploads/images/photo_ml (02).jpg', '2025-08-20 06:55:13'),
(4, '../uploads/images/photo_ml (03).jpg', '2025-08-20 06:55:13'),
(5, '../uploads/images/photo_ml (3).jpg', '2025-08-20 06:55:13'),
(6, '../uploads/images/photo_ml (04).jpg', '2025-08-20 06:55:13'),
(7, '../uploads/images/photo_ml (4).jpg', '2025-08-20 06:55:13'),
(8, '../uploads/images/photo_ml (05).jpg', '2025-08-20 06:55:13'),
(9, '../uploads/images/photo_ml (5).jpg', '2025-08-20 06:55:13'),
(10, '../uploads/images/photo_ml (6).jpg', '2025-08-20 06:55:13'),
(11, '../uploads/images/photo_ml (7).jpg', '2025-08-20 06:55:13'),
(12, '../uploads/images/photo_ml (8).jpg', '2025-08-20 06:55:13'),
(13, '../uploads/images/photo_ml (9).jpg', '2025-08-20 06:55:13'),
(14, '../uploads/images/photo_ml (10).jpg', '2025-08-20 06:55:13'),
(15, '../uploads/images/photo_ml (11).jpg', '2025-08-20 06:55:13'),
(16, '../uploads/images/photo_ml (12).jpg', '2025-08-20 06:55:13'),
(17, '../uploads/images/photo_ml (13).jpg', '2025-08-20 06:55:13'),
(18, '../uploads/images/photo_ml (14).jpg', '2025-08-20 06:55:13'),
(19, '../uploads/images/photo_ml (15).jpg', '2025-08-20 06:55:13'),
(20, '../uploads/images/photo_ml (16).jpg', '2025-08-20 06:55:13'),
(21, '../uploads/images/photo_ml (17).jpg', '2025-08-20 06:55:13'),
(22, '../uploads/images/photo_ml (18).jpg', '2025-08-20 06:55:13'),
(23, '../uploads/images/photo_ml (19).jpg', '2025-08-20 06:55:13'),
(24, '../uploads/images/photo_ml (20).jpg', '2025-08-20 06:55:13'),
(25, '../uploads/images/photo_ml (21).jpg', '2025-08-20 06:55:13'),
(26, '../uploads/images/photo_ml (22).jpg', '2025-08-20 06:55:13'),
(27, '../uploads/images/photo_ml (23).jpg', '2025-08-20 06:55:13'),
(28, '../uploads/images/photo_ml (24).jpg', '2025-08-20 06:55:13'),
(29, '../uploads/images/photo_ml (25).jpg', '2025-08-20 06:55:13'),
(31, '../uploads/images/photo_ml (27).jpg', '2025-08-20 06:55:13'),
(32, '../uploads/images/photo_ml (28).jpg', '2025-08-20 06:55:13'),
(33, '../uploads/images/photo_ml (29).jpg', '2025-08-20 06:55:13'),
(34, '../uploads/images/photo_ml (30).jpg', '2025-08-20 06:55:13'),
(35, '../uploads/images/photo_ml (31).jpg', '2025-08-20 06:55:13'),
(36, '../uploads/images/photo_ml (32).jpg', '2025-08-20 06:55:13'),
(37, '../uploads/images/photo_ml (33).jpg', '2025-08-20 06:55:13'),
(38, '../uploads/images/photo_ml (34).jpg', '2025-08-20 06:55:13'),
(39, '../uploads/images/photo_ml (35).jpg', '2025-08-20 06:55:13'),
(40, '../uploads/images/photo_ml (36).jpg', '2025-08-20 06:55:13'),
(41, '../uploads/images/photo_ml (37).jpg', '2025-08-20 06:55:13'),
(42, '../uploads/images/photo_ml (38).jpg', '2025-08-20 06:55:13'),
(43, '../uploads/images/photo_ml (40).jpg', '2025-08-20 06:55:13'),
(44, '../uploads/images/photo_ml (41).jpg', '2025-08-20 06:55:13'),
(45, '../uploads/images/photo_ml (44).jpg', '2025-08-20 06:55:13'),
(46, '../uploads/images/photo_ml (45).jpg', '2025-08-20 06:55:13'),
(47, '../uploads/images/photo_ml (46).jpg', '2025-08-20 06:55:13'),
(48, '../uploads/images/photo_ml (47).jpg', '2025-08-20 06:55:13'),
(49, '../uploads/images/photo_ml (48).jpg', '2025-08-20 06:55:13');

-- --------------------------------------------------------

--
-- Table structure for table `presses`
--

CREATE TABLE `presses` (
  `id` int NOT NULL,
  `source` varchar(100) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text,
  `link` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `presses`
--

INSERT INTO `presses` (`id`, `source`, `title`, `description`, `link`, `image`) VALUES
(1, 'Le Matin', 'Lait frais et dérivés', 'Aucune pénurie ni hausse des prix pour le Ramadan', 'https://lematin.ma/economie/lait-frais-et-derives-aucune-penurie-ni-hausse-des-prix-pour-le-ramadan/215409', 'lematin.PNG'),
(2, 'Le 360', 'La filière laitière est impactée par la sécheresse prolongée', 'La filière laitière marocaine en grande difficulté, mais aucune pénurie n’est à craindre', 'https://fr.le360.ma/economie/la-filiere-laitiere-marocaine-en-grande-difficulte-mais-aucune-penurie-nest-a-craindre_LRW4DZZ2KZEC5FM3XFCKLPZEME/', 'le360.PNG'),
(3, 'L\'Opinion', 'Les prix du lait résistent à la hausse', '3 QUESTIONS À MOHAMMED RAITA « RAMADAN N’A AUCUN IMPACT SUR LES PRIX DU LAIT ET DÉRIVÉS »', 'https://www.lopinion.ma/Ramadan-Les-prix-du-lait-resistent-a-la-hausse-INTEGRAL_a38305.html', 'opinion.png'),
(4, 'Le Desk', 'Mesures d\'urgence pour la filière laitière', 'La fédération Maroc Lait et Sadiki se concertent pour l’aide aux éleveurs et aux opérateurs', 'https://ledesk.ma/2022/10/25/filiere-laitiere-sadiki-et-la-federation-maroc-lait-se-concertent-pour-laide-aux-eleveurs-et-aux-operateurs/', 'ledesk.png'),
(5, 'AgriMaroc', 'Maroc Lait représentant de la filière laitière', 'Depuis le 9 octobre 2019, l’interprofession Maroc Lait a remplacé sa consœur la Fimalait en tant qu’interlocutrice représentative de la profession auprès des pouvoirs publics.', 'https://www.agrimaroc.ma/maroc-lait-fimalait-representant-filiere/', 'agrimaroc.png'),
(6, 'MAP EXPRESS', 'Ramadan/Produits laitiers', 'Interview avec Mohammed Raita, chargé de la gouvernance, la coordination et de la communication auprès du président de Maroc Lait.', 'http://www.mapexpress.ma/actualite/societe-et-regions/ramadanproduits-laitiers-interview-mohammed-raita-charge-gouvernance-coordination-communication-aupres-du-president-maroc-lait/', 'mapexpress.png');

-- --------------------------------------------------------

--
-- Table structure for table `puces`
--

CREATE TABLE `puces` (
  `id` int NOT NULL,
  `text` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `puces`
--

INSERT INTO `puces` (`id`, `text`) VALUES
(1, 'Cheptel Laitier : 1,82 millions de têtes'),
(2, 'Production lait: 2.5 Milliards de litres, grâce surtout à la productivité et à l’amélioration génétique'),
(3, '260 000 producteurs de lait, dont 90% ont moins de 10 vaches laitières'),
(4, '2 700 Centres de collecte dont 1900 coopératives'),
(5, '13 opérateurs industriels qui transforment plus de 86%'),
(6, '80 000 points de vente dont 85% sont des petits commerçants'),
(7, '49 Millions de journées de travail par an'),
(8, '13 Milliards de dirhams de chiffre d’affaires annuel');

-- --------------------------------------------------------

--
-- Table structure for table `section_info`
--

CREATE TABLE `section_info` (
  `id` int NOT NULL,
  `date_text` varchar(255) NOT NULL,
  `intro_text` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `section_info`
--

INSERT INTO `section_info` (`id`, `date_text`, `intro_text`) VALUES
(1, 'Au 31.12.2022', 'La filière laitière a réalisé de bonnes performances durant cette période:');

-- --------------------------------------------------------

--
-- Table structure for table `stats`
--

CREATE TABLE `stats` (
  `id` int NOT NULL,
  `title` varchar(255) NOT NULL,
  `value` varchar(255) NOT NULL,
  `icon` varchar(255) NOT NULL,
  `bg_color` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `stats`
--

INSERT INTO `stats` (`id`, `title`, `value`, `icon`, `bg_color`) VALUES
(1, 'Organisations Professionnelles et GF', '50', 'img/experience.png', 'bg-primary'),
(2, 'Insémination Artificielle', '380271', 'img/insem.png', 'bg-secondary'),
(3, 'Eleveurs', '260000', 'img/eleveur3.png', 'bg-secondary'),
(4, 'Millions de têtes', '1.82', 'img/eleveur2.png', 'bg-primary');

-- --------------------------------------------------------

--
-- Table structure for table `textes_legaux`
--

CREATE TABLE `textes_legaux` (
  `id` int NOT NULL,
  `titre` varchar(255) NOT NULL,
  `url` text NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `textes_legaux`
--

INSERT INTO `textes_legaux` (`id`, `titre`, `url`, `image`) VALUES
(4, 'Reconnaissance de la Fédération Interprofessionnelle de la Filière Lait .- MAROC LAIT', 'http://www.sgg.gov.ma/BO/FR/2873/2022/BO_7122_Fr.pdf', 'bulletin.png'),
(5, 'Charte sur l’investissement', 'http://www.sgg.gov.ma/BO/FR/2873/2022/BO_7152_Fr.pdf', 'bulletin.png'),
(6, 'Règlement de fonctionnement des commissions de sélection des reproducteurs de bovins laitiers.', 'https://www.onssa.gov.ma/wp-content/uploads/2022/06/Reglementation/A.Reglementation-Transversale/5.%20Import-et-Export/ARR.514-94.FR.pdf', 'reglement.png'),
(7, 'Alimentation animale.', 'https://www.onssa.gov.ma/reglementation/reglementation-sectorielle/alimentation-animale/', 'onssa.png'),
(8, 'Produits alimentaires.', 'https://www.onssa.gov.ma/reglementation/reglementation-sectorielle/produits-alimentaires/produits-dorigine-animale/', 'onssa_prod.png'),
(9, 'Santé animale.', 'https://www.onssa.gov.ma/reglementation/reglementation-sectorielle/sante-animale/maladies-animales/', 'onssa_animal.png'),
(10, 'Contrôle de la production et de la commercialisation du lait et produits laitiers.', 'https://www.fao.org/faolex/results/details/fr/c/LEX-FAOC024214/', 'link.png');

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

CREATE TABLE `videos` (
  `id` int NOT NULL,
  `url` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `videos`
--

INSERT INTO `videos` (`id`, `url`, `created_at`) VALUES
(1, 'https://static.lematin.ma/files/lematin/tv/2019/04/1604191905.mp4', '2025-08-18 08:14:58'),
(2, 'https://www.youtube.com/embed/QSNr30QNzew?si=qR7INBEaTHVGYNhu', '2025-08-18 08:14:58'),
(3, 'https://www.youtube.com/embed/BZ4oRIJPQtw?si=CToy_2mCwdpPIZI7', '2025-08-18 08:14:58'),
(4, 'https://www.youtube.com/embed/FYmIrOczG04?si=IIllTSqi7AmFlG7b', '2025-08-18 08:14:58'),
(5, 'https://www.youtube.com/embed/Fm4ox1Ety9o?si=gSv4c00tlFcS2Dfi', '2025-08-18 08:14:58'),
(6, 'https://www.youtube.com/embed/Qd4nkBr4uGI?si=GrQuV0-IkDGRJP6n&start=390', '2025-08-18 08:14:58');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appels_offres`
--
ALTER TABLE `appels_offres`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `evenements`
--
ALTER TABLE `evenements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `incitations`
--
ALTER TABLE `incitations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `photos`
--
ALTER TABLE `photos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `presses`
--
ALTER TABLE `presses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `puces`
--
ALTER TABLE `puces`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `section_info`
--
ALTER TABLE `section_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stats`
--
ALTER TABLE `stats`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `textes_legaux`
--
ALTER TABLE `textes_legaux`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appels_offres`
--
ALTER TABLE `appels_offres`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `evenements`
--
ALTER TABLE `evenements`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `incitations`
--
ALTER TABLE `incitations`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `photos`
--
ALTER TABLE `photos`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `presses`
--
ALTER TABLE `presses`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `puces`
--
ALTER TABLE `puces`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `section_info`
--
ALTER TABLE `section_info`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `stats`
--
ALTER TABLE `stats`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `textes_legaux`
--
ALTER TABLE `textes_legaux`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `videos`
--
ALTER TABLE `videos`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
