-- funcionario(codigo, nome, sexo, dt_nasc, salario, cod_depto)
-- departamento(codigo, descricao, cod_gerente)
-- projeto (codigo, nome, descricao, cod_depto, cod_responsavel, data_inicio, data_fim)
-- atividade(codigo, nome, descricao, cod_responsavel, data_inicio, data_fim)
-- atividade_projeto(cod_projeto, cod_atividade)
CREATE TABLE IF NOT EXISTS public.funcionario
(
    codigo integer NOT NULL DEFAULT nextval('funcionario_codigo_seq'::regclass),
    nome character varying(255) COLLATE pg_catalog."default" NOT NULL,
    sexo character varying(2) COLLATE pg_catalog."default",
    dt_nasc date,
    salario money,
    cod_depto integer,
    CONSTRAINT funcionario_pkey PRIMARY KEY (codigo)
)

CREATE TABLE IF NOT EXISTS public.departamento
(
    codigo integer NOT NULL DEFAULT nextval('departamento_codigo_seq'::regclass),
    descricao character varying(255) COLLATE pg_catalog."default",
    cod_gerente integer,
    CONSTRAINT departamento_pkey PRIMARY KEY (codigo),
    CONSTRAINT cod_gerente FOREIGN KEY (cod_gerente)
        REFERENCES public.funcionario (codigo) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE SET NULL
        NOT VALID
)

