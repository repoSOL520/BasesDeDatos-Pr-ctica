-- MySQL Workbench Synchronization
-- Generated: 2024-09-11 20:15
-- Model: New Model
-- Version: 1.0
-- Project: Name of the project
-- Author: Docente

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

CREATE SCHEMA IF NOT EXISTS `testjoin` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_cs_0900_ai_ci ;

CREATE TABLE IF NOT EXISTS `testjoin`.`departamento` (
  `iddepartamento` INT(11) NOT NULL,
  `nombred` VARCHAR(100) NULL DEFAULT NULL,
  PRIMARY KEY (`iddepartamento`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;

CREATE TABLE IF NOT EXISTS `testjoin`.`edad` (
  `empleado_idempleado` INT(11) NOT NULL,
  `fechaNacimiento` DATE NOT NULL,
  INDEX `fk_EDAD_empleado1_idx` (`empleado_idempleado` ASC) VISIBLE,
  CONSTRAINT `fk_EDAD_empleado1`
    FOREIGN KEY (`empleado_idempleado`)
    REFERENCES `testjoin`.`empleado` (`idempleado`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;

CREATE TABLE IF NOT EXISTS `testjoin`.`empleado` (
  `idempleado` INT(11) NOT NULL,
  `nombre_e` VARCHAR(100) NULL DEFAULT NULL,
  `iddepartamento` INT(11) NULL DEFAULT NULL,
  PRIMARY KEY (`idempleado`),
  INDEX `fk_empleado_departamento_idx` (`iddepartamento` ASC) VISIBLE,
  CONSTRAINT `fk_empleado_departamento`
    FOREIGN KEY (`iddepartamento`)
    REFERENCES `testjoin`.`departamento` (`iddepartamento`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
