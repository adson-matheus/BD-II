--3) Faça uma consulta que selecione o nome de
--todos os funcionários, exceto o mais idoso
SELECT nome
FROM funcionario
WHERE age(dt_nasc) > INTERVAL '21 years'
AND codigo NOT IN (SELECT cod_gerente FROM departamento WHERE cod_gerente IS NOT NULL);