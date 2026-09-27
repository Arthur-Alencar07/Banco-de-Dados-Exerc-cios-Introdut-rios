# Levantamento de Requisitos

## Contexto

O sistema deve organizar o processo eleitoral, permitindo o cadastro de cargos, partidos, candidatos e eleitores, além do registro dos votos. O banco deve garantir que os relacionamentos entre essas entidades sejam válidos e que cada eleitor possa registrar apenas um voto.

## Entidades identificadas

* CARGO

* PARTIDO

* CANDIDATO

* ELEITOR

* VOTO

## Atributos identificados

* CARGO: `Codigo_Cargo`, `Nome`, `Salario`

* PARTIDO: `Codigo_Partido`, `Nome`, `Sigla`, `Numero`

* CANDIDATO: `Numero_Candidato`, `Nome`, `Codigo_Cargo`, `Codigo_Partido`

* ELEITOR: `Titulo_Eleitor`, `Nome`

* VOTO: `Titulo_Eleitor`, `Numero_Candidato`

## Relacionamentos identificados

* CARGO (1) — possui — (N) CANDIDATO

* PARTIDO (1) — possui — (N) CANDIDATO

* CANDIDATO (1) — recebe — (N) VOTO

* ELEITOR (1) — registra — (1) VOTO

## Requisitos funcionais

* RF01 — Cadastrar, consultar, atualizar e excluir cargos.

* RF02 — Cadastrar, consultar, atualizar e excluir partidos.

* RF03 — Cadastrar, consultar, atualizar e excluir candidatos, vinculando-os a um cargo e a um partido existentes.

* RF04 — Cadastrar, consultar, atualizar e excluir eleitores.

* RF05 — Registrar votos, vinculando cada voto a um eleitor e a um candidato existentes.

* RF06 — Consultar os candidatos vinculados a determinado cargo.

* RF07 — Consultar os candidatos vinculados a determinado partido.

* RF08 — Consultar os votos recebidos por determinado candidato.

* RF09 — Impedir que um mesmo eleitor registre mais de um voto.

## Requisitos não funcionais

* RNF01 — O banco deve garantir a integridade referencial por meio de `FOREIGN KEY`.

* RNF02 — As chaves primárias e restrições `UNIQUE` devem impedir a duplicidade de identificadores e informações que precisam ser exclusivas.

* RNF03 — Os atributos obrigatórios devem ser protegidos contra valores nulos por meio de `NOT NULL`.

* RNF04 — O salário do cargo deve assumir automaticamente o valor padrão de R$ 17.000,00 quando não informado.

* RNF05 — O banco deve garantir que um voto não seja registrado para eleitor ou candidato inexistente.

## Dúvidas / hipóteses de modelagem

* Um eleitor pode registrar mais de um voto? Hipótese adotada: não — `Titulo_Eleitor` é a chave primária de `VOTO`, garantindo apenas um voto por eleitor.

* Um candidato pode estar vinculado a mais de um cargo? Hipótese adotada: não — cada candidato possui uma única referência para `Codigo_Cargo`.

* Um candidato pode pertencer a mais de um partido? Hipótese adotada: não — cada candidato possui uma única referência para `Codigo_Partido`.

* Um voto pode ser registrado sem eleitor ou candidato? Hipótese adotada: não — `VOTO` deve obrigatoriamente referenciar um eleitor e um candidato existentes.

* Um partido pode possuir vários candidatos? Hipótese adotada: sim — a relação `PARTIDO (1) — (N) CANDIDATO` permite vários candidatos para um mesmo partido.

* Um cargo pode possuir vários candidatos? Hipótese adotada: sim — a relação `CARGO (1) — (N) CANDIDATO` permite vários candidatos para um mesmo cargo.
