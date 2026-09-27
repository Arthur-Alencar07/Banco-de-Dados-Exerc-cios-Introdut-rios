# Prompt utilizado para geração dos dados

## Ferramenta de IA utilizada

ChatGPT — OpenAI

## Prompt

```text
Gere dados fictícios para popular um banco de dados de um sistema eleitoral.

O banco possui as seguintes entidades e atributos:

CARGO:
- Codigo_Cargo
- Nome
- Salario

PARTIDO:
- Codigo_Partido
- Nome
- Sigla
- Numero

CANDIDATO:
- Numero_Candidato
- Nome
- Codigo_Cargo
- Codigo_Partido

ELEITOR:
- Titulo_Eleitor
- Nome

VOTO:
- Titulo_Eleitor
- Numero_Candidato

Respeite as seguintes regras:
- As chaves primárias devem ser únicas.
- As chaves estrangeiras devem referenciar registros existentes.
- Não devem existir valores duplicados nos campos definidos como UNIQUE.
- Os campos obrigatórios não devem receber NULL.
- O salário de CARGO deve utilizar 17000.00 como valor padrão quando não informado.
- Cada candidato deve estar vinculado a um cargo e a um partido existentes.
- Cada voto deve estar vinculado a um eleitor e a um candidato existentes.
- Cada eleitor pode registrar apenas um voto.
- Utilize somente dados fictícios e coerentes com o contexto eleitoral.
- Gere os comandos INSERT necessários para popular todas as tabelas.
```

## Validações realizadas

* [x] PK duplicadas

* [x] FK inválidas

* [x] Campos UNIQUE

* [x] NULL indevidos

* [x] Tipos de dados

* [x] Dados fictícios

## Ajustes manuais realizados

* Foram conferidas as chaves primárias para garantir que não houvesse duplicidade.

* Foram conferidas as chaves estrangeiras para garantir que candidatos, cargos, partidos e eleitores relacionados existissem previamente.

* Foram ajustados os dados para manter coerência entre candidatos, cargos e partidos.

* Foram verificados os votos para garantir que cada eleitor possuísse no máximo um registro de voto.

* Os dados utilizados são fictícios e foram utilizados exclusivamente para testes e validação do banco de dados.
