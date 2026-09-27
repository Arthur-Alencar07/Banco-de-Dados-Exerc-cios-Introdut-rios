# DER — Diagrama Entidade-Relacionamento

Salve a imagem em `docs/diagramas/der.png` e mantenha também o arquivo editável.

## Chaves primárias
- `sala.numero_sala`
- `medicos.crm`
- `pacientes.rg`
- `funcionarios.matricula`
- `consultas.codigo_consulta`

## Chaves estrangeiras
- `medicos.numero_sala` → `sala.numero_sala`
- `consultas.crm_medico` → `medicos.crm`
- `consultas.rg_paciente` → `pacientes.rg`

## Constraints relevantes
- `ck_sala_numero`: `CHECK (numero_sala > 1 AND numero_sala < 50)`
- `ck_sala_andar`: `CHECK (andar < 12)`
- `uq_sala_andar`: `UNIQUE (andar)`
- `ck_medicos_idade`: `CHECK (idade > 23)`
- `uq_medicos_cpf`: `UNIQUE (cpf)`
- `especialidade` com `DEFAULT 'Ortopedia'`
- `cidade` com `DEFAULT 'Itabuna'`; `plano_saude` com `DEFAULT 'SUS'`
- `cargo` com `DEFAULT 'Assistente Médico'`; `salario` com `DEFAULT 510.00` e `CHECK (salario >= 0)`
- `fk_medicos_sala`: `ON UPDATE CASCADE ON DELETE SET NULL`
- `fk_consultas_medico` e `fk_consultas_paciente`: `ON UPDATE CASCADE ON DELETE RESTRICT`
- `FUNCIONARIOS` sem chave estrangeira — entidade isolada, conforme material original