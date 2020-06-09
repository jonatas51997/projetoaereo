-- MySQL Script generated by MySQL Workbench
-- Tue Jun  9 11:22:48 2020
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema denovo
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema denovo
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `denovo` DEFAULT CHARACTER SET latin1 ;
USE `denovo` ;

-- -----------------------------------------------------
-- Table `denovo`.`aeroporto`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `denovo`.`aeroporto` (
  `idAEROPORTO` INT(11) NOT NULL AUTO_INCREMENT,
  `NOME` VARCHAR(45) NULL DEFAULT NULL,
  `CIDADE` VARCHAR(45) NULL DEFAULT NULL,
  `ESTADO` VARCHAR(45) NULL DEFAULT NULL,
  `PAIS` VARCHAR(45) NULL DEFAULT NULL,
  `SIGLA` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`idAEROPORTO`))
ENGINE = MyISAM
AUTO_INCREMENT = 2
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `denovo`.`aviao`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `denovo`.`aviao` (
  `idAVIAO` INT(11) NOT NULL AUTO_INCREMENT,
  `MODELO` VARCHAR(45) NOT NULL,
  `CAPACIDADE` INT(11) NOT NULL,
  `FABRICANTE` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idAVIAO`))
ENGINE = MyISAM
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `denovo`.`cliente`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `denovo`.`cliente` (
  `idCLIENTE` INT(11) NOT NULL AUTO_INCREMENT,
  `NOME` VARCHAR(45) NOT NULL,
  `TIPO` VARCHAR(45) NOT NULL,
  `CPF` VARCHAR(45) NULL DEFAULT NULL,
  `CNPJ` VARCHAR(45) NULL DEFAULT NULL,
  `TELEFONE` VARCHAR(45) NULL DEFAULT NULL,
  `EMAIL` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`idCLIENTE`))
ENGINE = MyISAM
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `denovo`.`compra`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `denovo`.`compra` (
  `idCOMPRA` INT(11) NOT NULL AUTO_INCREMENT,
  `HORARIO` INT(11) NOT NULL,
  `NUMERO_CARTAO` INT(11) NOT NULL,
  `CLIENTE_idCLIENTE` INT(11) NOT NULL,
  `idHOSPEDAGEM` INT(11) NULL DEFAULT NULL,
  PRIMARY KEY (`idCOMPRA`))
ENGINE = MyISAM
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `denovo`.`passageiro`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `denovo`.`passageiro` (
  `idPASSAGEIRO` INT(11) NOT NULL AUTO_INCREMENT,
  `CPF` VARCHAR(45) NOT NULL,
  `NOME` VARCHAR(45) NOT NULL,
  `DATA_NASCIMENTO` DATE NOT NULL,
  `EMAIL` VARCHAR(45) NULL DEFAULT NULL,
  `TELEFONE` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`idPASSAGEIRO`))
ENGINE = MyISAM
AUTO_INCREMENT = 97
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `denovo`.`ticket`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `denovo`.`ticket` (
  `idTICKET` INT(11) NOT NULL,
  `VOO_idVOO` INT(11) NOT NULL,
  `CODIGO_ASSENTO` INT(11) NOT NULL,
  `DESCONTO` FLOAT NULL DEFAULT NULL,
  `COMPRA_idCOMPRA` INT(11) NOT NULL,
  `PASSAGEIRO_idPASSAGEIRO` INT(11) NOT NULL,
  PRIMARY KEY (`idTICKET`))
ENGINE = MyISAM
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `denovo`.`voo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `denovo`.`voo` (
  `idVOO` INT(11) NOT NULL AUTO_INCREMENT,
  `CODIGO` VARCHAR(45) NOT NULL,
  `HORARIO_PARTIDA` DATETIME NOT NULL,
  `HORARIO_CHEGADA` DATETIME NOT NULL,
  `AVIAO_idAVIAO` INT(11) NOT NULL,
  `idAEROPORTO_ORIGEM` INT(11) NOT NULL,
  `idAEROPORTO_DESTINO` INT(11) NOT NULL,
  PRIMARY KEY (`idVOO`))
ENGINE = MyISAM
DEFAULT CHARACTER SET = latin1;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
