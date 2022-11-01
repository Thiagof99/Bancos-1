-- --------  << aula9extra1 >>  ----------
--
--                    SCRIPT DE CONSULTA (DML)
--
-- Data Criacao ...........: 22/08/2022
-- Autor(es) ..............: Thiago França Vale Oliveira
-- Banco de Dados .........: MySQL 8.0
-- Base de Dados (nome) ...: aulA9extra1
--
-- PROJETO => 01 Base de Dados
--         => 02 Tabelas
--
-- ---------------------------------------------------------

USE aula9extra1;

SELECT nome, sigla FROM ESTADO WHERE sigla = "DF" OR sigla = "SP";

SELECT nome, sigla FROM CIDADE WHERE sigla = "DF" OR sigla = "RJ" OR sigla = "GO";

SELECT nome, sigla, "Destrito Federal" AS estado FROM CIDADE WHERE sigla = "DF";

SELECT "GOIÁS" AS estado, "GO" AS sigla, nome, habitantes FROM CIDADE WHERE sigla = "GO" ORDER BY nome ASC;