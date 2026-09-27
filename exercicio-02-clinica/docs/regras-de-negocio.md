# Regras de Negócio

- RN01 — Cada médico está vinculado a uma única sala fixa; uma sala pode atender vários médicos.
- RN02 — Cada consulta é realizada por um único médico, mas um médico pode realizar várias consultas.
- RN03 — Cada consulta é feita por um único paciente, mas um paciente pode ter várias consultas ao longo do tempo.
- RN04 — Funcionários não possuem relação direta com salas, médicos, pacientes ou consultas no modelo atual.
- RN05 — Toda especialidade médica não informada assume o valor padrão "Ortopedia".
- RN06 — Todo paciente sem cidade informada é considerado de "Itabuna", e sem plano de saúde informado é considerado do "SUS".
- RN07 — Todo funcionário sem cargo informado assume "Assistente Médico", e sem salário informado assume R$ 510,00.

## Restrições de integridade
- Número da sala deve estar entre 2 e 49 (`CHECK`).
- Andar deve ser menor que 12 (`CHECK`) e único por sala (`UNIQUE`).
- Idade do médico deve ser maior que 23 (`CHECK`).
- CRM e CPF do médico são únicos; RG do paciente é único; matrícula do funcionário é única; código da consulta é único.
- Consulta deve referenciar um médico e um paciente existentes (FKs obrigatórias).
- Não é permitido excluir médico ou paciente que já tenha consulta registrada (`ON DELETE RESTRICT`).
- Se a sala for excluída, o médico não é apagado, apenas perde a referência (`ON DELETE SET NULL`).

## Decisões tomadas
- Uso de identificadores naturais como PK (CRM, RG, Matrícula, Código_Consulta, Número_Sala) — todos já são únicos por natureza, sem necessidade de ID substituto.
- Relação médico-sala simplificada como N:1 (cada médico em uma única sala), em vez de N:N, por não haver atributos de horário/turno no modelo.
- `ON DELETE SET NULL` em `medicos.numero_sala` para não apagar médico ao excluir sala.
- `ON DELETE RESTRICT` nas FKs de `consultas` para preservar histórico de atendimentos.
- Adicionado `CHECK (salario >= 0)` em `funcionarios`, restrição extra não pedida no enunciado, para evitar valores negativos.
- `FUNCIONARIOS` mantida como entidade isolada, sem FK, respeitando o material original.