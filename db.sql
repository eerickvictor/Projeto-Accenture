CREATE SCHEMA IF NOT EXISTS `bancoteste` DEFAULT CHARACTER SET utf8;
use bancoteste;

CREATE TABLE IF NOT EXISTS `empresa`(
    `id` INT NOT NULL AUTO_INCREMENT,
    `cnpj` VARCHAR(14) NOT NULL, 
    `nome` VARCHAR(150) NOT NULL, 
    `email` VARCHAR(150) NOT NULL, 
    `senha` VARCHAR(150) NOT NULL, 
    `is_ativo` TINYINT NULL DEFAULT 1,
    `data_criacao` datetime DEFAULT CURRENT_TIMESTMAP,
    primary key (`id`)) 


CREATE TABLE IF NOT EXISTS `usuario`(
    `id` INT NOT NULL AUTO_INCREMENT,
    `cpf` VARCHAR(11) NOT NULL,
    `nome` VARCHAR(150) NOT NULL, 
    `email` VARCHAR(150) NOT NULL, 
    `senha` VARCHAR(150) NOT NULL, 
    `is_ativo` TINYINT NULL DEFAULT 1,
    `data_criacao` datetime DEFAULT CURRENT_TIMESTMAP,
    primary key (`id`));

CREATE TABLE IF NOT EXISTS `meta_empresa`(
    `id` INT NOT NULL AUTO_INCREMENT primary key,
    `id_empresa` INT NOT null,
    `status` VARCHAR(50),
    `porcentagem` FLOAT NOT NULL DEFAULT 0,
    FOREIGN KEY (`id_empresa`)
    REFERENCES `empresa` (`id`));
    

CREATE TABLE IF NOT EXISTS `meta_usuario`(
    `id` INT NOT NULL AUTO_INCREMENT primary key,
    `id_usuario` INT NOT NULL,
    `status` VARCHAR(50),
    `porcentagem` FLOAT NOT NULL DEFAULT 0,
    FOREIGN KEY (`id_usuario`)
    REFERENCES `usuarios` (`id`));


 
