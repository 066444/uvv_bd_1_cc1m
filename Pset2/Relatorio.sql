-- PRIMEIRO PASSO:
USE uvv;

-- QUESTÃO 1.
SELECT numero_departamento AS 'Numero_departamento', AVG(salario) as 'Media_salarial_departamento'
FROM funcionario
GROUP BY numero_departamento;


-- QUESTÃO 2.
SELECT sexo AS 'Sexo', AVG(salario) as 'Media_salarial'
FROM funcionario
GROUP BY sexo;


-- QUESTÃO 3. 
SELECT DISTINCT depart.nome_departamento AS 'Nome_departamento', 
CONCAT (func.primeiro_nome,' ', nome_meio, '', ' ', ultimo_nome) AS 'Nome_completo', func.data_nascimento AS 'Data_nascimento', 
YEAR(CURRENT_TIMESTAMP())-YEAR(func.data_nascimento) AS 'Idade', func.salario AS 'Salario'
FROM funcionario AS func
INNER JOIN departamento AS depart ON (depart.numero_departamento = func.numero_departamento)
ORDER BY depart.nome_departamento;


-- QUESTÃO 4. 
SELECT CONCAT (func.primeiro_nome,' ', nome_meio,' ', '',  ultimo_nome) AS 'Nome_completo', 
YEAR(CURRENT_TIMESTAMP())-YEAR(func.data_nascimento) AS 'Idade', 
func.salario AS 'Salario_atual',
(IF (salario < 35000, salario * 1.2, salario * 1.15)) as 'Salario_reajustado'
FROM funcionario AS func;

-- QUESTÃO 5.
SELECT DISTINCT nome_departamento, salario,
CASE 
WHEN depart.cpf_supervisor = func.cpf_supervisor
THEN 
CONCAT (func.primeiro_nome,' ', nome_meio,' ', '',  ultimo_nome)
END AS 'Nome_gerente',
CASE WHEN func.cpf_supervisor = depart.cpf_supervisor
THEN CONCAT (func.primeiro_nome,' ', nome_meio,' ', '',  ultimo_nome)
END AS 'Nome_funcionario'
FROM  departamento AS depart
INNER JOIN funcionario AS func ON (func.numero_departamento = depart.numero_departamento)
ORDER BY nome_departamento ASC, salario DESC;

-- QUESTÃO 6.
SELECT  
CONCAT (funcionario.primeiro_nome,' ', nome_meio,'. ', '',  ultimo_nome) AS 'Nome_funcionario',
dependente.nome_dependente AS 'Nome_dependente,
(IF(dependente.sexo = 'F', 'Feminino', 'Masculino')) as sexo_dependente,YEAR(CURRENT_TIMESTAMP())-YEAR(dependente.data_nascimento) 
AS 'Idade_dependente',
departamento.nome_departamento AS 'Nome_departamento
FROM ((dependente
INNER JOIN funcionario on dependente.cpf_funcionario = funcionario.cpf)
INNER JOIN departamento on departamento.numero_departamento = funcionario.numero_departamento);


-- QUESTÃO 7.
SELECT DISTINCT CONCAT (func.primeiro_nome,' ', nome_meio,' ', '',  ultimo_nome) AS 'Nome_completo',
numero_departamento AS 'Numero_departamento', salario as 'Salario'
FROM funcionario AS func
WHERE cpf NOT IN 
(SELECT cpf_funcionario from dependente);


-- QUESTÃO 8.
SELECT proj.numero_departamento AS 'Numero_departamento',nome_projeto AS 'Nome_projeto',
trab_em.horas AS 'Horas',
CONCAT (func.primeiro_nome,' ', nome_meio,' ', '',  ultimo_nome) AS 'Nome_completo'
FROM ((projeto AS proj
INNER JOIN trabalha_em  AS trab_em ON trab_em.numero_projeto = proj.numero_projeto)
INNER JOIN funcionario AS func ON func.cpf = trab_em.cpf_funcionario);


-- QUESTÃO 9.
SELECT proj.nome_projeto AS 'Nome_projeto', depart.nome_departamento AS 'Nome_departamento',
SUM(horas) AS 'Horas_totais'
FROM trabalha_em AS trab_em 
INNER JOIN projeto AS proj ON (trab_em.numero_projeto = proj.numero_projeto)
INNER JOIN departamento AS depart ON (proj.numero_departamento = depart.numero_departamento)
GROUP BY depart.nome_departamento, proj.nome_projeto;


-- QUESTÃO 10.
SELECT numero_departamento AS 'Numero_departamento', AVG(salario) as 'Media_salarial_departamento'
FROM funcionario
GROUP BY numero_departamento;


-- QUESTÃO 11.
SELECT CONCAT (primeiro_nome,' ', nome_meio,' ', '',  ultimo_nome) 
AS 'Nome_completo', nome_projeto AS 'Nome_projeto', horas * 50 as 'Valor_total'
FROM trabalha_em AS trab_em
INNER JOIN projeto AS proj ON (trab_em.numero_projeto = proj.numero_projeto)
INNER JOIN funcionario AS func ON (trab_em.cpf_funcionario = func.cpf) 
ORDER BY proj.numero_projeto;


-- QUESTÃO 12.
SELECT depart.nome_departamento AS 'Nome_departamento', proj.nome_projeto AS 'Nome_projeto',
CONCAT(func.primeiro_nome,' ',nome_meio,' ', '',  ultimo_nome) AS 'Nome_funcionario',
trab_em.horas AS 'Horas_totais'
FROM departamento AS depart
INNER JOIN projeto AS proj ON (depart.numero_departamento = proj.numero_departamento)
INNER JOIN funcionario AS func ON (depart.numero_departamento = func.numero_departamento)
INNER JOIN trabalha_em AS trab_em ON (trab_em.numero_projeto = proj.numero_projeto)
WHERE trab_em.horas = 0;

-- QUESTÃO 13.
SELECT dep.nome_dependente AS 'Nome_presenteados', sexo AS 'Sexo',
YEAR(CURRENT_TIMESTAMP())-YEAR(dep.data_nascimento) as 'Idade'
FROM dependente AS dep
UNION SELECT 
CONCAT (func.primeiro_nome,' ',nome_meio,' ', '',  ultimo_nome) AS 'Nome_presenteados', sexo AS 'Sexo',
YEAR(CURRENT_TIMESTAMP())-YEAR(func.data_nascimento) as 'Idade'
FROM funcionario AS func
ORDER BY 'Idade' DESC;

-- QUESTÃO 14.
SELECT depart.nome_departamento AS 'Nome_departamento',
CASE WHEN func.numero_departamento = depart.numero_departamento
THEN COUNT (func.cpf) 
END AS 'Total_funcionarios'
FROM departamento AS depart
INNER JOIN funcionario AS func ON (depart.numero_departamento = func.numero_departamento)
GROUP BY depart.nome_departamento, depart.numero_departamento, func.numero_departamento
ORDER BY 'Total_funcionarios' DESC;

-- QUESTÃO 15.
SELECT CONCAT (func.primeiro_nome,' ',nome_meio,' ', '',  ultimo_nome) AS 'Nome_completo',
func.numero_departamento AS 'Departamento', proj.nome_projeto AS 'Nome_projeto'
FROM funcionario AS func 
INNER JOIN trabalha_em AS trab_em ON (trab_em.cpf_funcionario = func.cpf)
INNER JOIN projeto AS proj ON (proj.numero_projeto = trab_em.numero_projeto)
ORDER BY func.numero_departamento;





