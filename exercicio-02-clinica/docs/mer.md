# MER — Modelo Entidade-Relacionamento

Salve a imagem em `docs/diagramas/mer.png` e mantenha também o arquivo editável.

## Entidades
- SALA
- MEDICOS
- PACIENTES
- FUNCIONARIOS
- CONSULTAS

## Relacionamentos
- SALA atende MEDICOS
- MEDICOS realiza CONSULTAS
- PACIENTES faz CONSULTAS
- FUNCIONARIOS: sem relacionamento com as demais entidades (conforme material original)

## Cardinalidades
- SALA (1) — (N) MEDICOS: uma sala pode ser atendida por vários médicos, mas cada médico está vinculado a uma única sala.
- MEDICOS (1) — (N) CONSULTAS: um médico realiza várias consultas, mas cada consulta tem um único médico responsável.
- PACIENTES (1) — (N) CONSULTAS: um paciente pode fazer várias consultas, mas cada consulta é de um único paciente.