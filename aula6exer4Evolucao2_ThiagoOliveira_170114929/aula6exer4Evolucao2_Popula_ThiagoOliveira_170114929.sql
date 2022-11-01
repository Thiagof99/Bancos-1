-- --------  << aula6exer4 >>  ----------
--
--                    SCRIPT DE POPULACAO (DML)
--
-- Data Criacao ...........: 01/08/2022
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


-- INSERCOES
INSERT INTO GERENTE (nomeEmp, salario, dtNasc, sexo, rua, numero, bairro, cep, dataInicio) VALUES
	('Maria Machado', 23123.10, '1990-10-20', 'F', 'Rua Laranjeiras', 15, 'Setor Leste', 89056000, '2022-01-15'),
    ('Felipe Luiz', 19537.01, '1991-09-15', 'M', 'Rua dos Cristais', 16, 'Setor Norte', 77705000, '2022-02-16'),
    ('Cristiano Andretti', 15007.07, '1992-08-10', 'M', 'Rua das Macieiras', 17, 'Setor Sul', 74763000, '2022-03-17'),
    ('Ronaldo Macedo', 10345.00, '1993-09-05', 'M', 'Rua dos Papagaios', 18, 'Setor Oeste', 76496000, '2022-04-18');

INSERT INTO DEPARTAMENTO (nomeDept, matriculaEmp) VALUES
	('Departamento de Finanças', 1),
    ('Departamento de Inovação', 2),
    ('Departamento de Estoque', 3),
    ('Departamento de Transporte', 4);
    
INSERT INTO LOCALIZACAO (latitude, longitude, descricaoLocal, numeroDept) VALUES
	('16S', '48W', 'GAMA DF, no Predio Azul', 1),
    ('17S', '48W', 'ALTO ALVORADA GO, no Predio Vermelho', 2),
    ('18S', '50W', 'RIO VERDE GO, no Predio Branco', 3),
    ('19S', '50W', 'Retiro GO, no Predio Verde', 4);
    
INSERT INTO EMPREGADO (nomeEmp, salario, dtNasc, sexo, rua, numero, bairro, cep, numeroDept) VALUES
	('Jair Moreira', 7123.50, '1982-10-23', 'M', 'Rua Ipanema', 123, 'Setor Leste', 46523240, 1),
    ('Marta Silva', 12456.45, '2000-11-15', 'F', 'Rua Imperial', 321, 'Setor Sul', 76211000, 2),
    ('Maria Portela', 5400.00, '1999-01-01', 'F', 'Rua dos Castelos', 12, 'Setor Sul', 76211000, 3),
    ('Renato Teixeira', 5200.00, '1990-03-10', 'M', 'Rua da Madeira', 13, 'Setor Sul', 76322000, 4);
    
INSERT INTO DEPENDENTE (nome, dtNasc, sexo, dependencia, matriculaEmp) VALUES
	('Marcelo Moreira', '2000-09-25', 'M', 'Filho', 1),
    ('Gabriela Silva', '2022-07-25', 'F', 'Filha', 2),
    ('Luisa Portela', '2022-07-13', 'F', 'Filha', 3),
	('Renata Reixeira', '1992-09-14', 'F', 'Esposa', 4);
        
INSERT INTO PROJETO (nomeProj, latitude, longitude, numeroDept) VALUES
	('Projeto de Controle Fiscal', '16S', '48W', 1),
    ('Projeto de Rebranding da Logo', '15S', '48W', 2),
    ('Projeto de Organização do Estoque', '18S', '50W', 3),
    ('Projeto de Otimização das Rotas', '19N', '50W', 4);

INSERT INTO atua (matriculaEmp, numeroProj, horasSemanais) VALUES
	(1, 1, 30),
    (2, 2, 35),
    (3, 3, 40),
    (4, 4, 10);
    