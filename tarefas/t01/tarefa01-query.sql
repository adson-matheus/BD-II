--1) Faça uma consulta que selecione o nome dos funcionários que recebem
--salários superiores aos salários pagos no departamento 5.
SELECT nome
FROM funcionario
WHERE salario > ALL (SELECT salario FROM funcionario WHERE cod_depto = 5);
