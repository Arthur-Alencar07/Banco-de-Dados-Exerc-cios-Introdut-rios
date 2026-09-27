# Prompt utilizado para geração dos dados

## Ferramenta de IA utilizada
Claude (Anthropic)

## Prompt
```text
Você deve desenvolver um banco relacional para organizar um pequeno catálogo musical.
O material original apresenta três entidades: CD, MÚSICA e CANTOR. Um CD contém
músicas e cada música possui um cantor/intérprete associado.

Estrutura apresentada no exercício-base:

CD
- cod_cd
- nome
- gravadora
- data

CANTOR
- cod_cantor
- nome
- biografia

MUSICA
- código do CD
- numero_musica
- titulo
- cantor
- tempo_segundos
- genero

Relacionamentos apresentados:
- CD contém MÚSICA.
- CANTOR interpreta MÚSICA.

Sua tarefa de modelagem:
- Crie o MER.
- Crie o DER.
- Defina as PK e FK.
- Escolha tipos MySQL adequados.
- Defina constraints necessárias.

Crie um banco chamado CATALOGO_MUSICAL e escreva o script de criação das tabelas.
```

## Validações realizadas
- [x] PK duplicadas — não há duplicidade; `musica` usa PK composta (`cod_cd`, `numero_musica`) justamente para não colidir entre CDs diferentes.
- [x] FK inválidas — `musica.cod_cd` e `musica.cod_cantor` referenciam corretamente `cd.cod_cd` e `cantor.cod_cantor`.
- [ ] Campos UNIQUE — não há UNIQUE definido além das PKs; não se aplica no modelo atual.
- [x] NULL indevidos — apenas `cantor.biografia` aceita NULL; demais campos são `NOT NULL`.
- [x] Tipos de dados — tipos ajustados ao domínio (ex.: `smallint` para `numero_musica`/`tempo_segundos`, `date` para `data`, `text` para `biografia`).
- [ ] Dados fictícios — ainda não foram inseridos registros de teste (INSERTs), apenas a estrutura (DDL).

## Ajustes manuais realizados
- Definição da PK composta em `musica` em vez de um `cod_musica` autoincrementado isolado.
- Escolha de `ON DELETE RESTRICT` / `ON UPDATE CASCADE` nas FKs, em vez dos valores padrão do MySQL.
- Adição do `CHECK (tempo_segundos > 0)` para evitar durações inválidas (não estava no enunciado original).