-- =====================================================
-- AV2 - LABORATÓRIO DE BANCO DE DADOS
-- Tema: Supermercado Tradicional
-- Grupo: [nomes dos integrantes do grupo]
-- Arquivo: 03_criar_fornecedor.sql
-- Descrição: Cria a tabela FORNECEDOR e insere os dados da base.
--            Tabela "filha" de CATEGORIA (FK id_categoria_principal).
--            Tabela "pai" — referenciada por PRODUTO.
-- =====================================================

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

INSERT INTO FORNECEDOR (razao_social, nome_fantasia, cnpj, telefone, email, cidade, estado, id_categoria_principal)
VALUES ('Coca-Cola Indústrias Ltda', 'Coca-Cola', '45997418000153', '1133334444', 'contato@cocacola.com.br', 'São Paulo', 'SP', 1);

INSERT INTO FORNECEDOR (razao_social, nome_fantasia, cnpj, telefone, email, cidade, estado, id_categoria_principal)
VALUES ('Nestlé Brasil Ltda', 'Nestlé', '60409075000152', '1144445555', 'contato@nestle.com.br', 'São Paulo', 'SP', 2);

INSERT INTO FORNECEDOR (razao_social, nome_fantasia, cnpj, telefone, email, cidade, estado, id_categoria_principal)
VALUES ('Unilever Brasil Ltda', 'Unilever', '61068276000157', '1155556666', 'contato@unilever.com.br', 'São Paulo', 'SP', 3);

INSERT INTO FORNECEDOR (razao_social, nome_fantasia, cnpj, telefone, email, cidade, estado, id_categoria_principal)
VALUES ('Sadia S.A.', 'Sadia', '20730099000194', '4733334444', 'contato@sadia.com.br', 'Concórdia', 'SC', 5);

INSERT INTO FORNECEDOR (razao_social, nome_fantasia, cnpj, telefone, email, cidade, estado, id_categoria_principal)
VALUES ('JBS Foods S.A.', 'Friboi', '02916265000160', '1166667777', 'contato@jbs.com.br', 'São Paulo', 'SP', 5);
GO

-- Conferir resultado
SELECT
    f.id_fornecedor,
    f.nome_fantasia AS fornecedor,
    c.nome AS categoria_principal
FROM FORNECEDOR f
LEFT JOIN CATEGORIA c ON f.id_categoria_principal = c.id_categoria
ORDER BY f.id_fornecedor;
GO
