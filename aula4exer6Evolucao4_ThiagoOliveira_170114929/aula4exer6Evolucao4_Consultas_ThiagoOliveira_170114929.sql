-- -----------------------------   << aula4exer6evolucao4 >>   -----------------------------
--
--                                        SCRIPT DE CONTROLE DE CONSULTA (DML)                                            
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

SELECT * FROM PROPRIETARIO WHERE nomeProp LIKE '%Gabriel%';

SELECT * FROM INFRACAO i INNER JOIN VEICULO v  ON i.placa = v.placa WHERE i.dataInfracao BETWEEN '2020-01-01' AND '2020-12-30';

SELECT dsModelo, count(*) as 'quantidade' FROM MODELO m LEFT JOIN veiculo v ON m.idModelo = v.modelo;