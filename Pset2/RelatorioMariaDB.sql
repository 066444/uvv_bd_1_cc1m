-- Questão 1.
SELECT numero_departamento, AVG(salario) as MediaSalarial_departamento
FROM funcionario
GROUP BY numero_departamento;
