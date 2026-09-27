-- =========================================================
-- DDL — criação do banco, tabelas, PK, FK e constraints
-- =========================================================

CREATE DATABASE REVENDEDORA_CARROS;

USE REVENDEDORA_CARROS;

-- =========================================================
-- Tabela AUTOMOVEL
-- =========================================================

CREATE TABLE AUTOMOVEL (
    RENAVAM BIGINT PRIMARY KEY,
    Placa VARCHAR(10) NOT NULL UNIQUE,
    Marca VARCHAR(50) NOT NULL,
    Modelo VARCHAR(100) NOT NULL,
    Ano_Fabricacao INT NOT NULL,
    Ano_Modelo INT NOT NULL,
    Cor VARCHAR(30) NOT NULL,
    Motor VARCHAR(30) NOT NULL,
    Numero_Portas INT NOT NULL,
    Tipo_Combustivel VARCHAR(30) NOT NULL,
    Preco DECIMAL(12,2) NOT NULL,

    CONSTRAINT CK_AUTOMOVEL_PORTAS
        CHECK (Numero_Portas >= 2),

    CONSTRAINT CK_AUTOMOVEL_PRECO
        CHECK (Preco >= 0),

    CONSTRAINT CK_AUTOMOVEL_ANOS
        CHECK (Ano_Fabricacao <= Ano_Modelo)
);

-- =========================================================
-- Tabela CLIENTE
-- =========================================================

CREATE TABLE CLIENTE (
    Codigo_Cliente INT PRIMARY KEY,
    Nome VARCHAR(100) NOT NULL,
    Sobrenome VARCHAR(100) NOT NULL,
    Telefone VARCHAR(20) NOT NULL,
    Rua VARCHAR(150) NOT NULL,
    Numero INT NOT NULL,
    Complemento VARCHAR(100),
    Bairro VARCHAR(100) NOT NULL,
    Cidade VARCHAR(100) NOT NULL,
    Estado CHAR(2) NOT NULL,
    CEP VARCHAR(9) NOT NULL
);

-- =========================================================
-- Tabela VENDEDOR
-- =========================================================

CREATE TABLE VENDEDOR (
    Codigo_Vendedor INT PRIMARY KEY,
    Nome VARCHAR(100) NOT NULL,
    Sobrenome VARCHAR(100) NOT NULL,
    Telefone VARCHAR(20) NOT NULL,
    Rua VARCHAR(150) NOT NULL,
    Numero INT NOT NULL,
    Complemento VARCHAR(100),
    Bairro VARCHAR(100) NOT NULL,
    Cidade VARCHAR(100) NOT NULL,
    Estado CHAR(2) NOT NULL,
    CEP VARCHAR(9) NOT NULL,
    Data_Admissao DATE NOT NULL,
    Salario_Fixo DECIMAL(10,2) NOT NULL,

    CONSTRAINT CK_VENDEDOR_SALARIO
        CHECK (Salario_Fixo >= 0)
);

-- =========================================================
-- Tabela NEGOCIO
-- =========================================================

CREATE TABLE NEGOCIO (
    Codigo_Negocio INT PRIMARY KEY,
    Data_Negocio DATE NOT NULL,
    Preco_Pago DECIMAL(12,2) NOT NULL,
    Codigo_Cliente INT NOT NULL,
    Codigo_Vendedor INT NOT NULL,
    RENAVAM BIGINT NOT NULL UNIQUE,

    CONSTRAINT CK_NEGOCIO_PRECO
        CHECK (Preco_Pago >= 0),

    CONSTRAINT FK_NEGOCIO_CLIENTE
        FOREIGN KEY (Codigo_Cliente)
        REFERENCES CLIENTE(Codigo_Cliente),

    CONSTRAINT FK_NEGOCIO_VENDEDOR
        FOREIGN KEY (Codigo_Vendedor)
        REFERENCES VENDEDOR(Codigo_Vendedor),

    CONSTRAINT FK_NEGOCIO_AUTOMOVEL
        FOREIGN KEY (RENAVAM)
        REFERENCES AUTOMOVEL(RENAVAM)
);