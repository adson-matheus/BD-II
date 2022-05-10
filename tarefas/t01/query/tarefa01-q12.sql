--12) Faça uma consulta que selecione o nome do projeto,
--data de início e fim do projeto, a descrição da atividade do projeto,
--data de início e fim da atividade.
SELECT p.nome, p.data_inicio AS "inicio projeto",
       p.data_fim AS "fim projeto", 
       a.descricao, 
       a.data_inicio AS "inicio atividade", 
       a.data_fim AS "fim atividade"
FROM atividade_projeto ap, projeto p, atividade a
WHERE ap.cod_proj = p.codigo
AND ap.cod_atividade = a.codigo;
