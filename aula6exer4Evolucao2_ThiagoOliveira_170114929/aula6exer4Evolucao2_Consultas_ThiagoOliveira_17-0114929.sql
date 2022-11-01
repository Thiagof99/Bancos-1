-- --------  << aula6exer4 >>  ----------
--
--                    SCRIPT DE CONSULTA (DML)
--
-- Data Criacao ...........: 03/08/2022
-- Autor(es) ..............: Thiago França Vale Oliveira
-- Banco de Dados .........: MySQL 8.0
-- Base de Dados (nome) ...: aula6exer4
--
-- PROJETO => 01 Base de Dados
--         => 06 Tabelas
--
-- ---------------------------------------------------------

-- BASE DE DADOS
USE aula6exer4;

-- CONSULTAS
SELECT * FROM EMPREGADO WHERE numeroDept = 1;

SELECT * FROM EMPREGADO WHERE dtNasc BETWEEN '1980-01-01' AND '2000-01-01';

