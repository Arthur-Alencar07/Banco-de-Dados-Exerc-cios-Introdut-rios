# Prompt utilizado para geração dos dados

## Ferramenta de IA utilizada

ChatGPT — OpenAI

## Prompt

```text
Gere dados fictícios para popular um banco de dados de uma revendedora de carros.

O banco possui as seguintes entidades e atributos:

AUTOMOVEL:

- RENAVAM
- Placa
- Marca
- Modelo
- Ano_Fabricacao
- Ano_Modelo
- Cor
- Motor
- Numero_Portas
- Tipo_Combustivel
- Preco

CLIENTE:

- Codigo_Cliente
- Nome
- Sobrenome
- Telefone
- Rua
- Numero
- Complemento
- Bairro
- Cidade
- Estado
- CEP

VENDEDOR:

- Codigo_Vendedor
- Nome
- Sobrenome
- Telefone
- Rua
- Numero
- Complemento
- Bairro
- Cidade
- Estado
- CEP
- Data_Admissao
- Salario_Fixo

NEGOCIO:

- Codigo_Negocio
- Data
- Preco_Pago
- Codigo_Cliente
- Codigo_Vendedor
- RENAVAM

Respeite as seguintes regras:

- As chaves primárias devem ser únicas.
- As chaves estrangeiras devem referenciar registros existentes.
- A placa dos automóveis não deve possuir duplicidade.
- Os campos obrigatórios não devem receber NULL.
- Os valores de preço dos automóveis, preço pago e salário não devem ser negativos.
- O número de portas deve possuir um valor válido.
- Cada negócio deve estar vinculado a um cliente, um vendedor e um automóvel existentes.
- Cada automóvel deve aparecer em no máximo um negócio.
- O preço pago pode ser diferente do preço cadastrado do automóvel.
- Utilize somente dados fictícios e coerentes com o contexto de uma revendedora de carros.
- Utilize marcas e modelos de veículos reais, mas com dados cadastrais fictícios.
- Gere os comandos INSERT necessários para popular todas as tabelas.

## Validações realizadas

* [x] PK duplicadas

* [x] FK inválidas

* [x] Campos UNIQUE

* [x] NULL indevidos

* [x] Tipos de dados

* [x] Dados fictícios

## Ajustes manuais realizados

* Foram conferidas as chaves primárias para garantir que não houvesse duplicidade.
* Foram conferidas as chaves estrangeiras para garantir que clientes, vendedores e automóveis relacionados aos negócios existissem previamente.
* Foram verificadas as placas dos automóveis para garantir que não houvesse duplicidade.
* Foram ajustados os dados para manter coerência entre automóveis, clientes, vendedores e negócios.
* Foram verificados os valores de preços e salários para evitar valores negativos.
* Foram verificadas as vendas para garantir que cada automóvel aparecesse em no máximo um negócio.
* Os dados utilizados são fictícios e foram utilizados exclusivamente para testes e validação do banco de dados.