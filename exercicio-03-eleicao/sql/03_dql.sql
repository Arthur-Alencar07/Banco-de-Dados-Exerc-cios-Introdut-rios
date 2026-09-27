-- =========================================================
-- DQL — Consultas do exercício
-- =========================================================

-- =========================================================
-- QUERY 01
-- Descrição: Lista todos os candidatos com seu respectivo
-- cargo e partido.
-- =========================================================

SELECT
    C.Numero_Candidato,
    C.Nome AS Candidato,
    CA.Nome AS Cargo,
    P.Nome AS Partido,
    P.Sigla
FROM CANDIDATO C
INNER JOIN CARGO CA
    ON C.Codigo_Cargo = CA.Codigo_Cargo
INNER JOIN PARTIDO P
    ON C.Codigo_Partido = P.Codigo_Partido
ORDER BY CA.Nome, C.Nome;


-- =========================================================
-- QUERY 02
-- Descrição: Lista todos os partidos e a quantidade de
-- candidatos vinculados a cada partido.
-- =========================================================

SELECT
    P.Codigo_Partido,
    P.Nome AS Partido,
    P.Sigla,
    COUNT(C.Numero_Candidato) AS Quantidade_Candidatos
FROM PARTIDO P
LEFT JOIN CANDIDATO C
    ON P.Codigo_Partido = C.Codigo_Partido
GROUP BY
    P.Codigo_Partido,
    P.Nome,
    P.Sigla
ORDER BY Quantidade_Candidatos DESC;


-- =========================================================
-- QUERY 03
-- Descrição: Lista os votos recebidos por cada candidato,
-- mostrando também seu cargo e partido.
-- =========================================================

SELECT
    C.Numero_Candidato,
    C.Nome AS Candidato,
    CA.Nome AS Cargo,
    P.Sigla AS Partido,
    COUNT(V.Titulo_Eleitor) AS Total_Votos
FROM CANDIDATO C
INNER JOIN CARGO CA
    ON C.Codigo_Cargo = CA.Codigo_Cargo
INNER JOIN PARTIDO P
    ON C.Codigo_Partido = P.Codigo_Partido
LEFT JOIN VOTO V
    ON C.Numero_Candidato = V.Numero_Candidato
GROUP BY
    C.Numero_Candidato,
    C.Nome,
    CA.Nome,
    P.Sigla
ORDER BY Total_Votos DESC;


-- =========================================================
-- QUERY 04
-- Descrição: Lista os eleitores e o candidato para o qual
-- cada eleitor registrou seu voto.
-- =========================================================

SELECT
    E.Titulo_Eleitor,
    E.Nome AS Eleitor,
    C.Numero_Candidato,
    C.Nome AS Candidato
FROM ELEITOR E
INNER JOIN VOTO V
    ON E.Titulo_Eleitor = V.Titulo_Eleitor
INNER JOIN CANDIDATO C
    ON V.Numero_Candidato = C.Numero_Candidato
ORDER BY E.Nome;


-- =========================================================
-- QUERY 05
-- Descrição: Apresenta a quantidade total de votos
-- recebidos por cada partido.
-- =========================================================

SELECT
    P.Codigo_Partido,
    P.Nome AS Partido,
    P.Sigla,
    COUNT(V.Titulo_Eleitor) AS Total_Votos
FROM PARTIDO P
INNER JOIN CANDIDATO C
    ON P.Codigo_Partido = C.Codigo_Partido
LEFT JOIN VOTO V
    ON C.Numero_Candidato = V.Numero_Candidato
GROUP BY
    P.Codigo_Partido,
    P.Nome,
    P.Sigla
ORDER BY Total_Votos DESC;