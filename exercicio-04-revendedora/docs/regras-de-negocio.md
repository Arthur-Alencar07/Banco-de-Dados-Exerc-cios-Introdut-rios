# Regras de Negócio

- RN01 — Cada automóvel é identificado unicamente pelo seu RENAVAM e pode ser registrado em no máximo um negócio de venda.

- RN02 — Cada negócio é realizado por um único cliente e um único vendedor, mas um cliente ou vendedor pode participar de vários negócios.

- RN03 — Cada negócio registra a venda de um único automóvel, mantendo a data e o preço efetivamente pago.

## Restrições de integridade

- `RENAVAM`, `Codigo_Cliente`, `Codigo_Vendedor` e `Codigo_Negocio` devem ser únicos e não nulos (`PRIMARY KEY`).

- A `Placa` do automóvel não pode ser duplicada (`UNIQUE`).

- `NEGOCIO` deve referenciar um cliente, um vendedor e um automóvel existentes (`FOREIGN KEY`).

- Preço do automóvel, preço pago e salário fixo não podem possuir valores negativos (`CHECK`).

- O número de portas do automóvel deve possuir um valor válido, sendo no mínimo 2 (`CHECK`).

- Os atributos obrigatórios não podem receber valores nulos (`NOT NULL`).

- A data do negócio deve ser informada para manter o histórico das vendas.

## Decisões tomadas

- Utilização do `RENAVAM` como chave primária de `AUTOMOVEL`, por ser o identificador apresentado no enunciado.

- Utilização de `Codigo_Cliente`, `Codigo_Vendedor` e `Codigo_Negocio` como chaves primárias numéricas.

- Utilização de `NEGOCIO` como entidade responsável por registrar o histórico das vendas, relacionando cliente, vendedor e automóvel.

- A relação entre `CLIENTE` e `NEGOCIO` foi definida como 1:N, pois um cliente pode realizar vários negócios.

- A relação entre `VENDEDOR` e `NEGOCIO` foi definida como 1:N, pois um vendedor pode realizar vários negócios.

- A relação entre `AUTOMOVEL` e `NEGOCIO` foi definida como 1:1, considerando que um automóvel pode ser vendido apenas uma vez no histórico da revendedora.

- Utilização de `DECIMAL` para valores monetários, evitando o uso de tipos inadequados para preços e salários.