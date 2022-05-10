--10) Faça uma consulta que selecione o nome do projeto,
--o nome do departamento do projeto, o nome do funcionário responsável pelo projeto,
--o nome do departamento do funcionário responsável.
SELECT p.nome AS "Nome Projeto", d.nome AS "Nome Depto do Proj", f.nome AS "Func Resp."
FROM projeto p, departamento d, funcionario f
WHERE p.cod_depto = d.codigo
AND p.cod_responsavel = f.codigo;