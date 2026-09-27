-- =========================================================
-- DDL — criação do banco, tabelas, PK, FK e constraints
-- =========================================================

-- Criação do banco de dados
CREATE DATABASE IF NOT EXISTS sistema_eleitoral
    CHARACTER SET utf8mb4
    COLLATE utf8mb4_unicode_ci;

USE sistema_eleitoral;


-- =========================================================
-- TABELA: CARGO
-- =========================================================

CREATE TABLE CARGO (
    Codigo_Cargo INT NOT NULL,
    Nome VARCHAR(100) NOT NULL,
    Salario DECIMAL(10,2) NOT NULL DEFAULT 17000.00,

    CONSTRAINT PK_CARGO
        PRIMARY KEY (Codigo_Cargo),

    CONSTRAINT UQ_CARGO_NOME
        UNIQUE (Nome)
) ENGINE = InnoDB;


-- =========================================================
-- TABELA: PARTIDO
-- =========================================================

CREATE TABLE PARTIDO (
    Codigo_Partido INT NOT NULL,
    Nome VARCHAR(100) NOT NULL,
    Sigla VARCHAR(20) NOT NULL,
    Numero INT NOT NULL,

    CONSTRAINT PK_PARTIDO
        PRIMARY KEY (Codigo_Partido),

    CONSTRAINT UQ_PARTIDO_NOME
        UNIQUE (Nome),

    CONSTRAINT UQ_PARTIDO_SIGLA
        UNIQUE (Sigla),

    CONSTRAINT UQ_PARTIDO_NUMERO
        UNIQUE (Numero)
) ENGINE = InnoDB;


-- =========================================================
-- TABELA: CANDIDATO
-- =========================================================

CREATE TABLE CANDIDATO (
    Numero_Candidato INT NOT NULL,
    Nome VARCHAR(150) NOT NULL,
    Codigo_Cargo INT NOT NULL,
    Codigo_Partido INT NOT NULL,

    CONSTRAINT PK_CANDIDATO
        PRIMARY KEY (Numero_Candidato),

    CONSTRAINT FK_CANDIDATO_CARGO
        FOREIGN KEY (Codigo_Cargo)
        REFERENCES CARGO (Codigo_Cargo),

    CONSTRAINT FK_CANDIDATO_PARTIDO
        FOREIGN KEY (Codigo_Partido)
        REFERENCES PARTIDO (Codigo_Partido)
) ENGINE = InnoDB;


-- =========================================================
-- TABELA: ELEITOR
-- =========================================================

CREATE TABLE ELEITOR (
    Titulo_Eleitor BIGINT NOT NULL,
    Nome VARCHAR(150) NOT NULL,

    CONSTRAINT PK_ELEITOR
        PRIMARY KEY (Titulo_Eleitor)
) ENGINE = InnoDB;


-- =========================================================
-- TABELA: VOTO
-- =========================================================

CREATE TABLE VOTO (
    Titulo_Eleitor BIGINT NOT NULL,
    Numero_Candidato INT NOT NULL,

    CONSTRAINT PK_VOTO
        PRIMARY KEY (Titulo_Eleitor),

    CONSTRAINT FK_VOTO_ELEITOR
        FOREIGN KEY (Titulo_Eleitor)
        REFERENCES ELEITOR (Titulo_Eleitor),

    CONSTRAINT FK_VOTO_CANDIDATO
        FOREIGN KEY (Numero_Candidato)
        REFERENCES CANDIDATO (Numero_Candidato)
) ENGINE = InnoDB;