-- ---
-- Globals
-- ---

-- SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
-- SET FOREIGN_KEY_CHECKS=0;

-- BD 'nestor'
DROP DATABASE IF EXISTS nestor;
CREATE DATABASE nestor  CHARACTER SET utf8mb4 COLLATE=utf8mb4_general_ci;
USE nestor;


-- ---
-- Table 'utilisateur'
-- 
-- ---

DROP TABLE IF EXISTS `utilisateur`;
		
CREATE TABLE `utilisateur` (
  `id` MEDIUMINT NOT NULL AUTO_INCREMENT,
  `nom_complet` VARCHAR(50) NOT NULL,
  `courriel` VARCHAR(200) NOT NULL,
  `mdp` CHAR(128) NOT NULL COMMENT 'Mot de passe encrypté avec SHA512',
  `dcc` DATE NOT NULL COMMENT 'Date à laquelle le compte a été ouvert.',
  PRIMARY KEY (`id`),
  UNIQUE KEY (`courriel`)
);

-- ---
-- Table 'contact'
-- 
-- ---

DROP TABLE IF EXISTS `contact`;
		
CREATE TABLE `contact` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `prenom` VARCHAR(25) NULL DEFAULT NULL,
  `nom` VARCHAR(25) NULL DEFAULT NULL,
  `id_utilisateur` MEDIUMINT NOT NULL,
  PRIMARY KEY (`id`)
);

-- ---
-- Table 'telephone'
-- 
-- ---

DROP TABLE IF EXISTS `telephone`;
		
CREATE TABLE `telephone` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `numero` VARCHAR(20) NOT NULL,
  `poste` VARCHAR(10) NULL DEFAULT NULL,
  `type` ENUM('Domicile', 'Bureau', 'Cellulaire', 'Autre') NOT NULL DEFAULT 'Cellulaire',
  `id_contact` INT NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY (`numero`, `type`, `id_contact`)
);

-- ---
-- Foreign Keys 
-- ---

ALTER TABLE `contact` ADD FOREIGN KEY (id_utilisateur) REFERENCES `utilisateur` (`id`);
ALTER TABLE `telephone` ADD FOREIGN KEY (id_contact) REFERENCES `contact` (`id`);

-- ---
-- Table Properties
-- ---

-- ALTER TABLE `utilisateur` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `contact` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `telephone` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ---
-- Test Data
-- ---

-- INSERT INTO `utilisateur` (`id`,`nom_complet`,`courriel`,`mdp`,`dcc`) VALUES
-- ('','','','','');
-- INSERT INTO `contact` (`id`,`prenom`,`nom`,`id_utilisateur`) VALUES
-- ('','','','');
-- INSERT INTO `telephone` (`id`,`numero`,`poste`,`type`,`id_contact`) VALUES
-- ('','','','','');