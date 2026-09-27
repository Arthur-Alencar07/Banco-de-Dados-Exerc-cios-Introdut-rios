# Regras de Negócio

- RN01 — Um CD tem várias músicas; cada música pertence a um único CD.
- RN02 — Um cantor interpreta várias músicas; cada música tem um único cantor.
- RN03 — `numero_musica` só é único dentro do mesmo CD (não é PK isolada).

## Restrições de integridade
- FKs obrigatórias em `musica` (CD e cantor não podem faltar).
- `ON DELETE RESTRICT`: não apaga CD/cantor com música vinculada.
- `ON UPDATE CASCADE`: atualiza códigos em cascata.
- `tempo_segundos > 0` via CHECK.
- Campos principais `NOT NULL`; só `biografia` é opcional.

## Decisões tomadas
- PK composta (`cod_cd`, `numero_musica`) em vez de `cod_musica` isolado.
- Sem N:N para feats — 1 cantor por música por enquanto.
- `RESTRICT` em vez de `CASCADE` nas FKs, por segurança.
- `AUTO_INCREMENT` como chave substituta em `cd` e `cantor`.
- `InnoDB` + `utf8mb4` pelo suporte a FK e acentuação.