--4) Faça uma consulta que selecione o nome, o salário
--e o departamento dos funcionários que não são gerentes, ordenando pelo Código do Departamento.
SELECT d.codigo, f.nome, f.salario
FROM funcionario f, departamento d
WHERE f.cod_depto = d.codigo
AND f.codigo NOT IN (SELECT cod_gerente FROM departamento WHERE cod_gerente IS NOT NULL)
ORDER BY d.codigo;