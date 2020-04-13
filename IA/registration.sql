-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le :  lun. 13 avr. 2020 à 22:56
-- Version du serveur :  10.4.11-MariaDB
-- Version de PHP :  7.2.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `registration`
---
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id_users` int(30) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id_users`, `username`, `email`, `password`) VALUES
(1, 'faridm', 'far.mezhoud@gmail.com', 'Farid0603'),
(2, 'far.mezhoud@gmail.com', 'far.mezhoud@gmail.com', 'Farid0603'),
(3, 'ii08630', 'axsana@live.fr', '90ba64c306650baf93b7ba15503bc7e0'),
(5, 'ii08630', 'axsana@live.fr', '721c6ff80a6d3e4ad4ffa52a04c60085'),
(6, 'kala', 'kala@gmail.com', '721c6ff80a6d3e4ad4ffa52a04c60085'),
(4, 'kala', 'kala@live.fr', 'france'),
(7, 'akchu', 'kala@live.fr', 'france'),
(8, 'saaha', 'kala@live.fr', 'france'),
(9, 'saaha', 'kala@live.fr', 'france'),
(10, 'hoiuyoyu', 'bouredjiouasofiane@gmail.com', 'azert'),
(11, 'Test', 'bouredjiouasofiane@gmail.com', 'abcd'),
(12, 'sofiane', 'bouredjiouasofiane@gmail.com', 'abcd'),
(13, 'sofiane', 'bouredjiouasofiane@gmail.com', 'abcd'),
(14, 'Sofiane', 'bouredjiouasofiane@gmail.com', 'abcd'),
(15, 'Sofiane', 'bouredjiouasofiane@gmail.com', 'abcd'),
(16, 'Sofiane', 'bouredjiouasofiane@gmail.com', 'abcd'),
(17, 'Sofiane', 'bouredjiouasofiane@gmail.com', 'abcd'),
(18, 'Sofiane', 'bouredjiouasofiane@gmail.com', 'abcd'),
(19, 'Sofiane', 'bouredjiouasofiane@gmail.com', 'abcd'),
(20, 'Sofiane', 'bouredjiouasofiane@gmail.com', 'abcd'),
(21, 'Sofiane', 'bouredjiouasofiane@gmail.com', 'abcd'),
(22, 'dhkjgd', 'bd@gmail.com', 'abcd'),
(23, 'Sofiane', 'bouredjiouasofiane@gmail.com', 'abcd'),
(24, 'Sofiane', 'bouredjiouasofiane@gmail.com', 'abcd'),
(25, 'Sofiane', 'bouredjiouasofiane@gmail.com', 'abcd'),
(26, 'ii12583', 'bouredjiouasofiane@gmail.com', 'abcd'),
(27, 'Sofiane', 'bouredjiouasofiane@gmail.com', 'abcd'),
(28, 'Sofiane', 'bouredjiouasofiane@gmail.com', 'abcd'),
(29, 'Sofiane', 'bouredjiouasofiane@gmail.com', 'abcd'),
(30, 'Sofiane', 'bouredjiouasofiane@gmail.com', 'abcd'),
(31, 'ii12583', 'bouredjiouasofiane@gmail.com', 'abcd'),
(32, 'faridm', 'far.mezhoud@gmail.com', 'Farid0603'),
(33, 'faridm', 'far.mezhoud@gmail.com', 'Farid0603'),
(34, 'faridm', 'far.mezhoud@gmail.com', 'Farid0603'),
(35, 'far.mezhoud@gmail.com', 'far.mezhoud@gmail.com', 'Farid0603'),
(36, 'faridm', 'far.mezhoud@gmail.com', 'Farid0603'),
(37, 'faridm', 'far.mezhoud@gmail.com', 'Farid0603'),
(38, 'faridm', 'far.mezhoud@gmail.com', 'Farid0603'),
(39, 'faridm', 'far.mezhoud@gmail.com', 'Farid0603'),
(40, 'faridm', 'far.mezhoud@gmail.com', 'Farid0603'),
(41, 'faridm', 'far.mezhoud@gmail.com', 'Farid0603'),
(42, 'faridm', 'far.mezhoud@gmail.com', 'Farid0603'),
(43, 'faridm', 'far.mezhoud@gmail.com', 'Farid0603');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `historical_data`
--
ALTER TABLE `historical_data`
  ADD PRIMARY KEY (`sql_id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_users`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id_users` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- --------------------------------------------------------

--
-- Structure de la table `apogee_ipmin_2019`
--

CREATE TABLE `apogee_ipmin_2019` (
  `prKey` int(11) NOT NULL,
  `departementid` int(11) UNSIGNED NOT NULL,
  `bacplus` tinyint(3) UNSIGNED NOT NULL,
  `IPmin` tinyint(3) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `apogee_type_module`
--

CREATE TABLE `apogee_type_module` (
  `id` int(11) NOT NULL,
  `type` char(4) COLLATE latin1_general_ci NOT NULL,
  `avec_charge` char(1) COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `referentiel` char(1) COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `externe` char(1) COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `UE_SOUS_UE` char(1) COLLATE latin1_general_ci NOT NULL DEFAULT 'O',
  `soumis_IPmin` char(1) COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `arbres_init` char(1) COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `arbres_parcours` char(1) COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `arbres_choix` char(1) COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `arbres_ue` char(1) COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `arbres_sous_choix` varchar(1) COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `arbres_sous_ue` char(1) COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `commentaire` varchar(150) COLLATE latin1_general_ci NOT NULL,
  `anneedebut` int(4) DEFAULT NULL,
  `anneefin` int(4) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `autres_enseignements_2019`
--

CREATE TABLE `autres_enseignements_2019` (
  `id` int(11) UNSIGNED NOT NULL,
  `personid` int(11) UNSIGNED NOT NULL,
  `univ` char(1) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT 'O',
  `rattachementid` int(11) UNSIGNED NOT NULL,
  `bacplus` int(11) UNSIGNED NOT NULL,
  `typeid` int(11) UNSIGNED NOT NULL,
  `hspe` char(1) NOT NULL DEFAULT 'N',
  `rubrique` int(11) UNSIGNED NOT NULL,
  `sous_rubrique` int(11) UNSIGNED NOT NULL,
  `heures_declarees` decimal(7,2) NOT NULL DEFAULT 0.00,
  `htd_declarees` decimal(7,2) NOT NULL DEFAULT 0.00,
  `heures_certifiees` decimal(7,2) NOT NULL DEFAULT 0.00,
  `htd_certifiees` decimal(7,2) NOT NULL DEFAULT 0.00,
  `certification_saisie` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `description` tinytext CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `autres_rattachements_form_2019`
--

CREATE TABLE `autres_rattachements_form_2019` (
  `formationid` int(11) UNSIGNED NOT NULL,
  `rattachementid` int(11) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `autres_rattachements_form_2019`
--

INSERT INTO `autres_rattachements_form_2019` (`formationid`, `rattachementid`) VALUES
(4, 10),
(5, 7),
(6, 7),
(7, 7),
(8, 4);

-- --------------------------------------------------------

--
-- Structure de la table `budget`
--

CREATE TABLE `budget` (
  `id` int(10) UNSIGNED NOT NULL,
  `acronyme` varchar(30) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `libelle` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `anneedebut` int(4) UNSIGNED NOT NULL,
  `anneefin` int(4) UNSIGNED DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `budget`
--

INSERT INTO `budget` (`id`, `acronyme`, `libelle`, `anneedebut`, `anneefin`) VALUES
(1, 'Budget General UP5', 'Budget General UP5 ', 2019, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `choix_2019`
--

CREATE TABLE `choix_2019` (
  `id` bigint(21) UNSIGNED NOT NULL,
  `id_parcours` int(11) NOT NULL,
  `obligatoire` char(1) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT 'O',
  `nb_ue` decimal(7,2) UNSIGNED NOT NULL,
  `total_ue` int(11) NOT NULL,
  `nom` varchar(80) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `code_apogee` varchar(10) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `ordre_affichage` int(11) NOT NULL,
  `semestre` int(1) UNSIGNED NOT NULL,
  `presentiel` decimal(7,2) NOT NULL,
  `ects` decimal(5,1) NOT NULL,
  `somme_ects_prescrite` decimal(5,1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `choix_2019`
--

INSERT INTO `choix_2019` (`id`, `id_parcours`, `obligatoire`, `nb_ue`, `total_ue`, `nom`, `code_apogee`, `ordre_affichage`, `semestre`, `presentiel`, `ects`, `somme_ects_prescrite`) VALUES
(276, 33, 'O', '1.00', 1, '', NULL, 1, 1, '108.00', '12.0', '0.0'),
(138, 21, 'O', '3.00', 12, '', NULL, 9, 2, '135.82', '18.0', '0.0'),
(137, 21, 'O', '1.00', 1, '', NULL, 8, 2, '42.00', '12.0', '0.0'),
(136, 21, 'F', '1.00', 1, '', NULL, 7, 1, '42.00', '6.0', '0.0'),
(135, 21, 'F', '1.00', 1, '', NULL, 6, 1, '42.00', '6.0', '0.0'),
(134, 21, 'O', '1.00', 9, '', NULL, 5, 1, '41.67', '6.0', '0.0'),
(133, 21, 'O', '1.00', 1, '', NULL, 4, 1, '42.00', '6.0', '0.0'),
(132, 21, 'O', '1.00', 1, '', NULL, 3, 1, '42.00', '6.0', '0.0'),
(130, 21, 'O', '1.00', 1, '', NULL, 1, 1, '54.00', '6.0', '0.0'),
(131, 21, 'O', '1.00', 1, '', NULL, 2, 1, '54.00', '6.0', '0.0'),
(63, 13, 'O', '1.00', 1, '', NULL, 1, 1, '54.00', '6.0', '0.0'),
(270, 32, 'O', '1.00', 4, 'UE Découverte S2', 'MLJ2BC1', 8, 2, '42.00', '3.0', '0.0'),
(275, 32, 'F', '1.00', 1, '', NULL, 13, 2, '6.00', '0.0', '0.0'),
(274, 32, 'F', '1.00', 1, '', NULL, 12, 2, '6.00', '0.0', '0.0'),
(272, 32, 'O', '1.00', 1, '', NULL, 10, 2, '24.00', '1.5', '0.0'),
(273, 32, 'O', '1.00', 1, '', NULL, 11, 2, '24.00', '1.5', '0.0'),
(271, 32, 'O', '1.00', 1, '', NULL, 9, 2, '24.00', '3.0', '0.0'),
(269, 32, 'O', '1.00', 1, '', NULL, 7, 2, '54.00', '12.0', '0.0'),
(268, 32, 'O', '1.00', 1, '', NULL, 6, 2, '96.00', '9.0', '0.0'),
(267, 32, 'F', '1.00', 1, '', NULL, 5, 1, '84.00', '0.0', '0.0'),
(266, 32, 'O', '1.00', 4, 'UE Découverte S1', 'MLJ1BC1', 4, 1, '42.00', '3.0', '0.0'),
(265, 32, 'O', '1.00', 1, '', NULL, 3, 1, '12.00', '3.0', '0.0'),
(264, 32, 'O', '1.00', 1, '', NULL, 2, 1, '78.00', '12.0', '0.0'),
(263, 32, 'O', '1.00', 1, '', NULL, 1, 1, '108.00', '12.0', '0.0'),
(277, 33, 'O', '1.00', 1, '', NULL, 2, 1, '78.00', '12.0', '0.0'),
(278, 33, 'O', '1.00', 1, '', NULL, 3, 1, '12.00', '3.0', '0.0'),
(279, 33, 'O', '1.00', 4, 'UE Découverte S1', 'MLJ1BC1', 4, 1, '42.00', '3.0', '0.0'),
(280, 33, 'F', '1.00', 1, '', NULL, 5, 1, '84.00', '0.0', '0.0'),
(281, 33, 'O', '1.00', 1, '', NULL, 6, 2, '96.00', '9.0', '0.0'),
(282, 33, 'O', '1.00', 1, '', NULL, 7, 2, '54.00', '12.0', '0.0'),
(283, 33, 'O', '1.00', 4, 'UE Découverte S2', 'MLJ2BC1', 8, 0, '0.00', '0.0', '0.0'),
(284, 33, 'O', '1.00', 1, '', NULL, 9, 2, '24.00', '3.0', '0.0'),
(285, 33, 'O', '1.00', 1, '', NULL, 10, 2, '24.00', '1.5', '0.0'),
(286, 33, 'O', '1.00', 1, '', NULL, 11, 2, '24.00', '1.5', '0.0'),
(287, 33, 'F', '1.00', 1, '', NULL, 12, 2, '6.00', '0.0', '0.0'),
(288, 33, 'F', '1.00', 1, '', NULL, 13, 2, '6.00', '0.0', '0.0'),
(293, 36, 'O', '1.00', 1, '', NULL, 2, 1, '24.00', '3.0', '0.0'),
(292, 36, 'O', '1.00', 1, '', NULL, 1, 1, '24.00', '3.0', '0.0'),
(294, 36, 'O', '1.00', 1, '', NULL, 3, 1, '48.00', '6.0', '0.0'),
(370, 50, 'O', '1.00', 1, '', NULL, 10, 2, '20.00', '9.0', '0.0'),
(369, 50, 'O', '1.00', 1, '', NULL, 9, 2, '40.00', '9.0', '0.0'),
(368, 50, 'O', '1.00', 1, '', NULL, 8, 2, '40.00', '9.0', '0.0'),
(367, 50, 'O', '1.00', 1, '', NULL, 7, 2, '0.00', '9.0', '0.0'),
(366, 50, 'O', '1.00', 1, '', NULL, 6, 2, '0.00', '6.0', '0.0'),
(365, 50, 'O', '1.00', 1, '', NULL, 5, 1, '40.00', '6.0', '0.0'),
(364, 50, 'O', '1.00', 1, '', NULL, 4, 1, '40.00', '6.0', '0.0'),
(363, 50, 'O', '1.00', 1, '', NULL, 3, 1, '40.00', '6.0', '0.0'),
(362, 50, 'O', '1.00', 1, '', NULL, 2, 1, '0.00', '9.0', '0.0'),
(361, 50, 'O', '1.00', 1, '', NULL, 1, 1, '0.00', '9.0', '0.0');

-- --------------------------------------------------------

--
-- Structure de la table `clotures_services_2019`
--

CREATE TABLE `clotures_services_2019` (
  `niveau_de_droit` int(11) NOT NULL,
  `semestre_1` int(11) NOT NULL DEFAULT 0,
  `semestre_2` int(11) NOT NULL DEFAULT 0,
  `autre_ens` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `dispense` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `convention` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `structure_form` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `structure_mod` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `syllabus` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `departementid` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `cnu`
--

CREATE TABLE `cnu` (
  `code` char(4) COLLATE latin1_general_ci NOT NULL,
  `intitule` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `departementid` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `nature` char(1) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Déchargement des données de la table `cnu`
--

INSERT INTO `cnu` (`code`, `intitule`, `departementid`, `nature`) VALUES
('1', 'Droit privé et sciences criminelles', 0, 'P'),
('2', 'Droit public', 0, 'P'),
('3', 'Histoire du droit et des institutions', 0, 'P'),
('4', 'Science politique', 0, 'P'),
('5', 'Sciences économiques', 0, 'P'),
('6', 'Sciences de gestion', 0, 'P'),
('7', 'Sciences du langage : linguistique,phoné', 0, 'P'),
('8', 'Langues et littératures anciennes', 0, 'P'),
('9', 'Langue et littérature françaises', 0, 'P'),
('10', 'Littératures comparées', 0, 'P'),
('11', 'Langues/littératures anglaises et anglo-', 0, 'P'),
('12', 'Langues/littératures germaniques et scan', 0, 'P'),
('13', 'Langues/littératures slaves', 0, 'P'),
('14', 'Langues/littératures romanes: esp,it,por', 0, 'P'),
('15', 'Langues/littératures arabes, chin.,jap.', 0, 'P'),
('16', 'Psychologie, psychologie clinique et soc', 0, 'P'),
('17', 'Philosophie', 0, 'P'),
('18', 'Arts : plastiques, du spectacle, musique', 0, 'P'),
('19', 'Sociologie, démographie', 0, 'P'),
('20', 'Anthropologie, ethnologie, préhistoire', 0, 'P'),
('21', 'Histoire/civilisations : mondes anciens', 0, 'P'),
('22', 'Histoire/civilisations : mondes modernes', 0, 'P'),
('23', 'Géographie physique, humaine, économique', 0, 'P'),
('24', 'Aménagement de l\'espace, urbanisme', 0, 'P'),
('25', 'Mathématiques', 0, 'P'),
('26', 'Mathématiques appliquées et applications', 0, 'P'),
('27', 'Informatique', 0, 'P'),
('28', 'Milieux denses et matériaux', 0, 'P'),
('29', 'Constituants élémentaires', 0, 'P'),
('30', 'Milieux dilués et optique', 0, 'P'),
('31', 'Chimie théorique, physique, analytique', 0, 'P'),
('32', 'Chimie organique, minérale, industrielle', 0, 'P'),
('33', 'Chimie des matériaux', 0, 'P'),
('34', 'Astronomie, astrophysique', 0, 'P'),
('35', 'Structure et évolution Terre et planètes', 0, 'P'),
('36', 'Terre solide : géodynamique enveloppes', 0, 'P'),
('37', 'Météorologie, océanographie physique', 0, 'P'),
('39', 'Sciences physico-chim. et techno. pharma', 0, 'P'),
('40', 'Sciences du médicament', 0, 'P'),
('41', 'Sciences biologiques', 0, 'P'),
('4200', 'Sciences morphologiques', 0, 'P'),
('4201', 'Anatomie', 0, 'P'),
('4202', 'Histologie, embryologie, cytogénétique', 0, 'P'),
('4203', 'Anatomie et cytologie pathologiques', 0, 'P'),
('4300', 'Biophysique et imagerie médicale', 0, 'P'),
('4301', 'Biophysique et traitement de l\'image', 0, 'P'),
('4302', 'Radiologie et imagerie médicale', 0, 'P'),
('4400', 'Biochimie, biologie cellulaire et molécu', 0, 'P'),
('4401', 'Biochimie et biologie moléculaire', 0, 'P'),
('4402', 'Physiologie', 0, 'P'),
('4403', 'Biologie cellulaire', 0, 'P'),
('4404', 'Nutrition', 0, 'P'),
('4500', 'Microbiologie et maladies transmissibles', 0, 'P'),
('4501', 'Bactériologie, virologie,hygiène (2opt.)', 0, 'P'),
('4502', 'Parasitologie et mycologie', 0, 'P'),
('4503', 'Maladies infectieuses/tropicales (2opt.)', 0, 'P'),
('4600', 'Santé publique', 0, 'P'),
('4601', 'Epidémiologie, économie santé et prévent', 0, 'P'),
('4602', 'Médecine du travail et des risques prof.', 0, 'P'),
('4603', 'Médecine légale', 0, 'P'),
('4604', 'Biostatistiques et informatique médicale', 0, 'P'),
('4700', 'Hématologie, immunologie, transfusion', 0, 'P'),
('4701', 'Hématologie et transfusion', 0, 'P'),
('4702', 'Cancérologie, radiothérapie (2 options)', 0, 'P'),
('4703', 'Immunologie', 0, 'P'),
('4704', 'Génétique', 0, 'P'),
('4800', 'Santé publique', 0, 'P'),
('4801', 'Anesthésiologie et réanimation chirurgic', 0, 'P'),
('4802', 'Réanimation médicale', 0, 'P'),
('4803', 'Pharmacologie fondamentale et clinique', 0, 'P'),
('4804', 'Thérapeutique', 0, 'P'),
('4900', 'Pathologie nerveuse, pathologie mentale ', 0, 'P'),
('4901', 'Neurologie', 0, 'P'),
('4902', 'Neurochirurgie', 0, 'P'),
('4903', 'Psychiatrie d\'adultes', 0, 'P'),
('4904', 'Pédopsychiatrie', 0, 'P'),
('4905', 'Rééducation fonctionnelle', 0, 'P'),
('5000', 'Pathologie ostéo articulaire, dermatolog', 0, 'P'),
('5001', 'Rhumatologie', 0, 'P'),
('5002', 'Chirurgie orthopédique et traumatologie', 0, 'P'),
('5003', 'Dermatologie, vénérologie', 0, 'P'),
('5004', 'Chirurgie plastique, reconstructrice', 0, 'P'),
('5100', 'Pathologie cardio_pulmonaire et vasculai', 0, 'P'),
('5101', 'Pneumologie', 0, 'P'),
('5102', 'Cardiologie et maladies vasculaires', 0, 'P'),
('5103', 'Chirurgie thoracique et cardio_vasculair', 0, 'P'),
('5104', 'Chirurgie vasculaire', 0, 'P'),
('5200', 'Maladies des appareils digestif et urin.', 0, 'P'),
('5201', 'Hépatologie, gastro-entérologie (2opt.)', 0, 'P'),
('5202', 'Chirurgie digestive', 0, 'P'),
('5203', 'Néphrologie', 0, 'P'),
('5204', 'Urologie', 0, 'P'),
('5300', 'Médecine interne et chirurgie générale', 0, 'P'),
('5301', 'Médecine interne', 0, 'P'),
('5302', 'Chirurgie générale', 0, 'P'),
('5400', 'Pathologie enfant,obstétrique, endocrino', 0, 'P'),
('5401', 'Pédiatrie', 0, 'P'),
('5402', 'Chirurgie infantile', 0, 'P'),
('5403', 'Gynécologie et obstrétrique', 0, 'P'),
('5404', 'Endocrinologie et maladies métaboliques', 0, 'P'),
('5405', 'Biologie développement et reproduction', 0, 'P'),
('5500', 'Spécialités médico-chirurgicales', 0, 'P'),
('5501', 'O.R.L.', 0, 'P'),
('5502', 'Ophtalmologie', 0, 'P'),
('5503', 'Stomatologie et chirurgie maxillo_facial', 0, 'P'),
('5600', 'Développement, croissance et prévention', 0, 'P'),
('5601', 'Pédodontie', 0, 'P'),
('5602', 'Orthopédie dento_faciale', 0, 'P'),
('5603', 'Prévention, épidémiologie,économie santé', 0, 'P'),
('5700', 'Sces biol., médecine et chirur. buccales', 0, 'P'),
('5701', 'Parodontologie', 0, 'P'),
('5702', 'Chirurgie buccale, pathologie et thérape', 0, 'P'),
('5703', 'Sciences biologiques (biochimie, immunol', 0, 'P'),
('5800', 'Sces phys. et physiol., endodont., proth', 0, 'P'),
('5801', 'Odontologie, conservatrice, endodontie', 0, 'P'),
('5802', 'Prothèse (prothèse conjointe, complète)', 0, 'P'),
('5803', 'Sces anatom. et physiol., occlusodont.', 0, 'P'),
('60', 'Mécanique, génie mécanique, génie civil', 0, 'P'),
('61', 'Génie inform., automat. et trait. signal', 0, 'P'),
('62', 'Energétique, génie des procédés', 0, 'P'),
('63', 'Electronique, optronique et systèmes', 0, 'P'),
('64', 'Biochimie, biologie moléculaire', 0, 'P'),
('65', 'Biologie cellulaire', 0, 'P'),
('66', 'Physiologie', 0, 'P'),
('67', 'Biologie des populations et écologie', 0, 'P'),
('68', 'Biologie des organismes', 0, 'P'),
('69', 'Neurosciences', 0, 'P'),
('70', 'Sciences de l\'éducation', 0, 'P'),
('71', 'Sciences information et communication', 0, 'P'),
('72', 'Epistémologie,histoire sciences et tech', 0, 'P'),
('73', 'Cultures et langues régionales', 0, 'P'),
('74', 'Sces/techniques activités phys. sportive', 0, 'P');

-- --------------------------------------------------------

--
-- Structure de la table `departements`
--

CREATE TABLE `departements` (
  `prKey` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `nom` varchar(255) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `acronyme` varchar(255) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `acronyme_titre` varchar(255) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `id_directeur` int(10) UNSIGNED NOT NULL,
  `id_secretaire` int(10) UNSIGNED NOT NULL,
  `id_contact_inscription` int(11) NOT NULL,
  `id_contact_RH` int(11) UNSIGNED NOT NULL,
  `rattachementid` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `possession_form_mod` char(1) COLLATE latin1_general_ci NOT NULL DEFAULT 'N' COMMENT 'indique si la possession d''une formation implique la possesion d''un module',
  `anneedebut` int(4) UNSIGNED NOT NULL,
  `anneefin` int(4) UNSIGNED DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Déchargement des données de la table `departements`
--

INSERT INTO `departements` (`prKey`, `id`, `nom`, `acronyme`, `acronyme_titre`, `id_directeur`, `id_secretaire`, `id_contact_inscription`, `id_contact_RH`, `rattachementid`, `possession_form_mod`, `anneedebut`, `anneefin`) VALUES
(1, 1, 'Institut de Psychologie', 'Psycho', 'Psycho', 0, 0, 0, 0, 1, 'N', 0, NULL),
(2, 2, 'Faculté de Sciences Humaines et Sociales', 'Sc hum soc', 'Sc hum soc', 0, 0, 0, 0, 2, 'N', 0, NULL),
(3, 3, 'Faculté de Droit', 'Droit', 'Droit', 0, 0, 0, 0, 3, 'N', 0, NULL),
(4, 4, 'UFR de Biomédicale', 'Biomed', 'Biomed', 0, 0, 0, 0, 4, 'N', 0, NULL),
(5, 5, 'Faculté de chirurgie dentaire', 'Odonto', 'Odonto', 0, 0, 0, 0, 5, 'N', 0, NULL),
(6, 6, 'Faculté de Pharmacie de Paris', 'Pharma', 'Pharma', 0, 0, 0, 0, 6, 'N', 0, NULL),
(7, 7, 'UFR  Mathématiques et Informatique', 'Math-Info', 'Math-Info', 0, 0, 0, 0, 7, 'N', 0, NULL),
(8, 8, 'UFR Staps', 'STAPS', 'STAPS', 0, 0, 0, 0, 8, 'N', 0, NULL),
(9, 9, 'Institut Universitaire de Technologie', 'IUT', 'IUT', 0, 0, 0, 0, 9, 'N', 0, NULL),
(10, 10, 'Ensemble de l\'Université Paris 5', 'UNIVERSITE', 'UNIVERSITE', 0, 0, 0, 0, 10, 'N', 0, NULL),
(11, 11, 'Faculté de Médecine', 'Medecine', 'Medecine', 0, 0, 0, 0, 11, 'N', 0, NULL),
(12, 12, 'Institut de Formation Doctorale', 'IFD', 'IFD', 0, 0, 0, 0, 12, 'N', 0, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `departement_elargi`
--

CREATE TABLE `departement_elargi` (
  `personid` int(11) UNSIGNED NOT NULL,
  `departementid` int(11) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `dispenses_2019`
--

CREATE TABLE `dispenses_2019` (
  `id` int(11) NOT NULL,
  `personid` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `typeid` int(11) NOT NULL DEFAULT 1,
  `htd_declarees` decimal(7,2) NOT NULL DEFAULT 0.00,
  `htd_certifiees` decimal(7,2) NOT NULL DEFAULT 0.00,
  `certification_saisie` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `information_complementaire` tinytext COLLATE latin1_general_ci NOT NULL,
  `hcc_ok` int(1) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `domaine`
--

CREATE TABLE `domaine` (
  `id` int(11) UNSIGNED NOT NULL,
  `libelle` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `acronyme` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `anneedebut` int(4) UNSIGNED NOT NULL,
  `anneefin` int(4) UNSIGNED DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `domaine`
--

INSERT INTO `domaine` (`id`, `libelle`, `acronyme`, `anneedebut`, `anneefin`) VALUES
(1, 'Arts, medias, communication', 'AMC', 0, NULL),
(2, 'Littératures et arts ', 'LA', 0, NULL),
(3, 'Biologie   ', 'Bio', 0, NULL),
(4, 'Chimie', 'Chim', 0, NULL),
(5, 'Droit, sciences politiques', 'DSP', 0, NULL),
(6, 'Économie, finance, gestion ', 'EFG', 0, NULL),
(7, 'Géosciences, sciences de l\'environnement  ', 'GSE', 0, NULL),
(8, 'Informatique', 'Info', 0, NULL),
(9, 'Mathématiques', 'Math', 0, NULL),
(10, 'Psychologie', 'Psycho', 0, NULL),
(11, 'Santé', 'Santé', 0, NULL),
(12, 'Santé publique ', 'SP', 0, NULL),
(13, 'Sciences du langage, didactique des langues, traduction et interprétation ', 'SLDLTI', 0, NULL),
(14, 'Sciences aux interfaces, vivant et santé ', 'SVS', 0, NULL),
(15, 'Sciences de l’éducation, didactique des disciplines  ', 'SEDD', 0, NULL),
(16, 'Sciences sociales ', 'SS', 0, NULL),
(17, 'STAPS  ', 'STAPS', 0, NULL),
(18, 'Technologies, sciences, société ', 'TSS', 0, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `formation_2019`
--

CREATE TABLE `formation_2019` (
  `id` int(11) UNSIGNED NOT NULL,
  `nom` varchar(140) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `nom_apogee` varchar(140) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `acronyme` varchar(70) COLLATE latin1_general_ci NOT NULL,
  `codeapogee` varchar(10) COLLATE latin1_general_ci NOT NULL,
  `version_apogee` int(5) UNSIGNED NOT NULL,
  `rattachementid` int(11) UNSIGNED NOT NULL,
  `domaineid` int(11) UNSIGNED NOT NULL,
  `mentionid` int(11) UNSIGNED NOT NULL,
  `typeformationid` int(11) UNSIGNED NOT NULL,
  `siteweb` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `objectif` text COLLATE latin1_general_ci NOT NULL,
  `conditionsadmission` text COLLATE latin1_general_ci NOT NULL,
  `debutbacplus` int(3) UNSIGNED NOT NULL DEFAULT 0,
  `dure` int(3) UNSIGNED NOT NULL DEFAULT 0,
  `poursuites` text COLLATE latin1_general_ci NOT NULL,
  `debouches` text COLLATE latin1_general_ci NOT NULL,
  `autresenseignements` text COLLATE latin1_general_ci NOT NULL,
  `autresinformations` text COLLATE latin1_general_ci NOT NULL,
  `accreditation_departementid` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `saisie_terminee` char(1) COLLATE latin1_general_ci NOT NULL DEFAULT 'O',
  `destinations_saisie_terminee` varchar(255) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Déchargement des données de la table `formation_2019`
--

INSERT INTO `formation_2019` (`id`, `nom`, `nom_apogee`, `acronyme`, `codeapogee`, `version_apogee`, `rattachementid`, `domaineid`, `mentionid`, `typeformationid`, `siteweb`, `objectif`, `conditionsadmission`, `debutbacplus`, `dure`, `poursuites`, `debouches`, `autresenseignements`, `autresinformations`, `accreditation_departementid`, `saisie_terminee`, `destinations_saisie_terminee`) VALUES
(1, 'LICENCE DROIT 1', 'LIC DROIT 1', 'L1 DROIT', 'JLG5D1', 190, 3, 5, 11, 1, '', '', '', 1, 1, '', '', '', '', 10, 'N', ''),
(2, 'Licence informatique troisième année FI', 'Licence informatique troisième année FI', 'LIC INFO 3 FI', 'MLG4I3', 402, 0, 8, 10, 3, '', '', '', 3, 1, '', '', '', '', 7, 'N', ''),
(3, 'Licence de mathématiques 3', 'Licence de mathématiques 3', 'LIC MATH 3', 'MLG4M3', 431, 0, 9, 9, 3, '', '', '', 3, 1, '', '', '', '', 7, 'N', ''),
(4, 'Test', 'Test', 'Test', 'TEST', 100, 10, 1, 44, 1, '', '', '', 0, 1, '', '', '', '', 10, 'N', ''),
(5, 'L1 INFORMATIQUE', 'L1 INFO', 'L1 INFO', 'MLG4I', 431, 10, 8, 10, 1, '', '', '', 1, 1, '', '', '', '', 10, 'N', ''),
(6, 'L1 MATHEMATIQUES', 'L1 MATH', 'L1 MATH', 'MLG4I', 431, 10, 9, 9, 1, '', '', '', 1, 1, '', '', '', '', 10, 'N', ''),
(7, 'L2 MATHEMATIQUES', 'L2 MATH', 'L2 MATH', 'MLG4M2', 421, 10, 9, 9, 2, '', '', '', 2, 1, '', '', '', '', 10, 'N', ''),
(8, 'MASTER ERGONOMIE', '', 'M1 ERGO', '', 0, 10, 3, 0, 5, '', '', '', 4, 1, '', '', '', '', 10, 'N', ''),
(9, 'Licence 1 STAPS', 'Licence 1 STAPS', 'L1 STAPS', '', 0, 10, 17, 5, 1, '', '', '', 1, 1, '', '', '', '', 10, 'N', '');

-- --------------------------------------------------------

--
-- Structure de la table `historical_data`
--

CREATE TABLE `historical_data` (
  `sql_id` char(255) NOT NULL,
  `sql_text` char(255) DEFAULT NULL,
  `usertime` char(255) DEFAULT NULL,
  `exectime` char(255) DEFAULT NULL,
  `elapsed_time` char(255) DEFAULT NULL,
  `cputime` char(255) DEFAULT NULL,
  `diskread` char(255) DEFAULT NULL,
  `buffergets` char(255) DEFAULT NULL,
  `module` char(255) DEFAULT NULL,
  `parsingid` char(255) DEFAULT NULL,
  `register_data` char(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `historical_data`
--

INSERT INTO `historical_data` (`sql_id`, `sql_text`, `usertime`, `exectime`, `elapsed_time`, `cputime`, `diskread`, `buffergets`, `module`, `parsingid`, `register_data`) VALUES
('fvkynu9xgck8h', 'select PGA_TARGET_FOR_ESTIMATE s,          PGA_TARGET_FACTOR * 100 f,           ESTD_TIME t,         BYTES_PROCESSED b   from v$pga_target_advice order by PGA_TARGET_FOR_ESTIMATE', '0', '4974', '703236', '562500', '0', '3', '0', 'SYS', '2020-02-26 11:17:21');

-- --------------------------------------------------------

--
-- Structure de la table `introduction_2019`
--

CREATE TABLE `introduction_2019` (
  `content` text COLLATE latin1_general_ci DEFAULT NULL,
  `id_departement` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `ip_form_2019`
--

CREATE TABLE `ip_form_2019` (
  `formationid` int(11) UNSIGNED NOT NULL,
  `typeIPid` int(11) UNSIGNED NOT NULL,
  `IP` smallint(5) UNSIGNED DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `ip_form_2019`
--

INSERT INTO `ip_form_2019` (`formationid`, `typeIPid`, `IP`) VALUES
(1, 1, 0),
(2, 1, 80),
(3, 1, 120),
(4, 1, 0),
(5, 1, 400),
(6, 1, 200),
(7, 1, 125),
(8, 1, 50),
(9, 1, 0);

-- --------------------------------------------------------

--
-- Structure de la table `ip_mod_form_2019`
--

CREATE TABLE `ip_mod_form_2019` (
  `formationid` int(11) UNSIGNED NOT NULL,
  `moduleid` int(11) UNSIGNED NOT NULL,
  `IP` smallint(5) UNSIGNED DEFAULT NULL,
  `IP_accreditation` decimal(7,2) NOT NULL,
  `IP_equireparties` decimal(7,2) NOT NULL,
  `IP_aleatoires` decimal(7,2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `ip_mod_form_2019`
--

INSERT INTO `ip_mod_form_2019` (`formationid`, `moduleid`, `IP`, `IP_accreditation`, `IP_equireparties`, `IP_aleatoires`) VALUES
(9, 116, NULL, '0.00', '0.00', '0.00'),
(9, 115, NULL, '0.00', '0.00', '0.00'),
(9, 114, NULL, '0.00', '0.00', '0.00'),
(9, 113, NULL, '0.00', '0.00', '0.00'),
(9, 112, NULL, '0.00', '0.00', '0.00'),
(9, 111, NULL, '0.00', '0.00', '0.00'),
(9, 110, NULL, '0.00', '0.00', '0.00'),
(9, 109, NULL, '0.00', '0.00', '0.00'),
(9, 108, NULL, '0.00', '0.00', '0.00'),
(9, 107, NULL, '0.00', '0.00', '0.00'),
(9, 106, NULL, '0.00', '0.00', '0.00'),
(9, 105, NULL, '0.00', '0.00', '0.00'),
(9, 104, NULL, '0.00', '0.00', '0.00'),
(9, 103, NULL, '0.00', '0.00', '0.00'),
(9, 102, NULL, '0.00', '0.00', '0.00'),
(9, 101, NULL, '0.00', '0.00', '0.00'),
(9, 100, NULL, '0.00', '0.00', '0.00'),
(9, 99, NULL, '0.00', '0.00', '0.00'),
(9, 97, NULL, '0.00', '0.00', '0.00'),
(9, 96, NULL, '0.00', '0.00', '0.00'),
(9, 95, NULL, '0.00', '0.00', '0.00'),
(9, 94, NULL, '0.00', '0.00', '0.00'),
(9, 93, NULL, '0.00', '0.00', '0.00'),
(9, 92, NULL, '0.00', '0.00', '0.00'),
(9, 91, NULL, '0.00', '0.00', '0.00'),
(9, 90, NULL, '0.00', '0.00', '0.00'),
(9, 89, NULL, '0.00', '0.00', '0.00'),
(9, 88, NULL, '0.00', '0.00', '0.00'),
(9, 87, NULL, '0.00', '0.00', '0.00'),
(9, 86, NULL, '0.00', '0.00', '0.00'),
(9, 85, NULL, '0.00', '0.00', '0.00'),
(9, 84, NULL, '0.00', '0.00', '0.00'),
(9, 83, NULL, '0.00', '0.00', '0.00'),
(9, 82, NULL, '0.00', '0.00', '0.00'),
(9, 81, NULL, '0.00', '0.00', '0.00'),
(9, 80, NULL, '0.00', '0.00', '0.00'),
(8, 78, NULL, '50.00', '50.00', '0.00'),
(8, 77, NULL, '50.00', '50.00', '0.00'),
(8, 76, NULL, '50.00', '50.00', '0.00'),
(6, 68, NULL, '200.00', '200.00', '0.00'),
(6, 67, NULL, '200.00', '200.00', '0.00'),
(6, 66, NULL, '200.00', '200.00', '0.00'),
(6, 65, NULL, '0.00', '100.00', '0.00'),
(6, 64, NULL, '200.00', '100.00', '0.00'),
(6, 63, NULL, '0.00', '200.00', '0.00'),
(6, 62, NULL, '400.00', '200.00', '0.00'),
(6, 61, NULL, '200.00', '200.00', '0.00'),
(6, 60, NULL, '200.00', '200.00', '0.00'),
(6, 53, NULL, '200.00', '200.00', '0.00'),
(6, 52, NULL, '200.00', '200.00', '0.00'),
(6, 51, NULL, '200.00', '200.00', '0.00'),
(6, 50, NULL, '50.00', '50.00', '0.00'),
(6, 49, NULL, '50.00', '50.00', '0.00'),
(6, 48, NULL, '50.00', '50.00', '0.00'),
(6, 47, NULL, '50.00', '50.00', '0.00'),
(6, 46, NULL, '200.00', '200.00', '0.00'),
(6, 44, NULL, '200.00', '200.00', '0.00'),
(5, 68, NULL, '400.00', '400.00', '0.00'),
(5, 67, NULL, '400.00', '400.00', '0.00'),
(5, 66, NULL, '400.00', '400.00', '0.00'),
(5, 65, NULL, '0.00', '200.00', '0.00'),
(5, 64, NULL, '400.00', '200.00', '0.00'),
(5, 63, NULL, '0.00', '400.00', '0.00'),
(5, 62, NULL, '800.00', '400.00', '0.00'),
(5, 61, NULL, '400.00', '400.00', '0.00'),
(5, 60, NULL, '400.00', '400.00', '0.00'),
(5, 59, NULL, '100.00', '100.00', '0.00'),
(5, 58, NULL, '100.00', '100.00', '0.00'),
(5, 57, NULL, '100.00', '100.00', '0.00'),
(5, 56, NULL, '100.00', '100.00', '0.00'),
(5, 53, NULL, '400.00', '400.00', '0.00'),
(5, 52, NULL, '400.00', '400.00', '0.00'),
(5, 51, NULL, '400.00', '400.00', '0.00'),
(5, 50, NULL, '100.00', '100.00', '0.00'),
(5, 49, NULL, '100.00', '100.00', '0.00'),
(5, 48, NULL, '100.00', '100.00', '0.00'),
(5, 47, NULL, '100.00', '100.00', '0.00'),
(5, 46, NULL, '400.00', '400.00', '0.00'),
(5, 44, NULL, '400.00', '400.00', '0.00'),
(3, 2, NULL, '120.00', '120.00', '0.00'),
(2, 39, NULL, '19.20', '20.00', '0.00'),
(2, 38, NULL, '19.20', '20.00', '0.00'),
(2, 37, NULL, '19.20', '20.00', '0.00'),
(2, 36, NULL, '19.20', '20.00', '0.00'),
(2, 34, NULL, '19.20', '20.00', '0.00'),
(2, 33, NULL, '19.20', '20.00', '0.00'),
(2, 32, NULL, '19.20', '20.00', '0.00'),
(2, 31, NULL, '80.00', '80.00', '0.00'),
(2, 30, NULL, '80.00', '80.00', '0.00'),
(2, 29, NULL, '80.00', '80.00', '0.00'),
(2, 28, NULL, '3.20', '3.20', '0.00'),
(2, 27, NULL, '3.20', '3.20', '0.00'),
(2, 24, NULL, '8.80', '8.89', '0.00'),
(2, 23, NULL, '8.80', '8.89', '0.00'),
(2, 22, NULL, '80.00', '80.00', '0.00'),
(2, 21, NULL, '8.80', '8.89', '0.00'),
(2, 20, NULL, '80.00', '80.00', '0.00'),
(2, 19, NULL, '19.20', '20.00', '0.00'),
(2, 18, NULL, '19.20', '20.00', '0.00'),
(2, 17, NULL, '19.20', '20.00', '0.00'),
(2, 16, NULL, '19.20', '20.00', '0.00'),
(2, 15, NULL, '28.80', '20.00', '0.00'),
(2, 14, NULL, '8.80', '8.89', '0.00'),
(2, 13, NULL, '8.80', '8.89', '0.00'),
(2, 12, NULL, '8.80', '8.89', '0.00'),
(2, 11, NULL, '8.80', '8.89', '0.00'),
(2, 5, NULL, '8.80', '8.89', '0.00'),
(2, 4, NULL, '9.60', '8.89', '0.00'),
(2, 2, NULL, '80.00', '80.00', '0.00'),
(2, 1, NULL, '80.00', '80.00', '0.00');

-- --------------------------------------------------------

--
-- Structure de la table `laboratoires`
--

CREATE TABLE `laboratoires` (
  `id` int(11) UNSIGNED NOT NULL,
  `nom` varchar(255) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `acronyme` varchar(15) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `anneedebut` int(4) DEFAULT NULL,
  `anneefin` int(4) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Structure de la table `mention`
--

CREATE TABLE `mention` (
  `id` int(11) UNSIGNED NOT NULL,
  `libelle` varchar(400) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `type_mention` char(2) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `codeapogee` char(5) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `domaineid` int(11) UNSIGNED NOT NULL,
  `anneedebut` int(4) UNSIGNED NOT NULL,
  `anneefin` int(4) UNSIGNED DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `mention`
--

INSERT INTO `mention` (`id`, `libelle`, `type_mention`, `codeapogee`, `domaineid`, `anneedebut`, `anneefin`) VALUES
(1, 'Sciences sociales', 'L', 'M1', 0, 0, NULL),
(2, 'Sciences du langage', 'L', 'M2', 0, 0, NULL),
(3, 'Science de l\'éducation', 'L', 'M3', 0, 0, NULL),
(4, 'Psychologie', 'L', 'M4', 0, 0, NULL),
(5, 'Sciences et techniques des activités physiques et sportives (STAPS)', 'L', 'M5', 0, 0, NULL),
(6, 'Sciences pour la santé', 'L', 'M6', 0, 0, NULL),
(7, 'Frontières du vivant', 'L', 'M7', 0, 0, NULL),
(8, 'Sciences et technologie ', 'L', 'M8', 0, 0, NULL),
(9, 'Mathématiques', 'L', 'M9', 0, 0, NULL),
(10, 'Informatique', 'L', 'M10', 0, 0, NULL),
(11, 'Droit', 'L', 'M11', 0, 0, NULL),
(12, 'Economie et gestion', 'L', 'M12', 0, 0, NULL),
(13, 'Intervention sociale : Accompagnement de publics spécifiques (Trouble du spectre de l\'autisme)', 'LP', 'M13', 0, 0, NULL),
(14, 'Intervention sociale : Accompagnement social (Assistance sociale)', 'LP', 'M14', 0, 0, NULL),
(15, 'Métiers de l\'animation sociale, socio-éducative et socioculturelle (Développement social et socioculturel local)', 'LP', 'M15', 0, 0, NULL),
(16, 'Services à la personne (Gestion des services d\'aide à domicile)', 'LP', 'M16', 0, 0, NULL),
(17, 'Métiers de la communication : Chef de projet communication ', 'LP', 'M17', 0, 0, NULL),
(18, 'Métiers du livre : Edition et commerce du livre', 'LP', 'M18', 0, 0, NULL),
(19, 'Métiers du livre : Documentation et bibliothèques', 'LP', 'M19', 0, 0, NULL),
(20, 'Maintenance et technologie : Technologie médicale et biomédicale', 'LP', 'M20', 0, 0, NULL),
(21, 'Industries pharmaceutiques, cosmétologiques et de santé : Gestion, production et valorisation (Analyses physico-chimiques - biotechnologie - développement du médicament)', 'LP', 'M21', 0, 0, NULL),
(22, 'Métiers du décisionnel et de la statistique (Application aux domaines de la santé)', 'LP', 'M22', 0, 0, NULL),
(23, 'Métiers de décisionnel et de la statistique (Data mining)', 'LP', 'M23', 0, 0, NULL),
(24, 'Métiers de l\'informatique : Conception, développement et test de logiciels (Génie logiciel, système d\'information)', 'LP', 'M24', 0, 0, NULL),
(25, 'Assurance, banque, finance : Chargé de clientèle', 'LP', 'M25', 0, 0, NULL),
(26, 'Assurance, banque, finance : Supports opérationnels (Gestion et contrôle des opérations et flux en back et middle office)', 'LP', 'M26', 0, 0, NULL),
(27, 'Métiers de la gestion et de la comptabilité : Révision comptable', 'LP', 'M27', 0, 0, NULL),
(28, 'Métiers de la gestion et de la comptabilité : Comptabilité et paie', 'LP', 'M28', 0, 0, NULL),
(29, 'Gestion des structures sanitaires et sociales', 'LP', 'M29', 0, 0, NULL),
(30, 'E-commerce et marketing numérique', 'LP', 'M30', 0, 0, NULL),
(31, 'Management des activités commerciales (Management des équipes commerciales)', 'LP', 'M31', 0, 0, NULL),
(32, 'Sécurité des biens et des personnes (Formation de l\'encadrement)', 'LP', 'M32', 0, 0, NULL),
(33, 'Métiers de la Gestion des Ressources Humaines (GRH) : Assistant(e)', 'LP', 'M33', 0, 0, NULL),
(34, 'Métiers du tourisme : Commercialisation des produits touristiques', 'LP', 'M34', 0, 0, NULL),
(35, 'Métiers du commerce international (Management du développement durable)', 'LP', 'M35', 0, 0, NULL),
(36, 'Création artistique', 'M', 'M36', 0, 0, NULL),
(37, 'Psychologie', 'M', 'M37', 0, 0, NULL),
(38, 'Science de l\'éducation', 'M', 'M38', 0, 0, NULL),
(39, 'Sciences du langage', 'M', 'M39', 0, 0, NULL),
(40, 'Didactique des langues', 'M', 'M40', 0, 0, NULL),
(41, 'Sciences sociales', 'M', 'M41', 0, 0, NULL),
(42, 'Sciences du sport', 'M', 'M42', 0, 0, NULL),
(43, 'Entraînement et optimisation de la performance sportive', 'M', 'M43', 0, 0, NULL),
(44, 'Approches interdisciplinaires et innovantes de la recherche et de l\'enseignement (AIRE)', 'M', 'M44', 0, 0, NULL),
(45, 'Biologie cellulaire, physiologie, pathologies (BCPP)', 'M', 'M45', 0, 0, NULL),
(46, 'Biologie, cellules, cibles thérapeutiques (BC2T)', 'M', 'M46', 0, 0, NULL),
(47, 'BME : Bioingénierie / Biomedical engineering', 'M', 'M47', 0, 0, NULL),
(48, 'Chimie et sciences du vivant', 'M', 'M48', 0, 0, NULL),
(49, 'Génétique', 'M', 'M49', 0, 0, NULL),
(50, 'Infectiologie : microbiologie, virologie, immunologie (IMVI)', 'M', 'M50', 0, 0, NULL),
(51, 'Ingénierie du vivant et ergonomie', 'M', 'M51', 0, 0, NULL),
(52, 'Informatique', 'M', 'M52', 0, 0, NULL),
(53, 'Méthodes informatiques appliquées à la gestion des entreprises (MIAGE)', 'M', 'M53', 0, 0, NULL),
(54, 'Mathématiques et applications', 'M', 'M54', 0, 0, NULL),
(55, 'Ethique', 'M', 'M55', 0, 0, NULL),
(56, 'Santé publique', 'M', 'M56', 0, 0, NULL),
(57, 'Sciences cognitives', 'M', 'M57', 0, 0, NULL),
(58, 'Sciences du médicament', 'M', 'M58', 0, 0, NULL),
(59, 'Ingénierie de la santé et des biomatériaux', 'M', 'M59', 0, 0, NULL),
(60, 'Toxicologie et écotoxicologie ', 'M', 'M60', 0, 0, NULL),
(61, 'Droit public', 'M', 'M61', 0, 0, NULL),
(62, 'Droit privé', 'M', 'M62', 0, 0, NULL),
(63, 'Droit notarial', 'M', 'M63', 0, 0, NULL),
(64, 'Droit de la santé', 'M', 'M64', 0, 0, NULL),
(65, 'Droit des affaires', 'M', 'M65', 0, 0, NULL),
(66, 'Histoire du droit', 'M', 'M66', 0, 0, NULL),
(67, 'Comptabilité, contrôle, audit (CCA)', 'M', 'M67', 0, 0, NULL),
(68, 'Economie de la santé', 'M', 'M68', 0, 0, NULL),
(69, 'Monnaie, banque, finance, assurance', 'M', 'M69', 0, 0, NULL),
(70, 'Management', 'M', 'M70', 0, 0, NULL),
(71, 'Contrôle de gestion et audit organisationnel', 'M', 'M71', 0, 0, NULL),
(72, 'Métiers de l\'enseignement, de l\'éducation et de la formation (MEEF)', 'M', 'M72', 0, 0, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `methode_calc_ip_form_2019`
--

CREATE TABLE `methode_calc_ip_form_2019` (
  `id` int(11) UNSIGNED NOT NULL,
  `formationid` int(11) UNSIGNED NOT NULL,
  `methode` char(1) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `module_2019`
--

CREATE TABLE `module_2019` (
  `id` int(11) UNSIGNED NOT NULL,
  `nom` varchar(140) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `nom_apogee` varchar(140) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `codeapogee` varchar(10) COLLATE latin1_general_ci NOT NULL,
  `acronyme` varchar(70) COLLATE latin1_general_ci NOT NULL,
  `bacplus` int(3) NOT NULL DEFAULT 0,
  `semestre` int(1) NOT NULL DEFAULT 0,
  `description` text COLLATE latin1_general_ci NOT NULL,
  `fonctionnement` text COLLATE latin1_general_ci NOT NULL,
  `theme1` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `theme2` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `theme3` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `pcage1` int(3) UNSIGNED NOT NULL DEFAULT 100,
  `pcage2` int(3) UNSIGNED NOT NULL DEFAULT 0,
  `pcage3` int(3) UNSIGNED NOT NULL DEFAULT 0,
  `CNU` char(4) COLLATE latin1_general_ci NOT NULL,
  `ECTS` decimal(3,1) UNSIGNED NOT NULL,
  `nb_formations` tinyint(2) UNSIGNED NOT NULL DEFAULT 1,
  `nb_departements` tinyint(2) UNSIGNED NOT NULL DEFAULT 1,
  `comparaison_apogee_HxN` char(1) COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `pageweb` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `accreditation_createurid` int(11) NOT NULL DEFAULT 0,
  `accreditation_departementid` int(11) NOT NULL DEFAULT 0,
  `accreditation_composanteid` int(11) NOT NULL DEFAULT 0,
  `accreditation_formation_maitresseid` int(11) NOT NULL DEFAULT 0,
  `presentiel` decimal(7,2) NOT NULL DEFAULT 0.00,
  `externe` tinyint(3) UNSIGNED NOT NULL,
  `rattachementid_externe` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Déchargement des données de la table `module_2019`
--

INSERT INTO `module_2019` (`id`, `nom`, `nom_apogee`, `codeapogee`, `acronyme`, `bacplus`, `semestre`, `description`, `fonctionnement`, `theme1`, `theme2`, `theme3`, `pcage1`, `pcage2`, `pcage3`, `CNU`, `ECTS`, `nb_formations`, `nb_departements`, `comparaison_apogee_HxN`, `pageweb`, `accreditation_createurid`, `accreditation_departementid`, `accreditation_composanteid`, `accreditation_formation_maitresseid`, `presentiel`, `externe`, `rattachementid_externe`) VALUES
(1, 'Génie Logiciel', 'Génie Logiciel', 'MLL5U1O', 'GL', 3, 1, '', '', 0, 0, 0, 100, 0, 0, '27', '0.0', 1, 1, 'N', '', 3761, 7, 0, 2, '54.00', 0, 0),
(2, 'Programmation orientée objet avancée', 'Programmation orientée objet avancée', 'MLL5U2O', 'POO AV', 3, 1, '', '', 0, 0, 0, 100, 0, 0, '27', '5.0', 2, 1, 'N', '', 3761, 7, 0, 2, '54.00', 0, 0),
(3, 'Biologie Neurophysiologie', 'Biologie Neurophysiologie', 'MLJ5U6CI', 'BioNeuro', 3, 2, '', '', 0, 0, 0, 100, 0, 0, '27', '5.0', 1, 1, 'N', '', 3761, 7, 0, 3, '0.00', 0, 0),
(4, 'Biologie P', 'Biologie P', 'MLJ5U6CP', 'BioP', 3, 1, '', '', 0, 0, 0, 100, 0, 0, '65', '5.0', 2, 1, 'N', '', 3761, 7, 0, 3, '21.00', 0, 0),
(5, 'Electromagnetisme', 'Electromagnetisme', 'MLJ5U8C', 'Electromagnetisme', 3, 1, '', '', 0, 0, 0, 100, 0, 0, '26', '5.0', 2, 1, 'N', '', 3761, 7, 0, 3, '42.00', 0, 0),
(6, 'Sciences Humaines', 'Sciences Humaines', 'MLJ5U9C', 'Sciences Humaines', 3, 1, '', '', 0, 0, 0, 100, 0, 0, '', '5.0', 1, 1, 'N', '', 3761, 7, 0, 3, '0.00', 0, 0),
(7, 'Biologie 6I génomique', 'Biologie 6I génomique', 'MLJ6U6CI', '', 3, 2, '', '', 0, 0, 0, 100, 0, 0, '65', '5.0', 1, 1, 'N', '', 3761, 7, 0, 3, '0.00', 0, 0),
(8, 'Biologie 6P génétique', 'Biologie 6P génétique', 'MLJ6U6CP', 'Biologie 6P génétique', 3, 2, '', '', 0, 0, 0, 100, 0, 0, '65', '5.0', 1, 1, 'N', '', 3761, 7, 0, 3, '0.00', 0, 0),
(9, 'Thermodynamique', 'Thermodynamique', 'MLJ6U8C', 'Thermodynamique', 2, 2, '', '', 0, 0, 0, 100, 0, 0, '28', '5.0', 1, 1, 'N', '', 3761, 7, 0, 3, '0.00', 0, 0),
(10, 'Sciences humaines 6', 'Sciences humaines 6', 'MLJ6U9C', 'Sciences humaines 6', 3, 2, '', '', 0, 0, 0, 100, 0, 0, '', '5.0', 1, 1, 'N', '', 3761, 7, 0, 3, '0.00', 0, 0),
(11, 'Topologie - calcul diff', 'Topologie - calcul diff', 'MLK5U1O', 'Topologie - calcul diff', 3, 1, '', '', 0, 0, 0, 100, 0, 0, '26', '7.0', 2, 1, 'N', '', 3761, 7, 0, 3, '60.00', 0, 0),
(12, 'Probabilités 5', 'Probabilités 5', 'MLK5U3O', 'Probabilités 5', 3, 1, '', '', 0, 0, 0, 100, 0, 0, '26', '5.0', 2, 1, 'N', '', 3761, 7, 0, 3, '42.00', 0, 0),
(13, 'Espace euclidien', 'Espace euclidien', 'MLK5U5O', 'Espace euclidien', 3, 1, '', '', 0, 0, 0, 100, 0, 0, '', '0.0', 2, 1, 'N', '', 3761, 7, 0, 3, '42.00', 0, 0),
(14, 'Economie de l\'incertain', 'Economie de l\'incertain', 'MLK5U71O', 'Economie de l\'incertain', 3, 1, '', '', 0, 0, 0, 100, 0, 0, '26', '5.0', 2, 1, 'N', '', 3761, 7, 0, 3, '42.00', 0, 0),
(15, 'Espaces Hilbert, analyse', 'Espaces Hilbert, analyse', 'MLK6U1O', 'Espaces Hilbert, analyse', 3, 2, '', '', 0, 0, 0, 100, 0, 0, '26', '7.0', 2, 1, 'N', '', 3761, 7, 0, 3, '60.00', 0, 0),
(16, 'Transformées de Fourier', 'Transformées de Fourier', 'MLK6U3O', 'Transformées de Fourier', 3, 2, '', '', 0, 0, 0, 100, 0, 0, '26', '7.0', 2, 1, 'N', '', 3761, 7, 0, 3, '60.00', 0, 0),
(17, 'Economie internationale', 'Economie internationale', 'MLK6U71C', 'Economie internationale', 2, 2, '', '', 0, 0, 0, 100, 0, 0, '5', '5.0', 2, 1, 'N', '', 3761, 7, 0, 3, '42.00', 0, 0),
(18, 'Economie publique', 'Economie publique', 'MLK6U72C', 'Economie publique', 3, 2, '', '', 0, 0, 0, 100, 0, 0, '5', '5.0', 2, 1, 'N', '', 3761, 7, 0, 3, '42.00', 0, 0),
(19, 'Bio-Info', 'Bio-Info', 'MLJ6UHC', 'Bio-Info', 2, 2, '', '', 0, 0, 0, 100, 0, 0, '27', '5.0', 1, 1, 'N', '', 3761, 7, 0, 2, '42.00', 0, 0),
(20, 'Algorithmique avancée', 'Algorithmique avancée', 'MLL5U3O', 'Algorithmique avancée', 3, 1, '', '', 0, 0, 0, 100, 0, 0, '27', '5.0', 1, 1, 'N', '', 3761, 7, 0, 2, '42.00', 0, 0),
(21, 'Mathématiques pour l\'info', 'Mathématiques pour l\'info', 'MLL5U4O', 'Mathématiques pour l\'info', 3, 1, '', '', 0, 0, 0, 100, 0, 0, '27', '5.0', 1, 1, 'N', '', 3761, 7, 0, 2, '42.00', 0, 0),
(22, 'Réseaux', 'Réseaux', 'MLL5U5O', 'Réseaux', 2, 1, '', '', 0, 0, 0, 100, 0, 0, '27', '5.0', 1, 1, 'N', '', 3761, 7, 0, 2, '42.00', 0, 0),
(23, 'Programmation Unix', 'Programmation Unix', 'MLL5UAC', 'PROGUNIX', 3, 1, '', '', 0, 0, 0, 100, 0, 0, '27', '5.0', 1, 1, 'N', '', 3761, 7, 0, 2, '42.00', 0, 0),
(24, 'Bases de données avancées', 'Bases de données avancées', 'MLL5UBC', 'BDAV', 3, 1, '', '', 0, 0, 0, 100, 0, 0, '27', '5.0', 1, 1, 'N', '', 3761, 7, 0, 2, '42.00', 0, 0),
(25, 'ACSI', 'ACSI', 'MLL5UCO', 'ACSI', 3, 1, '', '', 0, 0, 0, 100, 0, 0, '27', '5.0', 1, 1, 'N', '', 3761, 7, 0, 2, '0.00', 0, 0),
(26, 'Gestion des fonctions de l\'entreprise', 'Gestion des fonctions', 'MLL5UDO', 'GFE', 2, 1, '', '', 0, 0, 0, 100, 0, 0, '27', '5.0', 1, 1, 'N', '', 3761, 7, 0, 2, '0.00', 0, 0),
(27, 'Entreprenariat 2', 'Entreprenariat 2', 'MLL5UYF', 'ENTR2', 3, 1, '', '', 0, 0, 0, 100, 0, 0, '27', '5.0', 1, 1, 'N', '', 3761, 7, 0, 2, '42.00', 1, 15),
(28, 'Theorie des graphes', 'Theorie des graphes', 'MLL5UZF', 'THGR', 2, 1, '', '', 0, 0, 0, 100, 0, 0, '27', '5.0', 1, 1, 'N', '', 3761, 7, 0, 2, '42.00', 0, 0),
(29, 'Communication', 'Communication', 'MLL6E11O', 'Communication', 3, 2, '', '', 0, 0, 0, 100, 0, 0, '27', '0.0', 1, 1, 'N', '', 3761, 7, 0, 2, '18.00', 0, 0),
(30, 'Anglais', 'Anglais', 'MLL6E12O', 'Anglais', 2, 2, '', '', 0, 0, 0, 100, 0, 0, '', '0.0', 1, 1, 'N', '', 3761, 7, 0, 2, '24.00', 0, 0),
(31, 'Projet tutoré', 'Projet tutoré', 'MLL6E13O', 'TUTORE', 3, 2, '', '', 0, 0, 0, 100, 0, 0, '27', '0.0', 1, 1, 'N', '', 3761, 7, 0, 2, '0.00', 0, 0),
(32, 'Stage', 'Stage', 'MLL6U2O', 'Stage', 3, 2, '', '', 0, 0, 0, 100, 0, 0, '27', '5.0', 1, 1, 'N', '', 3761, 7, 0, 2, '0.00', 0, 0),
(33, 'Intelligence artificielle', 'Intelligence artificielle', 'MLL6U3C', 'IA', 3, 2, '', '', 0, 0, 0, 100, 0, 0, '27', '5.0', 1, 1, 'N', '', 3761, 7, 0, 2, '42.00', 0, 0),
(34, 'Traitement numérique', 'Traitement numérique', 'MLL6U4C', 'TNUM', 3, 2, '', '', 0, 0, 0, 100, 0, 0, '27', '5.0', 1, 1, 'N', '', 3761, 7, 0, 2, '42.00', 0, 0),
(35, 'Analyse economique', 'Analyse economique', 'MLL6U5C', 'ANECO', 3, 2, '', '', 0, 0, 0, 100, 0, 0, '6', '5.0', 1, 1, 'N', '', 3761, 7, 0, 2, '0.00', 0, 0),
(36, 'Parole', 'Parole', 'MLL6UAC', 'Parole', 3, 2, '', '', 0, 0, 0, 100, 0, 0, '27', '5.0', 1, 1, 'N', '', 3761, 7, 0, 2, '42.00', 0, 0),
(37, 'Image', 'Image', 'MLL6UBC', 'Image', 3, 2, '', '', 0, 0, 0, 100, 0, 0, '27', '5.0', 1, 1, 'N', '', 3761, 7, 0, 2, '42.00', 0, 0),
(38, 'Réseaux avancés', 'Réseaux avancés', 'MLL6UCC', 'RESAV', 3, 2, '', '', 0, 0, 0, 100, 0, 0, '27', '5.0', 1, 1, 'N', '', 3761, 7, 0, 2, '42.00', 0, 0),
(39, 'Syst. numerique de com', 'Syst. numerique de com', 'MLL6UDC', 'SYSNUM', 3, 2, '', '', 0, 0, 0, 100, 0, 0, '27', '5.0', 1, 1, 'N', '', 3761, 7, 0, 2, '42.00', 0, 0),
(40, 'Gestion financière', 'Gestion financière', 'MLL6UEC', 'GEFI', 3, 2, '', '', 0, 0, 0, 100, 0, 0, '26', '5.0', 1, 1, 'N', '', 3761, 7, 0, 2, '0.00', 0, 0),
(41, 'Validation des logiciels', 'Validation des logiciels', 'MLL6UXF', 'VALOG', 3, 2, '', '', 0, 0, 0, 100, 0, 0, '27', '0.0', 1, 1, 'N', '', 3761, 7, 0, 2, '0.00', 0, 0),
(42, 'Stage en entreprise', 'Stage en entreprise', 'MLL6UYF', 'STEN', 3, 2, '', '', 0, 0, 0, 100, 0, 0, '', '5.0', 1, 1, 'N', '', 3761, 7, 0, 2, '0.00', 0, 0),
(43, 'Stage entreprenariat', 'Stage entreprenariat', 'MLL6UZF', 'STENT', 3, 2, '', '', 0, 0, 0, 100, 0, 0, '', '5.0', 1, 1, 'N', '', 3761, 7, 0, 2, '0.00', 0, 0),
(44, 'Mathématiques et calcul 1', 'Mathématiques et calcul 1', 'MLJ1U1O', 'Mathématiques et calcul 1', 1, 1, '', '', 0, 0, 0, 100, 0, 0, '26', '12.0', 2, 1, 'N', '', 996, 10, 10, 6, '108.00', 0, 0),
(62, 'Arithmétique Anneaux Z/nZ', 'Arithmétique Anneaux Z/nZ', 'MLJ1UYF', 'Arithmétique Anneaux Z/nZ', 1, 1, '', '', 0, 0, 0, 100, 0, 0, '26', '0.0', 2, 1, 'N', '', 287, 10, 10, 6, '42.00', 0, 0),
(46, 'Méthodologie 1', 'Méthodologie 1', 'MLJ1U4O', 'Méthodologie 1', 1, 1, '', '', 0, 0, 0, 100, 0, 0, '27', '3.0', 2, 1, 'N', '', 996, 10, 10, 5, '12.00', 0, 0),
(47, 'Biologie 1', 'Biologie 1', 'MLJ1U6C', 'Biologie 1', 1, 1, '', '', 0, 0, 0, 100, 0, 0, '65', '3.0', 2, 1, 'N', '', 996, 10, 10, 5, '42.00', 0, 0),
(48, 'Economie 1', 'Economie 1', 'MLJ1U7C', 'Economie 1', 1, 1, '', '', 0, 0, 0, 100, 0, 0, '5', '3.0', 2, 1, 'N', '', 996, 10, 10, 5, '42.00', 0, 0),
(49, 'Physique 1', 'Physique 1', 'MLJ1U8C', 'Physique 1', 1, 1, '', '', 0, 0, 0, 100, 0, 0, '28', '3.0', 2, 1, 'N', '', 996, 10, 10, 5, '42.00', 0, 0),
(50, 'Sociologie 1', 'Sociologie 1', 'MLJ1U9C', 'Sociologie 1', 1, 1, '', '', 0, 0, 0, 100, 0, 0, '19', '3.0', 2, 1, 'N', '', 996, 10, 10, 5, '42.00', 0, 0),
(51, 'Pré-rentrée Mathématiques', 'Pré-rentrée Mathématiques', 'MLJ0M1F', 'Pré-rentrée Mathématiques', 1, -1, '', '', 0, 0, 0, 100, 0, 0, '1', '0.0', 2, 1, 'N', '', 996, 10, 10, 5, '6.00', 0, 0),
(52, 'Pré-rentrée : ENT', 'Pré-rentrée MathématiquesPré-rentrée : ENT', 'MLJ0M2F', 'Pré-rentrée : ENT', 1, -1, '', '', 0, 0, 0, 100, 0, 0, '1', '0.0', 2, 1, 'N', '', 996, 10, 10, 5, '6.00', 0, 0),
(53, 'Mathématiques et Calcul 2', 'Mathématiques et Calcul 2', 'MLJ2U1O', 'Mathématiques et Calcul 2', 1, 2, '', '', 0, 0, 0, 100, 0, 0, '26', '9.0', 2, 1, 'N', '', 996, 10, 10, 5, '96.00', 0, 0),
(66, 'Anglais 1', 'Anglais 1', 'LMI1_241', 'Anglais 1', 1, 2, '', '', 0, 0, 0, 100, 0, 0, '1', '3.0', 2, 1, 'N', '', 287, 10, 10, 5, '24.00', 0, 0),
(69, 'Algèbre 3', 'Algèbre 3', 'MLK3U1O', 'Algèbre 3', 2, 1, '', '', 0, 0, 0, 100, 0, 0, '26', '6.0', 1, 1, 'N', '', 287, 10, 10, 7, '0.00', 0, 0),
(56, 'Biologie 2', 'Biologie 2', 'MLJ2U6C', 'Biologie 2', 1, 2, '', '', 0, 0, 0, 100, 0, 0, '65', '3.0', 1, 1, 'N', '', 996, 10, 10, 5, '42.00', 0, 0),
(57, 'Economie 2', 'Economie 2', 'MLJ2U7C', 'Economie 2', 1, 2, '', '', 0, 0, 0, 100, 0, 0, '5', '3.0', 1, 1, 'N', '', 996, 10, 10, 5, '42.00', 0, 0),
(58, 'Physique 2', 'Physique 2', 'MLJ2U8C', 'Physique 2', 1, 2, '', '', 0, 0, 0, 100, 0, 0, '28', '3.0', 1, 1, 'N', '', 996, 10, 10, 5, '42.00', 0, 0),
(59, 'Sociologie 2', 'Sociologie 2', 'MLJ2U9C', 'Sociologie 2', 1, 2, '', '', 0, 0, 0, 100, 0, 0, '19', '3.0', 1, 1, 'N', '', 996, 10, 10, 5, '42.00', 0, 0),
(60, 'Connaissances de bases en Informatique', 'Connaissances de bases en Informatique', 'LMI1_121', 'Connaissances de bases en Informatique', 1, 1, '', '', 0, 0, 0, 100, 0, 0, '27', '3.0', 2, 1, 'N', '', 287, 10, 10, 5, '24.00', 0, 0),
(61, 'Introduction à la programmation', 'Introduction à la programmation', 'LMI1_122', 'Introduction à la programmation', 1, 1, '', '', 0, 0, 0, 100, 0, 0, '27', '9.0', 2, 1, 'N', '', 287, 10, 10, 5, '54.00', 0, 0),
(63, 'Projet programmation 1', 'Projet programmation 1', 'MLJ1UZF', 'Projet programmation 1', 1, 1, '', '', 0, 0, 0, 100, 0, 0, '27', '0.0', 2, 1, 'N', '', 287, 10, 10, 5, '0.00', 0, 0),
(64, 'Programmation fonctionnelle', 'Programmation fonctionnelle', 'LMI1_221', 'Programmation fonctionnelle', 1, 2, '', '', 0, 0, 0, 100, 0, 0, '27', '5.0', 2, 1, 'N', '', 287, 10, 10, 5, '54.00', 0, 0),
(65, 'Numération et logique', 'Numération et logique', 'LMI1_222', 'Numération et logique', 1, 2, '', '', 0, 0, 0, 100, 0, 0, '27', '5.0', 2, 1, 'N', '', 287, 10, 10, 6, '0.00', 0, 0),
(67, 'Préparation C2i - Domaines 1 2', 'Préparation C2i - Domaines 1 2', 'LMI1_2421', 'Préparation C2i - Domaines 1 2', 1, 2, '', '', 0, 0, 0, 100, 0, 0, '27', '0.0', 2, 1, 'N', '', 287, 10, 10, 5, '24.00', 0, 0),
(68, 'Préparation C2i - Domaines 3 4 5', 'Préparation C2i - Domaines 3 4 5', 'LMI1_2422', 'Préparation C2i - Domaines 3 4 5', 1, 2, '', '', 0, 0, 0, 100, 0, 0, '27', '0.0', 2, 1, 'N', '', 287, 10, 10, 5, '24.00', 0, 0),
(70, 'Analyse 3', 'Analyse 3', 'MLK3U2O', 'Analyse 3', 2, 1, '', '', 0, 0, 0, 100, 0, 0, '26', '0.0', 1, 1, 'N', '', 287, 10, 10, 7, '0.00', 0, 0),
(71, 'Introduction aux probabilités', 'Introduction aux probabilités', 'MLK3U3O', 'Introduction aux probabilités', 2, 1, '', '', 0, 0, 0, 100, 0, 0, '26', '6.0', 1, 1, 'N', '', 287, 10, 10, 7, '0.00', 0, 0),
(72, 'Anglais 2', 'Anglais 2', 'MLJ3E51O', 'Anglais 2', 2, 1, '', '', 0, 0, 0, 100, 0, 0, '1', '3.0', 1, 1, 'N', '', 287, 10, 10, 7, '0.00', 0, 0),
(73, 'Projet professionnel de l\'étudiant', 'Projet professionnel de l\'étudiant', 'MLJ3E52O', 'PPE', 2, 1, '', '', 0, 0, 0, 100, 0, 0, '1', '3.0', 1, 1, 'N', '', 287, 10, 10, 7, '0.00', 0, 0),
(74, 'Biologie cellulaire', 'Biologie cellulaire', 'MLJ3U6C', 'Biologie cellulaire', 2, 1, '', '', 0, 0, 0, 100, 0, 0, '65', '6.0', 1, 1, 'N', '', 287, 10, 10, 7, '0.00', 0, 0),
(75, 'Economie 3: économie industrielle', 'Economie 3: économie industrielle', 'MLJ3U7C', 'Economie 3', 2, 1, '', '', 0, 0, 0, 100, 0, 0, '5', '6.0', 1, 1, 'N', '', 287, 10, 10, 7, '0.00', 0, 0),
(76, 'Connaissances générales Droit', 'CGD', 'BMAAU010', '', 4, 1, '', '', 0, 0, 0, 100, 0, 0, '1', '3.0', 1, 1, 'N', '', 4127, 10, 10, 8, '24.00', 0, 0),
(77, 'Connaissances générales AnglaiS', 'Connaissances générales Anglais', 'BMAAU020', 'CGD', 4, 1, '', '', 0, 0, 0, 100, 0, 0, '1', '3.0', 1, 1, 'N', '', 4127, 10, 10, 8, '24.00', 0, 0),
(78, 'Méthodologies de base en Ergonomie', 'Méthodologies de base en Ergonomie', 'BMAAU030', 'MGBE', 4, 1, '', '', 0, 0, 0, 100, 0, 0, '16', '6.0', 1, 1, 'N', '', 4127, 10, 10, 8, '48.00', 0, 0),
(79, 'Connaissances de base en Physiologie et en Biomécanique', 'Connaissances de base en Physiologie et en Biomécanique', 'BMAAU040', 'CBPB', 4, 1, '', '', 0, 0, 0, 100, 0, 0, '16', '3.0', 1, 1, 'N', '', 4127, 10, 10, 8, '0.00', 0, 0),
(80, 'Anatomie de l\'appareil locomoteur', 'Anatomie de l\'appareil locomoteur', 'STAPS1M010', 'ANAT', 1, 1, '', '', 0, 0, 0, 100, 0, 0, '74', '0.0', 1, 1, 'N', '', 4127, 10, 10, 9, '0.00', 0, 0),
(81, 'Bases neurophysiologiques de la motricité', 'Bases neurophysiologiques de la motricité', 'STAPS1M020', 'ANAT', 1, 1, '', '', 0, 0, 0, 100, 0, 0, '74', '4.0', 1, 1, 'N', '', 4127, 10, 10, 9, '0.00', 0, 0),
(82, 'Jeux, sports et sociétés', 'Jeux, sports et sociétés', 'STA1M030', 'SOCIO', 1, 1, '', '', 0, 0, 0, 100, 0, 0, '74', '0.0', 1, 1, 'N', '', 4127, 10, 10, 9, '0.00', 0, 0),
(83, 'Théorie des jeux', 'Théorie des jeux ', 'STA1M040', 'TDJ', 1, 1, '', '', 0, 0, 0, 100, 0, 0, '74', '0.0', 1, 1, 'N', '', 4127, 10, 10, 9, '0.00', 0, 0),
(84, 'Athlétisme pratique', 'Athlétisme pratique', 'STA1E010', 'ATHLE P1', 1, 1, '', '', 0, 0, 0, 100, 0, 0, '74', '0.0', 1, 1, 'N', '', 4127, 10, 10, 9, '20.00', 0, 0),
(85, 'Athlétisme Théorie', 'Athlétisme Théorie', 'STA1E050', 'ATHLE T1', 1, 1, '', '', 0, 0, 0, 100, 0, 0, '74', '0.0', 1, 1, 'N', '', 4127, 10, 10, 9, '0.00', 0, 0),
(86, 'Gymnastique Pratique', 'Gymnastique Pratique', 'STA1E020', 'GYMP1', 1, 1, '', '', 0, 0, 0, 100, 0, 0, '74', '0.0', 1, 1, 'N', '', 4127, 10, 10, 9, '0.00', 0, 0),
(87, 'Gymnastique Théorie', 'Gymnastique Théorie', 'STA1E060', 'GYMT1', 1, 1, '', '', 0, 0, 0, 100, 0, 0, '74', '0.0', 1, 1, 'N', '', 4127, 10, 10, 9, '0.00', 0, 0),
(88, 'Tennis Pratique', 'Tennis Pratique', 'STA1E030', 'TENNIS P1', 1, 1, '', '', 0, 0, 0, 100, 0, 0, '74', '0.0', 1, 1, 'N', '', 4127, 10, 10, 9, '20.00', 0, 0),
(89, 'Tennis Théorie', 'Tennis Théorie', 'STA1E070', 'TENNIS T1', 1, 1, '', '', 0, 0, 0, 100, 0, 0, '74', '0.0', 1, 1, 'N', '', 4127, 10, 10, 9, '0.00', 0, 0),
(90, 'Rugby Pratique', 'Rugby Pratique', 'STA1E040', 'RUGBY P1', 1, 1, '', '', 0, 0, 0, 100, 0, 0, '', '0.0', 1, 1, 'N', '', 4127, 10, 10, 9, '20.00', 0, 0),
(91, 'Rugby Théorie', 'Rugby Théorie', 'STA1E080', 'RUGBY T1', 1, 1, '', '', 0, 0, 0, 100, 0, 0, '74', '0.0', 1, 1, 'N', '', 4127, 10, 10, 9, '0.00', 0, 0),
(92, 'Badminton Pratique', 'Badminton Pratique', 'STA1E090', 'BAD P1', 1, 1, '', '', 0, 0, 0, 100, 0, 0, '74', '0.0', 1, 1, 'N', '', 4127, 10, 10, 9, '20.00', 0, 0),
(93, 'Football Pratique', 'Football Pratique', 'STA1E100', 'FOOT P1', 1, 1, '', '', 0, 0, 0, 100, 0, 0, '74', '0.0', 1, 1, 'N', '', 4127, 10, 10, 9, '20.00', 0, 0),
(94, 'Badminton Théorie', 'Badminton Théorie', 'STA1E110', 'BAD T1', 1, 1, '', '', 0, 0, 0, 100, 0, 0, '74', '0.0', 1, 1, 'N', '', 4127, 10, 10, 9, '0.00', 0, 0),
(95, 'Football Théorie', 'Football Théorie', 'STA1E120', 'FOOT T1', 1, 1, '', '', 0, 0, 0, 100, 0, 0, '74', '0.0', 1, 1, 'N', '', 4127, 10, 10, 9, '0.00', 0, 0),
(96, 'Tennis de table Pratique', 'Tennis de table Pratique', 'STA1E130', 'TT P1', 1, 1, '', '', 0, 0, 0, 100, 0, 0, '74', '0.0', 1, 1, 'N', '', 4127, 10, 10, 9, '20.00', 0, 0),
(97, 'Tennis de table Théorie', 'Tennis de table Théorie', 'STA1E140', 'TT T1', 1, 1, '', '', 0, 0, 0, 100, 0, 0, '74', '0.0', 1, 1, 'N', '', 4127, 10, 10, 9, '0.00', 0, 0),
(99, 'Introduction à la physiologie de l\'exercice', 'Introduction à la physiologie de l\'exercice', 'STA2M010', 'PHYSIO 2', 1, 2, '', '', 0, 0, 0, 100, 0, 0, '74', '0.0', 1, 1, 'N', '', 4127, 10, 10, 9, '0.00', 0, 0),
(100, 'Biomécanique des APSA', 'Biomécanique des APSA', 'STA2M020', 'BIOMECA', 1, 2, '', '', 0, 0, 0, 100, 0, 0, '74', '0.0', 1, 1, 'N', '', 4127, 10, 10, 9, '0.00', 0, 0),
(101, 'Histoire du corps et des sports', 'Histoire du corps et des sports', 'STA2M030', 'HIST', 1, 2, '', '', 0, 0, 0, 100, 0, 0, '74', '0.0', 1, 1, 'N', '', 4127, 10, 10, 9, '0.00', 0, 0),
(102, 'Psychologie et motricité', 'Psychologie et motricité', 'STA2M040', 'PSYCHO', 1, 2, '', '', 0, 0, 0, 100, 0, 0, '74', '0.0', 1, 1, 'N', '', 4127, 10, 10, 9, '0.00', 0, 0),
(103, 'Athlétisme pratique', 'Athlétisme pratique', 'STA2E010', 'ATHLE P2', 1, 2, '', '', 0, 0, 0, 100, 0, 0, '74', '0.0', 1, 1, 'N', '', 4127, 10, 10, 9, '20.00', 0, 0),
(104, 'Athlétisme Théorie', 'Athlétisme Théorie', 'STA2E050', 'ATHLE T2', 1, 2, '', '', 0, 0, 0, 100, 0, 0, '74', '0.0', 1, 1, 'N', '', 4127, 10, 10, 9, '0.00', 0, 0),
(105, 'Gymnastique Pratique', 'Gymnastique Pratique', 'STA2E020', 'GYM P2', 1, 2, '', '', 0, 0, 0, 100, 0, 0, '74', '0.0', 1, 1, 'N', '', 4127, 10, 10, 9, '0.00', 0, 0),
(106, 'Gymnastique Théorie', 'Gymnastique Théorie', 'STA2E060', 'GYM T2', 1, 2, '', '', 0, 0, 0, 100, 0, 0, '74', '0.0', 1, 1, 'N', '', 4127, 10, 10, 9, '0.00', 0, 0),
(107, 'Tennis Pratique', 'Tennis Pratique', 'STA2E030', 'TENNIS P2', 1, 2, '', '', 0, 0, 0, 100, 0, 0, '74', '0.0', 1, 1, 'N', '', 4127, 10, 10, 9, '20.00', 0, 0),
(108, 'Tennis Théorie', 'Tennis Théorie', 'STA2E070', 'TENNIS T2', 1, 2, '', '', 0, 0, 0, 100, 0, 0, '74', '0.0', 1, 1, 'N', '', 4127, 10, 10, 9, '0.00', 0, 0),
(109, 'Rugby Pratique', 'Rugby Pratique', 'STA2E040', 'RUGBY P2', 1, 2, '', '', 0, 0, 0, 100, 0, 0, '', '0.0', 1, 1, 'N', '', 4127, 10, 10, 9, '20.00', 0, 0),
(110, 'Rugby Théorie', 'Rugby Théorie', 'STA2E080', 'RUGBY T2', 1, 2, '', '', 0, 0, 0, 100, 0, 0, '74', '0.0', 1, 1, 'N', '', 4127, 10, 10, 9, '0.00', 0, 0),
(111, 'Badminton Pratique', 'Badminton Pratique', 'STA2E090', 'BAD P2', 1, 2, '', '', 0, 0, 0, 100, 0, 0, '74', '0.0', 1, 1, 'N', '', 4127, 10, 10, 9, '20.00', 0, 0),
(112, 'Badminton Théorie', 'Badminton Théorie', 'STA2E110', 'BAD T2', 1, 2, '', '', 0, 0, 0, 100, 0, 0, '74', '0.0', 1, 1, 'N', '', 4127, 10, 10, 9, '0.00', 0, 0),
(113, 'Football Pratique', 'Football Pratique', 'STA2E100', 'FOOT P2', 1, 2, '', '', 0, 0, 0, 100, 0, 0, '74', '0.0', 1, 1, 'N', '', 4127, 10, 10, 9, '20.00', 0, 0),
(114, 'Football Théorie', 'Football Théorie', 'STA2E120', 'FOOT T2', 1, 2, '', '', 0, 0, 0, 100, 0, 0, '74', '0.0', 1, 1, 'N', '', 4127, 10, 10, 9, '0.00', 0, 0),
(115, 'Tennis de table Pratique', 'Tennis de table Pratique', 'STA2E130', 'TT P2', 1, 2, '', '', 0, 0, 0, 100, 0, 0, '74', '0.0', 1, 1, 'N', '', 4127, 10, 10, 9, '20.00', 0, 0),
(116, 'Tennis de table Théorie', 'Tennis de table Théorie', 'STA2E140', 'TT T2', 1, 2, '', '', 0, 0, 0, 100, 0, 0, '74', '0.0', 1, 1, 'N', '', 4127, 10, 10, 9, '0.00', 0, 0),
(117, 'Natation Pratique', 'Natation Pratique', 'STA1E150', 'NAT P1', 1, 1, '', '', 0, 0, 0, 100, 0, 0, '74', '0.0', 1, 1, 'N', '', 4127, 10, 10, 9, '20.00', 0, 0),
(118, 'Natation Théorie', 'Natation Théorie', 'STA1E190', 'NAT T1', 1, 1, '', '', 0, 0, 0, 100, 0, 0, '74', '0.0', 1, 1, 'N', '', 4127, 10, 10, 9, '0.00', 0, 0),
(119, 'Acrosport Pratique', 'Acrosport Pratique', 'STA1E160', 'ACRO P1', 1, 1, '', '', 0, 0, 0, 100, 0, 0, '74', '0.0', 1, 1, 'N', '', 4127, 10, 10, 9, '20.00', 0, 0),
(120, 'Acrosport Théorie', 'Acrosport Théorie', 'STA1E200', 'ACRO T1', 1, 1, '', '', 0, 0, 0, 100, 0, 0, '74', '0.0', 1, 1, 'N', '', 4127, 10, 10, 9, '0.00', 0, 0),
(121, 'Judo Pratique', 'Judo Pratique', 'STA1E170', 'JUDO P1', 1, 1, '', '', 0, 0, 0, 100, 0, 0, '74', '0.0', 1, 1, 'N', '', 4127, 10, 10, 9, '20.00', 0, 0),
(122, 'Judo Théorie', 'Judo Théorie', 'STA1E210', 'JUDO P1', 1, 1, '', '', 0, 0, 0, 100, 0, 0, '74', '0.0', 1, 1, 'N', '', 4127, 10, 10, 9, '0.00', 0, 0),
(123, 'Basket-Ball Pratique', 'Basket-Ball Pratique', 'STA1E180', 'BB P1', 1, 1, '', '', 0, 0, 0, 100, 0, 0, '74', '0.0', 1, 1, 'N', '', 4127, 10, 10, 9, '0.00', 0, 0),
(124, 'Basket-Ball Théorie', 'Basket-Ball Théorie', 'STA1E220', 'BB T1', 1, 1, '', '', 0, 0, 0, 100, 0, 0, '74', '0.0', 1, 1, 'N', '', 4127, 10, 10, 9, '0.00', 0, 0),
(125, 'Volley-Ball Pratique', 'Volley-Ball Pratique', 'STA1E240', 'VB P1', 1, 1, '', '', 0, 0, 0, 100, 0, 0, '74', '0.0', 1, 1, 'N', '', 4127, 10, 10, 9, '20.00', 0, 0),
(126, 'Volley-Ball Théorie', 'Volley-Ball Théorie', 'STA1E260', 'VB T1', 1, 1, '', '', 0, 0, 0, 100, 0, 0, '74', '0.0', 1, 1, 'N', '', 4127, 10, 10, 9, '0.00', 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `niveaux`
--

CREATE TABLE `niveaux` (
  `id` int(11) UNSIGNED NOT NULL,
  `nom` varchar(255) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `anneedebut` int(4) DEFAULT NULL,
  `anneefin` int(4) DEFAULT NULL,
  `departementid` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Déchargement des données de la table `niveaux`
--

INSERT INTO `niveaux` (`id`, `nom`, `anneedebut`, `anneefin`, `departementid`) VALUES
(1, 'L1', 0, NULL, 1),
(2, 'L2', 0, NULL, 1),
(3, 'L3', 0, NULL, 1),
(4, 'L3P', 0, NULL, 1),
(5, 'M1', 0, NULL, 1),
(6, 'M2', 0, NULL, 1),
(7, 'L1', 0, NULL, 2),
(8, 'L2', 0, NULL, 2),
(9, 'L3', 0, NULL, 2),
(10, 'L3P', 0, NULL, 2),
(11, 'M1', 0, NULL, 2),
(12, 'M2', 0, NULL, 2),
(13, 'L1', 0, NULL, 3),
(14, 'L2', 0, NULL, 3),
(15, 'L3', 0, NULL, 3),
(16, 'L3P', 0, NULL, 3),
(17, 'M1', 0, NULL, 3),
(18, 'M2', 0, NULL, 3),
(19, 'L1', 0, NULL, 4),
(20, 'L2', 0, NULL, 4),
(21, 'L3', 0, NULL, 4),
(22, 'L3P', 0, NULL, 4),
(23, 'M1', 0, NULL, 4),
(24, 'M2', 0, NULL, 4),
(25, 'L1', 0, NULL, 5),
(26, 'L2', 0, NULL, 5),
(27, 'L3', 0, NULL, 5),
(28, 'L3P', 0, NULL, 5),
(29, 'M1', 0, NULL, 5),
(30, 'M2', 0, NULL, 5),
(31, 'L1', 0, NULL, 6),
(32, 'L2', 0, NULL, 6),
(33, 'L3', 0, NULL, 6),
(34, 'L3P', 0, NULL, 6),
(35, 'M1', 0, NULL, 6),
(36, 'M2', 0, NULL, 6),
(37, 'L1', 0, NULL, 7),
(38, 'L2', 0, NULL, 7),
(39, 'L3', 0, NULL, 7),
(40, 'L3P', 0, NULL, 7),
(41, 'M1', 0, NULL, 7),
(42, 'M2', 0, NULL, 7),
(43, 'L1', 0, NULL, 8),
(44, 'L2', 0, NULL, 8),
(45, 'L3', 0, NULL, 8),
(46, 'L3P', 0, NULL, 8),
(47, 'M1', 0, NULL, 8),
(48, 'M2', 0, NULL, 8),
(49, 'L1', 0, NULL, 9),
(50, 'L2', 0, NULL, 9),
(51, 'L3', 0, NULL, 9),
(52, 'L3P', 0, NULL, 9),
(53, 'M1', 0, NULL, 9),
(54, 'M2', 0, NULL, 9),
(55, 'L1', 0, NULL, 10),
(56, 'L2', 0, NULL, 10),
(57, 'L3', 0, NULL, 10),
(58, 'L3P', 0, NULL, 10),
(59, 'M1', 0, NULL, 10),
(60, 'M2', 0, NULL, 10),
(61, 'L1', 0, NULL, 11),
(62, 'L2', 0, NULL, 11),
(63, 'L3', 0, NULL, 11),
(64, 'L3P', 0, NULL, 11),
(65, 'M1', 0, NULL, 11),
(66, 'M2', 0, NULL, 11),
(67, 'L1', 0, NULL, 12),
(68, 'L2', 0, NULL, 12),
(69, 'L3', 0, NULL, 12),
(70, 'L3P', 0, NULL, 12),
(71, 'M1', 0, NULL, 12),
(72, 'M2', 0, NULL, 12);

-- --------------------------------------------------------

--
-- Structure de la table `parcours_2019`
--

CREATE TABLE `parcours_2019` (
  `id` bigint(21) UNSIGNED NOT NULL,
  `id_formation` int(11) NOT NULL,
  `nom` varchar(80) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `code_apogee` varchar(10) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `ordre_affichage` int(11) NOT NULL,
  `semestre` int(1) UNSIGNED NOT NULL,
  `presentiel_s1` decimal(7,2) NOT NULL,
  `presentiel_s2` decimal(7,2) NOT NULL,
  `ects_s1` decimal(5,1) NOT NULL,
  `ects_s2` decimal(5,1) NOT NULL,
  `coefIP_s1` decimal(10,5) NOT NULL,
  `coefIP_s2` decimal(10,5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `parcours_2019`
--

INSERT INTO `parcours_2019` (`id`, `id_formation`, `nom`, `code_apogee`, `ordre_affichage`, `semestre`, `presentiel_s1`, `presentiel_s2`, `ects_s1`, `ects_s2`, `coefIP_s1`, `coefIP_s2`) VALUES
(13, 3, 'Math1', 'MLKPARC', 1, 1, '54.00', '0.00', '6.0', '0.0', '100.00000', '0.00000'),
(21, 2, 'Informatique générale', 'MLG4I3G', 1, 0, '233.67', '177.82', '30.0', '30.0', '100.00000', '100.00000'),
(32, 5, 'Parcours général', 'MLJ1P', 1, 0, '240.00', '264.00', '30.0', '30.0', '100.00000', '100.00000'),
(33, 6, 'Parcours général ', 'MLJ1P', 1, 0, '240.00', '222.00', '30.0', '27.0', '100.00000', '100.00000'),
(36, 8, 'Unique', '1234', 1, 1, '96.00', '0.00', '12.0', '0.0', '100.00000', '0.00000'),
(50, 9, 'Unique', 'STAI010', 1, 0, '120.00', '100.00', '36.0', '42.0', '100.00000', '100.00000');

-- --------------------------------------------------------

--
-- Structure de la table `regles_conversion_horaire_apogee_2019`
--

CREATE TABLE `regles_conversion_horaire_apogee_2019` (
  `prKey` int(11) UNSIGNED NOT NULL,
  `composanteid` int(11) UNSIGNED NOT NULL,
  `mentionid` int(11) UNSIGNED NOT NULL,
  `typecoursid` int(11) UNSIGNED NOT NULL,
  `fonction_conversion` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `regles_nature_apogee_2019`
--

CREATE TABLE `regles_nature_apogee_2019` (
  `prKey` int(11) UNSIGNED NOT NULL,
  `composanteid` int(11) UNSIGNED NOT NULL,
  `mentionid` int(11) UNSIGNED NOT NULL,
  `externe` tinyint(3) UNSIGNED NOT NULL,
  `ue_module` char(2) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `avec_sous_ue` tinyint(3) UNSIGNED NOT NULL,
  `type_CM` int(11) NOT NULL,
  `ou_aucun_CM` tinyint(3) UNSIGNED NOT NULL,
  `type_TD` int(11) NOT NULL,
  `ou_aucun_TD` tinyint(3) UNSIGNED NOT NULL,
  `type_TP` int(11) NOT NULL,
  `ou_aucun_TP` tinyint(3) UNSIGNED NOT NULL,
  `nature` char(4) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `regles_norme_taille_groupe_2019`
--

CREATE TABLE `regles_norme_taille_groupe_2019` (
  `prKey` int(11) UNSIGNED NOT NULL,
  `formation_rattachementid` int(11) UNSIGNED NOT NULL,
  `mentionid` int(11) UNSIGNED NOT NULL,
  `formationid` int(11) UNSIGNED NOT NULL,
  `departementid` int(10) UNSIGNED NOT NULL,
  `typecoursid` int(11) UNSIGNED NOT NULL,
  `bacplusmin` tinyint(3) UNSIGNED NOT NULL,
  `bacplusmax` tinyint(3) UNSIGNED NOT NULL,
  `norme` smallint(5) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `regles_norme_taille_groupe_2019`
--

INSERT INTO `regles_norme_taille_groupe_2019` (`prKey`, `formation_rattachementid`, `mentionid`, `formationid`, `departementid`, `typecoursid`, `bacplusmin`, `bacplusmax`, `norme`) VALUES
(1, 0, 0, 0, 0, 0, 0, 6, 0),
(2, 0, 0, 0, 0, 1, 0, 6, 255),
(3, 0, 0, 0, 0, 2, 0, 6, 50),
(4, 7, 0, 0, 0, 3, 0, 6, 25),
(5, 0, 0, 0, 0, 4, 0, 6, 4),
(6, 0, 0, 0, 0, 5, 0, 6, 1),
(7, 7, 10, 0, 0, 4, 0, 0, 6),
(8, 0, 0, 0, 0, 3, 0, 0, 25),
(9, 0, 0, 0, 0, 6, 0, 6, 40);

-- --------------------------------------------------------

--
-- Structure de la table `relation_apogeesgce_cnuufr_2019`
--

CREATE TABLE `relation_apogeesgce_cnuufr_2019` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` char(4) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `composanteid` int(11) UNSIGNED NOT NULL,
  `departementid` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `relation_apogeesgce_composantes_departements_2019`
--

CREATE TABLE `relation_apogeesgce_composantes_departements_2019` (
  `prKey` int(11) NOT NULL,
  `code` char(3) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `libelle` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `rattachementid` int(11) NOT NULL,
  `departementid` int(11) NOT NULL DEFAULT 0,
  `intercomposantes` char(1) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `interdepartements` char(1) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT 'N'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `relation_choix_ue_2019`
--

CREATE TABLE `relation_choix_ue_2019` (
  `id_choix` bigint(21) UNSIGNED NOT NULL,
  `id_ue` int(11) NOT NULL,
  `ordre_affichage` int(11) NOT NULL,
  `coefIP` decimal(10,5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `relation_choix_ue_2019`
--

INSERT INTO `relation_choix_ue_2019` (`id_choix`, `id_ue`, `ordre_affichage`, `coefIP`) VALUES
(135, 20, 1, '4.00000'),
(134, 12, 8, '11.00000'),
(134, 11, 7, '11.00000'),
(134, 10, 6, '11.00000'),
(134, 9, 5, '11.00000'),
(134, 8, 4, '11.00000'),
(134, 7, 3, '11.00000'),
(136, 21, 1, '4.00000'),
(137, 14, 1, '100.00000'),
(134, 6, 2, '11.00000'),
(134, 5, 1, '12.00000'),
(134, 13, 9, '11.00000'),
(133, 4, 1, '100.00000'),
(138, 15, 1, '12.00000'),
(138, 16, 2, '8.00000'),
(132, 19, 1, '100.00000'),
(131, 2, 1, '100.00000'),
(130, 1, 1, '100.00000'),
(138, 17, 3, '8.00000'),
(138, 18, 4, '8.00000'),
(138, 22, 5, '8.00000'),
(138, 23, 6, '8.00000'),
(138, 24, 7, '8.00000'),
(138, 25, 8, '8.00000'),
(138, 26, 9, '8.00000'),
(138, 27, 10, '8.00000'),
(138, 28, 11, '8.00000'),
(138, 29, 12, '8.00000'),
(63, 1, 1, '100.00000'),
(271, 48, 1, '100.00000'),
(270, 43, 4, '25.00000'),
(270, 42, 3, '25.00000'),
(270, 40, 1, '25.00000'),
(269, 38, 1, '100.00000'),
(268, 37, 1, '100.00000'),
(267, 47, 1, '100.00000'),
(266, 36, 4, '25.00000'),
(266, 35, 3, '25.00000'),
(266, 34, 2, '25.00000'),
(266, 33, 1, '25.00000'),
(265, 32, 1, '100.00000'),
(270, 41, 2, '25.00000'),
(272, 49, 1, '100.00000'),
(273, 50, 1, '100.00000'),
(274, 44, 1, '100.00000'),
(275, 45, 1, '100.00000'),
(264, 31, 1, '100.00000'),
(263, 46, 1, '100.00000'),
(276, 46, 1, '100.00000'),
(277, 31, 1, '100.00000'),
(278, 32, 1, '100.00000'),
(279, 33, 1, '25.00000'),
(279, 34, 2, '25.00000'),
(279, 35, 3, '25.00000'),
(279, 36, 4, '25.00000'),
(280, 47, 1, '100.00000'),
(281, 37, 1, '100.00000'),
(282, 38, 1, '100.00000'),
(284, 48, 1, '100.00000'),
(285, 49, 1, '100.00000'),
(286, 50, 1, '100.00000'),
(287, 44, 1, '100.00000'),
(288, 45, 1, '100.00000'),
(293, 52, 1, '100.00000'),
(292, 51, 1, '100.00000'),
(294, 53, 1, '100.00000'),
(366, 60, 1, '100.00000'),
(367, 61, 1, '100.00000'),
(365, 64, 1, '100.00000'),
(368, 62, 1, '100.00000'),
(364, 58, 1, '100.00000'),
(369, 63, 1, '100.00000'),
(363, 57, 1, '100.00000'),
(370, 65, 1, '100.00000'),
(362, 56, 1, '100.00000'),
(361, 55, 1, '100.00000');

-- --------------------------------------------------------

--
-- Structure de la table `relation_form_dept_2019`
--

CREATE TABLE `relation_form_dept_2019` (
  `formationid` int(11) UNSIGNED NOT NULL,
  `departementid` int(11) UNSIGNED NOT NULL,
  `niveauid` int(11) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `relation_form_dept_2019`
--

INSERT INTO `relation_form_dept_2019` (`formationid`, `departementid`, `niveauid`) VALUES
(1, 3, 13),
(1, 0, 1),
(2, 7, 39),
(2, 0, 3),
(3, 7, 39),
(3, 0, 3),
(4, 10, 55),
(4, 0, 0),
(5, 10, 55),
(5, 0, 1),
(6, 10, 55),
(6, 0, 1),
(7, 10, 56),
(7, 0, 2),
(8, 10, 59),
(8, 0, 4),
(9, 10, 55),
(9, 0, 1);

-- --------------------------------------------------------

--
-- Structure de la table `relation_form_form`
--

CREATE TABLE `relation_form_form` (
  `predid` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `annee_predid` int(4) UNSIGNED NOT NULL,
  `succid` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `annee_succid` int(4) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `relation_maquette_budget_2019`
--

CREATE TABLE `relation_maquette_budget_2019` (
  `postid` int(11) UNSIGNED NOT NULL,
  `personid` int(11) UNSIGNED NOT NULL,
  `departementid` int(11) UNSIGNED NOT NULL,
  `budgetid` int(11) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `relation_mention_comp_dep`
--

CREATE TABLE `relation_mention_comp_dep` (
  `id` int(11) UNSIGNED NOT NULL,
  `mentionid` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `rattachementid` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `departementid` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `anneedebut` int(4) UNSIGNED NOT NULL,
  `anneefin` int(4) UNSIGNED DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Déchargement des données de la table `relation_mention_comp_dep`
--

INSERT INTO `relation_mention_comp_dep` (`id`, `mentionid`, `rattachementid`, `departementid`, `anneedebut`, `anneefin`) VALUES
(1, 9, 7, 0, 2019, NULL),
(2, 10, 7, 0, 2019, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `relation_mod_dept_2019`
--

CREATE TABLE `relation_mod_dept_2019` (
  `moduleid` int(11) UNSIGNED NOT NULL,
  `departementid` int(11) UNSIGNED NOT NULL,
  `nature` char(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `relation_mod_dept_2019`
--

INSERT INTO `relation_mod_dept_2019` (`moduleid`, `departementid`, `nature`) VALUES
(1, 7, 'P'),
(2, 7, 'P'),
(3, 7, 'P'),
(4, 7, 'P'),
(5, 7, 'P'),
(6, 7, 'P'),
(7, 7, 'P'),
(8, 7, 'P'),
(9, 7, 'P'),
(10, 7, 'P'),
(11, 7, 'P'),
(12, 7, 'P'),
(13, 7, 'P'),
(14, 7, 'P'),
(15, 7, 'P'),
(16, 7, 'P'),
(17, 7, 'P'),
(18, 7, 'P'),
(19, 7, 'P'),
(20, 7, 'P'),
(21, 7, 'P'),
(22, 7, 'P'),
(23, 7, 'P'),
(24, 7, 'P'),
(25, 7, 'P'),
(26, 7, 'P'),
(44, 10, 'P'),
(28, 7, 'P'),
(29, 7, 'P'),
(30, 7, 'P'),
(31, 7, 'P'),
(32, 7, 'P'),
(33, 7, 'P'),
(34, 7, 'P'),
(35, 7, 'P'),
(36, 7, 'P'),
(37, 7, 'P'),
(38, 7, 'P'),
(39, 7, 'P'),
(40, 7, 'P'),
(41, 7, 'P'),
(42, 7, 'P'),
(43, 7, 'P'),
(62, 10, 'P'),
(46, 10, 'P'),
(47, 10, 'P'),
(48, 10, 'P'),
(49, 10, 'P'),
(50, 10, 'P'),
(51, 10, 'P'),
(52, 10, 'P'),
(53, 10, 'P'),
(66, 10, 'P'),
(69, 10, 'P'),
(56, 10, 'P'),
(57, 10, 'P'),
(58, 10, 'P'),
(59, 10, 'P'),
(60, 10, 'P'),
(61, 10, 'P'),
(63, 10, 'P'),
(64, 10, 'P'),
(65, 10, 'P'),
(67, 10, 'P'),
(68, 10, 'P'),
(70, 10, 'P'),
(71, 10, 'P'),
(72, 10, 'P'),
(73, 10, 'P'),
(74, 10, 'P'),
(75, 10, 'P'),
(76, 10, 'P'),
(77, 10, 'P'),
(78, 10, 'P'),
(79, 10, 'P'),
(80, 10, 'P'),
(81, 10, 'P'),
(82, 10, 'P'),
(83, 10, 'P'),
(84, 10, 'P'),
(85, 10, 'P'),
(86, 10, 'P'),
(87, 10, 'P'),
(88, 10, 'P'),
(89, 10, 'P'),
(90, 10, 'P'),
(91, 10, 'P'),
(92, 10, 'P'),
(93, 10, 'P'),
(94, 10, 'P'),
(95, 10, 'P'),
(96, 10, 'P'),
(97, 10, 'P'),
(99, 10, 'P'),
(100, 10, 'P'),
(101, 10, 'P'),
(102, 10, 'P'),
(103, 10, 'P'),
(104, 10, 'P'),
(105, 10, 'P'),
(106, 10, 'P'),
(107, 10, 'P'),
(108, 10, 'P'),
(109, 10, 'P'),
(110, 10, 'P'),
(111, 10, 'P'),
(112, 10, 'P'),
(113, 10, 'P'),
(114, 10, 'P'),
(115, 10, 'P'),
(116, 10, 'P'),
(117, 10, 'P'),
(118, 10, 'P'),
(119, 10, 'P'),
(120, 10, 'P'),
(121, 10, 'P'),
(122, 10, 'P'),
(123, 10, 'P'),
(124, 10, 'P'),
(125, 10, 'P'),
(126, 10, 'P');

-- --------------------------------------------------------

--
-- Structure de la table `relation_mod_form_2019`
--

CREATE TABLE `relation_mod_form_2019` (
  `moduleid` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `formationid` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `niveau` int(3) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `relation_mod_form_2019`
--

INSERT INTO `relation_mod_form_2019` (`moduleid`, `formationid`, `niveau`) VALUES
(1, 2, 1),
(2, 2, 1),
(2, 3, 1),
(3, 3, 1),
(4, 2, 1),
(4, 3, 1),
(5, 2, 1),
(5, 3, 1),
(6, 3, 1),
(7, 3, 1),
(8, 3, 1),
(9, 3, 1),
(10, 3, 1),
(11, 2, 1),
(11, 3, 1),
(12, 2, 1),
(12, 3, 1),
(13, 2, 1),
(13, 3, 1),
(14, 2, 1),
(14, 3, 1),
(15, 2, 1),
(15, 3, 1),
(16, 2, 1),
(16, 3, 1),
(17, 2, 1),
(17, 3, 1),
(18, 2, 1),
(18, 3, 1),
(19, 2, 1),
(20, 2, 1),
(21, 2, 1),
(22, 2, 1),
(23, 2, 1),
(24, 2, 1),
(25, 2, 1),
(26, 2, 1),
(27, 2, 1),
(28, 2, 1),
(29, 2, 1),
(30, 2, 1),
(31, 2, 1),
(32, 2, 1),
(33, 2, 1),
(34, 2, 1),
(35, 2, 1),
(36, 2, 1),
(37, 2, 1),
(38, 2, 1),
(39, 2, 1),
(40, 2, 1),
(41, 2, 1),
(42, 2, 1),
(43, 2, 1),
(44, 5, 1),
(44, 6, 1),
(46, 5, 1),
(46, 6, 1),
(47, 5, 1),
(47, 6, 1),
(48, 5, 1),
(48, 6, 1),
(49, 5, 1),
(49, 6, 1),
(50, 5, 1),
(50, 6, 1),
(51, 5, 1),
(51, 6, 1),
(52, 5, 1),
(52, 6, 1),
(53, 5, 1),
(53, 6, 1),
(56, 5, 1),
(57, 5, 1),
(58, 5, 1),
(59, 5, 1),
(60, 5, 1),
(60, 6, 1),
(61, 5, 1),
(61, 6, 1),
(62, 5, 1),
(62, 6, 1),
(63, 5, 1),
(63, 6, 1),
(64, 5, 1),
(64, 6, 1),
(65, 5, 1),
(65, 6, 1),
(66, 5, 1),
(66, 6, 1),
(67, 5, 1),
(67, 6, 1),
(68, 5, 1),
(68, 6, 1),
(69, 7, 1),
(70, 7, 1),
(71, 7, 1),
(72, 7, 1),
(73, 7, 1),
(74, 7, 1),
(75, 7, 1),
(76, 8, 1),
(77, 8, 1),
(78, 8, 1),
(79, 8, 1),
(80, 9, 1),
(81, 9, 1),
(82, 9, 1),
(83, 9, 1),
(84, 9, 1),
(85, 9, 1),
(86, 9, 1),
(87, 9, 1),
(88, 9, 1),
(89, 9, 1),
(90, 9, 1),
(91, 9, 1),
(92, 9, 1),
(93, 9, 1),
(94, 9, 1),
(95, 9, 1),
(96, 9, 1),
(97, 9, 1),
(99, 9, 1),
(100, 9, 1),
(101, 9, 1),
(102, 9, 1),
(103, 9, 1),
(104, 9, 1),
(105, 9, 1),
(106, 9, 1),
(107, 9, 1),
(108, 9, 1),
(109, 9, 1),
(110, 9, 1),
(111, 9, 1),
(112, 9, 1),
(113, 9, 1),
(114, 9, 1),
(115, 9, 1),
(116, 9, 1),
(117, 9, 1),
(118, 9, 1),
(119, 9, 1),
(120, 9, 1),
(121, 9, 1),
(122, 9, 1),
(123, 9, 1),
(124, 9, 1),
(125, 9, 1),
(126, 9, 1);

-- --------------------------------------------------------

--
-- Structure de la table `relation_mod_mod`
--

CREATE TABLE `relation_mod_mod` (
  `predid` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `annee_predid` int(4) UNSIGNED NOT NULL,
  `succid` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `annee_succid` int(4) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `relation_sgceapogee_composantes_departements_2019`
--

CREATE TABLE `relation_sgceapogee_composantes_departements_2019` (
  `prKey` int(11) NOT NULL,
  `departementid` int(11) NOT NULL DEFAULT 0,
  `code_departement` char(3) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `code_composante` char(3) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `relation_sous_choix_module_2019`
--

CREATE TABLE `relation_sous_choix_module_2019` (
  `id_sous_choix` bigint(21) UNSIGNED NOT NULL,
  `id_module` int(11) NOT NULL,
  `apogee_nom` varchar(80) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `apogee_code` varchar(10) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `ordre_affichage` int(11) NOT NULL,
  `coefIP` decimal(10,5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `relation_sous_choix_module_2019`
--

INSERT INTO `relation_sous_choix_module_2019` (`id_sous_choix`, `id_module`, `apogee_nom`, `apogee_code`, `ordre_affichage`, `coefIP`) VALUES
(300, 37, '', '', 1, '100.00000'),
(299, 34, '', '', 1, '100.00000'),
(298, 33, '', '', 1, '100.00000'),
(297, 32, '', '', 1, '100.00000'),
(296, 18, '', '', 1, '100.00000'),
(295, 17, '', '', 1, '100.00000'),
(294, 16, '', '', 1, '100.00000'),
(293, 15, '', '', 1, '100.00000'),
(292, 29, '', '', 1, '100.00000'),
(291, 30, '', '', 1, '100.00000'),
(290, 31, '', '', 1, '100.00000'),
(289, 27, '', '', 1, '100.00000'),
(288, 28, '', '', 1, '100.00000'),
(287, 12, '', '', 1, '100.00000'),
(286, 21, '', '', 1, '100.00000'),
(285, 24, '', '', 1, '100.00000'),
(284, 23, '', '', 1, '100.00000'),
(283, 14, '', '', 1, '100.00000'),
(276, 1, '', '', 1, '100.00000'),
(277, 20, '', '', 1, '100.00000'),
(278, 22, '', '', 1, '100.00000'),
(279, 4, '', '', 1, '100.00000'),
(280, 5, '', '', 1, '100.00000'),
(281, 11, '', '', 1, '100.00000'),
(282, 13, '', '', 1, '100.00000'),
(275, 2, '', '', 1, '100.00000'),
(512, 59, '', '', 1, '100.00000'),
(511, 57, '', '', 1, '100.00000'),
(510, 56, '', '', 1, '100.00000'),
(529, 64, '', '', 1, '100.00000'),
(529, 65, '', '', 2, '0.00000'),
(528, 53, '', '', 1, '100.00000'),
(527, 62, '', '', 1, '100.00000'),
(527, 63, '', '', 2, '0.00000'),
(526, 50, '', '', 1, '100.00000'),
(525, 49, '', '', 1, '100.00000'),
(524, 48, '', '', 1, '100.00000'),
(523, 47, '', '', 1, '100.00000'),
(522, 46, '', '', 1, '100.00000'),
(520, 60, '', '', 1, '100.00000'),
(521, 61, '', '', 1, '100.00000'),
(519, 44, '', '', 1, '100.00000'),
(301, 38, '', '', 1, '100.00000'),
(302, 36, '', '', 1, '100.00000'),
(303, 39, '', '', 1, '100.00000'),
(304, 19, '', '', 1, '100.00000'),
(513, 58, '', '', 1, '100.00000'),
(530, 66, '', '', 1, '100.00000'),
(531, 67, '', '', 1, '100.00000'),
(532, 68, '', '', 1, '100.00000'),
(533, 51, '', '', 1, '100.00000'),
(534, 52, '', '', 1, '100.00000'),
(539, 77, '', '', 1, '100.00000'),
(538, 76, '', '', 1, '100.00000'),
(540, 78, '', '', 1, '100.00000'),
(609, 88, '', '', 5, '0.00000'),
(609, 89, '', '', 6, '0.00000'),
(609, 90, '', '', 7, '0.00000'),
(609, 91, '', '', 8, '0.00000'),
(610, 84, '', '', 1, '100.00000'),
(610, 85, '', '', 2, '0.00000'),
(610, 86, '', '', 3, '0.00000'),
(610, 87, '', '', 4, '0.00000'),
(610, 92, '', '', 5, '0.00000'),
(610, 94, '', '', 6, '0.00000'),
(610, 93, '', '', 7, '0.00000'),
(610, 95, '', '', 8, '0.00000'),
(611, 84, '', '', 1, '100.00000'),
(611, 85, '', '', 2, '0.00000'),
(611, 86, '', '', 3, '0.00000'),
(611, 87, '', '', 4, '0.00000'),
(611, 96, '', '', 5, '0.00000'),
(611, 97, '', '', 6, '0.00000'),
(611, 93, '', '', 7, '0.00000'),
(611, 95, '', '', 8, '0.00000'),
(612, 99, '', '', 1, '50.00000'),
(612, 100, '', '', 2, '50.00000'),
(613, 101, '', '', 1, '50.00000'),
(613, 102, '', '', 2, '50.00000'),
(614, 103, '', '', 1, '100.00000'),
(614, 104, '', '', 2, '0.00000'),
(614, 105, '', '', 3, '0.00000'),
(614, 106, '', '', 4, '0.00000'),
(614, 107, '', '', 5, '0.00000'),
(614, 108, '', '', 6, '0.00000'),
(614, 109, '', '', 7, '0.00000'),
(614, 110, '', '', 8, '0.00000'),
(615, 103, '', '', 1, '100.00000'),
(615, 104, '', '', 2, '0.00000'),
(615, 105, '', '', 3, '0.00000'),
(615, 106, '', '', 4, '0.00000'),
(615, 111, '', '', 5, '0.00000'),
(615, 112, '', '', 6, '0.00000'),
(615, 113, '', '', 7, '0.00000'),
(615, 114, '', '', 8, '0.00000'),
(616, 103, '', '', 1, '100.00000'),
(616, 104, '', '', 2, '0.00000'),
(616, 105, '', '', 3, '0.00000'),
(609, 87, '', '', 4, '0.00000'),
(609, 86, '', '', 3, '0.00000'),
(609, 85, '', '', 2, '0.00000'),
(609, 84, '', '', 1, '100.00000'),
(608, 83, '', '', 2, '50.00000'),
(608, 82, '', '', 1, '50.00000'),
(607, 81, '', '', 2, '50.00000'),
(607, 80, '', '', 1, '50.00000'),
(616, 106, '', '', 4, '0.00000'),
(616, 115, '', '', 5, '0.00000'),
(616, 116, '', '', 6, '0.00000'),
(616, 113, '', '', 7, '0.00000'),
(616, 114, '', '', 8, '0.00000');

-- --------------------------------------------------------

--
-- Structure de la table `repartition_ip_2019`
--

CREATE TABLE `repartition_ip_2019` (
  `id_choix` bigint(21) UNSIGNED NOT NULL,
  `id_sous_choix` bigint(21) UNSIGNED NOT NULL,
  `id_module` int(11) NOT NULL,
  `IP_accreditation` decimal(7,2) NOT NULL,
  `IP_equireparties` decimal(7,2) NOT NULL,
  `IP_aleatoires` decimal(7,2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `repartition_ip_2019`
--

INSERT INTO `repartition_ip_2019` (`id_choix`, `id_sous_choix`, `id_module`, `IP_accreditation`, `IP_equireparties`, `IP_aleatoires`) VALUES
(370, 616, 116, '0.00', '0.00', '0.00'),
(370, 616, 115, '0.00', '0.00', '0.00'),
(370, 616, 114, '0.00', '0.00', '0.00'),
(370, 616, 113, '0.00', '0.00', '0.00'),
(370, 616, 106, '0.00', '0.00', '0.00'),
(370, 616, 105, '0.00', '0.00', '0.00'),
(370, 616, 104, '0.00', '0.00', '0.00'),
(370, 616, 103, '0.00', '0.00', '0.00'),
(365, 611, 97, '0.00', '0.00', '0.00'),
(365, 611, 96, '0.00', '0.00', '0.00'),
(365, 611, 95, '0.00', '0.00', '0.00'),
(365, 611, 93, '0.00', '0.00', '0.00'),
(365, 611, 87, '0.00', '0.00', '0.00'),
(365, 611, 86, '0.00', '0.00', '0.00'),
(365, 611, 85, '0.00', '0.00', '0.00'),
(365, 611, 84, '0.00', '0.00', '0.00'),
(369, 615, 114, '0.00', '0.00', '0.00'),
(369, 615, 113, '0.00', '0.00', '0.00'),
(369, 615, 112, '0.00', '0.00', '0.00'),
(369, 615, 111, '0.00', '0.00', '0.00'),
(369, 615, 106, '0.00', '0.00', '0.00'),
(369, 615, 105, '0.00', '0.00', '0.00'),
(369, 615, 104, '0.00', '0.00', '0.00'),
(369, 615, 103, '0.00', '0.00', '0.00'),
(368, 614, 110, '0.00', '0.00', '0.00'),
(368, 614, 109, '0.00', '0.00', '0.00'),
(368, 614, 108, '0.00', '0.00', '0.00'),
(368, 614, 107, '0.00', '0.00', '0.00'),
(368, 614, 106, '0.00', '0.00', '0.00'),
(368, 614, 105, '0.00', '0.00', '0.00'),
(368, 614, 104, '0.00', '0.00', '0.00'),
(368, 614, 103, '0.00', '0.00', '0.00'),
(367, 613, 102, '0.00', '0.00', '0.00'),
(367, 613, 101, '0.00', '0.00', '0.00'),
(366, 612, 100, '0.00', '0.00', '0.00'),
(366, 612, 99, '0.00', '0.00', '0.00'),
(364, 610, 95, '0.00', '0.00', '0.00'),
(364, 610, 94, '0.00', '0.00', '0.00'),
(364, 610, 93, '0.00', '0.00', '0.00'),
(364, 610, 92, '0.00', '0.00', '0.00'),
(364, 610, 87, '0.00', '0.00', '0.00'),
(364, 610, 86, '0.00', '0.00', '0.00'),
(364, 610, 85, '0.00', '0.00', '0.00'),
(364, 610, 84, '0.00', '0.00', '0.00'),
(363, 609, 91, '0.00', '0.00', '0.00'),
(363, 609, 90, '0.00', '0.00', '0.00'),
(363, 609, 89, '0.00', '0.00', '0.00'),
(363, 609, 88, '0.00', '0.00', '0.00'),
(363, 609, 87, '0.00', '0.00', '0.00'),
(363, 609, 86, '0.00', '0.00', '0.00'),
(363, 609, 85, '0.00', '0.00', '0.00'),
(363, 609, 84, '0.00', '0.00', '0.00'),
(362, 608, 83, '0.00', '0.00', '0.00'),
(362, 608, 82, '0.00', '0.00', '0.00'),
(361, 607, 81, '0.00', '0.00', '0.00'),
(361, 607, 80, '0.00', '0.00', '0.00'),
(294, 540, 78, '50.00', '50.00', '0.00'),
(293, 539, 77, '50.00', '50.00', '0.00'),
(292, 538, 76, '50.00', '50.00', '0.00'),
(286, 532, 68, '200.00', '200.00', '0.00'),
(285, 531, 67, '200.00', '200.00', '0.00'),
(284, 530, 66, '200.00', '200.00', '0.00'),
(280, 527, 63, '0.00', '200.00', '0.00'),
(280, 527, 62, '400.00', '200.00', '0.00'),
(276, 519, 44, '200.00', '200.00', '0.00'),
(288, 534, 52, '200.00', '200.00', '0.00'),
(287, 533, 51, '200.00', '200.00', '0.00'),
(282, 529, 65, '0.00', '100.00', '0.00'),
(282, 529, 64, '200.00', '100.00', '0.00'),
(281, 528, 53, '200.00', '200.00', '0.00'),
(279, 526, 50, '50.00', '50.00', '0.00'),
(279, 525, 49, '50.00', '50.00', '0.00'),
(279, 524, 48, '50.00', '50.00', '0.00'),
(279, 523, 47, '50.00', '50.00', '0.00'),
(278, 522, 46, '200.00', '200.00', '0.00'),
(277, 521, 61, '200.00', '200.00', '0.00'),
(277, 520, 60, '200.00', '200.00', '0.00'),
(273, 532, 68, '400.00', '400.00', '0.00'),
(272, 531, 67, '400.00', '400.00', '0.00'),
(271, 530, 66, '400.00', '400.00', '0.00'),
(267, 527, 63, '0.00', '400.00', '0.00'),
(267, 527, 62, '800.00', '400.00', '0.00'),
(263, 519, 44, '400.00', '400.00', '0.00'),
(275, 534, 52, '400.00', '400.00', '0.00'),
(274, 533, 51, '400.00', '400.00', '0.00'),
(270, 513, 58, '100.00', '100.00', '0.00'),
(270, 512, 59, '100.00', '100.00', '0.00'),
(270, 511, 57, '100.00', '100.00', '0.00'),
(270, 510, 56, '100.00', '100.00', '0.00'),
(269, 529, 65, '0.00', '200.00', '0.00'),
(269, 529, 64, '400.00', '200.00', '0.00'),
(268, 528, 53, '400.00', '400.00', '0.00'),
(266, 526, 50, '100.00', '100.00', '0.00'),
(266, 525, 49, '100.00', '100.00', '0.00'),
(266, 524, 48, '100.00', '100.00', '0.00'),
(266, 523, 47, '100.00', '100.00', '0.00'),
(265, 522, 46, '400.00', '400.00', '0.00'),
(264, 521, 61, '400.00', '400.00', '0.00'),
(264, 520, 60, '400.00', '400.00', '0.00'),
(138, 304, 19, '19.20', '20.00', '0.00'),
(138, 303, 39, '19.20', '20.00', '0.00'),
(138, 302, 36, '19.20', '20.00', '0.00'),
(138, 301, 38, '19.20', '20.00', '0.00'),
(138, 300, 37, '19.20', '20.00', '0.00'),
(138, 299, 34, '19.20', '20.00', '0.00'),
(138, 298, 33, '19.20', '20.00', '0.00'),
(138, 297, 32, '19.20', '20.00', '0.00'),
(136, 289, 27, '3.20', '3.20', '0.00'),
(135, 288, 28, '3.20', '3.20', '0.00'),
(132, 277, 20, '80.00', '80.00', '0.00'),
(138, 296, 18, '19.20', '20.00', '0.00'),
(138, 295, 17, '19.20', '20.00', '0.00'),
(138, 294, 16, '19.20', '20.00', '0.00'),
(138, 293, 15, '28.80', '20.00', '0.00'),
(137, 290, 31, '80.00', '80.00', '0.00'),
(137, 291, 30, '80.00', '80.00', '0.00'),
(137, 292, 29, '80.00', '80.00', '0.00'),
(134, 287, 12, '8.80', '8.89', '0.00'),
(134, 286, 21, '8.80', '8.89', '0.00'),
(134, 285, 24, '8.80', '8.89', '0.00'),
(134, 284, 23, '8.80', '8.89', '0.00'),
(134, 283, 14, '8.80', '8.89', '0.00'),
(134, 282, 13, '8.80', '8.89', '0.00'),
(134, 281, 11, '8.80', '8.89', '0.00'),
(134, 280, 5, '8.80', '8.89', '0.00'),
(134, 279, 4, '9.60', '8.89', '0.00'),
(133, 278, 22, '80.00', '80.00', '0.00'),
(131, 276, 1, '80.00', '80.00', '0.00'),
(130, 275, 2, '80.00', '80.00', '0.00'),
(63, 275, 2, '120.00', '120.00', '0.00');

-- --------------------------------------------------------

--
-- Structure de la table `responsable_form_2019`
--

CREATE TABLE `responsable_form_2019` (
  `personid` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `formationid` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `commentaire` varchar(140) COLLATE latin1_general_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Déchargement des données de la table `responsable_form_2019`
--

INSERT INTO `responsable_form_2019` (`personid`, `formationid`, `commentaire`) VALUES
(4065, 2, ''),
(1094, 3, '');

-- --------------------------------------------------------

--
-- Structure de la table `responsable_mention_2019`
--

CREATE TABLE `responsable_mention_2019` (
  `personid` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `mentionid` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `commentaire` varchar(140) COLLATE latin1_general_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `responsable_mod_2019`
--

CREATE TABLE `responsable_mod_2019` (
  `personid` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `moduleid` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `commentaire` varchar(140) COLLATE latin1_general_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Déchargement des données de la table `responsable_mod_2019`
--

INSERT INTO `responsable_mod_2019` (`personid`, `moduleid`, `commentaire`) VALUES
(1702, 19, ''),
(4065, 23, '');

-- --------------------------------------------------------

--
-- Structure de la table `somme_ects_prescrite_2019`
--

CREATE TABLE `somme_ects_prescrite_2019` (
  `id` int(11) UNSIGNED NOT NULL,
  `codeapogee` char(10) NOT NULL,
  `ects` decimal(7,2) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `sous_choix_2019`
--

CREATE TABLE `sous_choix_2019` (
  `id` bigint(21) UNSIGNED NOT NULL,
  `id_ue` int(11) NOT NULL,
  `nb_modules` int(11) NOT NULL,
  `total_modules` int(11) NOT NULL,
  `nom` varchar(80) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `code_apogee` varchar(10) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `ordre_affichage` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `sous_choix_2019`
--

INSERT INTO `sous_choix_2019` (`id`, `id_ue`, `nb_modules`, `total_modules`, `nom`, `code_apogee`, `ordre_affichage`) VALUES
(300, 25, 1, 1, '', NULL, 1),
(299, 24, 1, 1, '', NULL, 1),
(298, 23, 1, 1, '', NULL, 1),
(297, 22, 1, 1, '', NULL, 1),
(296, 18, 1, 1, '', NULL, 1),
(295, 17, 1, 1, '', NULL, 1),
(294, 16, 1, 1, '', NULL, 1),
(293, 15, 1, 1, '', NULL, 1),
(292, 14, 1, 1, '', NULL, 3),
(291, 14, 1, 1, '', NULL, 2),
(290, 14, 1, 1, '', NULL, 1),
(289, 21, 1, 1, '', NULL, 1),
(288, 20, 1, 1, '', NULL, 1),
(287, 13, 1, 1, '', NULL, 1),
(286, 12, 1, 1, '', NULL, 1),
(285, 11, 1, 1, '', NULL, 1),
(284, 10, 1, 1, '', NULL, 1),
(283, 9, 1, 1, '', NULL, 1),
(276, 2, 1, 1, '', NULL, 1),
(277, 19, 1, 1, '', NULL, 1),
(278, 4, 1, 1, '', NULL, 1),
(279, 5, 1, 1, '', NULL, 1),
(280, 6, 1, 1, '', NULL, 1),
(281, 7, 1, 1, '', NULL, 1),
(282, 8, 1, 1, '', NULL, 1),
(275, 1, 1, 1, '', NULL, 1),
(531, 49, 1, 1, '', NULL, 1),
(530, 48, 1, 1, '', NULL, 1),
(513, 43, 1, 1, '', NULL, 1),
(512, 42, 1, 1, '', NULL, 1),
(511, 41, 1, 1, '', NULL, 1),
(510, 40, 1, 1, '', NULL, 1),
(529, 38, 1, 2, '', NULL, 1),
(528, 37, 1, 1, '', NULL, 1),
(527, 47, 2, 2, '', NULL, 1),
(526, 36, 1, 1, '', NULL, 1),
(525, 35, 1, 1, '', NULL, 1),
(524, 34, 1, 1, '', NULL, 1),
(523, 33, 1, 1, '', NULL, 1),
(522, 32, 1, 1, '', NULL, 1),
(520, 31, 1, 1, '', NULL, 1),
(521, 31, 1, 1, '', NULL, 2),
(519, 46, 1, 1, '', NULL, 1),
(301, 26, 1, 1, '', NULL, 1),
(302, 27, 1, 1, '', NULL, 1),
(303, 28, 1, 1, '', NULL, 1),
(304, 29, 1, 1, '', NULL, 1),
(534, 45, 1, 1, '', NULL, 1),
(533, 44, 1, 1, '', NULL, 1),
(532, 50, 1, 1, '', NULL, 1),
(539, 52, 1, 1, '', NULL, 1),
(538, 51, 1, 1, '', NULL, 1),
(540, 53, 1, 1, '', NULL, 1),
(616, 65, 1, 8, '', NULL, 1),
(615, 63, 2, 8, '', NULL, 1),
(614, 62, 2, 8, '', NULL, 1),
(613, 61, 2, 2, '', NULL, 1),
(612, 60, 2, 2, '', NULL, 1),
(611, 64, 2, 8, '', NULL, 1),
(610, 58, 2, 8, '', NULL, 1),
(608, 56, 2, 2, '', NULL, 1),
(609, 57, 2, 8, '', NULL, 1),
(607, 55, 2, 2, '', NULL, 1);

-- --------------------------------------------------------

--
-- Structure de la table `table_temporaire`
--

CREATE TABLE `table_temporaire` (
  `nom` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `sid` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_cs NOT NULL,
  `url` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_cs NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `telechargement_2019`
--

CREATE TABLE `telechargement_2019` (
  `id` int(11) UNSIGNED NOT NULL,
  `composanteid` int(11) UNSIGNED NOT NULL,
  `groupe` varchar(255) NOT NULL DEFAULT 'VACU',
  `label` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `chemin` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_cs NOT NULL,
  `suffixe` char(2) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT 'CA',
  `fichier` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_cs NOT NULL,
  `titre` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_cs NOT NULL,
  `no_ligne` tinyint(3) UNSIGNED NOT NULL,
  `no_colonne` tinyint(3) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `thematiques`
--

CREATE TABLE `thematiques` (
  `id` tinyint(3) UNSIGNED NOT NULL,
  `nom` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `anneedebut` int(4) DEFAULT NULL,
  `anneefin` int(4) DEFAULT NULL,
  `departementid` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `typecours`
--

CREATE TABLE `typecours` (
  `id` tinyint(3) UNSIGNED NOT NULL,
  `intitule` varchar(255) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `coefprixpardefaut` decimal(7,5) NOT NULL DEFAULT 1.00000,
  `bacplus` varchar(15) COLLATE latin1_general_ci NOT NULL,
  `ordreaffichage` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `isPresentiel` char(1) COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `isTP` char(1) COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `isREF` char(1) COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `soumis_IPmin` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `CM_apogee` char(1) COLLATE latin1_general_ci NOT NULL,
  `TD_apogee` char(1) COLLATE latin1_general_ci NOT NULL,
  `TP_apogee` char(1) COLLATE latin1_general_ci NOT NULL,
  `types_apogee` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `autres_ens` char(1) COLLATE latin1_general_ci NOT NULL DEFAULT 'O',
  `hspe` char(1) COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `rubriqueid` int(11) NOT NULL,
  `sous_rubriqueid` int(11) NOT NULL,
  `anneedebut` int(4) DEFAULT NULL,
  `anneefin` int(4) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Déchargement des données de la table `typecours`
--

INSERT INTO `typecours` (`id`, `intitule`, `coefprixpardefaut`, `bacplus`, `ordreaffichage`, `isPresentiel`, `isTP`, `isREF`, `soumis_IPmin`, `CM_apogee`, `TD_apogee`, `TP_apogee`, `types_apogee`, `autres_ens`, `hspe`, `rubriqueid`, `sous_rubriqueid`, `anneedebut`, `anneefin`) VALUES
(1, 'CM', '1.50000', '1,2,3,4,5', 1, 'O', 'N', 'N', 0, '', '', '', '', 'O', 'N', 0, 0, 0, NULL),
(2, 'TD', '1.00000', '1,2,3,4,5', 2, 'O', 'N', 'N', 0, '', '', '', '', 'O', 'N', 0, 0, 0, NULL),
(3, 'TP', '1.00000', '1,2,3,4,5', 3, 'O', 'O', 'N', 0, '', '', '', '', 'O', 'N', 0, 0, 0, NULL),
(4, 'Projet', '1.00000', '1,2,3,4,5', 4, 'N', 'N', 'N', 0, '', '', '', '', 'O', 'N', 0, 0, 0, NULL),
(5, 'Stage', '1.00000', '1,2,3,4,5', 5, 'N', 'N', 'N', 0, '', '', '', '', 'O', 'N', 0, 0, 0, NULL),
(6, 'TDM', '1.00000', '1,2,3,4,5', 3, 'O', 'N', 'N', 0, 'N', 'N', 'N', '', 'O', 'N', 0, 0, 2019, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `typeformation`
--

CREATE TABLE `typeformation` (
  `id` int(11) NOT NULL,
  `intitule` tinytext CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `acronyme` varchar(10) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `norme_presentiel_etudiant` smallint(1) UNSIGNED NOT NULL,
  `anneedebut` int(4) UNSIGNED NOT NULL DEFAULT 0,
  `anneefin` int(4) UNSIGNED DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `typeformation`
--

INSERT INTO `typeformation` (`id`, `intitule`, `acronyme`, `norme_presentiel_etudiant`, `anneedebut`, `anneefin`) VALUES
(1, 'Licence premiére année', 'L1', 500, 0, NULL),
(2, 'Licence deuxièmes année', 'L2', 500, 0, NULL),
(3, 'Licence troisième année', 'L3', 500, 0, NULL),
(4, 'Licence professionnelle', 'L3 pro', 500, 0, NULL),
(5, 'Master première année', 'M1', 500, 0, NULL),
(6, 'Master deuxième année', 'M2', 500, 0, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `type_ip_accreditation_2019`
--

CREATE TABLE `type_ip_accreditation_2019` (
  `id` int(11) UNSIGNED NOT NULL,
  `libelle` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `nature` char(1) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `typeIPid_maitre` int(10) UNSIGNED NOT NULL,
  `coef` decimal(5,2) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `type_ip_accreditation_2019`
--

INSERT INTO `type_ip_accreditation_2019` (`id`, `libelle`, `nature`, `typeIPid_maitre`, `coef`) VALUES
(1, 'IP annee reference', 'M', 0, '1.00');

-- --------------------------------------------------------

--
-- Structure de la table `ue_2019`
--

CREATE TABLE `ue_2019` (
  `id` bigint(21) UNSIGNED NOT NULL,
  `nom` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `code_apogee` varchar(10) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `ects` decimal(3,1) NOT NULL,
  `presentiel` decimal(7,2) NOT NULL,
  `cnu` char(4) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `semestre` int(1) UNSIGNED NOT NULL,
  `accreditation_departementid` int(11) NOT NULL DEFAULT 0,
  `accreditation_composanteid` int(11) NOT NULL DEFAULT 0,
  `accreditation_formation_maitresseid` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `ue_2019`
--

INSERT INTO `ue_2019` (`id`, `nom`, `code_apogee`, `ects`, `presentiel`, `cnu`, `semestre`, `accreditation_departementid`, `accreditation_composanteid`, `accreditation_formation_maitresseid`) VALUES
(6, 'Electromagnetisme', 'MLJ5U8C', '6.0', '42.00', '26', 1, 7, 0, 2),
(7, 'Topologie - calcul diff', 'MLK5U1O', '6.0', '60.00', '26', 1, 7, 0, 2),
(8, 'Espace euclidien', 'MLK5U5O', '6.0', '42.00', '26', 1, 7, 0, 2),
(9, 'Economie de l\'incertain', 'MLK5U71O', '6.0', '42.00', '26', 1, 7, 0, 2),
(10, 'Programmation Unix', 'MLL5UAC', '6.0', '42.00', '27', 1, 7, 0, 2),
(11, 'Bases de données avancées', 'MLL5UBC', '6.0', '42.00', '27', 1, 7, 0, 2),
(12, 'Mathématiques pour l\'info', 'MLL5U4O', '6.0', '42.00', '27', 1, 7, 0, 2),
(13, 'Probabilités 5', 'MLK5U3O', '6.0', '42.00', '26', 1, 7, 0, 2),
(20, 'Theorie des graphes', 'MLL5UZF', '6.0', '42.00', '27', 1, 7, 0, 2),
(21, 'Entreprenariat 2', 'MLL5UYF', '6.0', '42.00', '27', 1, 7, 0, 2),
(14, 'Projet tutoré, Anglais et communication', 'MLL5U6O', '12.0', '42.00', '27', 2, 7, 0, 2),
(15, 'Espaces Hilbert, analyse', 'MLK6U1O', '6.0', '60.00', '26', 2, 7, 0, 2),
(16, 'Transformées de Fourier', 'MLK6U3O', '6.0', '60.00', '26', 2, 7, 0, 2),
(17, 'Economie internationale', 'MLK6U71C', '6.0', '42.00', '5', 2, 7, 0, 2),
(18, 'Economie publique', 'MLK6U72C', '6.0', '42.00', '5', 2, 7, 0, 2),
(22, 'Stage', 'MLL6U2O', '6.0', '0.00', '27', 2, 7, 0, 2),
(23, 'Intelligence artificielle', 'MLL6U3C', '6.0', '42.00', '27', 2, 7, 0, 2),
(24, 'Traitement numérique', 'MLL6U4C', '6.0', '42.00', '27', 2, 7, 0, 2),
(25, 'Image', 'MLL6UBC', '6.0', '42.00', '27', 2, 7, 0, 2),
(26, 'Réseaux avancés', 'MLL6UCC', '6.0', '42.00', '27', 2, 7, 0, 2),
(27, 'Parole', 'MLL6UAC', '6.0', '42.00', '27', 2, 7, 0, 2),
(28, 'Syst. numerique de com', 'MLL6UDC', '6.0', '42.00', '27', 2, 7, 0, 2),
(29, 'Bio-Info', 'MLJ6UHC', '6.0', '42.00', '27', 2, 7, 0, 2),
(31, 'Informatique 1', 'MLJ1U2O', '12.0', '78.00', '27', 1, 10, 10, 5),
(1, 'Programmation orientée objet avancée', 'MLL5U2O', '6.0', '54.00', '27', 1, 7, 0, 2),
(2, 'Génie Logiciel', 'MLL5U1O', '6.0', '54.00', '27', 1, 7, 0, 2),
(19, 'Algorithmique avancée', 'MLL5U3O', '6.0', '42.00', '27', 1, 7, 0, 2),
(5, 'Biologie P', 'MLJ5U6CP', '6.0', '21.00', '65', 1, 7, 0, 2),
(4, 'Réseaux', 'MLL5U5O', '6.0', '42.00', '27', 1, 7, 0, 2),
(46, 'Mathématiques et calcul 1', 'MLJ1U1O', '12.0', '108.00', '26', 1, 10, 10, 5),
(32, 'Méthodologie 1', 'MLJ1U4O', '3.0', '12.00', '1', 1, 10, 10, 5),
(33, 'Biologie 1', 'MLJ1U6C', '3.0', '42.00', '1', 1, 10, 10, 5),
(34, 'Economie 1', 'MLJ1U7C', '3.0', '42.00', '1', 1, 10, 10, 5),
(35, 'Physique 1', 'MLJ1U8C', '3.0', '42.00', '1', 1, 10, 10, 5),
(36, 'Sociologie 1', 'MLJ1U9C', '3.0', '42.00', '1', 1, 10, 10, 5),
(47, 'Excellence 1', 'MLJ1BF1', '0.0', '84.00', '27', 1, 10, 10, 5),
(37, 'Mathématiques et Calcul 2', 'MLJ2U1O', '9.0', '96.00', '1', 2, 10, 10, 5),
(38, 'Informatique 2', 'MLJ2U2O', '12.0', '54.00', '1', 2, 10, 10, 5),
(40, 'Biologie 2', 'MLJ2U6C', '3.0', '42.00', '1', 2, 10, 10, 5),
(41, 'Economie 2', 'MLJ2U7C', '3.0', '42.00', '1', 2, 10, 10, 5),
(42, 'Sociologie 2', 'MLJ2U9C', '3.0', '42.00', '1', 2, 10, 10, 5),
(43, 'Physique 2', 'MLJ2U8C', '3.0', '42.00', '1', 2, 10, 10, 5),
(48, 'Anglais 1', 'LMI1_241', '3.0', '24.00', '1', 2, 10, 10, 5),
(49, 'Préparation C2i - Domaines 1 2', 'LMI1_2421', '1.5', '24.00', '27', 2, 10, 10, 5),
(50, 'Préparation C2i - Domaines 3 4 5', 'LMI1_2422', '1.5', '24.00', '27', 2, 10, 10, 5),
(44, 'Pré-rentrée Mathématiques', 'MLJ0M1F', '0.0', '6.00', '1', 0, 10, 10, 5),
(45, 'Pré-rentrée : ENT', 'MLJ0M2F', '0.0', '6.00', '1', 0, 10, 10, 5),
(52, 'Connaissances générales AnglaiS', 'BMAAU020', '3.0', '24.00', '1', 1, 10, 10, 8),
(51, 'Connaissances générales Droit', 'BMAAU010', '3.0', '24.00', '1', 1, 10, 10, 8),
(53, 'Méthodologies de base en Ergonomie', 'BMAAU030', '6.0', '48.00', '16', 1, 10, 10, 8),
(65, 'A3: athlétisme, gymnastique, tennis de table, football', 'STA2U050', '9.0', '20.00', '74', 2, 10, 10, 9),
(63, 'A2: athlétisme, gymnastique; badminton, football', 'STA2U040', '9.0', '40.00', '74', 2, 10, 10, 9),
(62, 'A1: Athlétisme, gymnastique, tennis, rugby', 'STA2U030', '9.0', '40.00', '74', 2, 10, 10, 9),
(61, 'Approches de la motricité en sciences humaines et sociales  (2)', 'STA2U020', '9.0', '0.00', '74', 2, 10, 10, 9),
(60, 'Approches de la motricité en sciences de la vie (2)', 'STA2U010', '6.0', '0.00', '74', 2, 10, 10, 9),
(64, 'A3: athlétisme, gymnastique, tennis de table, football', 'STA1U050', '6.0', '40.00', '74', 1, 10, 10, 9),
(58, 'A2: athlétisme, gymnastique; badminton, football', 'STA1U040', '6.0', '40.00', '74', 1, 10, 10, 9),
(57, 'A1: Athlétisme, gymnastique, tennis, rugby', 'STA1U030', '6.0', '40.00', '74', 1, 10, 10, 9),
(56, 'Approches de la motricité en sciences humaines et sociales  (1)', 'STA1U020', '9.0', '0.00', '74', 1, 10, 10, 9),
(55, 'Approches de la motricité en sciences de la vie (1)', 'STA1U010', '9.0', '0.00', '74', 1, 10, 10, 9);

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id_users` int(30) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id_users`, `username`, `email`, `password`) VALUES
(1, 'dorline', 'dorline@hotmail.fr', 'dodo'),
(2, 'nila', 'nila@live.fr', 'nvfsg765'),
(3, 'ii08630', 'axsana@live.fr', '90ba64c306650baf93b7ba15503bc7e0'),
(5, 'ii08630', 'axsana@live.fr', '721c6ff80a6d3e4ad4ffa52a04c60085'),
(6, 'kala', 'kala@gmail.com', '721c6ff80a6d3e4ad4ffa52a04c60085'),
(4, 'kala', 'kala@live.fr', 'france'),
(7, 'akchu', 'kala@live.fr', 'france'),
(8, 'saaha', 'kala@live.fr', 'france'),
(9, 'saaha', 'kala@live.fr', 'france'),
(10, 'hoiuyoyu', 'bouredjiouasofiane@gmail.com', 'azert'),
(11, 'Test', 'bouredjiouasofiane@gmail.com', 'abcd'),
(12, 'sofiane', 'bouredjiouasofiane@gmail.com', 'abcd'),
(13, 'sofiane', 'bouredjiouasofiane@gmail.com', 'abcd'),
(14, 'Sofiane', 'bouredjiouasofiane@gmail.com', 'abcd'),
(15, 'Sofiane', 'bouredjiouasofiane@gmail.com', 'abcd'),
(16, 'Sofiane', 'bouredjiouasofiane@gmail.com', 'abcd'),
(17, 'Sofiane', 'bouredjiouasofiane@gmail.com', 'abcd'),
(18, 'Sofiane', 'bouredjiouasofiane@gmail.com', 'abcd'),
(19, 'Sofiane', 'bouredjiouasofiane@gmail.com', 'abcd'),
(20, 'Sofiane', 'bouredjiouasofiane@gmail.com', 'abcd'),
(21, 'Sofiane', 'bouredjiouasofiane@gmail.com', 'abcd'),
(22, 'dhkjgd', 'bd@gmail.com', 'abcd'),
(23, 'Sofiane', 'bouredjiouasofiane@gmail.com', 'abcd'),
(24, 'Sofiane', 'bouredjiouasofiane@gmail.com', 'abcd'),
(25, 'Sofiane', 'bouredjiouasofiane@gmail.com', 'abcd'),
(26, 'ii12583', 'bouredjiouasofiane@gmail.com', 'abcd'),
(27, 'Sofiane', 'bouredjiouasofiane@gmail.com', 'abcd'),
(28, 'Sofiane', 'bouredjiouasofiane@gmail.com', 'abcd'),
(29, 'Sofiane', 'bouredjiouasofiane@gmail.com', 'abcd'),
(30, 'Sofiane', 'bouredjiouasofiane@gmail.com', 'abcd'),
(31, 'ii12583', 'bouredjiouasofiane@gmail.com', 'abcd'),
(32, 'faridm', 'far.mezhoud@gmail.com', 'Farid0603'),
(33, 'faridm', 'far.mezhoud@gmail.com', 'Farid0603'),
(34, 'faridm', 'far.mezhoud@gmail.com', 'Farid0603'),
(35, 'far.mezhoud@gmail.com', 'far.mezhoud@gmail.com', 'Farid0603'),
(36, 'faridm', 'far.mezhoud@gmail.com', 'Farid0603'),
(37, 'faridm', 'far.mezhoud@gmail.com', 'Farid0603'),
(38, 'faridm', 'far.mezhoud@gmail.com', 'Farid0603'),
(39, 'faridm', 'far.mezhoud@gmail.com', 'Farid0603'),
(40, 'faridm', 'far.mezhoud@gmail.com', 'Farid0603'),
(41, 'faridm', 'far.mezhoud@gmail.com', 'Farid0603'),
(42, 'faridm', 'far.mezhoud@gmail.com', 'Farid0603'),
(43, 'faridm', 'far.mezhoud@gmail.com', 'Farid0603');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `historical_data`
--
ALTER TABLE `historical_data`
  ADD PRIMARY KEY (`sql_id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_users`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id_users` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
