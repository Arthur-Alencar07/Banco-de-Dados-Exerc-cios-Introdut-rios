# MER — Modelo Entidade-Relacionamento

Salve a imagem em `docs/diagramas/mer.png` e mantenha também o arquivo editável.

## Entidades
- CD
- CANTOR
- MUSICA

## Relacionamentos
- CD contém MUSICA
- CANTOR interpreta MUSICA

## Cardinalidades
- CD (1) — (N) MUSICA: um CD possui várias músicas, cada música pertence a um único CD.
- CANTOR (1) — (N) MUSICA: um cantor interpreta várias músicas, cada música tem um único cantor.