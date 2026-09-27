# MER — Modelo Entidade-Relacionamento

Salve a imagem em `docs/diagramas/mer.png` e mantenha também o arquivo editável.

## Entidades
- CARGO
- CANDIDATO
- PARTIDO
- ELEITOR
- VOTO

## Relacionamentos
- CARGO possui CANDIDATO
- PARTIDO é de CANDIDATO
- CANDIDATO recebe VOTO
- ELEITOR registra VOTO

## Cardinalidades
- CARGO (1) — (N) CANDIDATO: um cargo pode possuir vários candidatos, mas cada candidato está vinculado a um único cargo.
- PARTIDO (1) — (N) CANDIDATO: um partido pode possuir vários candidatos, mas cada candidato pertence a um único partido.
- CANDIDATO (1) — (N) VOTO: um candidato pode receber vários votos, mas cada voto é destinado a um único candidato.
- ELEITOR (1) — (1) VOTO: cada eleitor pode registrar apenas um voto, e cada voto pertence a um único eleitor.