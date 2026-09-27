-- =========================================================
-- DQL — Consultas do exercício
-- =========================================================

-- QUERY 01
-- Descrição: Lista todas as consultas de um médico específico, com nome do paciente.
SELECT m.nome AS medico, p.nome AS paciente, c.data_horario
FROM consultas c
JOIN medicos m ON m.crm = c.crm_medico
JOIN pacientes p ON p.rg = c.rg_paciente
WHERE m.nome = 'Dr. Carlos Andrade'
ORDER BY c.data_horario;


-- QUERY 02
-- Descrição: Lista todos os médicos e a sala em que atendem, incluindo o andar.
SELECT m.nome AS medico, m.especialidade, s.numero_sala, s.andar
FROM medicos m
LEFT JOIN sala s ON s.numero_sala = m.numero_sala
ORDER BY s.andar, s.numero_sala;


-- QUERY 03
-- Descrição: Quantidade de consultas realizadas por cada médico.
SELECT m.nome AS medico, COUNT(*) AS qtd_consultas
FROM consultas c
JOIN medicos m ON m.crm = c.crm_medico
GROUP BY m.crm, m.nome
ORDER BY qtd_consultas DESC;


-- QUERY 04
-- Descrição: Pacientes que não são do SUS, com sua cidade e plano de saúde.
SELECT nome, cidade, plano_saude
FROM pacientes
WHERE plano_saude <> 'SUS'
ORDER BY nome;


-- QUERY 05
-- Descrição: Funcionários com salário acima da média, ordenados do maior para o menor.
SELECT nome, cargo, salario
FROM funcionarios
WHERE salario > (SELECT AVG(salario) FROM funcionarios)
ORDER BY salario DESC;