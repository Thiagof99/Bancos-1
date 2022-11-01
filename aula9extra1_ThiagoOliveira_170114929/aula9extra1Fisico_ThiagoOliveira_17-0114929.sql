-- --------  << aula9extra1 >>  ----------
--
--                    SCRIPT DE CRIACAO (DDL)
--
-- Data Criacao ...........: 22/08/2022
-- Autor(es) ..............: Thiago França Vale Oliveira
-- Banco de Dados .........: MySQL 8.0
-- Base de Dados (nome) ...: aula8extra1
--
-- PROJETO => 01 Base de Dados
--         => 02 Tabelas
--
-- ---------------------------------------------------------

CREATE DATABASE IF NOT EXISTS aula9extra1;

USE aula9extra1;

CREATE TABLE ESTADO(
	sigla VARCHAR(2) NOT NULL,
    nome VARCHAR(20) NOT NULL,
    CONSTRAINT estado_pk PRIMARY KEY (sigla)
) ENGINE innoDB;

CREATE TABLE CIDADE(
	codigo INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL,
    sigla VARCHAR(2) NOT NULL,
    habitantes BIGINT NOT NULL,
    CONSTRAINT cidade_pk PRIMARY KEY (codigo),
    CONSTRAINT estado_cidade_fk FOREIGN KEY (sigla) REFERENCES ESTADO(sigla),
    CONSTRAINT cidade_uk UNIQUE (nome, sigla)
) ENGINE innoDB, AUTO_INCREMENT 1;