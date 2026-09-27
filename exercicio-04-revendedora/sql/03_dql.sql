-- =========================================================
-- DQL — Consultas do exercício
-- =========================================================

-- QUERY 01
-- Descrição: Listar todos os automóveis cadastrados, mostrando
-- marca, modelo, ano, cor e preço.

SELECT
    RENAVAM,
    Marca,
    Modelo,
    Ano_Fabricacao,
    Ano_Modelo,
    Cor,
    Preco
FROM AUTOMOVEL
ORDER BY Preco DESC;


-- QUERY 02
-- Descrição: Listar os negócios realizados, mostrando os dados
-- do cliente, vendedor, automóvel e preço pago.

SELECT
    N.Codigo_Negocio,
    N.Data_Negocio,
    CONCAT(C.Nome, ' ', C.Sobrenome) AS Cliente,
    CONCAT(V.Nome, ' ', V.Sobrenome) AS Vendedor,
    A.Marca,
    A.Modelo,
    N.Preco_Pago
FROM NEGOCIO N
INNER JOIN CLIENTE C
    ON N.Codigo_Cliente = C.Codigo_Cliente
INNER JOIN VENDEDOR V
    ON N.Codigo_Vendedor = V.Codigo_Vendedor
INNER JOIN AUTOMOVEL A
    ON N.RENAVAM = A.RENAVAM
ORDER BY N.Data_Negocio;


-- QUERY 03
-- Descrição: Mostrar a quantidade de negócios realizados por
-- cada vendedor e o total vendido por cada um.

SELECT
    V.Codigo_Vendedor,
    CONCAT(V.Nome, ' ', V.Sobrenome) AS Vendedor,
    COUNT(N.Codigo_Negocio) AS Quantidade_Negocios,
    COALESCE(SUM(N.Preco_Pago), 0) AS Total_Vendas
FROM VENDEDOR V
LEFT JOIN NEGOCIO N
    ON V.Codigo_Vendedor = N.Codigo_Vendedor
GROUP BY
    V.Codigo_Vendedor,
    V.Nome,
    V.Sobrenome
ORDER BY Total_Vendas DESC;


-- QUERY 04
-- Descrição: Listar os automóveis que ainda não foram vendidos.

SELECT
    A.RENAVAM,
    A.Placa,
    A.Marca,
    A.Modelo,
    A.Ano_Modelo,
    A.Preco
FROM AUTOMOVEL A
LEFT JOIN NEGOCIO N
    ON A.RENAVAM = N.RENAVAM
WHERE N.RENAVAM IS NULL
ORDER BY A.Preco;


-- QUERY 05
-- Descrição: Calcular o preço médio dos negócios realizados
-- e apresentar o maior e o menor valor pago.

SELECT
    COUNT(Codigo_Negocio) AS Quantidade_Negocios,
    ROUND(AVG(Preco_Pago), 2) AS Preco_Medio,
    MAX(Preco_Pago) AS Maior_Preco_Pago,
    MIN(Preco_Pago) AS Menor_Preco_Pago
FROM NEGOCIO;