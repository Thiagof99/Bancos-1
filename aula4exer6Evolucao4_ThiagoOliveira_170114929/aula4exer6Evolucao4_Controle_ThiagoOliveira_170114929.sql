-- -----------------------------   << aula4exer6evolucao4 >>   -----------------------------
--
--                                        SCRIPT DE CONTROLE DE ACESSO (DDL)                                            
-- 
-- Data Criacao ...........: 11/09/2022
-- Autor(es) ..............: Thiago Franca Vale Oliveira
-- Banco de Dados .........: MySQL 8.0
-- Banco de Dados(nome) ...: aula4exer6Evolucao4
-- 
-- PROJETO => 01 Base de Dados
--         => 09 Tabelas
--         => 02 Usuários
-- 
-- ---------------------------------------------------------------------------------------------------------------------

USE aula4exer6Evolucao3;

CREATE ROLE admin;
GRANT ALL PRIVILEGES ON aula4exer6Evolucao3.* TO admin;

CREATE ROLE pessoa;
GRANT SELECT ON aula4exer6Evolucao3.* TO pessoa;
GRANT INSERT ON aula4exer6Evolucao3.PROPRIETARIO TO pessoa;
GRANT INSERT ON aula4exer6Evolucao3.VEICULO TO pessoa;

CREATE USER 'admins' IDENTIFIED BY '2022Root';
GRANT admin TO 'admins';

CREATE USER 'jose' IDENTIFIED BY 'esoj2022';
GRANT pessoa TO 'jose';

CREATE USER 'maria' IDENTIFIED BY 'airam2022';
GRANT pessoa TO 'maria';