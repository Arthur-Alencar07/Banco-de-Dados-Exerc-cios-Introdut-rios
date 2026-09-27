# Prompt utilizado para geração dos dados

## Ferramenta de IA utilizada
Claude (Anthropic)

## Prompt
```text
Crie um banco de dados chamado CLINICA. O exercício-base apresenta Sala, Médicos,
Pacientes, Funcionários e Consultas, com restrições específicas. Sua solução deverá
transformar essas informações em um modelo relacional consistente.

SALA
- Numero_Sala: inteiro, único e não nulo; verificar se é maior que 1 e menor que 50.
- Andar: inteiro, único e não nulo; verificar se é menor que 12.

MEDICOS
- CRM: VARCHAR(15), único e não nulo.
- Nome: VARCHAR(40), não nulo.
- Idade: inteiro; verificar se é maior que 23.
- Especialidade: CHAR(20), não nulo, padrão Ortopedia.
- CPF: VARCHAR(15), único e não nulo.
- Data_Admissao: DATE.

PACIENTES
- RG: VARCHAR(15), único e não nulo.
- Nome: VARCHAR(40), não nulo.
- Data_Nascimento: DATE.
- Cidade: CHAR(30), padrão Itabuna.
- Doenca: VARCHAR(40), não nulo.
- Plano_Saude: VARCHAR(40), não nulo, padrão SUS.

FUNCIONARIOS
- Matricula: VARCHAR(15), único e não nulo.
- Nome: VARCHAR(40), não nulo.
- Data_Nascimento: DATE, não nulo.
- Data_Admissao: DATE, não nulo.
- Cargo: VARCHAR(40), não nulo, padrão Assistente Médico.
- Salario: numérico, não nulo, padrão 510,00.

CONSULTAS
- Codigo_Consulta: inteiro, único e não nulo.
- Data_Horario: DATETIME.

Relacionamentos:
- MEDICOS — ATENDE — SALA
- MEDICOS — REALIZA — CONSULTA
- CONSULTA —