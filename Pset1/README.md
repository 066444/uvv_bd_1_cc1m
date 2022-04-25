# Pset1 - Documentação da atividade

## Modelo Elmasri - SQL Power Architect

No programa **Power Architect** foi criado o diagrama das tabelas *funcionário*, *departamento*, *dependente*, *localizacoes_departamento*, *projeto*, e *trabalha_em* que vão ser inseridas no banco de dados, seguindo o modelo lógico Elmasri.

> O **modelo lógico** descreve as estruturas físicas da armazenamento de dados, tais como: tamanho de campos, índices, tipo de preenchimento destes campos, nomenclaturas, etc..


Com a criação desse diagrama foram definidos os campos das tabelas, seus atributos e propriedades e ainda as chaves primárias, estrangeiras e alternativas (PK, FK e AK), além dos índices e relacionamentos e comentários em cada tabela.


# Implementação do modelo lógico nos SGBDs

## Implementação scripts - PostgreSQL
No programa **PostgreSQL** foi implementado os modelo lógico seguindo toda a documentação.

Primeiro, foi criado a **role** - *CREATE ROLE nome_usuário*

> Uma **role** é uma entidade que pode possuir objetos de banco de dados e ter privilégios de banco de dados.
> 
> [PostgreSQL Documentation - role](https://www.postgresql.org/docs/current/sql-createrole.html)

Depois foi criado o **banco de dados** *"uvv"* - *CREATE DATABASE nome_banco*, com alguns parâmetros como o *usuário*, o *template*, o *encoding*, o *lc_collate* e *lc_ctype* e *allow_connections* - *CREATE DATABASE uvv WITH user, template, encoding, lc_collate, lc_ctype, allow_connections*.

Em seguida, foi criado o esquema *"elmasri"* - *CREATE SCHEMA *nome_schema*.

> Um **esquema** contém objetos nomeados (tabelas, tipos de dados, funções e operadores) cujos nomes podem duplicar os de outros objetos existentes em outros esquemas. [PostgreSQL Documentation - schema](https://www.postgresql.org/docs/current/sql-createschema.html)

Agora chegou a hora de criar e implementar as tabelas do modelo lógico, no banco de dados *"uvv"*.

Com o comando *CREATE TABLE esquema.nome_tabela* é criada uma das tabelas do projeto com o nomeda coluna, o tipo de dado e as constraints.

O nome do esquema deve vir antes do nome da tabela, para identificá-lo. Depois os comentários de cada tabela e por fim, é adicionado cada chave presente nas tabelas *ALTER TABLE FOREIGN KEY*.

## Implementação scripts - MariaDB
No programa **MariaDB** também foi implementado o modelo lógico seguindo a documentação.





