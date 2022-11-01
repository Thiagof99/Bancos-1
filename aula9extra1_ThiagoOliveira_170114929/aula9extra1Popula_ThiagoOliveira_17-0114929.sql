-- --------  << aula9extra1 >>  ----------
--
--                    SCRIPT DE POPULA (DML)
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

USE aula9extra1;

INSERT INTO ESTADO(sigla, nome) VALUES
("DF", "Destrito Federal"),
("SP", "São Paulo"),
("GO", "Goiás");

INSERT INTO CIDADE(nome, sigla, habitantes) VALUES
("Brasília", "DF", 2000000),
("São Paulo", "SP", 5000000),
("Goiania", "GO", 1000000),
("Anápolis", "GO", 200000),
("Mogi das Cruzes", "SP", 150000),
("Suzano", "SP", 314000),
("Pirinópolis", "GO", 30000);