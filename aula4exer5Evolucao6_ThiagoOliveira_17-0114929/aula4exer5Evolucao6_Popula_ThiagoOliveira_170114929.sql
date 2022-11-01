-- --------  << aula4exer5Evolucao6 >>  ----------
--
--                    SCRIPT DE INSERCAO (DDL)
--
-- Data Criacao ...........: 27/07/2022
-- Autor(es) ..............: Thiago França Vale Oliveira
-- Banco de Dados .........: MySQL 8.0
-- Base de Dados (nome) ...: aula4exer5Evolucao6
--
--
-- ---------------------------------------------------------

USE aula4exer5Evolucao6;

INSERT INTO TELEFONES(
telefone_pk, numero) VALUES(
123, 999990000);

INSERT INTO TELEFONES(
telefone_pk, numero) VALUES(
124, 989990003);

INSERT INTO TELEFONES(
telefone_pk, numero) VALUES(
125, 985990000);

INSERT INTO PACIENTES(
nome, telefone_pk, sexo, bairro, rua, numero, cep, idPaciente, dataNascimento) VALUES(
'Osvaldo da Silva', 123, 'M', 'Ceilandia', 'Setor O', 30, 70777100, 66666, '1970-03-09');

INSERT INTO PACIENTES(
nome, telefone_pk, sexo, bairro, rua, numero, cep, idPaciente, dataNascimento) VALUES(
'Rafaela Moreira Mano', 124, 'F', 'Ceilandia', 'Rua 3', 5, 70777120, 66667, '1999-05-09');

INSERT INTO PACIENTES(
nome, telefone_pk, sexo, bairro, rua, numero, cep, idPaciente, dataNascimento) VALUES(
'Moacir de Matematica', 125, 'M', 'Asa Sul', 'sqs 606', 103, 71757100, 66668, '1983-03-15');

INSERT INTO ESPECIALIDADES(
idEspecialidade, nome) VALUES(
10000, 'Cardiologista');

INSERT INTO ESPECIALIDADES(
idEspecialidade, nome) VALUES(
10001, 'Fisioterapeuta');

INSERT INTO ESPECIALIDADES(
idEspecialidade, nome) VALUES(
10002, 'Pediatra');

INSERT INTO MEDICOS(
crm, estado, nome) VALUES(
123456, 'DF', 'Marcos Castro');

INSERT INTO MEDICOS(
crm, estado, nome) VALUES(
123457, 'MG', 'Marcio Mastro');

INSERT INTO MEDICOS(
crm, estado, nome) VALUES(
123458, 'SP', 'Macaco Louco');

INSERT INTO CONSULTA_atende(
dataConsulta, hora, localConsulta, crm, estado, idPaciente) VALUES(
'2022-07-27', '21:59', 'Hospital Santa Lúcia', 123458, 'SP', 66666);

INSERT INTO CONSULTA_atende(
dataConsulta, hora, localConsulta, crm, estado, idPaciente) VALUES(
'2020-10-26', '22:00', 'Hospital São Calleri', 123458, 'SP', 66667);

INSERT INTO CONSULTA_atende(
dataConsulta, hora, localConsulta, crm, estado, idPaciente) VALUES(
'2010-07-27', '16:29', 'Hospital São Paulo', 123456, 'DF', 66668);

INSERT INTO PRESCRICOES(
dataEmissao, idPrescricao, dataConsulta, hora, crm, estado, idPaciente) VALUES(
'2010-07-27', 'aaab321fg9','2010-07-27', '16:29', 123456, 'DF', 66668);

INSERT INTO PRESCRICOES(
dataEmissao, idPrescricao, dataConsulta, hora, crm, estado, idPaciente) VALUES(
'2022-07-27', 'aaab321fg8','2022-07-27', '21:59', 123458, 'SP', 66666);

INSERT INTO PRESCRICOES(
dataEmissao, idPrescricao, dataConsulta, hora, crm, estado, idPaciente) VALUES(
'2020-10-26', 'aaab321fg7','2020-10-26', '22:00', 123458, 'SP', 66667);

INSERT INTO MEDICAMENTOS(
idMedicamento, principioAtivo, quantidade) VALUES(
'00100189po', 'Cannabis', 1);

INSERT INTO MEDICAMENTOS(
idMedicamento, principioAtivo, quantidade) VALUES(
'00101189pp', 'Canhamo', 3);

INSERT INTO MEDICAMENTOS(
idMedicamento, principioAtivo, quantidade) VALUES(
'00101110pp', 'THC', 1);

INSERT INTO contem(
idPrescricao, idMedicamento) VALUES(
'aaab321fg7', '00101110pp');

INSERT INTO contem(
idPrescricao, idMedicamento) VALUES(
'aaab321fg8', '00101189pp');

INSERT INTO contem(
idPrescricao, idMedicamento) VALUES(
'aaab321fg9', '00100189po');

INSERT INTO possui(
idEspecialidade, crm, estado) VALUES(
10000, 123458, 'SP');

INSERT INTO possui(
idEspecialidade, crm, estado) VALUES(
10001, 123457, 'MG');

INSERT INTO possui(
idEspecialidade, crm, estado) VALUES(
10002, 123456, 'DF');

