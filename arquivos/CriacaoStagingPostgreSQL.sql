CREATE TABLE staging.STG_T_SV_UNIDADE_MEDIDA AS SELECT * FROM dados.T_SV_UNIDADE_MEDIDA;
CREATE TABLE staging.STG_T_SV_PRODUTO AS SELECT * FROM dados.T_SV_PRODUTO;
CREATE TABLE staging.STG_T_SV_CLASSIFICACAO_FISCAL AS SELECT * FROM dados.T_SV_CLASSIFICACAO_FISCAL;
CREATE TABLE staging.STG_T_SV_NOTA_FISCAL AS SELECT * FROM dados.T_SV_NOTA_FISCAL;
CREATE TABLE staging.STG_T_SV_ITEM_NOTA_FISCAL AS SELECT * FROM dados.T_SV_ITEM_NOTA_FISCAL;
CREATE TABLE staging.STG_T_SV_FUNCIONARIO AS SELECT * FROM dados.T_SV_FUNCIONARIO;
CREATE TABLE staging.STG_T_SV_LOJA AS SELECT * FROM dados.T_SV_LOJA;
CREATE TABLE staging.STG_T_SV_CLIENTE AS SELECT * FROM dados.T_SV_CLIENTE;
CREATE TABLE staging.STG_T_SV_TIPO_CLIENTE AS SELECT * FROM dados.T_SV_TIPO_CLIENTE;
CREATE TABLE staging.STG_T_SV_UF AS SELECT * FROM dados.T_SV_UF;
CREATE TABLE staging.STG_T_SV_CIDADE AS SELECT * FROM dados.T_SV_CIDADE;
CREATE TABLE staging.STG_T_SV_LOGRADOURO AS SELECT * FROM dados.T_SV_LOGRADOURO;
CREATE TABLE staging.STG_T_SV_ENDERECO AS SELECT * FROM dados.T_SV_ENDERECO;

TRUNCATE TABLE
	staging.STG_T_SV_UNIDADE_MEDIDA,
	staging.STG_T_SV_PRODUTO,
	staging.STG_T_SV_CLASSIFICACAO_FISCAL,
	staging.STG_T_SV_NOTA_FISCAL,
	staging.STG_T_SV_ITEM_NOTA_FISCAL,
	staging.STG_T_SV_FUNCIONARIO,
	staging.STG_T_SV_LOJA,
	staging.STG_T_SV_CLIENTE,
	staging.STG_T_SV_TIPO_CLIENTE,
	staging.STG_T_SV_UF,
	staging.STG_T_SV_CIDADE,
	staging.STG_T_SV_LOGRADOURO,
	staging.STG_T_SV_ENDERECO
	RESTART IDENTITY;

CREATE TABLE staging.STG_ARQ_PROMOCOES (
    CD_PROMOCAO   NUMERIC(6) PRIMARY KEY,
    NM_PROMOCAO   VARCHAR(40),
    DS_PROMOCAO   VARCHAR(100)
);

CREATE TABLE staging.STG_ARQ_PROMOCOES_OBS (
    CD_PROMOCAO_OBS   NUMERIC(6) PRIMARY KEY,
    CD_PROMOCAO       NUMERIC(6) NOT NULL,
    OBS_NEGOCIO       VARCHAR(100)
);