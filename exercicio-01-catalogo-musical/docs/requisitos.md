# Levantamento de Requisitos

## Contexto
O sistema deve organizar um pequeno catálogo musical, permitindo cadastrar CDs, os cantores que interpretam as músicas e as faixas contidas em cada CD.

## Entidades identificadas
- CD
- CANTOR
- MUSICA

## Atributos identificados
- CD: `cod_cd`, `nome`, `gravadora`, `data`
- CANTOR: `cod_cantor`, `nome`, `biografia`
- MUSICA: `numero_musica`, `titulo`, `tempo_segundos`, `genero` (+ referências a CD e cantor)

## Relacionamentos identificados
- CD (1) — contém — (N) MUSICA
- CANTOR (1) — interpreta — (N) MUSICA

## Requisitos funcionais
- RF01 — Cadastrar, consultar, atualizar e excluir CDs.
- RF02 — Cadastrar, consultar, atualizar e excluir cantores.
- RF03 — Cadastrar músicas vinculando-as a um CD e a um cantor existentes.
- RF04 — Listar todas as músicas de um determinado CD, na ordem das faixas.
- RF05 — Listar todas as músicas interpretadas por um determinado cantor.
- RF06 — Impedir a exclusão de um CD ou cantor que possua músicas cadastradas.

## Requisitos não funcionais
- RNF01 — O banco deve ser implementado em MySQL, utilizando o engine InnoDB para suportar integridade referencial.
- RNF02 — O charset do banco deve suportar acentuação e