-- QUESTÃO 1.
SELECT numero_departamento, AVG(salario) as MediaSalarial_departamento
FROM funcionario
GROUP BY numero_departamento;


-- QUESTÃO 2.
SELECT sexo, AVG(salario) as MediaSalarialSexo
FROM funcionario
GROUP BY sexo;


-- QUESTÃO 3. 
SELECT CONCAT(funcionario.primeiro_nome,' ', nome_meio, '', ' ', ultimo_nome) AS nome, data_nascimento, YEAR(CURRENT_TIMESTAMP())-YEAR(data_nascimento) 
AS idade, salario, nome_departamento FROM funcionario, departamento;


-- QUESTÃO 4. 
SELECT CONCAT (func.primeiro_nome,' ', nome_meio,' ', '',  ultimo_nome) AS nome, YEAR(CURRENT_TIMESTAMP())-YEAR(func.data_nascimento) AS idade,func.salario as salario_atual,if(salario < 35000, salario * 1.2, salario * 1.15) as salario_reajustado
from funcionario as func;

-- QUESTÃO 5.

-- QUESTÃO 6. (revisar)
SELECT DISTINCT CONCAT (func.primeiro_nome,' ', nome_meio,' ', '',  ultimo_nome) AS nome_funcionario, 
depart.nome_departamento as nome_departamento, 
dep.nome_dependente, YEAR(CURRENT_TIMESTAMP())-YEAR(dep.data_nascimento) AS idade_dependente,
case dep.sexo
when 'M' then 'Masculino'
when 'F' then 'Feminino'
end as sexo_dependente
from departamento depart
inner join funcionario func on (depart.numero_departamento = func.numero_departamento)
inner join dependente dep on (func.cpf = dep.cpf_funcionario);


-- QUESTÃO 7.
SELECT cpf, primeiro_nome, numero_departamento, salario
FROM funcionario 
WHERE cpf not in 
(SELECT cpf_funcionario from dependente);


-- QUESTÃO 8.
SELECT CONCAT(func.primeiro_nome,' ', nome_meio,' ', '',  ultimo_nome) as nome_funcionario,
trabalha_em.numero_projeto, horas, numero_departamento
FROM funcionario as func
INNER JOIN trabalha_em on func.cpf = trabalha_em.cpf_funcionario
ORDER BY numero_departamento;


-- QUESTÃO 9.
SELECT projeto.nome_projeto, trab.soma_horasTotais, departamento.nome_departamento
FROM(((SELECT numero_projeto, SUM(horas) AS soma_horasTotais FROM trabalha_em GROUP BY numero_projeto) AS trab
INNER JOIN projeto ON projeto.numero_projeto = trab.numero_projeto)
INNER JOIN departamento ON departamento.numero_departamento = projeto.numero_departamento);


-- QUESTÃO 10.
SELECT numero_departamento, AVG(salario) as MediaSalarial_departamento
FROM funcionario
GROUP BY numero_departamento;


-- QUESTÃO 11.
SELECT CONCAT(func.primeiro_nome,' ', nome_meio,' ', '',  ultimo_nome) AS nome_funcionario,
projeto.nome_projeto,
(trabalha_em.horas * 50) AS valor_total
FROM ((funcionario AS func
INNER JOIN trabalha_em
ON func.cpf = trabalha_em.cpf_funcionario)
INER JOIN projeto on projeto.numero_projeto = trabalha_em.numero_projeto)
ORDER BY nome_funcionario;


-- QUESTÃO 12.




