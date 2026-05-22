-- =====================================================
-- AV2 - LABORATÓRIO DE BANCO DE DADOS
-- Tema: Supermercado Tradicional
-- Grupo: [nomes dos integrantes do grupo]
-- Arquivo: 03_criar_fornecedor.sql
-- Descrição: Cria a tabela FORNECEDOR e insere dados iniciais.
--            Tabela "pai" — referenciada por PRODUTO.
-- =====================================================

USE Supermercado;
GO

-- =====================================================
-- TABELA: FORNECEDOR
-- Armazena os fornecedores que abastecem o supermercado
-- com produtos (ex: Coca-Cola, Nestlé, Unilever).
-- =====================================================
CREATE TABLE FORNECEDOR (
    id_fornecedor     INT             IDENTITY(1,1) NOT NULL,
    razao_social      VARCHAR(100)    NOT NULL,
    nome_fantasia     VARCHAR(100)    NULL,
    cnpj              CHAR(14)        NOT NULL,
    telefone          VARCHAR(15)     NULL,
    email             VARCHAR(100)    NULL,
    cidade            VARCHAR(60)     NOT NULL,
    estado            CHAR(2)         NOT NULL,
    ativo             BIT             NOT NULL DEFAULT 1,
    data_cadastro     DATETIME        NOT NULL DEFAULT GETDATE(),

    CONSTRAINT PK_FORNECEDOR PRIMARY KEY (id_fornecedor),
    CONSTRAINT UQ_FORNECEDOR_CNPJ UNIQUE (cnpj)
);
GO

-- =====================================================
-- DADOS INICIAIS: 5 fornecedores
-- =====================================================
INSERT INTO FORNECEDOR (razao_social, nome_fantasia, cnpj, telefone, email, cidade, estado)
VALUES ('Coca-Cola Indústrias Ltda', 'Coca-Cola', '45997418000153', '1133334444', 'contato@cocacola.com.br', 'São Paulo', 'SP');

INSERT INTO FORNECEDOR (razao_social, nome_fantasia, cnpj, telefone, email, cidade, estado)
VALUES ('Nestlé Brasil Ltda', 'Nestlé', '60409075000152', '1144445555', 'contato@nestle.com.br', 'São Paulo', 'SP');

INSERT INTO FORNECEDOR (razao_social, nome_fantasia, cnpj, telefone, email, cidade, estado)
VALUES ('Unilever Brasil Ltda', 'Unilever', '61068276000157', '1155556666', 'contato@unilever.com.br', 'São Paulo', 'SP');

INSERT INTO FORNECEDOR (razao_social, nome_fantasia, cnpj, telefone, email, cidade, estado)
VALUES ('Sadia S.A.', 'Sadia', '20730099000194', '4733334444', 'contato@sadia.com.br', 'Concórdia', 'SC');

INSERT INTO FORNECEDOR (razao_social, nome_fantasia, cnpj, telefone, email, cidade, estado)
VALUES ('JBS Foods S.A.', 'Friboi', '02916265000160', '1166667777', 'contato@jbs.com.br', 'São Paulo', 'SP');
GO

-- Conferir resultado
SELECT * FROM FORNECEDOR;
GO