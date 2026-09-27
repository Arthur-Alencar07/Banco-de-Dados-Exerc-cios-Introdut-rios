-- =========================================================
-- DML — INSERT, UPDATE e DELETE
-- =========================================================

-- =========================================================
-- INSERT — AUTOMOVEL
-- =========================================================

INSERT INTO AUTOMOVEL
(RENAVAM, Placa, Marca, Modelo, Ano_Fabricacao, Ano_Modelo, Cor, Motor, Numero_Portas, Tipo_Combustivel, Preco)
VALUES
(10000000001, 'ABC1D23', 'Toyota', 'Corolla', 2022, 2023, 'Prata', '2.0', 4, 'Flex', 125000.00),
(10000000002, 'DEF4G56', 'Honda', 'Civic', 2021, 2022, 'Preto', '2.0', 4, 'Flex', 118000.00),
(10000000003, 'GHI7J89', 'Volkswagen', 'Golf', 2020, 2021, 'Branco', '1.4 TSI', 4, 'Flex', 105000.00),
(10000000004, 'JKL1M23', 'Chevrolet', 'Onix', 2023, 2024, 'Vermelho', '1.0 Turbo', 4, 'Flex', 89000.00),
(10000000005, 'NOP4Q56', 'Hyundai', 'HB20', 2022, 2023, 'Cinza', '1.0', 4, 'Flex', 82000.00),
(10000000006, 'RST7U89', 'Ford', 'Ranger', 2021, 2022, 'Azul', '3.2', 4, 'Diesel', 185000.00),
(10000000007, 'VWX1Y23', 'Jeep', 'Compass', 2023, 2023, 'Cinza', '1.3 Turbo', 4, 'Flex', 152000.00),
(10000000008, 'ZAB4C56', 'Fiat', 'Toro', 2022, 2022, 'Branco', '1.3 Turbo', 4, 'Flex', 135000.00),
(10000000009, 'CDE7F89', 'Nissan', 'Kicks', 2021, 2022, 'Prata', '1.6', 4, 'Flex', 110000.00),
(10000000010, 'FGH1I23', 'BMW', '320i', 2020, 2020, 'Preto', '2.0 Turbo', 4, 'Gasolina', 210000.00);

-- =========================================================
-- INSERT — CLIENTE
-- =========================================================

INSERT INTO CLIENTE
(Codigo_Cliente, Nome, Sobrenome, Telefone, Rua, Numero, Complemento, Bairro, Cidade, Estado, CEP)
VALUES
(1, 'Carlos', 'Oliveira', '(11) 98888-1001', 'Rua das Flores', 100, 'Apto 12', 'Centro', 'São Paulo', 'SP', '01001-000'),
(2, 'Mariana', 'Santos', '(11) 97777-1002', 'Rua Augusta', 250, NULL, 'Consolação', 'São Paulo', 'SP', '01305-000'),
(3, 'Rafael', 'Souza', '(11) 96666-1003', 'Rua Vergueiro', 500, 'Casa 2', 'Vila Mariana', 'São Paulo', 'SP', '04102-000'),
(4, 'Juliana', 'Costa', '(11) 95555-1004', 'Rua Haddock Lobo', 320, 'Apto 31', 'Cerqueira César', 'São Paulo', 'SP', '01414-000'),
(5, 'Fernando', 'Almeida', '(11) 94444-1005', 'Rua Tatuapé', 180, NULL, 'Tatuapé', 'São Paulo', 'SP', '03307-000'),
(6, 'Beatriz', 'Ribeiro', '(11) 93333-1006', 'Rua Mooca', 420, 'Apto 21', 'Mooca', 'São Paulo', 'SP', '03104-000'),
(7, 'Lucas', 'Martins', '(11) 92222-1007', 'Rua Ipiranga', 700, NULL, 'Ipiranga', 'São Paulo', 'SP', '04210-000'),
(8, 'Camila', 'Ferreira', '(11) 91111-1008', 'Rua Faria Lima', 900, 'Sala 4', 'Pinheiros', 'São Paulo', 'SP', '05426-000'),
(9, 'Gabriel', 'Carvalho', '(11) 90000-1009', 'Rua Lapa', 150, NULL, 'Lapa', 'São Paulo', 'SP', '05050-000'),
(10, 'Amanda', 'Gomes', '(11) 98888-1010', 'Rua Santana', 600, 'Apto 45', 'Santana', 'São Paulo', 'SP', '02010-000');

-- =========================================================
-- INSERT — VENDEDOR
-- =========================================================

INSERT INTO VENDEDOR
(Codigo_Vendedor, Nome, Sobrenome, Telefone, Rua, Numero, Complemento, Bairro, Cidade, Estado, CEP, Data_Admissao, Salario_Fixo)
VALUES
(1, 'João', 'Pereira', '(11) 98888-2001', 'Rua A', 100, NULL, 'Centro', 'São Paulo', 'SP', '01001-100', '2020-01-15', 3500.00),
(2, 'Ana', 'Rodrigues', '(11) 97777-2002', 'Rua B', 200, 'Apto 10', 'Moema', 'São Paulo', 'SP', '04520-100', '2021-03-10', 3800.00),
(3, 'Pedro', 'Lima', '(11) 96666-2003', 'Rua C', 300, NULL, 'Ipiranga', 'São Paulo', 'SP', '04210-100', '2019-07-20', 4200.00),
(4, 'Larissa', 'Mendes', '(11) 95555-2004', 'Rua D', 400, 'Casa 1', 'Tatuapé', 'São Paulo', 'SP', '03308-100', '2022-05-05', 3200.00),
(5, 'Bruno', 'Nunes', '(11) 94444-2005', 'Rua E', 500, NULL, 'Lapa', 'São Paulo', 'SP', '05051-100', '2023-02-01', 3000.00);

-- =========================================================
-- INSERT — NEGOCIO
-- =========================================================

INSERT INTO NEGOCIO
(Codigo_Negocio, Data_Negocio, Preco_Pago, Codigo_Cliente, Codigo_Vendedor, RENAVAM)
VALUES
(1, '2026-01-10', 122000.00, 1, 1, 10000000001),
(2, '2026-01-15', 115000.00, 2, 2, 10000000002),
(3, '2026-02-05', 102000.00, 3, 3, 10000000003),
(4, '2026-02-18', 87000.00, 4, 1, 10000000004),
(5, '2026-03-02', 80000.00, 5, 4, 10000000005),
(6, '2026-03-12', 180000.00, 6, 5, 10000000006),
(7, '2026-04-01', 149000.00, 7, 2, 10000000007),
(8, '2026-04-15', 132000.00, 8, 3, 10000000008);

-- =========================================================
-- UPDATE — teste
-- =========================================================

UPDATE VENDEDOR
SET Salario_Fixo = 4000.00
WHERE Codigo_Vendedor = 1;

-- =========================================================
-- DELETE — teste
-- =========================================================

DELETE FROM NEGOCIO
WHERE Codigo_Negocio = 8;