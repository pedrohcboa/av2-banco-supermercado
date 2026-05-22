
USE Supermercado;
GO

CREATE TABLE CATEGORIA (
    id_categoria      INT             IDENTITY(1,1) NOT NULL,
    nome              VARCHAR(50)     NOT NULL,
    descricao         VARCHAR(200)    NULL,
    ativo             BIT             NOT NULL DEFAULT 1,
    data_cadastro     DATETIME        NOT NULL DEFAULT GETDATE(),

    CONSTRAINT PK_CATEGORIA PRIMARY KEY (id_categoria),
    CONSTRAINT UQ_CATEGORIA_NOME UNIQUE (nome)
);
GO


INSERT INTO CATEGORIA (nome, descricao) VALUES ('Bebidas', 'Refrigerantes, sucos, águas e bebidas alcoólicas');
INSERT INTO CATEGORIA (nome, descricao) VALUES ('Laticínios', 'Leites, queijos, iogurtes e derivados');
INSERT INTO CATEGORIA (nome, descricao) VALUES ('Limpeza', 'Produtos de higiene e limpeza doméstica');
INSERT INTO CATEGORIA (nome, descricao) VALUES ('Hortifrúti', 'Frutas, verduras e legumes');
INSERT INTO CATEGORIA (nome, descricao) VALUES ('Padaria', 'Pães, bolos e produtos de confeitaria');
GO

-- Conferir resultado
SELECT * FROM CATEGORIA;
GO