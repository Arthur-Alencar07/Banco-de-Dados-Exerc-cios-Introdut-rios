# Levantamento de Requisitos

## Contexto

O sistema deve informatizar o funcionamento de uma revendedora de carros, permitindo o cadastro de automóveis, clientes e vendedores, além do registro e manutenção do histórico dos negócios realizados.

## Entidades identificadas

- `AUTOMOVEL`
- `CLIENTE`
- `VENDEDOR`
- `NEGOCIO`

## Atributos identificados

- `AUTOMOVEL`: `RENAVAM`, `Placa`, `Marca`, `Modelo`, `Ano_Fabricacao`, `Ano_Modelo`, `Cor`, `Motor`, `Numero_Portas`, `Tipo_Combustivel`, `Preco`

- `CLIENTE`: `Codigo_Cliente`, `Nome`, `Sobrenome`, `Telefone`, `Rua`, `Numero`, `Complemento`, `Bairro`, `Cidade`, `Estado`, `CEP`

- `VENDEDOR`: `Codigo_Vendedor`, `Nome`, `Sobrenome`, `Telefone`, `Rua`, `Numero`, `Complemento`, `Bairro`, `Cidade`, `Estado`, `CEP`, `Data_Admissao`, `Salario_Fixo`

- `NEGOCIO`: `Codigo_Negocio`, `Data`, `Preco_Pago`, `Codigo_Cliente`, `Codigo_Vendedor`, `RENAVAM`

## Relacionamentos identificados

- `CLIENTE (1) — realiza — (N) NEGOCIO`

- `VENDEDOR (1) — realiza — (N) NEGOCIO`

- `AUTOMOVEL (1) — participa — (1) NEGOCIO`

## Requisitos funcionais

- RF01 — Cadastrar, consultar, atualizar e excluir automóveis.

- RF02 — Cadastrar, consultar, atualizar e excluir clientes.

- RF03 — Cadastrar, consultar, atualizar e excluir vendedores.

- RF04 — Registrar negócios de venda, vinculando um cliente, um vendedor e um automóvel existentes.

- RF05 — Consultar o histórico de negócios realizados.

- RF06 — Consultar os negócios realizados por determinado cliente.

- RF07 — Consultar os negócios realizados por determinado vendedor.

- RF08 — Consultar os dados do automóvel relacionado a determinado negócio.

## Requisitos não funcionais

- RNF01 — O banco de dados deve garantir a integridade referencial por meio de `FOREIGN KEY`.

- RNF02 — Os identificadores das entidades devem ser únicos e não nulos.

- RNF03 — Os valores monetários devem utilizar tipos de dados apropriados para representar preços e salários.

- RNF04 — O banco deve impedir valores inválidos para atributos que possuam restrições de domínio, como número de portas e valores monetários.

- RNF05 — O sistema deve preservar os registros dos negócios realizados para permitir a consulta do histórico de vendas.

## Dúvidas / hipóteses de modelagem

- Um automóvel pode ser vendido mais de uma vez pela revendedora? Hipótese adotada: não — cada automóvel pode aparecer em apenas um negócio registrado.

- Um cliente pode realizar vários negócios? Hipótese adotada: sim — um mesmo cliente pode comprar vários automóveis.

- Um vendedor pode realizar vários negócios? Hipótese adotada: sim — um vendedor pode ser responsável por várias vendas.

- Um negócio pode envolver mais de um automóvel? Hipótese adotada: não — cada negócio registra a venda de um único automóvel.

- A placa pode ser compartilhada por dois automóveis? Hipótese adotada: não — a `Placa` deve ser `UNIQUE`.

- O preço pago pode ser diferente do preço anunciado do automóvel? Hipótese adotada: sim — `Preco` representa o preço cadastrado do automóvel, enquanto `Preco_Pago` registra o valor efetivamente pago no negócio.