-- =========================================================
-- DML — INSERT, UPDATE e DELETE
-- =========================================================

-- ---------------------------------------------------------
-- INSERTs — cantor
-- ---------------------------------------------------------
INSERT INTO cantor (nome, biografia) VALUES
('Legião Urbana', 'Banda brasileira de rock formada em Brasília nos anos 80.'),
('Marisa Monte', 'Cantora e compositora brasileira de MPB.'),
('Cazuza', 'Cantor, compositor e poeta brasileiro, ícone do rock nacional.');

-- ---------------------------------------------------------
-- INSERTs — cd
-- ---------------------------------------------------------
INSERT INTO cd (nome, gravadora, data) VALUES
('Dois', 'EMI', '1986-01-01'),
('Memórias, Crônicas e Declarações de Amor', 'EMI', '2000-05-30'),
('Ideologia', 'Universal', '1988-08-15');

-- ---------------------------------------------------------
-- INSERTs — musica
-- ---------------------------------------------------------
INSERT INTO musica (cod_cd, numero_musica, titulo, cod_cantor, tempo_segundos, genero) VALUES
(1, 1, 'Eduardo e Mônica', 1, 292, 'Rock'),
(1, 2, 'Faroeste Caboclo', 1, 543, 'Rock'),
(1, 3, 'Tempo Perdido', 1, 253, 'Rock'),
(2, 1, 'Amor I Love You', 2, 210, 'MPB'),
(2, 2, 'Infinito Particular', 2, 198, 'MPB'),
(3, 1, 'Ideologia', 3, 265, 'Rock'),
(3, 2, 'O Tempo Não Pára', 3, 240, 'Rock');

-- ---------------------------------------------------------
-- UPDATE de teste
-- Corrige a duração da faixa "Eduardo e Mônica" (ajuste de dado incorreto)
-- ---------------------------------------------------------
UPDATE musica
SET tempo_segundos = 288
WHERE cod_cd = 1 AND numero_musica = 1;

-- ---------------------------------------------------------
-- DELETE de teste
-- Remove uma faixa específica (não afeta CD nem cantor, só a música)
-- ---------------------------------------------------------
DELETE FROM musica
WHERE cod_cd = 3 AND numero_musica = 2;

-- ---------------------------------------------------------
-- Conferência final
-- ---------------------------------------------------------
SELECT * FROM cantor;
SELECT * FROM cd;
SELECT * FROM musica;