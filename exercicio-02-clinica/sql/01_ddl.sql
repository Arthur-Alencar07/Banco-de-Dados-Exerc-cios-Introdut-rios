-- =========================================================
-- DDL — criação do banco, tabelas, PK, FK e constraints
-- =========================================================

-- Desenvolva sua solução abaixo.

DROP DATABASE IF EXISTS CLINICA;
CREATE DATABASE CLINICA
    CHARACTER SET utf8mb4
    COLLATE utf8mb4_unicode_ci;

USE CLINICA;

-- ---------------------------------------------------------
-- Tabela: sala
-- ---------------------------------------------------------
CREATE TABLE sala (
    numero_sala INT NOT NULL,
    andar       INT NOT NULL,
    PRIMARY KEY (numero_sala),
    CONSTRAINT uq_sala_andar   UNIQUE (andar),
    CONSTRAINT ck_sala_numero  CHECK (numero_sala > 1 AND numero_sala < 50),
    CONSTRAINT ck_sala_andar   CHECK (andar < 12)
) ENGINE = InnoDB;

-- ---------------------------------------------------------
-- Tabela: medicos
-- ---------------------------------------------------------
CREATE TABLE medicos (
    crm             VARCHAR(15) NOT NULL,
    nome            VARCHAR(40) NOT NULL,
    idade           INT,
    especialidade   CHAR(20)    NOT NULL DEFAULT 'Ortopedia',
    cpf             VARCHAR(15) NOT NULL,
    data_admissao   DATE,
    numero_sala     INT NULL,
    PRIMARY KEY (crm),
    CONSTRAINT uq_medicos_cpf UNIQUE (cpf),
    CONSTRAINT ck_medicos_idade CHECK (idade > 23),
    CONSTRAINT fk_medicos_sala
        FOREIGN KEY (numero_sala) REFERENCES sala (numero_sala)
        ON UPDATE CASCADE
        ON DELETE SET NULL
) ENGINE = InnoDB;

-- ---------------------------------------------------------
-- Tabela: pacientes
-- ---------------------------------------------------------
CREATE TABLE pacientes (
    rg               VARCHAR(15) NOT NULL,
    nome             VARCHAR(40) NOT NULL,
    data_nascimento  DATE,
    cidade           CHAR(30)    DEFAULT 'Itabuna',
    doenca           VARCHAR(40) NOT NULL,
    plano_saude      VARCHAR(40) NOT NULL DEFAULT 'SUS',
    PRIMARY KEY (rg)
) ENGINE = InnoDB;

-- ---------------------------------------------------------
-- Tabela: funcionarios
-- Sem relacionamento com as demais tabelas (conforme material).
-- ---------------------------------------------------------
CREATE TABLE funcionarios (
    matricula        VARCHAR(15) NOT NULL,
    nome             VARCHAR(40) NOT NULL,
    data_nascimento  DATE NOT NULL,
    data_admissao    DATE NOT NULL,
    cargo            VARCHAR(40) NOT NULL DEFAULT 'Assistente Médico',
    salario          DECIMAL(10,2) NOT NULL DEFAULT 510.00,
    PRIMARY KEY (matricula),
    CONSTRAINT ck_funcionarios_salario CHECK (salario >= 0)
) ENGINE = InnoDB;

-- ---------------------------------------------------------
-- Tabela: consultas
-- ---------------------------------------------------------
CREATE TABLE consultas (
    codigo_consulta INT NOT NULL,
    data_horario    DATETIME,
    crm_medico      VARCHAR(15) NOT NULL,
    rg_paciente     VARCHAR(15) NOT NULL,
    PRIMARY KEY (codigo_consulta),
    CONSTRAINT fk_consultas_medico
        FOREIGN KEY (crm_medico) REFERENCES medicos (crm)
        ON UPDATE CASCADE
        ON DELETE RESTRICT,
    CONSTRAINT fk_consultas_paciente
        FOREIGN KEY (rg_paciente) REFERENCES pacientes (rg)
        ON UPDATE CASCADE
        ON DELETE RESTRICT
) ENGINE = InnoDB;

CREATE INDEX idx_consultas_medico   ON consultas (crm_medico);
CREATE INDEX idx_consultas_paciente ON consultas (rg_paciente);