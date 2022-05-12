## **PSET 2** | Aluna: Julia Costa | Turma: CC1M | Professor: Abrantes Filho
# O que é esse repositório no Github?

## Relatórios SQL 
#### QUESTÃO 1.
#### Prepare um relatório que mostre a média salarial dos funcionários de cada departamento.

| Numero_departamento | Media_salarial_departamento |
| -------------------- | --------------------------- |
| 1                   | 55.000
| 4                   | 31.000
| 5                   | 33.250

#### QUESTÃO 2.
#### Prepare um relatório que mostre a média salarial dos homens e das mulheres.

| Sexo    | Media_salarial |
| -------- | -------------- |
| F       | 31.000
| M       | 37.600         |

#### QUESTÃO 3.
#### Prepare um relatório que liste o nome dos departamentos e, para cada departamento, inclua as seguintes informações de seus funcionários:  o nome completo, a data nascimento, a idade em anos completos e o salário.

| Nome_departamento | Nome_completo    | Data_nascimmento | Idade | Salario |
| ------------------ | ---------------- | ---------------- | ----- | ------- |
| Administração     | André V Pereira  | 1969-03-29       | 53    | 25.000  |
| Administração     | Alice Z Zelaya   | 1968-01-19       | 34    | 25.000  |
| Administração     | Jennifer S Souza | 1941-06-20       | 81    | 43.000  |
| Matriz            | Jorge E Brito    | 1937-11-10       | 85    | 55.000  |
| Pesquisa          | Joice A Leite    | 1972-07-31       | 50    | 25.000  |
| Pesquisa          | Roaldo K Lima    | 1962-09-15       | 60    | 38.000  |
| Pesquisa          | João B Silva     | 1965-01-09       | 57    | 30.000  |
| Pesquisa          | Fernando T Wong  | 1955-12-08       | 67    | 40.000  |

#### QUESTÃO 4.
#### prepare um relatório que mostre o nome completo dos funcionários, a idade em anos completos, o salário atual e o salário com um reajuste que obedece ao seguinte critério: se o salário atual do funcionário é inferior a 35.000 o reajuste deve ser de 20%, e se o salário atual do funcionário for igual ou superior a 35.000 o reajuste deve ser de 15%.

| Nome_completo    | Idade | Salario_atual | Salario_reajustado |
| ----------------- | ----- | ------------- | ------------------ |
| João B Silva     | 57    | 30.000        | 36.000             |
| Fernando T Wong  | 67    | 40.000        | 46.000             |
| Joice A Leite    | 50    | 25.000        | 30.000             |
| Ronaldp K Lima   | 60    | 38.000        | 43.700             |
| Jorge E Brito    | 85    | 55.000        | 63.250             |
| Jennifer S Souza | 81    | 43.000        | 49.450             |
| André V Pereira  | 53    | 25.000        | 30.000             |
| Alice J Zelaya   | 54    | 25.000        | 30.000             |

#### QUESTÃO 5.
#### Prepare um relatório que liste, para cada departamento, o nome do gerente e o nome dos funcionários. Ordene esse relatório por nome do departamento (em ordem crescente) e por salário dos funcionários (em ordem decrescente).


#### QUESTÃO 6.
#### prepare um relatório que mostre o nome completo dos funcionários que têm dependentes, o departamento onde eles trabalham e, para cada funcionário, também liste o nome completo dos dependentes, a idade em anos de cada dependente e o sexo (o sexo NÃO DEVE aparecer como M ou F, deve aparecer como “Masculino” ou “Feminino”).

| Nome_funcionario  | Nome_dependente | Sexo_dependente | Idade_dependente | Nome_departamento |
| ------------------ | --------------- | --------------- | ---------------- |------------------ |
| João B Silva      | Alicia          | Feminino        | 34               | Pesquisa          |
| João B Silva      | Elizabeth       | Feminino        | 55               | Pesquisa          |
| João B Silva      | Michael         | Masculino       | 34               | Pesquisa          |
| Fernando T Wong   | Alicia          | Feminino        | 36               | Pesquisa          |
| Fernando T Wong   | Janaína         | Feminino        | 64               | Pesquisa          |
| Fernando T Wong   | Tiago           | Masculino       | 39               | Pesquisa          |
| Jennifer S SOouza | Antonio         | Maculino        | 80               | Administração     |

#### QUESTÃO 7
#### Prepare um relatório que mostre, para cada funcionário que NÃO TEM dependente, seu nome completo, departamento e salário.

| Nome_completo   | Numero_departamento | Salario |
| ---------------- | ------------------- | ------- |
| Joice A Leite   | 5                   | 25.000   |
| Ronaldo K Lima  | 5                   | 38.000   |
| Jorge E Brito   | 1                   | 55.000   |
| André V Pereira | 4                   | 25.000   |
| Alice J Zelaya  | 4                   | 25.0000  |

#### QUESTÃO 8.
#### Prepare um relatório que mostre, para cada departamento, os projetos desse departamento e o nome completo dos funcionários que estão alocados em cada projeto. Além disso inclua o número de horas trabalhadas por cada funcionário, em cada projeto.

| Numero_departamento | Nome_projeto    | Horas | Nome_completo    |
| -------------------- | --------------- | ----- | ---------------- |
| 5                   | ProdutoX        | 32,5  | João B Silva     |
| 5                   | ProdutoY        | 7,5   | João B Silva     |
| 5                   | ProdutoY        | 10    | Fernando T Wong  |
| 5                   | ProdutoZ        | 10    | Fernando T Wong  |
| 4                   | Infromatização  | 10    | Fernando T Wong  |
| 1                   | Reorganização   | 10    | Fernando T Wong  |
| 5                   | ProdutoZ        | 40    | Ronaldo K Lima   |
| 1                   | Reorganização   | 0     | Jorge E Brito    |
| 1                   | Reorganização   | 15    | Jennifer S Souza |
| 4                   | Novosbenefícios | 20    | Jennifer S Souza |
| 4                   | Informatização  | 35    | André V Pereira  |
| 4                   | Novosbenefícios | 5     | André V Pereira  |
| 4                   | Informatização  | 10    | Alice J Zelaya   |
| 4                   | Novosbenefícios | 30    | Alice J Zelaya   |

#### QUESTÃO 9.
#### Prepare um relatório que mostre a soma total das horas de cada projeto em cada departamento. Obs.: o relatório deve exibir o nome do departamento, o nome do projeto e a soma total das horas.

| Nome_projeto    | Nome_departamento | Horas_totais |
| ---------------- | ----------------- | ------------ |
| Informatização  | Administração     | 55           |
| Novosbenefícios | Administração     | 55           |
| Reorganização   | Matriz            | 25           |
| ProdutoX        | Pesquisa          | 52,5         |
| ProfutoY        | Pesquisa          | 37,5         |
| ProdutoZ        | Pesquisa          | 50           |

#### QUESTÃO 10.
#### Prepare um relatório que mostre a média salarial dos funcionários de cada departamento.

| Numero_departamento | Media_salarial_departamento |
| -------------------- | --------------------------- |
| 1                   | 55.000                      |
| 4                   | 31.000                      |
| 5                   | 33.250                      |

#### QUESTÃO 11.
#### Considerando que o valor pago por hora trabalhada em um projeto é de 50 reais, prepare um relatório que mostre o nome completo do funcionário, o nome do projeto e o valor total que o funcionário receberá referente às horas trabalhadas naquele projeto.

| Nome_completo    | Nome_projeto    | Valor_total |
| ----------------- | --------------- | ----------- |
| João B Silva     | ProdutoX        | 1.625
| João B Silva     | ProdutoY        | 375
| Fernando T Wong  | ProdutoY        | 500
| Fernando T Wong  | ProdutoZ        | 500
| Ronaldo K Lima   | ProdutoZ        | 2.000
| Fernando T Wong  | Informatização  | 500
| André V Pereira  | Informatização  | 1.750
| Alice J Zelaya   | Infromatização  | 500
| Fernando T Wong  | Reorganização   | 500
| Jorge E Brito    | Reorganização   | 0
| Jennifer S Souza | Reorganização   | 750
| Jennifer S Souza | Novosbenefícios | 1.000
| André V Pereira  | Novosbenefícios | 250
| Alice J Zelaya   | Novosbenefícios | 1.500

#### QUESTÃO 12.
#### Seu chefe está verificando as horas trabalhadas pelos funcionários nos projetos e percebeu que alguns funcionários, mesmo estando alocadas à algum projeto, não registraram nenhuma hora trabalhada. Sua tarefa é preparar um relatório que liste o nome do departamento, o nome do projeto e o nome dos funcionários que, mesmo estando alocados a algum projeto, não registraram nenhuma hora trabalhada.

| Nome_departamento | Nome_projeto  | Nome_funcionario | Horas_totais |
| ------------------ | ------------- | ---------------- | ------------ |
| Matriz            | Reorganização | Jorge E Brito    | 0            |

#### QUESTÃO 13
#### Durante o natal deste ano a empresa irá presentear todos os funcionários e todos os dependentes (sim, a empresa vai dar um presente para cada funcionário e um presente para cada dependente de cada funcionário) e pediu para que você preparasse um relatório que listasse o nome completo das pessoas a serem presenteadas (funcionários e dependentes), o sexo e a idade em anos completos (para poder comprar um presente adequado). Esse relatório deve estar ordenado pela idade em anos completos, de forma decrescente.

| Nome_presenteados | Sexo | Idade |
| ------------------ | ---- | ----- |
| Alicia           | F     | 34    |
| Elizabeth        | F     | 55    |
| Michael          | M     | 34    |
| Alicia           | F     | 36    |
| Janaína          | F     | 64    |
| Tiago            | M     | 39    |
| Antonio          | M     | 80    |
| João B Silva     | M     | 57    |   
| Joice A leite    | F     | 50    |
| Ronaldo K Lima   | M     | 60    |
| Jorge E Brito    | M     | 85    |
| Jennifer S Souza | F     | 81    |
| André V Pereira  | M     | 53    |
| Alice J Zelaya   | F     | 54    |

#### QUESTÃO 14.
#### Prepare um relatório que exiba quantos funcionários cada departamento tem.

| Nome_departamento | Total_funcionarios |
| ------------------ | ------------------ |
| Pesquisa          | 4                  |
| Matriz            | 1                  |
| Administração     | 3                  |

#### QUESTÃO 15.
#### p: como um funcionário pode estar alocado em mais de um projeto, prepare um relatório que exiba o nome completo do funcionário, o departamento desse funcionário e o nome dos projetos em que cada funcionário está alocado. Atenção: se houver algum funcionário que não está alocado em nenhum projeto,
o nome completo e o departamento também devem aparecer no relatório.

| Nome_completo    | Departamento | Nome_projeto    |
| ----------------- | ------------ | --------------- |
| Jorge E Brito    | 1            | Reorganização   |
| Alice J Zelaya   | 4            | Infomatização   |
| Jennifer S Souza | 4            | Novosbenefícios |
| Jennifer S Souza | 4            | Reorganização   |
| André V Pereira  | 4            | Novosbenefícios |
| Alice J Zelaya   | 4            | Novosbenefícios |
| André V Pereira  | 4            | Infromatização  |
| João B Silva     | 5            | ProdutoX        |
| Fernando T Wong  | 5            | Reorganização   |
| João B Silva     | 5            | ProdutoY        |
| Fernando T Wong  | 5            | ProdutoY        |
| Fernando T Wong  | 5            | ProdutoZ        |
| Fernando T Wong  | 5            | Infromatização  |
| Ronaldo K Lima   | 5            | ProdutoZ        |
 
