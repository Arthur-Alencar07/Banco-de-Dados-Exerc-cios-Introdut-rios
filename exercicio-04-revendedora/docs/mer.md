# MER — Modelo Entidade-Relacionamento

## Entidades

- `AUTOMOVEL`
- `CLIENTE`
- `VENDEDOR`
- `NEGOCIO`

## Relacionamentos

- `CLIENTE` realiza `NEGOCIO`
- `VENDEDOR` realiza `NEGOCIO`
- `NEGOCIO` envolve `AUTOMOVEL`

## Cardinalidades

- `CLIENTE (1) — (N) NEGOCIO`: um cliente pode realizar vários negócios, mas cada negócio possui um único cliente comprador.

- `VENDEDOR (1) — (N) NEGOCIO`: um vendedor pode realizar vários negócios, mas cada negócio é realizado por um único vendedor.

- `AUTOMOVEL (1) — (1) NEGOCIO`: cada negócio registra a venda de um único automóvel, e cada automóvel pode aparecer em no máximo um negócio no histórico de vendas.