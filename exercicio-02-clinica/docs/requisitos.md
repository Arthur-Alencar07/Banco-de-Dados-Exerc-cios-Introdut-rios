# Levantamento de Requisitos

## Contexto
O sistema deve organizar o funcionamento de uma clínica, controlando salas, médicos, pacientes, funcionários e as consultas realizadas.

## Entidades identificadas
- SALA
- MEDICOS
- PACIENTES
- FUNCIONARIOS
- CONSULTAS

## Atributos identificados
- SALA: `Numero_Sala`, `Andar`
- MEDICOS: `CRM`, `Nome`, `Idade`, `Especialidade`, `CPF`, `Data_Admissao`
- PACIENTES: `RG`, `Nome`, `Data_Nascimento`, `Cidade`, `Doenca`, `Plano_Saude`
- FUNCIONARIOS: `Matricula`, `Nome`, `Data_Nascimento`, `Data_Admissao`, `Cargo`, `Salario`
- CONSULTAS: `Codigo_Consulta`, `Data_Horario` (+ referências a médico e paciente)

## Relacionamentos identificados
- SALA (1) — atende — (N) MEDICOS
- MEDICOS (1) — realiza — (N) CONSULTAS
- PACIENTES (1) — faz — (N) CONSULTAS
- FUNCIONARIOS: sem relacionamento com as demais entidades

## Requisitos funcionais
- RF01 — Cadastrar, consultar, atualizar e excluir salas.
- RF02 — Cadastrar, consultar, atualizar e excluir médicos, vinculando-os a uma sala.
- RF03 — Cadastrar, consultar, atualizar e excluir pacientes.
- RF04 — Cadastrar, consultar, atualizar e excluir funcionários.
- RF05 — Registrar consultas, vinculando um médico e um paciente existentes.
- RF06 — Listar todas as consultas de um determinado médico.
- RF07 — Listar todas as consultas de um determinado paciente.
- RF08 — Impedir exclusão de médico ou paciente que já possua consulta registrada.

## Requisitos não funcionais
- RNF01 — O banco deve ser implementado em MySQL, com engine InnoDB para suportar integridade referencial.
- RNF02 — O charset do banco deve suportar acentuação (utf8mb4).
- RNF03 — Os valores padrão (especialidade, cidade, plano de saúde, cargo, salário) devem ser aplicados automaticamente quando não informados.
- RNF04 — As restrições de faixa de valores (idade, número de sala, andar) devem ser garantidas pelo próprio banco, via CHECK.

## Dúvidas / hipóteses de modelagem
- Um médico pode atender em mais de uma sala (ex.: turnos diferentes)? Hipótese adotada: não — cada médico está vinculado a uma única sala fixa.
- Faz sentido `Andar` ser `UNIQUE` (só uma sala por andar)? Hipótese adotada: sim,