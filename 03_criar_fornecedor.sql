USE Supermercado;
GO

CREATE TABLE FORNECEDOR (
    id_fornecedor            INT             IDENTITY(1,1) NOT NULL,
    razao_social             VARCHAR(100)    NOT NULL,
    nome_fantasia            VARCHAR(100)    NULL,
    cnpj                     CHAR(14)        NOT NULL,
    telefone                 VARCHAR(15)     NULL,
    email                    VARCHAR(100)    NULL,
    cidade                   VARCHAR(60)     NOT NULL,
    estado                   CHAR(2)         NOT NULL,
    id_categoria_principal   INT             NULL,
    ativo                    BIT             NOT NULL DEFAULT 1,
    data_cadastro            DATETIME        NOT NULL DEFAULT GETDATE(),

    CONSTRAINT PK_FORNECEDOR PRIMARY KEY (id_fornecedor),
    CONSTRAINT UQ_FORNECEDOR_CNPJ UNIQUE (cnpj),
    CONSTRAINT FK_FORNECEDOR_CATEGORIA FOREIGN KEY (id_categoria_principal)
        REFERENCES CATEGORIA (id_categoria)
);
GO
