/*
-- --------  << aula4exer5Evolucao5 >>  ----------
--
--                    SCRIPT DE CRIACAO (DDL)
--
-- Data Criacao ...........: 20/07/2022
-- Autor(es) ..............: Thiago França Vale Oliveira
-- Banco de Dados .........: MySQL 8.0
-- Base de Dados (nome) ...: aula4exer5Evolucao5
--
-- Ultimas Alteracoes
--
-- PROJETO => 01 Base de Dados
--         => 09 Tabelas
--
-- ---------------------------------------------------------
*/

DROP DATABASE `aula4exer5`;

CREATE DATABASE `aula4exer5`;

use aula4exer5;
    
CREATE TABLE `MEDICOS` (
	crm int NOT NULL,
    estado varchar(2) NOT NULL,
    nome varchar(30) NOT NULL,
    PRIMARY KEY (crm, estado)
);

CREATE TABLE `TELEFONES` (
	telefone_pk int,
    numero int,
    PRIMARY KEY (telefone_pk)
);

CREATE TABLE `PACIENTES` (
	nome varchar(30) NOT NULL,
    telefone_pk int NOT NULL,
    sexo char NOT NULL,
    bairro varchar(30) NOT NULL,
    rua varchar(30) NOT NULL,
    numero int NOT NULL,
    cep int NOT NULL,
    idPaciente int NOT NULL,
    dataNascimento date NOT NULL,
    PRIMARY KEY (idPaciente),
    FOREIGN KEY (telefone_pk) REFERENCES TELEFONES(telefone_pk)
);

CREATE TABLE `CONSULTA_atende`(
	dataConsulta date NOT NULL,
    hora time NOT NULL,
    localConsulta varchar(30) NOT NULL,
    crm int NOT NULL,
    estado varchar(2) NOT NULL,
    idPaciente int NOT NULL,
    PRIMARY KEY (dataConsulta, hora, crm, estado, idPaciente),
    FOREIGN KEY (crm, estado) REFERENCES MEDICOS(crm, estado),
    FOREIGN KEY (idPaciente) REFERENCES PACIENTES(idPaciente)
);

CREATE TABLE `PRESCRICOES`(
	dataEmissao date NOT NULL,
    idPrescricao varchar(10) NOT NULL,
	dataConsulta date NOT NULL,
    hora time NOT NULL,
    crm int NOT NULL,
    estado varchar(2) NOT NULL,
    idPaciente int NOT NULL,
	PRIMARY KEY (idPrescricao),
    FOREIGN KEY (dataConsulta, hora, crm, estado, idPaciente) references CONSULTA_atende(dataConsulta, hora, crm, estado, idPaciente)
);

CREATE TABLE `MEDICAMENTOS`(
	idMedicamento varchar(10) NOT NULL,
    principioAtivo varchar(30) NOT NULL,
    quantidade int NOT NULL,
    PRIMARY KEY (idMedicamento)
);

CREATE TABLE `ESPECIALIDADES`(
	idEspecialidade int NOT NULL,
    nome varchar(30) NOT NULL,
    PRIMARY KEY (idEspecialidade)
);

CREATE TABLE `contem`(
	idPrescricao varchar(10) NOT NULL,
    idMedicamento varchar(10) NOT NULL,
    FOREIGN KEY (idPrescricao) REFERENCES PRESCRICOES(idPrescricao),
    FOREIGN KEY (idMedicamento) REFERENCES MEDICAMENTOS(idMedicamento)
);

CREATE TABLE `possui`(
	idEspecialidade int NOT NULL,
    crm int NOT NULL,
    estado varchar(2) NOT NULL,
    FOREIGN KEY (idEspecialidade) REFERENCES ESPECIALIDADES(idEspecialidade),
    FOREIGN KEY (crm, estado) REFERENCES MEDICOS(crm, estado)
);