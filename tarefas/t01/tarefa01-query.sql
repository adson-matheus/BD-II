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

--4) Faça uma consulta que selecione o nome, o salário
--e o departamento dos funcionários que não são gerentes, ordenando pelo Código do Departamento.
SELECT d.codigo, f.nome, f.salario
FROM funcionario f, departamento d
WHERE f.cod_depto = d.codigo
AND f.codigo NOT IN (SELECT cod_gerente FROM departamento WHERE cod_gerente IS NOT NULL)
ORDER BY d.codigo;

--5) Responda as perguntas:
    --a)Explique os problemas de termos valores nulos nos dados.
        --Problemas com funções, com junções, problemas em SELECT, pode ocultar valores de uma pesquisa.
        --Pode ocasionar erros no banco ao deixar um valor nulo
    --b)Explique o funcionamento do Right e do Left Join.
        --LEFT JOIN: retorna tudo da tabela 1 (left table),
        --além dos valores que coincidirem na tabela 2 (right table).
        --Pode retornar 0 valores da tabela da direita.

        --RIGHT JOIN: é a mesma coisa do LEFT JOIN, só que onde tem tabela 1 leia-se
        --tabela 2, e vice-versa.
    --c)Explique o funcionamento do Full Outer Join e
    --como pode ser feito no MySQL ou MariaDB que não tem mais o comando Full.
        --Pega tudo da tabela 01 ou 02 e retorna caso haja algum 'match' na condição WHERE.
        --Para usar no MariaDB é só usar um LEFT JOIN, UNION, e um RIGHT JOIN que 
        --vira um FULL JOIN (gambiarra)

--6) Faça uma consulta que selecione o nome, o salário dos funcionários
--e a descrição do departamento, mesmo que eles não tenham departamentos associados.
SELECT f.nome, f.salario, d.descricao
FROM funcionario f
LEFT JOIN departamento d
ON (f.cod_depto = d.codigo);
