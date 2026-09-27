# DER — Diagrama Entidade-Relacionamento

## Chaves primárias

- `AUTOMOVEL`: `RENAVAM`
- `CLIENTE`: `Codigo_Cliente`
- `VENDEDOR`: `Codigo_Vendedor`
- `NEGOCIO`: `Codigo_Negocio`

## Chaves estrangeiras

- `NEGOCIO.Codigo_Cliente` → `CLIENTE.Codigo_Cliente`
- `NEGOCIO.Codigo_Vendedor` → `VENDEDOR.Codigo_Vendedor`
- `NEGOCIO.RENAVAM` → `AUTOMOVEL.RENAVAM`

## Constraints relevantes

- `PRIMARY KEY`: garante a identificação única de cada automóvel, cliente, vendedor e negócio.

- `FOREIGN KEY`: garante que o negócio esteja relacionado a um cliente, vendedor e automóvel existentes.

- `NOT NULL`: deve ser utilizado nos atributos obrigatórios, como identificadores e informações necessárias para registrar um negócio.

- `UNIQUE`: pode ser aplicado à `Placa`, evitando que dois automóveis sejam cadastrados com a mesma placa.

- `CHECK`: pode ser utilizado para impedir valores inválidos, como número de portas menor que 2, preços negativos e salário negativo.

- `DECIMAL`: deve ser utilizado para valores monetários, como `Preco` do automóvel, `Preco_Pago` do negócio e `Salario_Fixo` do vendedor.

- As `FOREIGN KEY` de `NEGOCIO` garantem que não seja registrado um negócio para cliente, vendedor ou automóvel inexistente.

- A entidade `NEGOCIO` permite manter o histórico das vendas realizadas, relacionando o automóvel vendido ao comprador e ao vendedor responsável.