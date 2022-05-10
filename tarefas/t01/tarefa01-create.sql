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
);

CREATE TABLE IF NOT EXISTS public.projeto
(
    codigo integer NOT NULL DEFAULT nextval('projeto_codigo_seq'::regclass),
    nome character varying(255) COLLATE pg_catalog."default",
    descricao character varying(255) COLLATE pg_catalog."default",
    cod_depto integer,
    cod_responsavel integer,
    data_inicio date,
    data_fim date,
    CONSTRAINT projeto_pkey PRIMARY KEY (codigo),
    CONSTRAINT cod_depto FOREIGN KEY (cod_depto)
        REFERENCES public.departamento (codigo) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE SET NULL
        NOT VALID,
    CONSTRAINT cod_responsavel FOREIGN KEY (cod_responsavel)
        REFERENCES public.funcionario (codigo) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE SET NULL
        NOT VALID
);

CREATE TABLE IF NOT EXISTS public.atividade
(
    codigo integer NOT NULL DEFAULT nextval('atividade_codigo_seq'::regclass),
    nome character varying(255) COLLATE pg_catalog."default",
    descricao character varying(255) COLLATE pg_catalog."default",
    cod_responsavel integer,
    data_inicio date,
    data_fim date,
    CONSTRAINT atividade_pkey PRIMARY KEY (codigo),
    CONSTRAINT cod_responsavel FOREIGN KEY (cod_responsavel)
        REFERENCES public.funcionario (codigo) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE SET NULL
        NOT VALID
);

CREATE TABLE IF NOT EXISTS public.atividade_projeto
(
    codigo integer NOT NULL,
    cod_projeto integer,
    cod_atividade integer,
    CONSTRAINT atividade_projeto_pkey PRIMARY KEY (codigo),
    CONSTRAINT cod_atividade FOREIGN KEY (cod_atividade)
        REFERENCES public.atividade (codigo) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE SET NULL
        NOT VALID,
    CONSTRAINT cod_projeto FOREIGN KEY (cod_projeto)
        REFERENCES public.projeto (codigo) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE SET NULL
        NOT VALID
);
