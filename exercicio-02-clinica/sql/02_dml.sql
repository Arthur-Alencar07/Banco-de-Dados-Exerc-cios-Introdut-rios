-- =========================================================
-- DML — INSERT, UPDATE e DELETE
-- =========================================================

-- ---------------------------------------------------------
-- INSERTs — sala
-- ---------------------------------------------------------
INSERT INTO sala (numero_sala, andar) VALUES
(10, 1),
(15, 2),
(20, 3);

-- ---------------------------------------------------------
-- INSERTs — medicos
-- ---------------------------------------------------------
INSERT INTO medicos (crm, nome, idade, especialidade, cpf, data_admissao, numero_sala) VALUES
('CRM12345-SP', 'Dr. Carlos Andrade', 45, 'Ortopedia', '111.111.111-11', '2015-03-10', 10),
('CRM54321-BA', 'Dra. Fernanda Lima', 38, 'Cardiologia', '222.222.222-22', '2018-07-22', 15),
('CRM98765-RJ', 'Dr. Ricardo Souza', 52, 'Pediatria', '333.333.333-33', '2010-01-15', 20);

-- ---------------------------------------------------------
-- INSERTs — pacientes
-- ---------------------------------------------------------
INSERT INTO pacientes (rg, nome, data_nascimento, cidade, doenca, plano_saude) VALUES
('MG-11.111.111', 'João Pereira', '1980-05-12', 'Itabuna', 'Hipertensão', 'SUS'),
('SP-22.222.222', 'Maria Santos', '1992-11-30', 'São Paulo', 'Fratura no braço', 'Unimed'),
('BA-33.333.333', 'Ana Oliveira', '2015-02-20', 'Itabuna', 'Gripe', 'SUS');

-- ---------------------------------------------------------
-- INSERTs — funcionarios
-- ---------------------------------------------------------
INSERT INTO funcionarios (matricula, nome, data_nascimento, data_admissao, cargo, salario) VALUES
('FUNC001', 'Paula Mendes', '1990-04-18', '2020-02-01', 'Recepcionista', 1800.00),
('FUNC002', 'Roberto Alves', '1985-09-05', '2019-06-15', 'Assistente Médico', 510.00);

-- ---------------------------------------------------------
-- INSERTs — consultas
-- ---------------------------------------------------------
INSERT INTO consultas (codigo_consulta, data_horario, crm_medico, rg_paciente) VALUES
(1, '2024-03-10 09:00:00', 'CRM12345-SP', 'MG-11.111.111'),
(2, '2024-03-10 10:30:00', 'CRM54321-BA', 'SP-22.222.222'),
(3, '2024-03-11 14:00:00', 'CRM98765-RJ', 'BA-33.333.333'),
(4, '2024-03-12 08:00:00', 'CRM12345-SP', 'SP-22.222.222');

-- ---------------------------------------------------------
-- UPDATE de teste
-- Paciente muda de plano de saúde
-- ---------------------------------------------------------
UPDATE pacientes
SET plano_saude = 'Bradesco Saúde'
WHERE rg = 'SP-22.222.222';

-- ---------------------------------------------------------
-- DELETE de teste
-- Remove uma consulta específica (não afeta médico nem paciente)
-- ---------------------------------------------------------
DELETE FROM consultas
WHERE codigo_consulta = 4;

-- ---------------------------------------------------------
-- Conferência final
-- ---------------------------------------------------------
SELECT * FROM sala;
SELECT * FROM medicos;
SELECT * FROM pacientes;
SELECT * FROM funcionarios;
SELECT * FROM consultas;