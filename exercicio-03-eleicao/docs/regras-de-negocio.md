# Regras de Negócio

* RN01 — Cada candidato está vinculado a um único cargo; um cargo pode possuir vários candidatos.

* RN02 — Cada candidato pertence a um único partido; um partido pode possuir vários candidatos.

* RN03 — Cada eleitor pode registrar apenas um voto, e cada voto é destinado a um único candidato.

## Restrições de integridade

* Código do cargo deve ser único e o nome do cargo não pode possuir duplicidade (`PRIMARY KEY` e `UNIQUE`).

* Código do partido deve ser único, assim como sua sigla e número (`PRIMARY KEY` e `UNIQUE`).

* Número do candidato deve ser único e identifica cada candidato (`PRIMARY KEY`).

* Título de eleitor deve ser único e identifica cada eleitor (`PRIMARY KEY`).

* Um candidato deve referenciar um cargo e um partido existentes (`FOREIGN KEY`).

* Um voto deve referenciar um eleitor e um candidato existentes (`FOREIGN KEY`).

* A chave primária de `VOTO` em `Titulo_Eleitor` impede que o mesmo eleitor registre mais de um voto.

* O salário do cargo assume o valor padrão de R$ 17.000,00 quando nenhum valor é informado (`DEFAULT 17000.00`).

* Os atributos obrigatórios não podem receber valores nulos (`NOT NULL`).

## Decisões tomadas

* Uso de identificadores específicos do domínio como chaves primárias: `Codigo_Cargo`, `Codigo_Partido`, `Numero_Candidato` e `Titulo_Eleitor`, evitando a criação de identificadores substitutos desnecessários.

* `VOTO` utiliza `Titulo_Eleitor` como chave primária para garantir que cada eleitor possa registrar apenas um voto.

* Relações entre `CARGO` e `CANDIDATO`, `PARTIDO` e `CANDIDATO`, e `CANDIDATO` e `VOTO` foram modeladas como 1:N, conforme as regras do sistema.

* A relação entre `ELEITOR` e `VOTO` foi modelada como 1:1, pois cada eleitor pode registrar somente um voto.

* Uso de `FOREIGN KEY` em `CANDIDATO` e `VOTO` para garantir a existência dos registros relacionados e preservar a integridade referencial.

* O salário padrão de R$ 17.000,00 foi definido diretamente no banco por meio de `DEFAULT`, evitando a necessidade de informar o valor em todo novo cadastro de cargo.

* As restrições `UNIQUE` foram utilizadas para impedir duplicidades em atributos que representam identificadores ou informações que devem ser exclusivas no sistema.
