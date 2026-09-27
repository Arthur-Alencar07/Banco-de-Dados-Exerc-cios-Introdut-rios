-- =========================================================
-- DDL — criação do banco, tabelas, PK, FK e constraints
-- =========================================================

-- Desenvolva sua solução abaixo.

DROP DATABASE IF EXISTS CATALOGO_MUSICAL;
CREATE DATABASE CATALOGO_MUSICAL
    CHARACTER SET utf8mb4
    COLLATE utf8mb4_unicode_ci;

USE CATALOGO_MUSICAL;

-- ---------------------------------------------------------
-- Tabela: cd
-- ---------------------------------------------------------
CREATE TABLE cd (
    cod_cd     INT AUTO_INCREMENT,
    nome       VARCHAR(100) NOT NULL,
    gravadora  VARCHAR(60)  NOT NULL,
    data       DATE         NOT NULL,
    PRIMARY KEY (cod_cd)
) ENGINE = InnoDB;

-- ---------------------------------------------------------
-- Tabela: cantor
-- ---------------------------------------------------------
CREATE TABLE cantor (
    cod_cantor  INT AUTO_INCREMENT,
    nome        VARCHAR(80) NOT NULL,
    biografia   TEXT,
    PRIMARY KEY (cod_cantor)
) ENGINE = InnoDB;

-- ---------------------------------------------------------
-- Tabela: musica
-- PK composta (cod_cd, numero_musica): numero_musica só é
-- único dentro do mesmo CD, por isso não pode ser PK sozinho.
-- ---------------------------------------------------------
CREATE TABLE musica (
    cod_cd          INT      NOT NULL,
    numero_musica   SMALLINT NOT NULL,
    titulo          VARCHAR(120) NOT NULL,
    cod_cantor      INT      NOT NULL,
    tempo_segundos  SMALLINT NOT NULL,
    genero          VARCHAR(20) NOT NULL,
    PRIMARY KEY (cod_cd, numero_musica),
    CONSTRAINT fk_musica_cd
        FOREIGN KEY (cod_cd) REFERENCES cd (cod_cd)
        ON UPDATE CASCADE ON DELETE RESTRICT,
    CONSTRAINT fk_musica_cantor
        FOREIGN KEY (cod_cantor) REFERENCES cantor (cod_cantor)
        ON UPDATE CASCADE ON DELETE RESTRICT,
    CONSTRAINT ck_musica_tempo CHECK (tempo_segundos > 0)
) ENGINE = InnoDB;

CREATE INDEX idx_musica_cantor ON musica (cod_cantor);