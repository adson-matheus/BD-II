--Faça uma consulta que selecione o nome dos responsáveis de projeto que
--também são gerentes de departamento ou que ganham mais que o gerente
--de seu departamento. Use views se necessário.
SELECT f.nome
FROM projeto p, funcionario f
WHERE p.cod_responsavel = f.codigo
AND (f.codigo IN (SELECT f.codigo
                 FROM funcionario f, departamento d
                 WHERE f.codigo = d.cod_gerente))
    OR
    (f.salario > (SELECT f.salario
                  FROM funcionario f, departamento d
                  WHERE f.codigo = d.cod_gerente));
