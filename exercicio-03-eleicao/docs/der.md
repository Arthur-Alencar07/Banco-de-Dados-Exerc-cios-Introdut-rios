# DER — Diagrama Entidade-Relacionamento

Salve a imagem em `docs/diagramas/der.png` e mantenha também o arquivo editável.

## Chaves primárias

* `CARGO`: `Codigo_Cargo`
* `PARTIDO`: `Codigo_Partido`
* `CANDIDATO`: `Numero_Candidato`
* `ELEITOR`: `Titulo_Eleitor`
* `VOTO`: `Titulo_Eleitor`

## Chaves estrangeiras

* `CANDIDATO.Codigo_Cargo` → `CARGO.Codigo_Cargo`
* `CANDIDATO.Codigo_Partido` → `PARTIDO.Codigo_Partido`
* `VOTO.Titulo_Eleitor` → `ELEITOR.Titulo_Eleitor`
* `VOTO.Numero_Candidato` → `CANDIDATO.Numero_Candidato`

## Constraints relevantes

* `PRIMARY KEY`: garante a identificação única dos registros.
* `FOREIGN KEY`: garante que os relacionamentos apontem para registros existentes.
* `NOT NULL`: impede valores nulos nos atributos obrigatórios.
* `UNIQUE`: impede duplicidade em atributos que devem ser únicos, como nome do cargo, número do candidato, sigla e número do partido.
* `DEFAULT 17000.00`: define o salário padrão de um cargo quando nenhum valor for informado.
* A `PRIMARY KEY` de `VOTO` em `Titulo_Eleitor` impede que o mesmo eleitor registre mais de um voto.
* As `FOREIGN KEY` de `VOTO` impedem votos para eleitores ou candidatos inexistentes.
