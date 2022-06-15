-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mer. 25 mai 2022 à 00:28
-- Version du serveur : 10.4.22-MariaDB
-- Version de PHP : 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `logicielclcc`
--

-- --------------------------------------------------------

--
-- Structure de la table `1_reference_despatients`
--

CREATE TABLE `1_reference_despatients` (
  `IdSection` int(4) NOT NULL,
  `Nom` varchar(20) NOT NULL,
  `prenom` varchar(255) NOT NULL,
  `Ndossier` int(25) NOT NULL,
  `medecin_traitent` varchar(255) NOT NULL,
  `date_de_naissance` date NOT NULL,
  `age` int(11) NOT NULL,
  `adresse` varchar(255) NOT NULL,
  `iduser` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `1_reference_despatients`
--

INSERT INTO `1_reference_despatients` (`IdSection`, `Nom`, `prenom`, `Ndossier`, `medecin_traitent`, `date_de_naissance`, `age`, `adresse`, `iduser`) VALUES
(0, '', '', 0, '', '0000-00-00', 0, '', 0);

-- --------------------------------------------------------

--
-- Structure de la table `2_caracteristique_sosciodemographique`
--

CREATE TABLE `2_caracteristique_sosciodemographique` (
  `IdSection` int(20) NOT NULL,
  `idsection2` int(11) NOT NULL,
  `habitat` varchar(255) NOT NULL,
  `telephone` int(11) NOT NULL,
  `etat_marital` text NOT NULL,
  `profession` text NOT NULL,
  `niveau_socio_econo` text NOT NULL,
  `niveau_scolaire` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `3_donnees_anamnestique_atcdspersonneles`
--

CREATE TABLE `3_donnees_anamnestique_atcdspersonneles` (
  `Ndossier` int(25) NOT NULL,
  `id_section3` int(11) NOT NULL,
  `idSection` int(11) NOT NULL,
  `antcds_personnels` varchar(255) NOT NULL,
  `sans_ANTCDS_P` tinyint(1) NOT NULL,
  `autres` tinyint(1) NOT NULL,
  `HTA` tinyint(1) NOT NULL,
  `cardiopathie` tinyint(1) NOT NULL,
  `Dysthyroidie` tinyint(1) NOT NULL,
  `diabete` tinyint(1) NOT NULL,
  `dyslipidemie` tinyint(1) NOT NULL,
  `mastopathie_FK` tinyint(1) NOT NULL,
  `sterilite_primaire` tinyint(1) NOT NULL,
  `cancer_de_la_thyroide` tinyint(1) NOT NULL,
  `menarches` varchar(11) NOT NULL,
  `Ag` tinyint(1) NOT NULL,
  `age_ala_menopause` varchar(11) NOT NULL,
  `etat_du_cycle` varchar(11) NOT NULL,
  `age_de_1ere_Gsse` varchar(11) NOT NULL,
  `Gestes` int(11) NOT NULL,
  `parites` int(11) NOT NULL,
  `diffrence` int(11) NOT NULL,
  `AVRT` int(11) NOT NULL,
  `Cesarienne` int(11) NOT NULL,
  `ADF` int(11) NOT NULL,
  `hyperplasie_atypique` tinyint(1) NOT NULL,
  `dureemois_enfant` date NOT NULL,
  `neoplasie_lobulaire_in_situ` tinyint(1) NOT NULL,
  `mastopathie_fibrokystique` tinyint(1) NOT NULL,
  `contraceptiopn` varchar(11) NOT NULL,
  `contraception_avant_grossesse` varchar(255) NOT NULL,
  `Methode` int(11) NOT NULL,
  `Medicament_GP` int(11) NOT NULL,
  `duree_de_la_contraception mois` int(11) NOT NULL,
  `contaception_continue` int(11) NOT NULL,
  `Duree_contraception_continue_mois` int(11) NOT NULL,
  `allaitment` int(11) NOT NULL,
  `autres_TRT_hormonal` int(11) NOT NULL,
  `duree_mois_enfant` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `4_atcd_familliaux_cancer`
--

CREATE TABLE `4_atcd_familliaux_cancer` (
  `IdSection` int(20) NOT NULL,
  `id_section4` int(11) NOT NULL,
  `Ndossier` int(25) NOT NULL,
  `mariage_cosanguin_des_parents` varchar(255) NOT NULL,
  `ATCD_Familliaux_cancer` varchar(255) NOT NULL,
  `ATCD_F_de_cancer_du_sein` tinyint(1) NOT NULL,
  `parent_1er_degre` varchar(255) NOT NULL,
  `Nombre_cas_1er_degre` int(11) NOT NULL,
  `age_diag_du_cancer_parents1er_degré` varchar(255) NOT NULL,
  `age_de_diag_avant_40ans_parent1er_degre` varchar(255) NOT NULL,
  `parent 2eme_degre` varchar(255) NOT NULL,
  `nombre_de_parent_2emedegres` varchar(255) NOT NULL,
  `age_de_diag_des_parent_avant_ou_egal40` varchar(255) NOT NULL,
  `parent_3degre` varchar(255) NOT NULL,
  `cancer_du_sein_billat_dans_la_famille` varchar(255) NOT NULL,
  `ATCD_F_de_cancer_lovaire` varchar(255) NOT NULL,
  `parent1er_degre` varchar(255) NOT NULL,
  `parent2eme_degre` varchar(255) NOT NULL,
  `autre_cancer_familliaux` varchar(255) NOT NULL,
  `KC_F_Panceras` tinyint(1) NOT NULL,
  `Kc_F_Melanome` tinyint(1) NOT NULL,
  `Kc_Prostate` tinyint(1) NOT NULL,
  `Kc_colon` tinyint(1) NOT NULL,
  `autre_Kc_F` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `5_imc`
--

CREATE TABLE `5_imc` (
  `IdSection` int(20) NOT NULL,
  `id_section5` int(11) NOT NULL,
  `Ndossier` int(25) NOT NULL,
  `imc` double NOT NULL,
  `forme_corporelle_IMC` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `6_habitude_toxique`
--

CREATE TABLE `6_habitude_toxique` (
  `IdSection` int(20) NOT NULL,
  `id_section6` int(11) NOT NULL,
  `Ndossier` int(25) NOT NULL,
  `habitude_toxique` tinyint(1) NOT NULL,
  `nature_dhabitude_toxique` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `7_etude_genetique`
--

CREATE TABLE `7_etude_genetique` (
  `IdSection` int(11) NOT NULL,
  `id_section7` int(11) NOT NULL,
  `Ndossier` int(25) NOT NULL,
  `notion_dexposition_aux_radiations` int(11) NOT NULL,
  `indicationconsultation_onocogenetique` tinyint(1) NOT NULL,
  `mutationdegene_BRCA1` varchar(1) NOT NULL,
  `mutationdegene_BRCA2` varchar(1) NOT NULL,
  `variation` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `8_section8`
--

CREATE TABLE `8_section8` (
  `IdSection` int(11) NOT NULL,
  `id_section8` int(11) NOT NULL,
  `CDD_delai _derniere_grossesse_mois` date NOT NULL,
  `Cancer_du_sein_sur_grossesse` varchar(255) NOT NULL,
  `Ndossier` int(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `9_circonctances_de_decouverte`
--

CREATE TABLE `9_circonctances_de_decouverte` (
  `IdSection` int(11) NOT NULL,
  `id_section9` int(11) NOT NULL,
  `Ndossier` int(11) NOT NULL,
  `autopalpationdun_nodule` tinyint(1) NOT NULL,
  `mastodynie` tinyint(1) NOT NULL,
  `ecoulement_mammelonaire` tinyint(1) NOT NULL,
  `inflammation_cutanee` tinyint(1) NOT NULL,
  `ulceration_cutanee` tinyint(1) NOT NULL,
  `depression_cutane` tinyint(1) NOT NULL,
  `retraction_mammelonaire` tinyint(1) NOT NULL,
  `adenopathie` tinyint(1) NOT NULL,
  `PEV` int(20) NOT NULL,
  `metastase` tinyint(1) NOT NULL,
  `hepatique` tinyint(1) NOT NULL,
  `osseuse` tinyint(1) NOT NULL,
  `cerebrale` tinyint(1) NOT NULL,
  `pulmoaire` tinyint(1) NOT NULL,
  `cutanee` tinyint(1) NOT NULL,
  `autres` int(11) NOT NULL,
  `dedecouverte_fortuite` varchar(1) NOT NULL,
  `aucoursdundepistage_sustematique` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `10_donnees_clinique`
--

CREATE TABLE `10_donnees_clinique` (
  `IdSection` int(11) NOT NULL,
  `idsection10` int(11) NOT NULL,
  `Ndossier` int(25) NOT NULL,
  `datede_diagnostique` date NOT NULL,
  `datede_1er_symptome` date NOT NULL,
  `date1er_consultationpour_exploration` date NOT NULL,
  `1er_jourconsultation_Onco` date NOT NULL,
  `delaisentre1er_symptomeetconsultation_pourexploration_enjour` date NOT NULL,
  `duree_entre _explorationet_diagnostiqueen_jours` date NOT NULL,
  `delais_entre_diagnostique_et_consultation_Onco` year(4) NOT NULL,
  `delai_entre_mammoet_Bx_en_jours` date NOT NULL,
  `siege_de_la_tumeur_auniveau_du_sein` varchar(20) NOT NULL,
  `Multifocale` tinyint(1) NOT NULL,
  `multicentrique` tinyint(1) NOT NULL,
  `bifocale` tinyint(1) NOT NULL,
  `topographie_mammaire` text NOT NULL,
  `lataille_cliniqueen_mm` int(20) NOT NULL,
  `laconsistace_de_la_tumeur` text NOT NULL,
  `la sensibilite` tinyint(1) NOT NULL,
  `lecoulement` varchar(20) NOT NULL,
  `sero_sanglant` tinyint(1) NOT NULL,
  `douleur_mastodynie` tinyint(1) NOT NULL,
  `ladherance` tinyint(1) NOT NULL,
  `plan_dadherance` tinytext NOT NULL,
  `ADP` tinyint(1) NOT NULL,
  `taille_ADP` int(20) NOT NULL,
  `axilliare` tinyint(20) NOT NULL,
  `sus_claviculaire` tinyint(1) NOT NULL,
  `PS` int(20) NOT NULL,
  `anomaliesclinique_associees` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `11_la_mammographie`
--

CREATE TABLE `11_la_mammographie` (
  `IdSection` int(11) NOT NULL,
  `idsection11` int(11) NOT NULL,
  `Ndossier` int(25) NOT NULL,
  `mammographie` tinyint(1) NOT NULL,
  `date` date NOT NULL,
  `ACR` varchar(255) NOT NULL,
  `Tmm_radiolo` varchar(255) NOT NULL,
  `caracteristique_mammographie` varchar(255) NOT NULL,
  `densite_mammaire` varchar(255) NOT NULL,
  `N` varchar(255) NOT NULL,
  `Autres` varchar(255) NOT NULL,
  `echo_mammaire` varchar(255) NOT NULL,
  `nombreADPS` varchar(255) NOT NULL,
  `tailleADPS` varchar(255) NOT NULL,
  `autre` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `12_irm_mammaire`
--

CREATE TABLE `12_irm_mammaire` (
  `IdSection` int(11) NOT NULL,
  `Ndossier` int(11) NOT NULL,
  `id_section12` int(11) NOT NULL,
  `irm_mammaire` tinyint(1) NOT NULL,
  `resultat_IRM_mammaire` text NOT NULL,
  `ACR_deIRM` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `13_donnees_anatomapathologique_typehistologique`
--

CREATE TABLE `13_donnees_anatomapathologique_typehistologique` (
  `IdSection` int(20) NOT NULL,
  `id_section24` int(11) NOT NULL,
  `Ndossier` int(25) NOT NULL,
  `cis` int(11) NOT NULL,
  `CIS_Microinvasif` varchar(255) NOT NULL,
  `CCI_associe_a_CIS` varchar(255) NOT NULL,
  `CLI_associe_a_CIS` varchar(255) NOT NULL,
  `CIS_XT` varchar(255) NOT NULL,
  `Medulaire` varchar(255) NOT NULL,
  `Carcinome_invasif_mixte` varchar(255) NOT NULL,
  `Carcinome_non_specifique` tinyint(1) NOT NULL,
  `CLI` varchar(255) NOT NULL,
  `Carcinome_Tubuleux` varchar(255) NOT NULL,
  `Autre_XT` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `14_donnes_annatomopatologiebiopsy_initial_facteurspronostique`
--

CREATE TABLE `14_donnes_annatomopatologiebiopsy_initial_facteurspronostique` (
  `IdSection` int(11) NOT NULL,
  `id_section14` int(11) NOT NULL,
  `Ndossier` int(11) NOT NULL,
  `taille_bx_chirirugicale_mm` double NOT NULL,
  `garde_microBx_Bx` varchar(255) NOT NULL,
  `EVmicroBx_Bx` varchar(255) NOT NULL,
  `necrose_tumorale_microBx_Bx` varchar(255) NOT NULL,
  `engainement_perinerveux_microBx_Bx` varchar(255) NOT NULL,
  `limite_chirurgicale` varchar(255) NOT NULL,
  `storme_microBx_Bx` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `15_donnes_annatomopatologiebiopsy_initial_typehistologique_ihc`
--

CREATE TABLE `15_donnes_annatomopatologiebiopsy_initial_typehistologique_ihc` (
  `IdSection` int(11) NOT NULL,
  `id_section15` int(11) NOT NULL,
  `Ndossier` int(25) NOT NULL,
  `datede_IHC` date NOT NULL,
  `delaientreBXet_IHC_en_jours` varchar(255) NOT NULL,
  `RE_BX` double NOT NULL,
  `RE` varchar(255) NOT NULL,
  `RE_BX_score_dallres` int(11) NOT NULL,
  `RP_BX` double NOT NULL,
  `RP` tinyint(1) NOT NULL,
  `RP_bx_score` varchar(255) NOT NULL,
  `HER2_BX` varchar(255) NOT NULL,
  `HER2_BX_score_bx` varchar(255) NOT NULL,
  `Ki67_BX_BX` double NOT NULL,
  `IHC_sur_BX` varchar(255) NOT NULL,
  `PHENOTYPE_bx` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `16_billan_dextension`
--

CREATE TABLE `16_billan_dextension` (
  `IdSection` int(11) NOT NULL,
  `id_section16` int(11) NOT NULL,
  `phenotype_bx` varchar(255) NOT NULL,
  `N_dossier` int(25) NOT NULL,
  `radio` tinyint(1) NOT NULL,
  `echo` tinyint(1) NOT NULL,
  `scinti_os` tinyint(1) NOT NULL,
  `TAP` tinyint(1) NOT NULL,
  `TDM_cerebrale` tinyint(1) NOT NULL,
  `IRM` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `17_metastase_synchrone`
--

CREATE TABLE `17_metastase_synchrone` (
  `IdSection` int(20) NOT NULL,
  `id_section17` int(11) NOT NULL,
  `Ndossier` int(25) NOT NULL,
  `metastase` varchar(255) NOT NULL,
  `M_synchrone_hepatique` tinyint(1) NOT NULL,
  `M_syncghrone_g` varchar(255) NOT NULL,
  `M_synchrone_osseuse` tinyint(1) NOT NULL,
  `M_synchrone_pleuro_pulmonaire` tinyint(1) NOT NULL,
  `M_synchrone_cerebrale` tinyint(1) NOT NULL,
  `M1_unique` tinyint(1) NOT NULL,
  `M1_multiple` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `18_classifications`
--

CREATE TABLE `18_classifications` (
  `IdSection` int(20) NOT NULL,
  `id_section18` int(11) NOT NULL,
  `TNM` varchar(255) NOT NULL,
  `Ndossier` int(25) NOT NULL,
  `pev` varchar(255) NOT NULL,
  `stade` char(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `19_bilan_biologique_initial`
--

CREATE TABLE `19_bilan_biologique_initial` (
  `IdSection` int(20) NOT NULL,
  `id_section19` int(11) NOT NULL,
  `Ndossier` int(25) NOT NULL,
  `Bbrenal` text NOT NULL,
  `bilan_hipatique` varchar(255) NOT NULL,
  `FNS` varchar(255) NOT NULL,
  `VitamineD` double NOT NULL,
  `Etat_vit_D` text NOT NULL,
  `Ca15_3ui_l` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `20_pec_yherapeut`
--

CREATE TABLE `20_pec_yherapeut` (
  `IdSection` int(20) NOT NULL,
  `TRT_Symptomatique` text NOT NULL,
  `id_section20` int(11) NOT NULL,
  `Ndossier` int(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `21_pec_chirurgicale`
--

CREATE TABLE `21_pec_chirurgicale` (
  `IdSection` int(20) NOT NULL,
  `id_section21` int(11) NOT NULL,
  `Ndossier` int(25) NOT NULL,
  `Chirurgie_mammaire` text NOT NULL,
  `date_XT_mammaire` date NOT NULL,
  `lieux_de_laXT` varchar(255) NOT NULL,
  `delai_entre_XT_CTen_jours` date NOT NULL,
  `delai_entre_CTXT_en_J` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `22_donnees_anatomopathologique_de_la chirurgie`
--

CREATE TABLE `22_donnees_anatomopathologique_de_la chirurgie` (
  `IdSection` int(20) NOT NULL,
  `id_section22` int(11) NOT NULL,
  `Ndossier` int(11) NOT NULL,
  `date_anapath_XT` date NOT NULL,
  `anapath_XT` varchar(255) NOT NULL,
  `Mastopathie_fibrokystique` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `23_donnesannatomopatologiebiopsy_initial_typehistologique`
--

CREATE TABLE `23_donnesannatomopatologiebiopsy_initial_typehistologique` (
  `IdSection` int(11) NOT NULL,
  `id_section13` int(11) NOT NULL,
  `Ndossier` int(25) NOT NULL,
  `anatomopathologique` tinyint(1) NOT NULL,
  `reference` varchar(255) NOT NULL,
  `diagnostic_histologique` text NOT NULL,
  `microbiopsie_Bx` text NOT NULL,
  `date_microBx` date NOT NULL,
  `biopsie_chirurgicale` double NOT NULL,
  `date_deBX` date NOT NULL,
  `CIS_demicroBx` tinyint(1) NOT NULL,
  `autres_microBx` text NOT NULL,
  `histo_microbxet_oubx` tinyint(1) NOT NULL,
  `CI_nonspecifique_Bx_tmicrobx` tinyint(1) NOT NULL,
  `composantenonspecifique_invasifavecCISBx_microBx` tinyint(1) NOT NULL,
  `carcinomespecifiqueinfiltrantCLIassocieaCIS_microBx` tinyint(1) NOT NULL,
  `CCLI_microbx` tinyint(1) NOT NULL,
  `carcinmemixteCCI_CLI_microbx` tinyint(1) NOT NULL,
  `C_institu_bx` tinyint(1) NOT NULL,
  `PHYLODE_microbx` tinyint(1) NOT NULL,
  `tubuleux_microbx` tinyint(1) NOT NULL,
  `autresbx` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `24_autres_donnees_anatomapathologique_de_la_chirurgie`
--

CREATE TABLE `24_autres_donnees_anatomapathologique_de_la_chirurgie` (
  `IdSection` int(20) NOT NULL,
  `id_section24` int(11) NOT NULL,
  `Ndossier` int(25) NOT NULL,
  `garde_piecext` varchar(255) NOT NULL,
  `Taille_histolo_mm` varchar(255) NOT NULL,
  `N` varchar(255) NOT NULL,
  `Rupture_capsulaire` varchar(255) NOT NULL,
  `N_preleves` varchar(255) NOT NULL,
  `N _Npreleve` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `25_classification_histologique`
--

CREATE TABLE `25_classification_histologique` (
  `IdSection` int(11) NOT NULL,
  `id_section25` int(11) NOT NULL,
  `Ndossier` int(25) NOT NULL,
  `pTNM` varchar(255) NOT NULL,
  `YpTNM` varchar(255) NOT NULL,
  `reponse_therapeutique_selon_sataloff` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `26_autresdonnees_anatomopatologie_delachirurgie`
--

CREATE TABLE `26_autresdonnees_anatomopatologie_delachirurgie` (
  `IdSection` int(20) NOT NULL,
  `id_section26` int(11) NOT NULL,
  `Ndossier` int(25) NOT NULL,
  `pcr` varchar(255) NOT NULL,
  `EV_piece XT` varchar(255) NOT NULL,
  `engainement_perinerveux_pieceXT` varchar(255) NOT NULL,
  `foyer_de_necrose_piece XT` varchar(255) NOT NULL,
  `stroma_pieceXT` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `27_ihc_sur_piece_operatoire`
--

CREATE TABLE `27_ihc_sur_piece_operatoire` (
  `IdSection` int(11) NOT NULL,
  `id_section27` int(11) NOT NULL,
  `Ndossier` int(25) NOT NULL,
  `IHC_surpiece _operatoire` varchar(255) NOT NULL,
  `Date_IHC_dela_XT` date NOT NULL,
  `RE_pieceXT` varchar(255) NOT NULL,
  `RE_score_pieceXT` varchar(255) NOT NULL,
  `RP_pieceXT` varchar(255) NOT NULL,
  `RP_scorepieceXT` varchar(255) NOT NULL,
  `Ki67_pieceXT` varchar(255) NOT NULL,
  `Her2_pieceXT` varchar(255) NOT NULL,
  `Her2_scorepieceXT` varchar(255) NOT NULL,
  `PHENOTYPE_sur_piece_operatoire` varchar(255) NOT NULL,
  `RE_chirurgie` varchar(255) NOT NULL,
  `RP_chirurgie` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `28_chimiotherapie_adjuvante_cta`
--

CREATE TABLE `28_chimiotherapie_adjuvante_cta` (
  `IdSection` int(11) NOT NULL,
  `id_section28` int(11) NOT NULL,
  `Ndossier` int(25) NOT NULL,
  `chimiotherapie` varchar(255) NOT NULL,
  `Protocole_CTA` varchar(255) NOT NULL,
  `Debut_CTA` date NOT NULL,
  `Fin_CTA` date NOT NULL,
  `Reportdecure_CTA` int(20) NOT NULL,
  `Reductiondedose_CTA` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `29_toxicite_de_la_cta`
--

CREATE TABLE `29_toxicite_de_la_cta` (
  `IdSection` int(11) NOT NULL,
  `id_section29` int(11) NOT NULL,
  `Ndossier` int(25) NOT NULL,
  `toxicite3_4_hematologque_CTA` varchar(255) NOT NULL,
  `Toxicite_3_4_digestiveCTA` varchar(255) NOT NULL,
  `Toxicite_3_4_cutane_CTA` varchar(255) NOT NULL,
  `Autre_toxicite3_4_CTA` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `30_chimiotherapie_neoadjuvante_cna`
--

CREATE TABLE `30_chimiotherapie_neoadjuvante_cna` (
  `IdSection` int(11) NOT NULL,
  `id_section30` int(11) NOT NULL,
  `Ndossier` int(25) NOT NULL,
  `Protocole_CNA` varchar(255) NOT NULL,
  `Debut_CTNA` date NOT NULL,
  `Fin_CTNA` date NOT NULL,
  `report_de_CTNA` tinyint(1) NOT NULL,
  `Reduction_de dose_CTNA` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `31_toxicite_de_la_ctna`
--

CREATE TABLE `31_toxicite_de_la_ctna` (
  `IdSection` int(11) NOT NULL,
  `id_section31` int(11) NOT NULL,
  `Ndossier` int(25) NOT NULL,
  `toxicite3_4_hematologque_CTNA` varchar(255) NOT NULL,
  `toxicite3_4_digestive_CTNA` varchar(255) NOT NULL,
  `toxicite3_4_cutane_CTNA` varchar(255) NOT NULL,
  `Autre3_4_CTNA` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `32_evaluation_ctna`
--

CREATE TABLE `32_evaluation_ctna` (
  `IdSection` int(11) NOT NULL,
  `id_section32` int(11) NOT NULL,
  `Ndossier` int(25) NOT NULL,
  `Evaluation_clinique_CTNA` varchar(255) NOT NULL,
  `Evaluation_RX_CTNA` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `33_hormonotherapie_htadjuvante`
--

CREATE TABLE `33_hormonotherapie_htadjuvante` (
  `IdSection` int(11) NOT NULL,
  `id_section33` int(11) NOT NULL,
  `Ndossier` int(25) NOT NULL,
  `HT_adjuvante` varchar(255) NOT NULL,
  `date_de_debut` date NOT NULL,
  `Date_darret` date NOT NULL,
  `duree_mois` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `34_trastuzumab_en_adjuvant`
--

CREATE TABLE `34_trastuzumab_en_adjuvant` (
  `IdSection` int(11) NOT NULL,
  `id_section34` int(11) NOT NULL,
  `Ndossier` int(25) NOT NULL,
  `trastuzumab` varchar(255) NOT NULL,
  `Toxicite_cardiaque` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `35_radiotherapiert_enadjuvant`
--

CREATE TABLE `35_radiotherapiert_enadjuvant` (
  `IdSection` int(11) NOT NULL,
  `id_section35` int(11) NOT NULL,
  `Ndossier` int(25) NOT NULL,
  `RT_Locale` tinyint(1) NOT NULL,
  `Date_de_debut` date NOT NULL,
  `Date_de_lafin` date NOT NULL,
  `delai_entreCT_RT` varchar(255) NOT NULL,
  `delai_entreXT_RT_siCNA_oupasCT` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `36_recidive_controlatele_locale`
--

CREATE TABLE `36_recidive_controlatele_locale` (
  `IdSection` int(11) NOT NULL,
  `id_section36` int(11) NOT NULL,
  `Ndossier` int(25) NOT NULL,
  `recidive_controlatele` tinyint(1) NOT NULL,
  `recidive_locale` tinyint(1) NOT NULL,
  `daterecidive_locale/control` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `37_recrechute_m`
--

CREATE TABLE `37_recrechute_m` (
  `IdSection` int(11) NOT NULL,
  `id_section37` int(11) NOT NULL,
  `Ndossier` int(25) NOT NULL,
  `rechute_M` varchar(255) NOT NULL,
  `Date_rechuteM` date NOT NULL,
  `Ca15,3_ala_rechute` varchar(255) NOT NULL,
  `RM_pleuro_pulmonaire` varchar(255) NOT NULL,
  `RM_hepatique` varchar(255) NOT NULL,
  `RM_os` varchar(255) NOT NULL,
  `RM_cerebral` varchar(255) NOT NULL,
  `RM_autre` varchar(255) NOT NULL,
  `Datede_larechuteM` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `38_ihc_dela_rechute`
--

CREATE TABLE `38_ihc_dela_rechute` (
  `IdSection` int(11) NOT NULL,
  `id_section38` int(11) NOT NULL,
  `Ndossier` int(25) NOT NULL,
  `IHC_dela_rechute` varchar(255) NOT NULL,
  `RE_score_rechute` varchar(255) NOT NULL,
  `RP_score_rechute` varchar(255) NOT NULL,
  `HER2_score_rechute` varchar(255) NOT NULL,
  `Phenotype_dela_rechute` varchar(255) NOT NULL,
  `Chimiothrapie_dela_recidive` varchar(255) NOT NULL,
  `Nombredelignes_de_chimiotherapie` varchar(255) NOT NULL,
  `protocole_CT1LM_Recidive` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `39_chimiotherapie_de_la _recidive`
--

CREATE TABLE `39_chimiotherapie_de_la _recidive` (
  `IdSection` int(11) NOT NULL,
  `id_section39` int(11) NOT NULL,
  `Ndossier` int(25) NOT NULL,
  `Chmiothrapie_dela_recidive` varchar(255) NOT NULL,
  `Nombre_de_lignes_de_chimiotherapie` varchar(255) NOT NULL,
  `protocole_CT1LM_Recidive` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `40_xt_recidive`
--

CREATE TABLE `40_xt_recidive` (
  `IdSection` int(11) NOT NULL,
  `id_section40` int(11) NOT NULL,
  `Ndossier` int(25) NOT NULL,
  `Chirurgie_dela_recidive` varchar(255) NOT NULL,
  `HTadjuvante_apres_recidive_locale` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `41_chimiotherapie1er_ligne_metastique`
--

CREATE TABLE `41_chimiotherapie1er_ligne_metastique` (
  `IdSection` int(11) NOT NULL,
  `id_section41` int(11) NOT NULL,
  `Ndossier` int(25) NOT NULL,
  `DebutCT_1ereligne_M` date NOT NULL,
  `FinCT_1ereligne_M` date NOT NULL,
  `Nbre_de_cures1M` varchar(255) NOT NULL,
  `Report_decure_1M` varchar(255) NOT NULL,
  `Reduction_de_dose1M` varchar(255) NOT NULL,
  `Reponse1M` varchar(255) NOT NULL,
  `Date_de_levaluation1L` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `42_toxicite_g3_g4chimio1erelignem`
--

CREATE TABLE `42_toxicite_g3_g4chimio1erelignem` (
  `IdSection` int(11) NOT NULL,
  `id_section42` int(11) NOT NULL,
  `Ndossier` int(25) NOT NULL,
  `toxicite_G3_G41M` varchar(255) NOT NULL,
  `Hemato1M` varchar(255) NOT NULL,
  `Digestive1M` varchar(255) NOT NULL,
  `Cutane1M` varchar(255) NOT NULL,
  `Neuropathie1M` varchar(255) NOT NULL,
  `autres1M` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `43_chimiotherapie2em_ligne`
--

CREATE TABLE `43_chimiotherapie2em_ligne` (
  `IdSection` int(11) NOT NULL,
  `id_section43` int(11) NOT NULL,
  `Ndossier` int(25) NOT NULL,
  `CT2eme_ligneM` varchar(255) NOT NULL,
  `Nbre_decures2M` varchar(255) NOT NULL,
  `date_debut2L` date NOT NULL,
  `Fin2L` date NOT NULL,
  `Reponse2M` varchar(255) NOT NULL,
  `Datede_levaluation` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `44_toxicite_chmiothrapie2em_lignem`
--

CREATE TABLE `44_toxicite_chmiothrapie2em_lignem` (
  `IdSection` int(11) NOT NULL,
  `id_section44` int(11) NOT NULL,
  `Ndossier` int(25) NOT NULL,
  `Toxicite_Hemato2M` varchar(255) NOT NULL,
  `toxicite_digestive2M` varchar(255) NOT NULL,
  `Toxicite_cutane2M` varchar(255) NOT NULL,
  `autres_toxicites2M` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `45_chimio_3emligne`
--

CREATE TABLE `45_chimio_3emligne` (
  `IdSection` int(11) NOT NULL,
  `id_section45` int(11) NOT NULL,
  `Ndossier` int(25) NOT NULL,
  `CT_3emligneM` varchar(255) NOT NULL,
  `Nbre_decures3M` varchar(255) NOT NULL,
  `Reponse3M` varchar(255) NOT NULL,
  `Toxicite_Hemato3M` tinyint(1) NOT NULL,
  `Toxicite_Digestive3M` tinyint(1) NOT NULL,
  `Toxicite_cutane3M` tinyint(1) NOT NULL,
  `Autre_Toxicite3M` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `46_maintenance_partrastuzumab`
--

CREATE TABLE `46_maintenance_partrastuzumab` (
  `IdSection` int(11) NOT NULL,
  `id_section46` int(11) NOT NULL,
  `Ndossier` int(25) NOT NULL,
  `Maintenance_par_Trastuzumab` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `47_flash_rt`
--

CREATE TABLE `47_flash_rt` (
  `IdSection` int(11) NOT NULL,
  `id_section47` int(11) NOT NULL,
  `Ndossier` int(25) NOT NULL,
  `flash_RT` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `48_maintenance_parhormonotherapieht`
--

CREATE TABLE `48_maintenance_parhormonotherapieht` (
  `IdSection` int(11) NOT NULL,
  `id_section48` int(11) NOT NULL,
  `Ndossier` int(25) NOT NULL,
  `Maintenancepar_HT` varchar(255) NOT NULL,
  `date_deMaintenanceHT` date NOT NULL,
  `fin_maintenanceHT` date NOT NULL,
  `Duree_de_lamaintenanceHT_mois` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `49_hormonotherapie_ht_1ereligne_m`
--

CREATE TABLE `49_hormonotherapie_ht_1ereligne_m` (
  `IdSection` int(11) NOT NULL,
  `id_section49` int(11) NOT NULL,
  `Ndossier` int(25) NOT NULL,
  `date_de_debut` date NOT NULL,
  `HT1erligne_M` varchar(255) NOT NULL,
  `date_de_finHT_1L` date NOT NULL,
  `dureeHT_1L_mois` varchar(255) NOT NULL,
  `ReponseHT_1L` varchar(255) NOT NULL,
  `date_de_la_reponse` date NOT NULL,
  `toxiciteHT_1L` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `50_hormonotherapie_2em_ligne_m`
--

CREATE TABLE `50_hormonotherapie_2em_ligne_m` (
  `IdSection` int(11) NOT NULL,
  `id_section50` int(11) NOT NULL,
  `Ndossier` int(25) NOT NULL,
  `HT_2emligneM` varchar(255) NOT NULL,
  `Debut_2HM` date NOT NULL,
  `fin2HM` date NOT NULL,
  `duree2HM_mois` date NOT NULL,
  `Reponse2HM` varchar(255) NOT NULL,
  `date_de_levaluation` date NOT NULL,
  `toxicite2HM` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `51_ht_3ligne_m`
--

CREATE TABLE `51_ht_3ligne_m` (
  `IdSection` int(11) NOT NULL,
  `id_section51` int(11) NOT NULL,
  `Ndossier` int(25) NOT NULL,
  `HT_3ligneM` varchar(255) NOT NULL,
  `Datede_debutHT_3L` date NOT NULL,
  `Date_de_finHT_3L` date NOT NULL,
  `dureHT_3L` date NOT NULL,
  `ReponseHT_3L` varchar(255) NOT NULL,
  `toxicite_HT3L` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `52_grossesse_apres_trt`
--

CREATE TABLE `52_grossesse_apres_trt` (
  `IdSection` int(11) NOT NULL,
  `id_section52` int(11) NOT NULL,
  `Ndossier` int(25) NOT NULL,
  `grossesse_apresTRT` tinyint(1) NOT NULL,
  `enfant_vivant` tinyint(1) NOT NULL,
  `Delai_finTRT_Gsse_ans` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `53_devenir`
--

CREATE TABLE `53_devenir` (
  `IdSection` int(11) NOT NULL,
  `id_section53` int(11) NOT NULL,
  `Ndossier` int(25) NOT NULL,
  `Devenir` varchar(255) NOT NULL,
  `Date_de_dece` date NOT NULL,
  `cause_de_dece` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `54_datededernier_controle`
--

CREATE TABLE `54_datededernier_controle` (
  `IdSection` int(11) NOT NULL,
  `id_section54` int(11) NOT NULL,
  `Ndossier` int(25) NOT NULL,
  `Datede_dernier_control` date NOT NULL,
  `survie_sansrechute` date NOT NULL,
  `survie_sans_progression` varchar(255) NOT NULL,
  `commentaire` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `55_osteodensitometrie`
--

CREATE TABLE `55_osteodensitometrie` (
  `IdSection` int(11) NOT NULL,
  `id_section55` int(11) NOT NULL,
  `Ndossier` int(25) NOT NULL,
  `DMOavantHT` varchar(255) NOT NULL,
  `DMO_annee` varchar(255) NOT NULL,
  `Biphosphonatepreventive_enadjuvant` tinyint(1) NOT NULL,
  `datereprise_ducycle_a_larretde_la_CT` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `remplir`
--

CREATE TABLE `remplir` (
  `IdSection` int(11) NOT NULL,
  `Idremplir` int(11) NOT NULL,
  `iduser` int(11) NOT NULL,
  `Ndossier` int(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `section`
--

CREATE TABLE `section` (
  `IdSection` int(20) NOT NULL,
  `nomsection` varchar(20) NOT NULL,
  `iduser` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

CREATE TABLE `utilisateur` (
  `nomutilisateur` varchar(255) NOT NULL,
  `mot_de_passe` varchar(20) NOT NULL,
  `Admin` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `utilisateur`
--

INSERT INTO `utilisateur` (`nomutilisateur`, `mot_de_passe`, `Admin`) VALUES
('1', '1', 0),
('Boulouh', 'CAC2022', 1);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `1_reference_despatients`
--
ALTER TABLE `1_reference_despatients`
  ADD PRIMARY KEY (`Ndossier`),
  ADD KEY `IdSection` (`IdSection`),
  ADD KEY `iduser` (`iduser`);

--
-- Index pour la table `2_caracteristique_sosciodemographique`
--
ALTER TABLE `2_caracteristique_sosciodemographique`
  ADD PRIMARY KEY (`idsection2`),
  ADD KEY `IdSection` (`IdSection`);

--
-- Index pour la table `3_donnees_anamnestique_atcdspersonneles`
--
ALTER TABLE `3_donnees_anamnestique_atcdspersonneles`
  ADD PRIMARY KEY (`id_section3`),
  ADD KEY `idSection` (`idSection`),
  ADD KEY `N dossier` (`Ndossier`);

--
-- Index pour la table `4_atcd_familliaux_cancer`
--
ALTER TABLE `4_atcd_familliaux_cancer`
  ADD PRIMARY KEY (`id_section4`),
  ADD KEY `IdSection` (`IdSection`),
  ADD KEY `N dossier` (`Ndossier`);

--
-- Index pour la table `5_imc`
--
ALTER TABLE `5_imc`
  ADD PRIMARY KEY (`id_section5`),
  ADD KEY `IdSection` (`IdSection`),
  ADD KEY `N dossier` (`Ndossier`);

--
-- Index pour la table `6_habitude_toxique`
--
ALTER TABLE `6_habitude_toxique`
  ADD PRIMARY KEY (`id_section6`),
  ADD KEY `IdSection` (`IdSection`),
  ADD KEY `N dossier` (`Ndossier`);

--
-- Index pour la table `7_etude_genetique`
--
ALTER TABLE `7_etude_genetique`
  ADD PRIMARY KEY (`id_section7`),
  ADD KEY `IdSection` (`IdSection`),
  ADD KEY `N dossier` (`Ndossier`);

--
-- Index pour la table `8_section8`
--
ALTER TABLE `8_section8`
  ADD PRIMARY KEY (`id_section8`),
  ADD KEY `IdSection` (`IdSection`),
  ADD KEY `N dossier` (`Ndossier`);

--
-- Index pour la table `9_circonctances_de_decouverte`
--
ALTER TABLE `9_circonctances_de_decouverte`
  ADD PRIMARY KEY (`id_section9`),
  ADD KEY `IdSection` (`IdSection`),
  ADD KEY `N dossier` (`Ndossier`);

--
-- Index pour la table `10_donnees_clinique`
--
ALTER TABLE `10_donnees_clinique`
  ADD PRIMARY KEY (`idsection10`),
  ADD KEY `IdSection` (`IdSection`),
  ADD KEY `N dossier` (`Ndossier`);

--
-- Index pour la table `11_la_mammographie`
--
ALTER TABLE `11_la_mammographie`
  ADD PRIMARY KEY (`idsection11`),
  ADD KEY `N dossier` (`Ndossier`),
  ADD KEY `IdSection` (`IdSection`);

--
-- Index pour la table `12_irm_mammaire`
--
ALTER TABLE `12_irm_mammaire`
  ADD PRIMARY KEY (`id_section12`),
  ADD KEY `IdSection` (`IdSection`),
  ADD KEY `N dossier` (`Ndossier`);

--
-- Index pour la table `13_donnees_anatomapathologique_typehistologique`
--
ALTER TABLE `13_donnees_anatomapathologique_typehistologique`
  ADD PRIMARY KEY (`id_section24`),
  ADD KEY `IdSection` (`IdSection`),
  ADD KEY `N dossier` (`Ndossier`);

--
-- Index pour la table `14_donnes_annatomopatologiebiopsy_initial_facteurspronostique`
--
ALTER TABLE `14_donnes_annatomopatologiebiopsy_initial_facteurspronostique`
  ADD PRIMARY KEY (`id_section14`),
  ADD KEY `IdSection` (`IdSection`),
  ADD KEY `N dossier` (`Ndossier`);

--
-- Index pour la table `15_donnes_annatomopatologiebiopsy_initial_typehistologique_ihc`
--
ALTER TABLE `15_donnes_annatomopatologiebiopsy_initial_typehistologique_ihc`
  ADD PRIMARY KEY (`id_section15`),
  ADD KEY `IdSection` (`IdSection`),
  ADD KEY `N dossier` (`Ndossier`);

--
-- Index pour la table `16_billan_dextension`
--
ALTER TABLE `16_billan_dextension`
  ADD PRIMARY KEY (`id_section16`),
  ADD KEY `IdSection` (`IdSection`),
  ADD KEY `N dossier` (`N_dossier`);

--
-- Index pour la table `17_metastase_synchrone`
--
ALTER TABLE `17_metastase_synchrone`
  ADD PRIMARY KEY (`id_section17`),
  ADD KEY `IdSection` (`IdSection`),
  ADD KEY `N dossier` (`Ndossier`);

--
-- Index pour la table `18_classifications`
--
ALTER TABLE `18_classifications`
  ADD PRIMARY KEY (`id_section18`),
  ADD KEY `IdSection` (`IdSection`),
  ADD KEY `N dossier` (`Ndossier`);

--
-- Index pour la table `19_bilan_biologique_initial`
--
ALTER TABLE `19_bilan_biologique_initial`
  ADD PRIMARY KEY (`id_section19`),
  ADD KEY `N dossier` (`Ndossier`),
  ADD KEY `IdSection` (`IdSection`);

--
-- Index pour la table `20_pec_yherapeut`
--
ALTER TABLE `20_pec_yherapeut`
  ADD PRIMARY KEY (`id_section20`),
  ADD KEY `IdSection` (`IdSection`),
  ADD KEY `Ndossier` (`Ndossier`);

--
-- Index pour la table `21_pec_chirurgicale`
--
ALTER TABLE `21_pec_chirurgicale`
  ADD PRIMARY KEY (`id_section21`),
  ADD KEY `IdSection` (`IdSection`),
  ADD KEY `N dossier` (`Ndossier`);

--
-- Index pour la table `22_donnees_anatomopathologique_de_la chirurgie`
--
ALTER TABLE `22_donnees_anatomopathologique_de_la chirurgie`
  ADD PRIMARY KEY (`id_section22`),
  ADD KEY `IdSection` (`IdSection`),
  ADD KEY `N dossier` (`Ndossier`);

--
-- Index pour la table `23_donnesannatomopatologiebiopsy_initial_typehistologique`
--
ALTER TABLE `23_donnesannatomopatologiebiopsy_initial_typehistologique`
  ADD PRIMARY KEY (`id_section13`),
  ADD KEY `IdSection` (`IdSection`),
  ADD KEY `N dossier` (`Ndossier`);

--
-- Index pour la table `24_autres_donnees_anatomapathologique_de_la_chirurgie`
--
ALTER TABLE `24_autres_donnees_anatomapathologique_de_la_chirurgie`
  ADD PRIMARY KEY (`id_section24`),
  ADD KEY `IdSection` (`IdSection`),
  ADD KEY `N dossier` (`Ndossier`);

--
-- Index pour la table `25_classification_histologique`
--
ALTER TABLE `25_classification_histologique`
  ADD PRIMARY KEY (`id_section25`),
  ADD KEY `IdSection` (`IdSection`),
  ADD KEY `N dossier` (`Ndossier`);

--
-- Index pour la table `26_autresdonnees_anatomopatologie_delachirurgie`
--
ALTER TABLE `26_autresdonnees_anatomopatologie_delachirurgie`
  ADD PRIMARY KEY (`id_section26`),
  ADD KEY `IdSection` (`IdSection`),
  ADD KEY `N dossier` (`Ndossier`);

--
-- Index pour la table `27_ihc_sur_piece_operatoire`
--
ALTER TABLE `27_ihc_sur_piece_operatoire`
  ADD PRIMARY KEY (`id_section27`),
  ADD KEY `N dossier` (`Ndossier`),
  ADD KEY `IdSection` (`IdSection`);

--
-- Index pour la table `28_chimiotherapie_adjuvante_cta`
--
ALTER TABLE `28_chimiotherapie_adjuvante_cta`
  ADD PRIMARY KEY (`id_section28`),
  ADD KEY `IdSection` (`IdSection`),
  ADD KEY `N dossier` (`Ndossier`);

--
-- Index pour la table `29_toxicite_de_la_cta`
--
ALTER TABLE `29_toxicite_de_la_cta`
  ADD PRIMARY KEY (`id_section29`),
  ADD KEY `IdSection` (`IdSection`),
  ADD KEY `N dossier` (`Ndossier`);

--
-- Index pour la table `30_chimiotherapie_neoadjuvante_cna`
--
ALTER TABLE `30_chimiotherapie_neoadjuvante_cna`
  ADD PRIMARY KEY (`id_section30`),
  ADD KEY `IdSection` (`IdSection`),
  ADD KEY `N dossier` (`Ndossier`);

--
-- Index pour la table `31_toxicite_de_la_ctna`
--
ALTER TABLE `31_toxicite_de_la_ctna`
  ADD PRIMARY KEY (`id_section31`),
  ADD KEY `IdSection` (`IdSection`),
  ADD KEY `N dossier` (`Ndossier`);

--
-- Index pour la table `32_evaluation_ctna`
--
ALTER TABLE `32_evaluation_ctna`
  ADD PRIMARY KEY (`id_section32`),
  ADD KEY `IdSection` (`IdSection`),
  ADD KEY `N dossier` (`Ndossier`);

--
-- Index pour la table `33_hormonotherapie_htadjuvante`
--
ALTER TABLE `33_hormonotherapie_htadjuvante`
  ADD PRIMARY KEY (`id_section33`),
  ADD KEY `IdSection` (`IdSection`),
  ADD KEY `N dossier` (`Ndossier`);

--
-- Index pour la table `34_trastuzumab_en_adjuvant`
--
ALTER TABLE `34_trastuzumab_en_adjuvant`
  ADD PRIMARY KEY (`id_section34`),
  ADD KEY `IdSection` (`IdSection`),
  ADD KEY `N dossier` (`Ndossier`);

--
-- Index pour la table `35_radiotherapiert_enadjuvant`
--
ALTER TABLE `35_radiotherapiert_enadjuvant`
  ADD PRIMARY KEY (`id_section35`),
  ADD KEY `N dossier` (`Ndossier`),
  ADD KEY `IdSection` (`IdSection`);

--
-- Index pour la table `36_recidive_controlatele_locale`
--
ALTER TABLE `36_recidive_controlatele_locale`
  ADD PRIMARY KEY (`id_section36`),
  ADD KEY `IdSection` (`IdSection`),
  ADD KEY `N dossier` (`Ndossier`);

--
-- Index pour la table `37_recrechute_m`
--
ALTER TABLE `37_recrechute_m`
  ADD PRIMARY KEY (`id_section37`),
  ADD KEY `N dossier` (`Ndossier`),
  ADD KEY `IdSection` (`IdSection`);

--
-- Index pour la table `38_ihc_dela_rechute`
--
ALTER TABLE `38_ihc_dela_rechute`
  ADD PRIMARY KEY (`id_section38`),
  ADD KEY `IdSection` (`IdSection`),
  ADD KEY `N dossier` (`Ndossier`);

--
-- Index pour la table `39_chimiotherapie_de_la _recidive`
--
ALTER TABLE `39_chimiotherapie_de_la _recidive`
  ADD PRIMARY KEY (`id_section39`),
  ADD KEY `IdSection` (`IdSection`),
  ADD KEY `N dossier` (`Ndossier`);

--
-- Index pour la table `40_xt_recidive`
--
ALTER TABLE `40_xt_recidive`
  ADD PRIMARY KEY (`id_section40`),
  ADD KEY `IdSection` (`IdSection`),
  ADD KEY `N dossier` (`Ndossier`);

--
-- Index pour la table `41_chimiotherapie1er_ligne_metastique`
--
ALTER TABLE `41_chimiotherapie1er_ligne_metastique`
  ADD PRIMARY KEY (`id_section41`),
  ADD KEY `IdSection` (`IdSection`),
  ADD KEY `N dossier` (`Ndossier`);

--
-- Index pour la table `42_toxicite_g3_g4chimio1erelignem`
--
ALTER TABLE `42_toxicite_g3_g4chimio1erelignem`
  ADD PRIMARY KEY (`id_section42`),
  ADD KEY `IdSection` (`IdSection`),
  ADD KEY `N dossier` (`Ndossier`);

--
-- Index pour la table `43_chimiotherapie2em_ligne`
--
ALTER TABLE `43_chimiotherapie2em_ligne`
  ADD PRIMARY KEY (`id_section43`),
  ADD KEY `IdSection` (`IdSection`),
  ADD KEY `N dossier` (`Ndossier`);

--
-- Index pour la table `44_toxicite_chmiothrapie2em_lignem`
--
ALTER TABLE `44_toxicite_chmiothrapie2em_lignem`
  ADD PRIMARY KEY (`id_section44`),
  ADD KEY `IdSection` (`IdSection`),
  ADD KEY `N dossier` (`Ndossier`);

--
-- Index pour la table `45_chimio_3emligne`
--
ALTER TABLE `45_chimio_3emligne`
  ADD PRIMARY KEY (`id_section45`),
  ADD KEY `IdSection` (`IdSection`),
  ADD KEY `N dossier` (`Ndossier`);

--
-- Index pour la table `46_maintenance_partrastuzumab`
--
ALTER TABLE `46_maintenance_partrastuzumab`
  ADD PRIMARY KEY (`id_section46`),
  ADD KEY `IdSection` (`IdSection`),
  ADD KEY `N dossier` (`Ndossier`);

--
-- Index pour la table `47_flash_rt`
--
ALTER TABLE `47_flash_rt`
  ADD PRIMARY KEY (`id_section47`),
  ADD KEY `IdSection` (`IdSection`),
  ADD KEY `N dossier` (`Ndossier`);

--
-- Index pour la table `48_maintenance_parhormonotherapieht`
--
ALTER TABLE `48_maintenance_parhormonotherapieht`
  ADD PRIMARY KEY (`id_section48`),
  ADD KEY `IdSection` (`IdSection`),
  ADD KEY `N dossier` (`Ndossier`);

--
-- Index pour la table `49_hormonotherapie_ht_1ereligne_m`
--
ALTER TABLE `49_hormonotherapie_ht_1ereligne_m`
  ADD PRIMARY KEY (`id_section49`),
  ADD KEY `IdSection` (`IdSection`),
  ADD KEY `N dossier` (`Ndossier`);

--
-- Index pour la table `50_hormonotherapie_2em_ligne_m`
--
ALTER TABLE `50_hormonotherapie_2em_ligne_m`
  ADD PRIMARY KEY (`id_section50`),
  ADD KEY `IdSection` (`IdSection`),
  ADD KEY `N dossier` (`Ndossier`);

--
-- Index pour la table `51_ht_3ligne_m`
--
ALTER TABLE `51_ht_3ligne_m`
  ADD PRIMARY KEY (`id_section51`),
  ADD KEY `IdSection` (`IdSection`),
  ADD KEY `N dossier` (`Ndossier`);

--
-- Index pour la table `52_grossesse_apres_trt`
--
ALTER TABLE `52_grossesse_apres_trt`
  ADD PRIMARY KEY (`id_section52`),
  ADD KEY `IdSection` (`IdSection`),
  ADD KEY `N dossier` (`Ndossier`);

--
-- Index pour la table `53_devenir`
--
ALTER TABLE `53_devenir`
  ADD PRIMARY KEY (`id_section53`),
  ADD KEY `IdSection` (`IdSection`),
  ADD KEY `N dossier` (`Ndossier`);

--
-- Index pour la table `54_datededernier_controle`
--
ALTER TABLE `54_datededernier_controle`
  ADD PRIMARY KEY (`id_section54`),
  ADD KEY `IdSection` (`IdSection`),
  ADD KEY `N dossier` (`Ndossier`);

--
-- Index pour la table `55_osteodensitometrie`
--
ALTER TABLE `55_osteodensitometrie`
  ADD PRIMARY KEY (`id_section55`),
  ADD KEY `IdSection` (`IdSection`),
  ADD KEY `N dossier` (`Ndossier`);

--
-- Index pour la table `remplir`
--
ALTER TABLE `remplir`
  ADD PRIMARY KEY (`Idremplir`),
  ADD KEY `IdSection` (`IdSection`),
  ADD KEY `iduser` (`iduser`),
  ADD KEY `N dossier` (`Ndossier`);

--
-- Index pour la table `section`
--
ALTER TABLE `section`
  ADD PRIMARY KEY (`IdSection`),
  ADD KEY `iduser` (`iduser`);

--
-- Index pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  ADD PRIMARY KEY (`nomutilisateur`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `2_caracteristique_sosciodemographique`
--
ALTER TABLE `2_caracteristique_sosciodemographique`
  MODIFY `idsection2` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `6_habitude_toxique`
--
ALTER TABLE `6_habitude_toxique`
  MODIFY `id_section6` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `7_etude_genetique`
--
ALTER TABLE `7_etude_genetique`
  MODIFY `id_section7` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `8_section8`
--
ALTER TABLE `8_section8`
  MODIFY `id_section8` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `10_donnees_clinique`
--
ALTER TABLE `10_donnees_clinique`
  MODIFY `idsection10` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `11_la_mammographie`
--
ALTER TABLE `11_la_mammographie`
  MODIFY `idsection11` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `14_donnes_annatomopatologiebiopsy_initial_facteurspronostique`
--
ALTER TABLE `14_donnes_annatomopatologiebiopsy_initial_facteurspronostique`
  MODIFY `id_section14` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `15_donnes_annatomopatologiebiopsy_initial_typehistologique_ihc`
--
ALTER TABLE `15_donnes_annatomopatologiebiopsy_initial_typehistologique_ihc`
  MODIFY `id_section15` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `16_billan_dextension`
--
ALTER TABLE `16_billan_dextension`
  MODIFY `id_section16` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `17_metastase_synchrone`
--
ALTER TABLE `17_metastase_synchrone`
  MODIFY `id_section17` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `18_classifications`
--
ALTER TABLE `18_classifications`
  MODIFY `id_section18` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `19_bilan_biologique_initial`
--
ALTER TABLE `19_bilan_biologique_initial`
  MODIFY `id_section19` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `20_pec_yherapeut`
--
ALTER TABLE `20_pec_yherapeut`
  MODIFY `id_section20` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `21_pec_chirurgicale`
--
ALTER TABLE `21_pec_chirurgicale`
  MODIFY `id_section21` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `22_donnees_anatomopathologique_de_la chirurgie`
--
ALTER TABLE `22_donnees_anatomopathologique_de_la chirurgie`
  MODIFY `id_section22` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `23_donnesannatomopatologiebiopsy_initial_typehistologique`
--
ALTER TABLE `23_donnesannatomopatologiebiopsy_initial_typehistologique`
  MODIFY `id_section13` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `24_autres_donnees_anatomapathologique_de_la_chirurgie`
--
ALTER TABLE `24_autres_donnees_anatomapathologique_de_la_chirurgie`
  MODIFY `id_section24` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `25_classification_histologique`
--
ALTER TABLE `25_classification_histologique`
  MODIFY `id_section25` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `26_autresdonnees_anatomopatologie_delachirurgie`
--
ALTER TABLE `26_autresdonnees_anatomopatologie_delachirurgie`
  MODIFY `id_section26` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `27_ihc_sur_piece_operatoire`
--
ALTER TABLE `27_ihc_sur_piece_operatoire`
  MODIFY `id_section27` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `28_chimiotherapie_adjuvante_cta`
--
ALTER TABLE `28_chimiotherapie_adjuvante_cta`
  MODIFY `id_section28` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `29_toxicite_de_la_cta`
--
ALTER TABLE `29_toxicite_de_la_cta`
  MODIFY `id_section29` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `30_chimiotherapie_neoadjuvante_cna`
--
ALTER TABLE `30_chimiotherapie_neoadjuvante_cna`
  MODIFY `id_section30` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `31_toxicite_de_la_ctna`
--
ALTER TABLE `31_toxicite_de_la_ctna`
  MODIFY `id_section31` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `32_evaluation_ctna`
--
ALTER TABLE `32_evaluation_ctna`
  MODIFY `id_section32` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `33_hormonotherapie_htadjuvante`
--
ALTER TABLE `33_hormonotherapie_htadjuvante`
  MODIFY `id_section33` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `34_trastuzumab_en_adjuvant`
--
ALTER TABLE `34_trastuzumab_en_adjuvant`
  MODIFY `id_section34` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `35_radiotherapiert_enadjuvant`
--
ALTER TABLE `35_radiotherapiert_enadjuvant`
  MODIFY `id_section35` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `36_recidive_controlatele_locale`
--
ALTER TABLE `36_recidive_controlatele_locale`
  MODIFY `id_section36` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `37_recrechute_m`
--
ALTER TABLE `37_recrechute_m`
  MODIFY `id_section37` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `38_ihc_dela_rechute`
--
ALTER TABLE `38_ihc_dela_rechute`
  MODIFY `id_section38` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `39_chimiotherapie_de_la _recidive`
--
ALTER TABLE `39_chimiotherapie_de_la _recidive`
  MODIFY `id_section39` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `41_chimiotherapie1er_ligne_metastique`
--
ALTER TABLE `41_chimiotherapie1er_ligne_metastique`
  MODIFY `id_section41` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `42_toxicite_g3_g4chimio1erelignem`
--
ALTER TABLE `42_toxicite_g3_g4chimio1erelignem`
  MODIFY `id_section42` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `43_chimiotherapie2em_ligne`
--
ALTER TABLE `43_chimiotherapie2em_ligne`
  MODIFY `id_section43` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `44_toxicite_chmiothrapie2em_lignem`
--
ALTER TABLE `44_toxicite_chmiothrapie2em_lignem`
  MODIFY `id_section44` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `45_chimio_3emligne`
--
ALTER TABLE `45_chimio_3emligne`
  MODIFY `id_section45` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `46_maintenance_partrastuzumab`
--
ALTER TABLE `46_maintenance_partrastuzumab`
  MODIFY `id_section46` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `47_flash_rt`
--
ALTER TABLE `47_flash_rt`
  MODIFY `id_section47` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `48_maintenance_parhormonotherapieht`
--
ALTER TABLE `48_maintenance_parhormonotherapieht`
  MODIFY `id_section48` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `49_hormonotherapie_ht_1ereligne_m`
--
ALTER TABLE `49_hormonotherapie_ht_1ereligne_m`
  MODIFY `id_section49` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `50_hormonotherapie_2em_ligne_m`
--
ALTER TABLE `50_hormonotherapie_2em_ligne_m`
  MODIFY `id_section50` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `51_ht_3ligne_m`
--
ALTER TABLE `51_ht_3ligne_m`
  MODIFY `id_section51` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `52_grossesse_apres_trt`
--
ALTER TABLE `52_grossesse_apres_trt`
  MODIFY `id_section52` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `53_devenir`
--
ALTER TABLE `53_devenir`
  MODIFY `id_section53` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `54_datededernier_controle`
--
ALTER TABLE `54_datededernier_controle`
  MODIFY `id_section54` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `55_osteodensitometrie`
--
ALTER TABLE `55_osteodensitometrie`
  MODIFY `id_section55` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `remplir`
--
ALTER TABLE `remplir`
  MODIFY `Idremplir` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `section`
--
ALTER TABLE `section`
  MODIFY `IdSection` int(20) NOT NULL AUTO_INCREMENT;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `1_reference_despatients`
--
ALTER TABLE `1_reference_despatients`
  ADD CONSTRAINT `1_reference_despatients_ibfk_1` FOREIGN KEY (`IdSection`) REFERENCES `1_reference_despatients` (`Ndossier`),
  ADD CONSTRAINT `1_reference_despatients_ibfk_2` FOREIGN KEY (`iduser`) REFERENCES `1_reference_despatients` (`Ndossier`);

--
-- Contraintes pour la table `2_caracteristique_sosciodemographique`
--
ALTER TABLE `2_caracteristique_sosciodemographique`
  ADD CONSTRAINT `2_caracteristique_sosciodemographique_ibfk_1` FOREIGN KEY (`IdSection`) REFERENCES `2_caracteristique_sosciodemographique` (`idsection2`);

--
-- Contraintes pour la table `3_donnees_anamnestique_atcdspersonneles`
--
ALTER TABLE `3_donnees_anamnestique_atcdspersonneles`
  ADD CONSTRAINT `3_donnees_anamnestique_atcdspersonneles_ibfk_1` FOREIGN KEY (`idSection`) REFERENCES `3_donnees_anamnestique_atcdspersonneles` (`id_section3`),
  ADD CONSTRAINT `3_donnees_anamnestique_atcdspersonneles_ibfk_2` FOREIGN KEY (`Ndossier`) REFERENCES `3_donnees_anamnestique_atcdspersonneles` (`id_section3`);

--
-- Contraintes pour la table `4_atcd_familliaux_cancer`
--
ALTER TABLE `4_atcd_familliaux_cancer`
  ADD CONSTRAINT `4_atcd_familliaux_cancer_ibfk_1` FOREIGN KEY (`IdSection`) REFERENCES `4_atcd_familliaux_cancer` (`id_section4`),
  ADD CONSTRAINT `4_atcd_familliaux_cancer_ibfk_2` FOREIGN KEY (`Ndossier`) REFERENCES `4_atcd_familliaux_cancer` (`id_section4`);

--
-- Contraintes pour la table `5_imc`
--
ALTER TABLE `5_imc`
  ADD CONSTRAINT `5_imc_ibfk_1` FOREIGN KEY (`IdSection`) REFERENCES `5_imc` (`id_section5`),
  ADD CONSTRAINT `5_imc_ibfk_2` FOREIGN KEY (`Ndossier`) REFERENCES `5_imc` (`id_section5`);

--
-- Contraintes pour la table `6_habitude_toxique`
--
ALTER TABLE `6_habitude_toxique`
  ADD CONSTRAINT `6_habitude_toxique_ibfk_1` FOREIGN KEY (`IdSection`) REFERENCES `6_habitude_toxique` (`id_section6`),
  ADD CONSTRAINT `6_habitude_toxique_ibfk_2` FOREIGN KEY (`Ndossier`) REFERENCES `6_habitude_toxique` (`id_section6`);

--
-- Contraintes pour la table `7_etude_genetique`
--
ALTER TABLE `7_etude_genetique`
  ADD CONSTRAINT `7_etude_genetique_ibfk_1` FOREIGN KEY (`IdSection`) REFERENCES `7_etude_genetique` (`id_section7`),
  ADD CONSTRAINT `7_etude_genetique_ibfk_2` FOREIGN KEY (`Ndossier`) REFERENCES `7_etude_genetique` (`id_section7`);

--
-- Contraintes pour la table `8_section8`
--
ALTER TABLE `8_section8`
  ADD CONSTRAINT `8_section8_ibfk_1` FOREIGN KEY (`IdSection`) REFERENCES `8_section8` (`id_section8`),
  ADD CONSTRAINT `8_section8_ibfk_2` FOREIGN KEY (`Ndossier`) REFERENCES `8_section8` (`id_section8`);

--
-- Contraintes pour la table `9_circonctances_de_decouverte`
--
ALTER TABLE `9_circonctances_de_decouverte`
  ADD CONSTRAINT `9_circonctances_de_decouverte_ibfk_1` FOREIGN KEY (`IdSection`) REFERENCES `9_circonctances_de_decouverte` (`id_section9`),
  ADD CONSTRAINT `9_circonctances_de_decouverte_ibfk_2` FOREIGN KEY (`Ndossier`) REFERENCES `9_circonctances_de_decouverte` (`id_section9`);

--
-- Contraintes pour la table `10_donnees_clinique`
--
ALTER TABLE `10_donnees_clinique`
  ADD CONSTRAINT `10_donnees_clinique_ibfk_1` FOREIGN KEY (`IdSection`) REFERENCES `10_donnees_clinique` (`idsection10`),
  ADD CONSTRAINT `10_donnees_clinique_ibfk_2` FOREIGN KEY (`Ndossier`) REFERENCES `10_donnees_clinique` (`idsection10`);

--
-- Contraintes pour la table `11_la_mammographie`
--
ALTER TABLE `11_la_mammographie`
  ADD CONSTRAINT `11_la_mammographie_ibfk_1` FOREIGN KEY (`Ndossier`) REFERENCES `11_la_mammographie` (`idsection11`),
  ADD CONSTRAINT `11_la_mammographie_ibfk_2` FOREIGN KEY (`IdSection`) REFERENCES `11_la_mammographie` (`idsection11`);

--
-- Contraintes pour la table `12_irm_mammaire`
--
ALTER TABLE `12_irm_mammaire`
  ADD CONSTRAINT `12_irm_mammaire_ibfk_1` FOREIGN KEY (`IdSection`) REFERENCES `12_irm_mammaire` (`id_section12`),
  ADD CONSTRAINT `12_irm_mammaire_ibfk_2` FOREIGN KEY (`Ndossier`) REFERENCES `12_irm_mammaire` (`id_section12`);

--
-- Contraintes pour la table `13_donnees_anatomapathologique_typehistologique`
--
ALTER TABLE `13_donnees_anatomapathologique_typehistologique`
  ADD CONSTRAINT `13_donnees_anatomapathologique_typehistologique_ibfk_1` FOREIGN KEY (`IdSection`) REFERENCES `13_donnees_anatomapathologique_typehistologique` (`id_section24`),
  ADD CONSTRAINT `13_donnees_anatomapathologique_typehistologique_ibfk_2` FOREIGN KEY (`Ndossier`) REFERENCES `23_donnesannatomopatologiebiopsy_initial_typehistologique` (`id_section13`);

--
-- Contraintes pour la table `20_pec_yherapeut`
--
ALTER TABLE `20_pec_yherapeut`
  ADD CONSTRAINT `20_pec_yherapeut_ibfk_1` FOREIGN KEY (`IdSection`) REFERENCES `20_pec_yherapeut` (`id_section20`),
  ADD CONSTRAINT `20_pec_yherapeut_ibfk_2` FOREIGN KEY (`Ndossier`) REFERENCES `20_pec_yherapeut` (`id_section20`);

--
-- Contraintes pour la table `31_toxicite_de_la_ctna`
--
ALTER TABLE `31_toxicite_de_la_ctna`
  ADD CONSTRAINT `31_toxicite_de_la_ctna_ibfk_1` FOREIGN KEY (`Ndossier`) REFERENCES `31_toxicite_de_la_ctna` (`id_section31`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
