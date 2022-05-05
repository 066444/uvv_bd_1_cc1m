-- Questão 1.
SELECT numero_departamento, AVG(salario) as MediaSalarial_departamento
FROM funcionario
GROUP BY numero_departamento;


-- Questão 2.
SELECT sexo, AVG(salario) as MediaSalarialSexo
FROM funcionario
GROUP BY sexo;


-- Questão 3. 
SELECT CONCAT(funcionario.primeiro_nome,' ', nome_meio, '', ' ', ultimo_nome) AS nome, data_nascimento, YEAR(CURRENT_TIMESTAMP())-YEAR(data_nascimento) 
AS idade, salario, nome_departamento FROM funcionario, departamento;


-- Questão 4. 
SELECT CONCAT (func.primeiro_nome,' ', nome_meio,' ', '',  ultimo_nome) AS nome, YEAR(CURRENT_TIMESTAMP())-YEAR(func.data_nascimento) AS idade,func.salario as salario_atual,if(salario < 35000, salario * 1.2, salario * 1.15) as salario_reajustado
from funcionario as func;

-- Questão 5.



