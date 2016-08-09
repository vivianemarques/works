-- ---
-- Globals
-- ---

-- SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
-- SET FOREIGN_KEY_CHECKS=0;

-- ---
-- Table 'Aluno'
-- 
-- ---

DROP TABLE IF EXISTS `Aluno`;
		
CREATE TABLE `Aluno` (
  `id` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `Idade` INTEGER NULL DEFAULT NULL,
  `Sexo` CHAR(1) NULL DEFAULT NULL,
  `id_Moradia` CHAR(1) NOT NULL,
  `id_Turno_Estudo` CHAR NOT NULL,
  `id_Etinia` CHAR NULL DEFAULT NULL,
  `id_Classe_Renda` CHAR NOT NULL,
  `id_Trabalho` INTEGER NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
);

-- ---
-- Table 'Moradia'
-- 
-- ---

DROP TABLE IF EXISTS `Moradia`;
		
CREATE TABLE `Moradia` (
  `id` CHAR(1) NOT NULL,
  `Descricao` VARCHAR(20) NOT NULL,
  PRIMARY KEY (`id`)
);

-- ---
-- Table 'Turno_Estudo'
-- 
-- ---

DROP TABLE IF EXISTS `Turno_Estudo`;
		
CREATE TABLE `Turno_Estudo` (
  `id` CHAR NOT NULL,
  `Descricao` VARCHAR(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
);

-- ---
-- Table 'Etinia'
-- 
-- ---

DROP TABLE IF EXISTS `Etinia`;
		
CREATE TABLE `Etinia` (
  `id` CHAR NOT NULL,
  `Descricao` VARCHAR(30) NOT NULL,
  PRIMARY KEY (`id`)
);

-- ---
-- Table 'Classe_Renda'
-- 
-- ---

DROP TABLE IF EXISTS `Classe_Renda`;
		
CREATE TABLE `Classe_Renda` (
  `id` CHAR NOT NULL,
  `Descricao` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`id`)
);

-- ---
-- Table 'Profissao'
-- 
-- ---

DROP TABLE IF EXISTS `Profissao`;
		
CREATE TABLE `Profissao` (
  `id` INTEGER NOT NULL AUTO_INCREMENT DEFAULT NULL,
  `Descricao` VARCHAR(20) NOT NULL,
  PRIMARY KEY (`id`)
);

-- ---
-- Table 'Trabalho'
-- 
-- ---

DROP TABLE IF EXISTS `Trabalho`;
		
CREATE TABLE `Trabalho` (
  `id` INTEGER NOT NULL AUTO_INCREMENT,
  `Carteira_Assinada` CHAR NOT NULL,
  `id_Profissao` INTEGER NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
);

-- ---
-- Table 'Responsavel'
-- 
-- ---

DROP TABLE IF EXISTS `Responsavel`;
		
CREATE TABLE `Responsavel` (
  `id` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `Parentesco` VARCHAR(20) NULL DEFAULT NULL,
  `id_Profissao` INTEGER NULL DEFAULT NULL,
  `id_Aluno` INTEGER NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
);

-- ---
-- Table 'Pergunta'
-- 
-- ---

DROP TABLE IF EXISTS `Pergunta`;
		
CREATE TABLE `Pergunta` (
  `id` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `Descricao` VARCHAR(400) NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
);

-- ---
-- Table 'Escolha'
-- 
-- ---

DROP TABLE IF EXISTS `Escolha`;
		
CREATE TABLE `Escolha` (
  `id` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `Descricao` VARCHAR(200) NULL DEFAULT NULL,
  `id_Pergunta` INTEGER NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
);

-- ---
-- Table 'Resposta'
-- 
-- ---

DROP TABLE IF EXISTS `Resposta`;
		
CREATE TABLE `Resposta` (
  `id` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `id_Aluno` INTEGER NULL DEFAULT NULL,
  `id_Pergunta` INTEGER NULL DEFAULT NULL,
  `id_Escolha` INTEGER NULL DEFAULT NULL,
  `Comentario` VARCHAR(500) NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
);

-- ---
-- Foreign Keys 
-- ---

ALTER TABLE `Aluno` ADD FOREIGN KEY (id_Moradia) REFERENCES `Moradia` (`id`);
ALTER TABLE `Aluno` ADD FOREIGN KEY (id_Turno_Estudo) REFERENCES `Turno_Estudo` (`id`);
ALTER TABLE `Aluno` ADD FOREIGN KEY (id_Etinia) REFERENCES `Etinia` (`id`);
ALTER TABLE `Aluno` ADD FOREIGN KEY (id_Classe_Renda) REFERENCES `Classe_Renda` (`id`);
ALTER TABLE `Aluno` ADD FOREIGN KEY (id_Trabalho) REFERENCES `Trabalho` (`id`);
ALTER TABLE `Trabalho` ADD FOREIGN KEY (id_Profissao) REFERENCES `Profissao` (`id`);
ALTER TABLE `Responsavel` ADD FOREIGN KEY (id_Profissao) REFERENCES `Profissao` (`id`);
ALTER TABLE `Responsavel` ADD FOREIGN KEY (id_Aluno) REFERENCES `Aluno` (`id`);
ALTER TABLE `Escolha` ADD FOREIGN KEY (id_Pergunta) REFERENCES `Pergunta` (`id`);
ALTER TABLE `Resposta` ADD FOREIGN KEY (id_Aluno) REFERENCES `Aluno` (`id`);
ALTER TABLE `Resposta` ADD FOREIGN KEY (id_Pergunta) REFERENCES `Pergunta` (`id`);
ALTER TABLE `Resposta` ADD FOREIGN KEY (id_Escolha) REFERENCES `Escolha` (`id`);
