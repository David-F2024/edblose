-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : jeu. 29 jan. 2026 à 14:34
-- Version du serveur : 10.4.32-MariaDB
-- Version de PHP : 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `edblose`
--
CREATE DATABASE IF NOT EXISTS `edblose` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `edblose`;

-- --------------------------------------------------------

--
-- Structure de la table `t_anne_scol`
--

CREATE TABLE `t_anne_scol` (
  `ID` int(11) NOT NULL,
  `CD_AN_SCOL` varchar(14) DEFAULT NULL,
  `DT_DB_RNTR` date DEFAULT NULL,
  `DT_FIN_PRBB` date DEFAULT NULL,
  `DT_FIN_REEL` date DEFAULT NULL,
  `NBR_PRD` int(11) DEFAULT NULL,
  `IDT_CFG_PRD` int(11) DEFAULT NULL,
  `TP_ANNE_SCOL` int(11) DEFAULT NULL,
  `OPT_NUM_FAML` int(11) DEFAULT NULL,
  `OPT_NUM_ENC` int(11) DEFAULT NULL,
  `OPT_NUM_DEC` int(11) DEFAULT NULL,
  `OPT_NUM_ETUD_ANNEE` int(11) DEFAULT NULL,
  `OPT_NUM_PRSNL_ANNEE` int(11) DEFAULT NULL,
  `topWkf` int(11) DEFAULT 0,
  `L_MTIF_ANN` varchar(200) DEFAULT NULL,
  `V_SUP` int(11) DEFAULT 0,
  `DT_TC_CRT` datetime DEFAULT NULL,
  `DT_TC_UPDT` datetime DEFAULT NULL,
  `USER_TC_CRT` varchar(100) DEFAULT NULL,
  `USER_TC_UPDT` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Déchargement des données de la table `t_anne_scol`
--

INSERT INTO `t_anne_scol` (`ID`, `CD_AN_SCOL`, `DT_DB_RNTR`, `DT_FIN_PRBB`, `DT_FIN_REEL`, `NBR_PRD`, `IDT_CFG_PRD`, `TP_ANNE_SCOL`, `OPT_NUM_FAML`, `OPT_NUM_ENC`, `OPT_NUM_DEC`, `OPT_NUM_ETUD_ANNEE`, `OPT_NUM_PRSNL_ANNEE`, `topWkf`, `L_MTIF_ANN`, `V_SUP`, `DT_TC_CRT`, `DT_TC_UPDT`, `USER_TC_CRT`, `USER_TC_UPDT`) VALUES
(1, '2023-2024', '2024-03-03', '2024-06-30', '2024-06-30', 3, 1, 0, 2, 0, 0, 2, 0, 0, NULL, 0, '2024-03-03 09:57:44', '2024-03-10 21:53:07', 'Olivier Fernand BAKOU', 'Olivier Fernand BAKOU');

-- --------------------------------------------------------

--
-- Structure de la table `t_cfg_prd`
--

CREATE TABLE `t_cfg_prd` (
  `ID` int(11) NOT NULL,
  `LIB_CFG_PRD` varchar(20) DEFAULT NULL,
  `NBR_CFG_PRD` int(11) DEFAULT NULL,
  `topWkf` int(11) DEFAULT 0,
  `L_MTIF_ANN` varchar(200) DEFAULT NULL,
  `V_SUP` int(11) DEFAULT 0,
  `DT_TC_CRT` datetime DEFAULT NULL,
  `DT_TC_UPDT` datetime DEFAULT NULL,
  `USER_TC_CRT` varchar(100) DEFAULT NULL,
  `USER_TC_UPDT` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Déchargement des données de la table `t_cfg_prd`
--

INSERT INTO `t_cfg_prd` (`ID`, `LIB_CFG_PRD`, `NBR_CFG_PRD`, `topWkf`, `L_MTIF_ANN`, `V_SUP`, `DT_TC_CRT`, `DT_TC_UPDT`, `USER_TC_CRT`, `USER_TC_UPDT`) VALUES
(1, 'Trimestre', 3, 0, NULL, 0, '2024-03-03 09:56:51', '2024-03-03 09:56:51', 'Olivier Fernand BAKOU', 'Olivier Fernand BAKOU'),
(2, 'Semestre', 2, 0, NULL, 0, '2024-03-03 09:57:03', '2024-03-03 09:57:03', 'Olivier Fernand BAKOU', 'Olivier Fernand BAKOU');

-- --------------------------------------------------------

--
-- Structure de la table `t_cycl`
--

CREATE TABLE `t_cycl` (
  `ID` int(11) NOT NULL,
  `CD_CYCL` varchar(50) DEFAULT NULL,
  `DURE` int(11) DEFAULT NULL,
  `topWkf` int(11) DEFAULT 0,
  `L_MTIF_ANN` varchar(200) DEFAULT NULL,
  `V_SUP` int(11) DEFAULT 0,
  `DT_TC_CRT` datetime DEFAULT NULL,
  `DT_TC_UPDT` datetime DEFAULT NULL,
  `USER_TC_CRT` varchar(100) DEFAULT NULL,
  `USER_TC_UPDT` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Déchargement des données de la table `t_cycl`
--

INSERT INTO `t_cycl` (`ID`, `CD_CYCL`, `DURE`, `topWkf`, `L_MTIF_ANN`, `V_SUP`, `DT_TC_CRT`, `DT_TC_UPDT`, `USER_TC_CRT`, `USER_TC_UPDT`) VALUES
(1, 'A', 3, 0, NULL, 0, '2024-03-03 10:45:37', '2024-03-03 10:45:37', 'Olivier Fernand BAKOU', 'Olivier Fernand BAKOU'),
(2, 'C', 3, 0, NULL, 0, '2024-03-03 10:45:49', '2024-03-03 10:45:49', 'Olivier Fernand BAKOU', 'Olivier Fernand BAKOU'),
(3, 'D', 3, 0, NULL, 0, '2024-03-03 10:45:56', '2024-03-03 10:45:56', 'Olivier Fernand BAKOU', 'Olivier Fernand BAKOU'),
(4, 'E', 3, 0, NULL, 0, '2024-03-03 10:46:03', '2024-03-03 10:46:03', 'Olivier Fernand BAKOU', 'Olivier Fernand BAKOU'),
(5, 'F', 3, 0, NULL, 0, '2024-03-03 10:46:10', '2024-03-03 10:46:10', 'Olivier Fernand BAKOU', 'Olivier Fernand BAKOU'),
(6, 'G1', 3, 0, NULL, 0, '2024-03-03 10:46:25', '2024-03-03 10:46:25', 'Olivier Fernand BAKOU', 'Olivier Fernand BAKOU'),
(7, 'G2', 3, 0, NULL, 0, '2024-03-03 10:46:33', '2024-03-03 10:46:33', 'Olivier Fernand BAKOU', 'Olivier Fernand BAKOU'),
(8, 'G3', 3, 0, NULL, 0, '2024-03-03 10:46:40', '2024-03-03 10:46:40', 'Olivier Fernand BAKOU', 'Olivier Fernand BAKOU');

-- --------------------------------------------------------

--
-- Structure de la table `t_faml`
--

CREATE TABLE `t_faml` (
  `ID` int(11) NOT NULL,
  `COD_FAML` varchar(10) NOT NULL,
  `NM_FAML` varchar(50) DEFAULT NULL,
  `NM_PERE` varchar(50) DEFAULT NULL,
  `PRNM_PERE` varchar(50) DEFAULT NULL,
  `PRFS_PERE` varchar(50) DEFAULT NULL,
  `LIEU_TRVL_PERE` varchar(50) DEFAULT NULL,
  `NM_MERE` varchar(50) DEFAULT NULL,
  `PRNM_MERE` varchar(50) DEFAULT NULL,
  `PRFS_MERE` varchar(50) DEFAULT NULL,
  `LIEU_TRVL_MERE` varchar(50) DEFAULT NULL,
  `ADRS_FAML` varchar(100) DEFAULT NULL,
  `TEL_FAML1` varchar(50) DEFAULT NULL,
  `TEL_FAML2` varchar(50) DEFAULT NULL,
  `WHP1` varchar(50) DEFAULT NULL,
  `WHP2` varchar(50) DEFAULT NULL,
  `MAIL_FAML` varchar(50) DEFAULT NULL,
  `ACTF_FAML` int(11) DEFAULT NULL,
  `topWkf` int(11) DEFAULT 0,
  `V_SUP` int(11) DEFAULT 0,
  `L_MTIF_ANN` varchar(200) DEFAULT NULL,
  `DT_TC_CRT` datetime DEFAULT NULL,
  `DT_TC_UPDT` datetime DEFAULT NULL,
  `USER_TC_CRT` varchar(100) DEFAULT NULL,
  `USER_TC_UPDT` varchar(100) DEFAULT NULL,
  `vNbrePiece` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Déchargement des données de la table `t_faml`
--

INSERT INTO `t_faml` (`ID`, `COD_FAML`, `NM_FAML`, `NM_PERE`, `PRNM_PERE`, `PRFS_PERE`, `LIEU_TRVL_PERE`, `NM_MERE`, `PRNM_MERE`, `PRFS_MERE`, `LIEU_TRVL_MERE`, `ADRS_FAML`, `TEL_FAML1`, `TEL_FAML2`, `WHP1`, `WHP2`, `MAIL_FAML`, `ACTF_FAML`, `topWkf`, `V_SUP`, `L_MTIF_ANN`, `DT_TC_CRT`, `DT_TC_UPDT`, `USER_TC_CRT`, `USER_TC_UPDT`, `vNbrePiece`) VALUES
(3, '224FE', 'BAKOU', 'BAKOU', 'Olivier', 'Informaticien', 'Acsi', 'ANDOKA', 'Cécillia', NULL, '', '', '069997905', '', '069997905', '', '', 0, 0, 0, NULL, '2024-03-10 20:30:44', '2024-03-10 20:32:50', 'Olivier Fernand BAKOU', 'Olivier Fernand BAKOU', 0);

-- --------------------------------------------------------

--
-- Structure de la table `t_flr`
--

CREATE TABLE `t_flr` (
  `ID` int(11) NOT NULL DEFAULT 0,
  `CD_FLR` varchar(50) NOT NULL,
  `DURE` int(11) NOT NULL,
  `ID_T_CYCL` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `t_insc`
--

CREATE TABLE `t_insc` (
  `ID` int(11) NOT NULL,
  `CD_INSC` varchar(20) DEFAULT NULL,
  `CD_ETUD` varchar(10) NOT NULL,
  `DT_INSC` date DEFAULT NULL,
  `TP_INSC` varchar(20) DEFAULT NULL,
  `TP_ELEV` varchar(20) DEFAULT NULL,
  `SIT_MATR_ELEV` varchar(20) DEFAULT NULL,
  `NM_ELEV` varchar(50) DEFAULT NULL,
  `PRNM_ELEV` varchar(50) DEFAULT NULL,
  `SEXE` varchar(15) DEFAULT NULL,
  `DT_NAIS` date DEFAULT NULL,
  `LIEU_NAIS` varchar(100) DEFAULT NULL,
  `LIB_NAT` varchar(50) DEFAULT NULL,
  `LIB_PAYS` varchar(50) DEFAULT NULL,
  `AGE` int(11) DEFAULT NULL,
  `ADRS_ELEV` varchar(100) DEFAULT NULL,
  `LIB_VIL` varchar(50) DEFAULT NULL,
  `TEL_ELEV1` varchar(50) DEFAULT NULL,
  `TEL_ELEV2` varchar(50) DEFAULT NULL,
  `WHP1` varchar(50) DEFAULT NULL,
  `WHP2` varchar(50) DEFAULT NULL,
  `MAIL_FAML` varchar(50) NOT NULL,
  `PHTO` varchar(200) DEFAULT NULL,
  `ELEV_DEPD_TUTR` int(11) DEFAULT NULL,
  `INFO_TRVL_ELEV` varchar(100) DEFAULT NULL,
  `NM_TUTR` varchar(50) DEFAULT NULL,
  `PRNM_TUTR` varchar(50) DEFAULT NULL,
  `PRFS_TUTR` varchar(50) DEFAULT NULL,
  `LIEU_TRVL` varchar(50) DEFAULT NULL,
  `ADRS_FAML` varchar(100) DEFAULT NULL,
  `TEL_FAML1` varchar(50) DEFAULT NULL,
  `TEL_FAML2` varchar(50) DEFAULT NULL,
  `INFO_INAP` varchar(200) DEFAULT NULL,
  `ETAT_PHSQ` int(11) DEFAULT NULL,
  `RCMD_NOTE` varchar(50) DEFAULT NULL,
  `NM_ETAB_ORGN` varchar(100) DEFAULT NULL,
  `RPT_CLAS` int(11) DEFAULT NULL,
  `NUM_INSC` int(11) DEFAULT NULL,
  `NBR_LIMT` int(11) DEFAULT NULL,
  `CD_BARR` varchar(50) DEFAULT NULL,
  `RANG_PASG` int(11) DEFAULT NULL,
  `RANG_ETAB` int(11) DEFAULT NULL,
  `ELEV_RPRD` int(11) DEFAULT NULL,
  `MOYN_PSG` double DEFAULT NULL,
  `MENT_PASG` varchar(50) DEFAULT NULL,
  `SAL_CLAS_N_1` varchar(50) DEFAULT NULL,
  `ARRT_CNTR` int(11) DEFAULT NULL,
  `MTF_CNTR` varchar(200) DEFAULT NULL,
  `NUM_CART` varchar(50) DEFAULT NULL,
  `DSC_ELEV` varchar(200) DEFAULT NULL,
  `MDP_ELEV` varchar(20) DEFAULT NULL,
  `PRM_LANG` varchar(50) DEFAULT NULL,
  `DXM_LANG` varchar(50) DEFAULT NULL,
  `OPT_ASSIDUITE` int(11) NOT NULL DEFAULT 0,
  `OPT_RESPECT_CONDISCIPLE` int(11) NOT NULL DEFAULT 0,
  `OPT_DISPONIBILITE` int(11) NOT NULL DEFAULT 0,
  `OPT_RESPECT_ENSEIGNANT` int(11) NOT NULL DEFAULT 0,
  `OPT_INSCRIT_WEB` int(11) DEFAULT NULL,
  `IDT_FAML` int(11) DEFAULT NULL,
  `IDT_ANNE_SCOL` int(11) DEFAULT NULL,
  `IDT_NIV` int(11) DEFAULT NULL,
  `ID_T_SAL` int(11) NOT NULL DEFAULT 0,
  `ID_T_CYCL` int(11) NOT NULL DEFAULT 0,
  `ID_T_FLR` int(11) NOT NULL DEFAULT 0,
  `V_SUP` int(11) DEFAULT 0,
  `topWkf` int(11) DEFAULT 0,
  `L_MTIF_ANN` varchar(200) DEFAULT NULL,
  `DT_TC_CRT` datetime DEFAULT NULL,
  `DT_TC_UPDT` datetime DEFAULT NULL,
  `USER_TC_CRT` varchar(100) DEFAULT NULL,
  `USER_TC_UPDT` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Structure de la table `t_niv`
--

CREATE TABLE `t_niv` (
  `ID` int(11) NOT NULL,
  `CD_NIV` varchar(50) DEFAULT NULL,
  `NUM_NIV` int(11) DEFAULT 0,
  `GRP_NIV` varchar(50) DEFAULT NULL,
  `AGE_MIN` int(11) DEFAULT NULL,
  `AGE_MAX` int(11) DEFAULT NULL,
  `MOYN_PSG` int(11) DEFAULT NULL,
  `OPT_LMD` int(11) DEFAULT NULL,
  `OPT_NOTE_LETTRE` int(11) DEFAULT NULL,
  `topWkf` int(11) DEFAULT 0,
  `L_MTIF_ANN` varchar(200) DEFAULT NULL,
  `V_SUP` int(11) DEFAULT 0,
  `DT_TC_CRT` datetime DEFAULT NULL,
  `DT_TC_UPDT` datetime DEFAULT NULL,
  `USER_TC_CRT` varchar(100) DEFAULT NULL,
  `USER_TC_UPDT` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Déchargement des données de la table `t_niv`
--

INSERT INTO `t_niv` (`ID`, `CD_NIV`, `NUM_NIV`, `GRP_NIV`, `AGE_MIN`, `AGE_MAX`, `MOYN_PSG`, `OPT_LMD`, `OPT_NOTE_LETTRE`, `topWkf`, `L_MTIF_ANN`, `V_SUP`, `DT_TC_CRT`, `DT_TC_UPDT`, `USER_TC_CRT`, `USER_TC_UPDT`) VALUES
(1, 'Petite section', 1, 'Maternelle', 0, 0, 10, NULL, NULL, 0, NULL, 0, '2024-03-03 10:41:41', '2024-03-03 10:41:41', 'Olivier Fernand BAKOU', 'Olivier Fernand BAKOU'),
(2, 'Moyenne section', 2, 'Maternelle', 0, 0, 10, NULL, NULL, 0, NULL, 0, '2024-03-03 10:41:53', '2024-03-03 10:41:53', 'Olivier Fernand BAKOU', 'Olivier Fernand BAKOU'),
(3, 'Grande section', 3, 'Maternelle', 0, 0, 10, NULL, NULL, 0, NULL, 0, '2024-03-03 10:42:04', '2024-03-03 10:42:04', 'Olivier Fernand BAKOU', 'Olivier Fernand BAKOU'),
(4, 'CP', 4, 'Primaire', 0, 0, 10, NULL, NULL, 0, NULL, 0, '2024-03-03 10:42:20', '2024-03-03 10:42:20', 'Olivier Fernand BAKOU', 'Olivier Fernand BAKOU'),
(5, 'CE', 5, 'Primaire', 0, 0, 10, NULL, NULL, 0, NULL, 0, '2024-03-03 10:42:38', '2024-03-03 10:42:38', 'Olivier Fernand BAKOU', 'Olivier Fernand BAKOU'),
(6, 'CM', 6, 'Primaire', 0, 0, 10, NULL, NULL, 0, NULL, 0, '2024-03-03 10:42:50', '2024-03-03 10:42:50', 'Olivier Fernand BAKOU', 'Olivier Fernand BAKOU'),
(7, 'Sixième', 7, 'Collège', 0, 0, 10, NULL, NULL, 0, NULL, 0, '2024-03-03 10:43:05', '2024-03-03 10:45:14', 'Olivier Fernand BAKOU', 'Olivier Fernand BAKOU'),
(8, 'Cinquième', 8, 'Collège', 0, 0, 10, NULL, NULL, 0, NULL, 0, '2024-03-03 10:43:22', '2024-03-03 10:43:22', 'Olivier Fernand BAKOU', 'Olivier Fernand BAKOU'),
(9, 'Quatrième', 9, 'Collège', 0, 0, 10, NULL, NULL, 0, NULL, 0, '2024-03-03 10:43:36', '2024-03-03 10:43:36', 'Olivier Fernand BAKOU', 'Olivier Fernand BAKOU'),
(10, 'Troisième', 10, 'Collège', 0, 0, 10, NULL, NULL, 0, NULL, 0, '2024-03-03 10:43:49', '2024-03-03 10:43:49', 'Olivier Fernand BAKOU', 'Olivier Fernand BAKOU'),
(11, 'Seconde', 11, 'Collège', 0, 0, 10, NULL, NULL, 0, NULL, 0, '2024-03-03 10:44:02', '2024-03-03 10:44:02', 'Olivier Fernand BAKOU', 'Olivier Fernand BAKOU'),
(12, 'Première', 12, 'Collège', 0, 0, 10, NULL, NULL, 0, NULL, 0, '2024-03-03 10:44:13', '2024-03-03 10:44:13', 'Olivier Fernand BAKOU', 'Olivier Fernand BAKOU'),
(13, 'Terminale', 13, 'Collège', 0, 0, 10, NULL, NULL, 0, NULL, 0, '2024-03-03 10:44:27', '2024-03-03 10:44:27', 'Olivier Fernand BAKOU', 'Olivier Fernand BAKOU');

-- --------------------------------------------------------

--
-- Structure de la table `t_niv_t_cycl`
--

CREATE TABLE `t_niv_t_cycl` (
  `ID` int(11) NOT NULL,
  `IDT_CYCL` int(11) DEFAULT NULL,
  `IDT_NIV` int(11) DEFAULT NULL,
  `topWkf` int(11) DEFAULT 0,
  `L_MTIF_ANN` varchar(200) DEFAULT NULL,
  `V_SUP` int(11) DEFAULT 0,
  `DT_TC_CRT` datetime DEFAULT NULL,
  `DT_TC_UPDT` datetime DEFAULT NULL,
  `USER_TC_CRT` varchar(100) DEFAULT NULL,
  `USER_TC_UPDT` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Déchargement des données de la table `t_niv_t_cycl`
--

INSERT INTO `t_niv_t_cycl` (`ID`, `IDT_CYCL`, `IDT_NIV`, `topWkf`, `L_MTIF_ANN`, `V_SUP`, `DT_TC_CRT`, `DT_TC_UPDT`, `USER_TC_CRT`, `USER_TC_UPDT`) VALUES
(1, 1, 11, 0, NULL, 0, '2024-03-03 10:47:01', '2024-03-03 10:47:01', 'Olivier Fernand BAKOU', 'Olivier Fernand BAKOU'),
(2, 2, 11, 0, NULL, 0, '2024-03-03 10:47:10', '2024-03-03 10:47:10', 'Olivier Fernand BAKOU', 'Olivier Fernand BAKOU');

-- --------------------------------------------------------

--
-- Structure de la table `t_niv_t_sal`
--

CREATE TABLE `t_niv_t_sal` (
  `ID` int(11) NOT NULL,
  `IDT_SAL` int(11) DEFAULT NULL,
  `IDT_NIV` int(11) DEFAULT NULL,
  `IDT_CYCL` int(11) DEFAULT NULL,
  `topWkf` int(11) DEFAULT 0,
  `L_MTIF_ANN` varchar(200) DEFAULT NULL,
  `V_SUP` int(11) DEFAULT 0,
  `DT_TC_CRT` datetime DEFAULT NULL,
  `DT_TC_UPDT` datetime DEFAULT NULL,
  `USER_TC_CRT` varchar(100) DEFAULT NULL,
  `USER_TC_UPDT` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Déchargement des données de la table `t_niv_t_sal`
--

INSERT INTO `t_niv_t_sal` (`ID`, `IDT_SAL`, `IDT_NIV`, `IDT_CYCL`, `topWkf`, `L_MTIF_ANN`, `V_SUP`, `DT_TC_CRT`, `DT_TC_UPDT`, `USER_TC_CRT`, `USER_TC_UPDT`) VALUES
(1, 1, 11, 1, 0, NULL, 0, '2024-03-03 10:48:51', '2024-03-03 10:48:51', 'Olivier Fernand BAKOU', 'Olivier Fernand BAKOU'),
(2, 3, 8, 0, 0, NULL, 0, '2024-03-03 10:49:00', '2024-03-03 10:49:00', 'Olivier Fernand BAKOU', 'Olivier Fernand BAKOU');

-- --------------------------------------------------------

--
-- Structure de la table `t_prd_scol`
--

CREATE TABLE `t_prd_scol` (
  `ID` int(11) NOT NULL,
  `NUM_PRD` int(11) DEFAULT NULL,
  `NUM_LTR` varchar(50) DEFAULT NULL,
  `DT_DB` date DEFAULT NULL,
  `DT_FIN` date DEFAULT NULL,
  `V_ACTV_PRD` int(11) NOT NULL DEFAULT 0,
  `IDT_ANNE_SCOL` int(11) DEFAULT NULL,
  `L_MTIF_ANN` varchar(200) DEFAULT NULL,
  `V_SUP` int(11) DEFAULT 0,
  `DT_TC_CRT` datetime DEFAULT NULL,
  `DT_TC_UPDT` datetime DEFAULT NULL,
  `USER_TC_CRT` varchar(100) DEFAULT NULL,
  `USER_TC_UPDT` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Déchargement des données de la table `t_prd_scol`
--

INSERT INTO `t_prd_scol` (`ID`, `NUM_PRD`, `NUM_LTR`, `DT_DB`, `DT_FIN`, `V_ACTV_PRD`, `IDT_ANNE_SCOL`, `L_MTIF_ANN`, `V_SUP`, `DT_TC_CRT`, `DT_TC_UPDT`, `USER_TC_CRT`, `USER_TC_UPDT`) VALUES
(1, 1, '1er Trimestre', '2023-10-04', '2023-12-24', 0, 1, NULL, 0, '2024-03-03 09:57:44', '2024-03-03 10:32:30', 'Olivier Fernand BAKOU', 'Olivier Fernand BAKOU'),
(2, 2, '2ème Trimestre', '2024-01-04', '2024-03-31', 1, 1, NULL, 0, '2024-03-03 09:57:44', '2024-03-03 10:32:30', 'Olivier Fernand BAKOU', 'Olivier Fernand BAKOU'),
(3, 3, '3ème Trimestre', NULL, NULL, 0, 1, NULL, 0, '2024-03-03 09:57:44', '2024-03-03 10:32:30', 'Olivier Fernand BAKOU', 'Olivier Fernand BAKOU');

-- --------------------------------------------------------

--
-- Structure de la table `t_sal`
--

CREATE TABLE `t_sal` (
  `ID` int(11) NOT NULL,
  `CD_SAL` varchar(50) DEFAULT NULL,
  `NBR_LIMT` int(11) DEFAULT NULL,
  `PRM_LANG` varchar(50) DEFAULT NULL,
  `DXM_LANG` varchar(50) DEFAULT NULL,
  `NM_PRNM_ENSG` varchar(100) DEFAULT NULL,
  `topWkf` int(11) DEFAULT 0,
  `L_MTIF_ANN` varchar(200) DEFAULT NULL,
  `V_SUP` int(11) DEFAULT 0,
  `DT_TC_CRT` datetime DEFAULT NULL,
  `DT_TC_UPDT` datetime DEFAULT NULL,
  `USER_TC_CRT` varchar(100) DEFAULT NULL,
  `USER_TC_UPDT` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Déchargement des données de la table `t_sal`
--

INSERT INTO `t_sal` (`ID`, `CD_SAL`, `NBR_LIMT`, `PRM_LANG`, `DXM_LANG`, `NM_PRNM_ENSG`, `topWkf`, `L_MTIF_ANN`, `V_SUP`, `DT_TC_CRT`, `DT_TC_UPDT`, `USER_TC_CRT`, `USER_TC_UPDT`) VALUES
(1, 'SCA1', 25, '', '', NULL, 0, NULL, 0, '2024-03-03 10:48:02', '2024-03-10 14:31:43', 'Olivier Fernand BAKOU', 'Olivier Fernand BAKOU'),
(2, 'SCA2', 25, '', '', NULL, 0, NULL, 0, '2024-03-03 10:48:10', '2024-03-10 14:32:00', 'Olivier Fernand BAKOU', 'Olivier Fernand BAKOU'),
(3, '5ème', 25, '', '', NULL, 0, NULL, 0, '2024-03-03 10:48:22', '2024-03-10 14:31:51', 'Olivier Fernand BAKOU', 'Olivier Fernand BAKOU');

-- --------------------------------------------------------

--
-- Structure de la table `t_soc`
--

CREATE TABLE `t_soc` (
  `IDt_soc` int(11) NOT NULL,
  `NM_SOC` varchar(50) DEFAULT NULL,
  `TEL_SOC` varchar(50) DEFAULT NULL,
  `MAIL_SOC` varchar(50) DEFAULT NULL,
  `OPT_CD_ETUD` int(11) DEFAULT 0,
  `OPT_FML` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `t_user`
--

CREATE TABLE `t_user` (
  `IDt_user` int(11) NOT NULL,
  `NM_USER` varchar(50) DEFAULT NULL,
  `V_SUP` int(11) DEFAULT 0,
  `DT_TC_CRT` datetime DEFAULT NULL,
  `DT_TC_UPDT` datetime DEFAULT NULL,
  `USER_TC_CRT` varchar(50) DEFAULT NULL,
  `USER_TC_UPDT` varchar(50) DEFAULT NULL,
  `PRN_USER` varchar(50) DEFAULT NULL,
  `CD_USER` varchar(5) DEFAULT NULL,
  `MDP` varchar(100) DEFAULT NULL,
  `MAIL_USER` varchar(50) DEFAULT NULL,
  `TEL_USER` varchar(50) DEFAULT NULL,
  `IDt_soc` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `t_anne_scol`
--
ALTER TABLE `t_anne_scol`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `CD_AN_SCOL` (`CD_AN_SCOL`),
  ADD KEY `FK_t_anne_scol` (`IDT_CFG_PRD`);

--
-- Index pour la table `t_cfg_prd`
--
ALTER TABLE `t_cfg_prd`
  ADD PRIMARY KEY (`ID`);

--
-- Index pour la table `t_cycl`
--
ALTER TABLE `t_cycl`
  ADD PRIMARY KEY (`ID`);

--
-- Index pour la table `t_faml`
--
ALTER TABLE `t_faml`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `COD_FAML` (`COD_FAML`);

--
-- Index pour la table `t_flr`
--
ALTER TABLE `t_flr`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `CD_FLR` (`CD_FLR`),
  ADD KEY `FK_t_flr` (`ID_T_CYCL`);

--
-- Index pour la table `t_insc`
--
ALTER TABLE `t_insc`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `CD_INSC` (`CD_INSC`),
  ADD KEY `FK_t_insc2` (`IDT_ANNE_SCOL`),
  ADD KEY `FK_t_insc4` (`IDT_FAML`),
  ADD KEY `FK_t_insc5` (`ID_T_CYCL`),
  ADD KEY `FK_t_insc6` (`ID_T_FLR`),
  ADD KEY `FK_t_insc3` (`IDT_NIV`),
  ADD KEY `FK_t_insc7` (`ID_T_SAL`);

--
-- Index pour la table `t_niv`
--
ALTER TABLE `t_niv`
  ADD PRIMARY KEY (`ID`);

--
-- Index pour la table `t_niv_t_cycl`
--
ALTER TABLE `t_niv_t_cycl`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `FK_t_niv_t_cycl2` (`IDT_NIV`),
  ADD KEY `FK_t_niv_t_cycl3` (`IDT_CYCL`);

--
-- Index pour la table `t_niv_t_sal`
--
ALTER TABLE `t_niv_t_sal`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `FK_t_niv_t_sal1` (`IDT_SAL`),
  ADD KEY `FK_t_niv_t_sal2` (`IDT_NIV`);

--
-- Index pour la table `t_prd_scol`
--
ALTER TABLE `t_prd_scol`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `FK_t_prd_scol1` (`IDT_ANNE_SCOL`);

--
-- Index pour la table `t_sal`
--
ALTER TABLE `t_sal`
  ADD PRIMARY KEY (`ID`);

--
-- Index pour la table `t_soc`
--
ALTER TABLE `t_soc`
  ADD PRIMARY KEY (`IDt_soc`);

--
-- Index pour la table `t_user`
--
ALTER TABLE `t_user`
  ADD PRIMARY KEY (`IDt_user`),
  ADD UNIQUE KEY `CD_USER` (`CD_USER`),
  ADD KEY `fk_soc_user` (`IDt_soc`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `t_anne_scol`
--
ALTER TABLE `t_anne_scol`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `t_cfg_prd`
--
ALTER TABLE `t_cfg_prd`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `t_cycl`
--
ALTER TABLE `t_cycl`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `t_faml`
--
ALTER TABLE `t_faml`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `t_insc`
--
ALTER TABLE `t_insc`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `t_niv`
--
ALTER TABLE `t_niv`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT pour la table `t_niv_t_cycl`
--
ALTER TABLE `t_niv_t_cycl`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `t_niv_t_sal`
--
ALTER TABLE `t_niv_t_sal`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `t_prd_scol`
--
ALTER TABLE `t_prd_scol`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `t_sal`
--
ALTER TABLE `t_sal`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `t_soc`
--
ALTER TABLE `t_soc`
  MODIFY `IDt_soc` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `t_user`
--
ALTER TABLE `t_user`
  MODIFY `IDt_user` int(11) NOT NULL AUTO_INCREMENT;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `t_anne_scol`
--
ALTER TABLE `t_anne_scol`
  ADD CONSTRAINT `FK_t_anne_scol` FOREIGN KEY (`IDT_CFG_PRD`) REFERENCES `t_cfg_prd` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `t_flr`
--
ALTER TABLE `t_flr`
  ADD CONSTRAINT `FK_t_flr` FOREIGN KEY (`ID_T_CYCL`) REFERENCES `t_cycl` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `t_insc`
--
ALTER TABLE `t_insc`
  ADD CONSTRAINT `FK_t_insc2` FOREIGN KEY (`IDT_ANNE_SCOL`) REFERENCES `t_anne_scol` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_t_insc3` FOREIGN KEY (`IDT_NIV`) REFERENCES `t_niv` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_t_insc4` FOREIGN KEY (`IDT_FAML`) REFERENCES `t_faml` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_t_insc5` FOREIGN KEY (`ID_T_CYCL`) REFERENCES `t_cycl` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_t_insc6` FOREIGN KEY (`ID_T_FLR`) REFERENCES `t_flr` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_t_insc7` FOREIGN KEY (`ID_T_SAL`) REFERENCES `t_sal` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `t_niv_t_cycl`
--
ALTER TABLE `t_niv_t_cycl`
  ADD CONSTRAINT `FK_t_niv_t_cycl1` FOREIGN KEY (`IDT_CYCL`) REFERENCES `t_cycl` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_t_niv_t_cycl2` FOREIGN KEY (`IDT_NIV`) REFERENCES `t_niv` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_t_niv_t_cycl3` FOREIGN KEY (`IDT_CYCL`) REFERENCES `t_cycl` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `t_niv_t_sal`
--
ALTER TABLE `t_niv_t_sal`
  ADD CONSTRAINT `FK_t_niv_t_sal1` FOREIGN KEY (`IDT_SAL`) REFERENCES `t_sal` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_t_niv_t_sal2` FOREIGN KEY (`IDT_NIV`) REFERENCES `t_niv` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `t_prd_scol`
--
ALTER TABLE `t_prd_scol`
  ADD CONSTRAINT `FK_t_prd_scol1` FOREIGN KEY (`IDT_ANNE_SCOL`) REFERENCES `t_anne_scol` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `t_user`
--
ALTER TABLE `t_user`
  ADD CONSTRAINT `fk_soc_user` FOREIGN KEY (`IDt_soc`) REFERENCES `t_soc` (`IDt_soc`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
