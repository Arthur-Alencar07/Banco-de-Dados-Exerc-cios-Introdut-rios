# DER — Diagrama Entidade-Relacionamento

Salve a imagem em `docs/diagramas/der.png` e mantenha também o arquivo editável.

## Chaves primárias
- `cd.cod_cd`
- `cantor.cod_cantor`
- `musica.(cod_cd, numero_musica)` — chave composta

## Chaves estrangeiras
- `musica.cod_cd` → `cd.cod_cd`
- `musica.cod_cantor` → `cantor.cod_cantor`

## Constraints relevantes
- `fk_musica_cd`: `ON UPDATE CASCADE ON DELETE RESTRICT`
- `fk_musica_cantor`: `ON UPDATE CASCADE ON DELETE RESTRICT`
- `ck_musica_tempo`: `CHECK (tempo_segundos > 0)`
- `NOT NULL` em todos os campos exceto `cantor.biografia`
- Índice auxiliar: `idx_musica_cantor` em `musica.cod_cantor`