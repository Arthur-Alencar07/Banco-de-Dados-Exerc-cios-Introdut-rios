-- =========================================================
-- DQL — Consultas do exercício
-- =========================================================

-- QUERY 01
-- Descrição: Lista todas as músicas de um CD específico, na ordem das faixas.
SELECT c.nome AS cd, m.numero_musica, m.titulo, m.tempo_segundos, m.genero
FROM musica m
JOIN cd c ON c.cod_cd = m.cod_cd
WHERE c.nome = 'Dois'
ORDER BY m.numero_musica;


-- QUERY 02
-- Descrição: Lista todas as músicas interpretadas por um cantor específico.
SELECT ca.nome AS cantor, c.nome AS cd, m.titulo
FROM musica m
JOIN cantor ca ON ca.cod_cantor = m.cod_cantor
JOIN cd c ON c.cod_cd = m.cod_cd
WHERE ca.nome = 'Legião Urbana'
ORDER BY c.nome, m.titulo;


-- QUERY 03
-- Descrição: Quantidade de músicas e duração total (em segundos) por CD.
SELECT c.nome AS cd, COUNT(*) AS qtd_musicas, SUM(m.tempo_segundos) AS duracao_total_segundos
FROM musica m
JOIN cd c ON c.cod_cd = m.cod_cd
GROUP BY c.cod_cd, c.nome
ORDER BY duracao_total_segundos DESC;


-- QUERY 04
-- Descrição: Cantores que possuem mais de uma música cadastrada no catálogo.
SELECT ca.nome AS cantor, COUNT(*) AS qtd_musicas
FROM musica m
JOIN cantor ca ON ca.cod_cantor = m.cod_cantor
GROUP BY ca.cod_cantor, ca.nome
HAVING COUNT(*) > 1
ORDER BY qtd_musicas DESC;


-- QUERY 05
-- Descrição: Músicas com duração acima de 4 minutos (240 segundos), com nome do CD e do cantor.
SELECT m.titulo, c.nome AS cd, ca.nome AS cantor, m.tempo_segundos
FROM musica m
JOIN cd c ON c.cod_cd = m.cod_cd
JOIN cantor ca ON ca.cod_cantor = m.cod_cantor
WHERE m.tempo_segundos > 240
ORDER BY m.tempo_segundos DESC;