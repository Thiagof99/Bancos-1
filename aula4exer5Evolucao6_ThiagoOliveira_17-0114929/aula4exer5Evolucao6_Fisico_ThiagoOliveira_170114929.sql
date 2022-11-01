-- --------  << aula4exer5Evolucao6 >>  ----------
--
--                    SCRIPT DE CRIACAO (DDL)
--
-- Data Criacao ...........: 20/07/2022
-- Autor(es) ..............: Thiago França Vale Oliveira
-- Banco de Dados .........: MySQL 8.0
-- Base de Dados (nome) ...: aula4exer5Evolucao6
--
-- Ultimas Alteracoes
-- 27/07/2022 => Adicionadas constraints na criação das chaves primárias e estrangeiras
--            => Adicionado um comando para verificar se a base de dados já existe
--
-- PROJETO => 01 Base de Dados
--         => 09 Tabelas
--
-- ---------------------------------------------------------

CREATE DATABASE IF NOT EXISTS `aula4exer5Evolucao6`;

USE aula4exer5Evolucao6;
    
CREATE TABLE `MEDICOS` (
	crm int NOT NULL,
    estado varchar(2) NOT NULL,
    nome varchar(30) NOT NULL,
    CONSTRAINT MEDICO_PK PRIMARY KEY (crm, estado)
);

CREATE TABLE `TELEFONES` (
	telefone_pk int,
    numero int,
    CONSTRAINT TELEFONE_PK PRIMARY KEY (telefone_pk)
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
    CONSTRAINT PACIENTE_PK PRIMARY KEY (idPaciente),
    CONSTRAINT TELEFONE_FK FOREIGN KEY (telefone_pk) REFERENCES TELEFONES(telefone_pk)
);

CREATE TABLE `CONSULTA_atende`(
	dataConsulta date NOT NULL,
    hora time NOT NULL,
    localConsulta varchar(30) NOT NULL,
    crm int NOT NULL,
    estado varchar(2) NOT NULL,
    idPaciente int NOT NULL,
    CONSTRAINT CONSULTA_ATENDE_PK PRIMARY KEY (dataConsulta, hora, crm, estado, idPaciente),
    CONSTRAINT MEDICO_FK FOREIGN KEY (crm, estado) REFERENCES MEDICOS(crm, estado),
    CONSTRAINT PACIENTE_FK FOREIGN KEY (idPaciente) REFERENCES PACIENTES(idPaciente)
);

CREATE TABLE `PRESCRICOES`(
	dataEmissao date NOT NULL,
    idPrescricao varchar(10) NOT NULL,
	dataConsulta date NOT NULL,
    hora time NOT NULL,
    crm int NOT NULL,
    estado varchar(2) NOT NULL,
    idPaciente int NOT NULL,
	CONSTRAINT PRESCRICAO_PK PRIMARY KEY (idPrescricao),
    CONSTRAINT CONSULTA_ATENDE_FK FOREIGN KEY (dataConsulta, hora, crm, estado, idPaciente) references CONSULTA_atende(dataConsulta, hora, crm, estado, idPaciente)
);

CREATE TABLE `MEDICAMENTOS`(
	idMedicamento varchar(10) NOT NULL,
    principioAtivo varchar(30) NOT NULL,
    quantidade int NOT NULL,
    CONSTRAINT MEDICAMENTO_PK PRIMARY KEY (idMedicamento)
);

CREATE TABLE `ESPECIALIDADES`(
	idEspecialidade int NOT NULL,
    nome varchar(30) NOT NULL,
	CONSTRAINT ESPECIALIDADE_PK PRIMARY KEY (idEspecialidade)
);

CREATE TABLE `contem`(
	idPrescricao varchar(10) NOT NULL,
    idMedicamento varchar(10) NOT NULL,
    CONSTRAINT PRESCRICAO_FK FOREIGN KEY (idPrescricao) REFERENCES PRESCRICOES(idPrescricao),
    CONSTRAINT MEDICAMENTO_FK FOREIGN KEY (idMedicamento) REFERENCES MEDICAMENTOS(idMedicamento)
);

CREATE TABLE `possui`(
	idEspecialidade int NOT NULL,
    crm int NOT NULL,
    estado varchar(2) NOT NULL,
    CONSTRAINT ESPECIALIDADE_FK FOREIGN KEY (idEspecialidade) REFERENCES ESPECIALIDADES(idEspecialidade),
    CONSTRAINT MEDICOS_FK FOREIGN KEY (crm, estado) REFERENCES MEDICOS(crm, estado)
);