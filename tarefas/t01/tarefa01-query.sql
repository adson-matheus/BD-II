--1) Faça uma consulta que selecione o nome dos funcionários que recebem
--salários superiores aos salários pagos no departamento 5.
SELECT nome
FROM funcionario
WHERE salario > ALL (SELECT salario FROM funcionario WHERE cod_depto = 5);

--3) Faça uma consulta que selecione o nome de
--todos os funcionários, exceto o mais idoso
SELECT nome
FROM funcionario
WHERE age(dt_nasc) > INTERVAL '21 years'
AND codigo NOT IN (SELECT cod_gerente FROM departamento WHERE cod_gerente IS NOT NULL);
