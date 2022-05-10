---Funcionario
INSERT INTO funcionario (nome, sexo, dt_nasc, salario)
VALUES ('adson', 'M', '2000/06/08', 9800);

INSERT INTO funcionario (nome, sexo, dt_nasc, salario)
VALUES ('gerson', 'M', '2001/06/14', 1200);

INSERT INTO funcionario (nome, sexo, dt_nasc, salario)
VALUES ('artur', 'M', '2004/06/15', 800);

INSERT INTO funcionario (nome, sexo, dt_nasc, salario)
VALUES ('rony', 'M', '1998/02/27', 750);

INSERT INTO funcionario (nome, sexo, dt_nasc, salario)
VALUES ('adrya', 'F', '1999/05/23', 400);

--Departamento
INSERT INTO departamento (descricao, cod_gerente)
VALUES ('Departamento de TI', 1);

INSERT INTO departamento (descricao, cod_gerente)
VALUES ('Departamento de SI', 2);

INSERT INTO departamento (descricao, cod_gerente)
VALUES ('Departamento de Administração', 4);

INSERT INTO departamento (descricao, cod_gerente)
VALUES ('Departamento de Engenharia', 5);

INSERT INTO departamento (descricao, cod_gerente)
VALUES ('Departamento dos departamentos', 3);

--Projeto
INSERT INTO projeto (nome, descricao, cod_depto, cod_responsavel, data_inicio, data_fim)
VALUES ('SMHosts', 'Sistema de Gerenciamento de Hosts', 1, 1, '2022/05/05', '2022/07/01');

INSERT INTO projeto (nome, descricao, cod_depto, cod_responsavel, data_inicio, data_fim)
VALUES ('SC', 'SuggestClass', 2, 4, '2021/04/05', '2022/09/01');

INSERT INTO projeto (nome, descricao, cod_depto, cod_responsavel, data_inicio, data_fim)
VALUES ('ClassReport', 'Sistema de Avaliação de Aulas', 2, 1, '2021/08/15', '2022/11/15');

INSERT INTO projeto (nome, descricao, cod_depto, cod_responsavel, data_inicio, data_fim)
VALUES ('Reforma de Cemitério', 'Reforma do cemitério Campo Jorge', 4, 2, '2020/02/01', '2022/07/15');

INSERT INTO projeto (nome, descricao, cod_depto, cod_responsavel, data_inicio, data_fim)
VALUES ('Site do BSI', 'Site do BSI', 1, 4, '2022/04/07', '2022/12/31');

--Atividade
INSERT INTO atividade (nome, descricao, cod_responsavel, data_inicio, data_fim)
VALUES ('Criar backend', 'definir tecnologias', 5, '2022/05/09', '2022/05/19');

INSERT INTO atividade (nome, descricao, cod_responsavel, data_inicio, data_fim)
VALUES ('Comprar material', 'comprar cimento', 3, '2022/06/09', '2022/06/10');

INSERT INTO atividade (nome, descricao, cod_responsavel, data_inicio, data_fim)
VALUES ('Identificar hosts', 'procurar os hosts', 1, '2022/03/10', '2022/03/17');

INSERT INTO atividade (nome, descricao, cod_responsavel, data_inicio, data_fim)
VALUES ('CRUD de Aluno', 'Criar o CRUD', 4, '2022/05/12', '2022/05/15');

INSERT INTO atividade (nome, descricao, cod_responsavel, data_inicio, data_fim)
VALUES ('Atualizar carga horária', 'definir CH das disciplinas', 5, '2022/05/20', '2022/05/22');

--Atividades do Projeto
INSERT INTO atividade_projeto(cod_projeto, cod_atividade)
VALUES (1, 3);

INSERT INTO atividade_projeto(cod_projeto, cod_atividade)
VALUES (5, 1);

INSERT INTO atividade_projeto(cod_projeto, cod_atividade)
VALUES (3, 4);

INSERT INTO atividade_projeto(cod_projeto, cod_atividade)
VALUES (4, 2);

INSERT INTO atividade_projeto(cod_projeto, cod_atividade)
VALUES (2, 5);
