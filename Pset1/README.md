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

Em seguida, foi criado o esquema *"elmasri"* - *CREATE SCHEMA nome_schema*.

> Um **esquema** contém objetos nomeados (tabelas, tipos de dados, funções e operadores) cujos nomes podem duplicar os de outros objetos existentes em outros esquemas. [PostgreSQL Documentation - schema](https://www.postgresql.org/docs/current/sql-createschema.html)

Agora chegou a hora de criar e implementar as tabelas do modelo lógico, no banco de dados *"uvv"*.

Com o comando *CREATE TABLE esquema.nome_tabela* é criada uma das tabelas do projeto com o nomeda coluna, o tipo de dado e as constraints.

O nome do esquema deve vir antes do nome da tabela, para identificá-lo. Depois os comentários de cada tabela e por fim, é adicionado cada chave presente nas tabelas *ALTER TABLE FOREIGN KEY*.

## Implementação scripts - MariaDB
No programa **MariaDB** também foi implementado o modelo lógico seguindo a documentação.

Primeiro o comando *SHOW DATABASES* é usado para mostrar todos os banco de dados no sistema. Depois o comando *CREATE DATABASE uvv* é usado para criar o banco de dados *"uvv"*.
Agora sobre o esquema Elmasri. No MariaDB/MySQL *schema* e *database* são a mesma coisa. 

**representação do comando *SHOW DATABASES***

| Databases          |
---------------------|
| elamsri            |
| information_schema |
| mysql              |
| performance_schema |
| sys                |
| uvv                |


> o "esquema" elmasri aparece como um banco de dados.

Então, tecnicamente não é possível criar um esquema no MariaDB.

Depois, com o comando *use uvv*, o programa começa a usar o banco de dados *"uvv"* para criar tabelas, user e etc.

Criando o user com o comando *CREATE USER nome_user* e garantindo todos os privilégios para o user com o comando *GRANT ALL PRIVILEGES TO nome_user ON nome_banco TO nome_user*, podemos começar a criar as tabelas, assim como no Postgres.

Com o comando *CREATE TABLE funcionario* cria-se uma das tabelas. Depois adiciona-se os comentários e por fim, inserir os dados na tabela com o comando *INSERT INTO nome_tabela (..., ...) VALUES (dado1, dado2, ...)*

**Importante:** No MariaDB, a ordem básica de criar as tabels é: *criar tabela, inserir dados, etc..'*. Se for criado todas as tabelas de uma só vez, ocorre um erro no programa com a relação das chaves estrangeiras, por exemplo.

Por fim, depois de criar todas as tabelas e inserir o resto dos dados, o comando *SELECT * FROM nome_tabela* pode ser usado para acessar todos os dados que foram colocados em uma tabela específica.

## Algumas observações

No meu projeto do banco de dados *"uvv"*, fiz algumas mudanças, como na tabela *departamento* mudei *cpf_gerente* para *cpf_supervisor*. Mas por que fiz isso? No meu ponto de vista, na tabela *funcionario* temos *cpf_supervisor* e na tabela *departamento temos *cpf_gerente*. Essas duas tabelas estão relacionadas, mas quando eu tentanva colocar em *departamento* *cpf_gerente*, um erro aparecia. É como se a tabela *departamento* estivesse "chamando" o *cpf_gerente* na tabela *funcioionario*, mas ele nao existe nesta tabela.







