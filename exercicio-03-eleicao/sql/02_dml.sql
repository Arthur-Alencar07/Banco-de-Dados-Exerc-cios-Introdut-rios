-- =========================================================
-- DML — INSERT, UPDATE e DELETE
-- =========================================================

USE sistema_eleitoral;


-- =========================================================
-- INSERT — CARGOS
-- =========================================================

INSERT INTO CARGO (Codigo_Cargo, Nome, Salario) VALUES
(1, 'Presidente', 25000.00),
(2, 'Governador', 20000.00),
(3, 'Senador', 18000.00),
(4, 'Deputado Federal', DEFAULT),
(5, 'Deputado Estadual', 15000.00);


-- =========================================================
-- INSERT — PARTIDOS
-- =========================================================

INSERT INTO PARTIDO (Codigo_Partido, Nome, Sigla, Numero) VALUES
(1, 'Partido Nacional', 'PN', 10),
(2, 'Partido Popular', 'PP', 20),
(3, 'Partido Democrático', 'PD', 30),
(4, 'Partido Trabalhista', 'PTB', 40),
(5, 'Partido Liberal Nacional', 'PLN', 50);


-- =========================================================
-- INSERT — CANDIDATOS
-- =========================================================

INSERT INTO CANDIDATO
    (Numero_Candidato, Nome, Codigo_Cargo, Codigo_Partido)
VALUES
(10001, 'Carlos Almeida', 1, 1),
(10002, 'Mariana Souza', 1, 2),
(20001, 'Ricardo Oliveira', 2, 3),
(20002, 'Fernanda Costa', 2, 4),
(30001, 'Roberto Martins', 3, 1),
(30002, 'Juliana Ferreira', 3, 2),
(40001, 'André Carvalho', 4, 3),
(40002, 'Patrícia Mendes', 4, 5),
(50001, 'Lucas Rodrigues', 5, 4),
(50002, 'Camila Barbosa', 5, 5);


-- =========================================================
-- INSERT — ELEITORES
-- =========================================================

INSERT INTO ELEITOR
    (Titulo_Eleitor, Nome)
VALUES
(100000001, 'João Silva'),
(100000002, 'Ana Santos'),
(100000003, 'Pedro Oliveira'),
(100000004, 'Marcos Pereira'),
(100000005, 'Beatriz Lima'),
(100000006, 'Gabriel Souza'),
(100000007, 'Larissa Costa'),
(100000008, 'Rafael Martins'),
(100000009, 'Isabela Ferreira'),
(100000010, 'Thiago Almeida');


-- =========================================================
-- INSERT — VOTOS
-- Cada eleitor pode possuir apenas um voto
-- =========================================================

INSERT INTO VOTO
    (Titulo_Eleitor, Numero_Candidato)
VALUES
(100000001, 10001),
(100000002, 10002),
(100000003, 20001),
(100000004, 20002),
(100000005, 30001),
(100000006, 30002),
(100000007, 40001),
(100000008, 40002),
(100000009, 50001),
(100000010, 50002);


-- =========================================================
-- UPDATE — teste
-- Alteração do salário de um cargo
-- =========================================================

UPDATE CARGO
SET Salario = 27000.00
WHERE Codigo_Cargo = 1;


-- =========================================================
-- DELETE — teste
-- Exclusão de um eleitor que ainda não possui voto
-- =========================================================

INSERT INTO ELEITOR
    (Titulo_Eleitor, Nome)
VALUES
(100000011, 'Eleitor Teste');

DELETE FROM ELEITOR
WHERE Titulo_Eleitor = 100000011;