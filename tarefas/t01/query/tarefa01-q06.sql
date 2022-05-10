--6) Faça uma consulta que selecione o nome, o salário dos funcionários
--e a descrição do departamento, mesmo que eles não tenham departamentos associados.
SELECT f.nome, f.salario, d.descricao
FROM funcionario f
LEFT JOIN departamento d
ON (f.cod_depto = d.codigo);