
USE Supermercado;
GO
CREATE TABLE PRODUTO (
    id_produto        INT             IDENTITY(1,1) NOT NULL,
    nome              VARCHAR(100)    NOT NULL,
    descricao         VARCHAR(255)    NULL,
    codigo_barras     VARCHAR(20)     NULL,
    preco_custo       DECIMAL(10,2)   NOT NULL,
    preco_venda       DECIMAL(10,2)   NOT NULL,
    estoque           INT             NOT NULL DEFAULT 0,
    estoque_minimo    INT             NOT NULL DEFAULT 5,
    unidade_medida    VARCHAR(10)     NOT NULL DEFAULT 'UN',
    id_categoria      INT             NOT NULL,
    id_fornecedor     INT             NOT NULL,
    ativo             BIT             NOT NULL DEFAULT 1,
    data_cadastro     DATETIME        NOT NULL DEFAULT GETDATE(),

    CONSTRAINT PK_PRODUTO PRIMARY KEY (id_produto),
    CONSTRAINT UQ_PRODUTO_CODBARRAS UNIQUE (codigo_barras),
    CONSTRAINT FK_PRODUTO_CATEGORIA FOREIGN KEY (id_categoria)
        REFERENCES CATEGORIA (id_categoria),
    CONSTRAINT FK_PRODUTO_FORNECEDOR FOREIGN KEY (id_fornecedor)
        REFERENCES FORNECEDOR (id_fornecedor),
    CONSTRAINT CK_PRODUTO_PRECO CHECK (preco_venda >= preco_custo),
    CONSTRAINT CK_PRODUTO_ESTOQUE CHECK (estoque >= 0)
);
GO


INSERT INTO PRODUTO (nome, descricao, codigo_barras, preco_custo, preco_venda, estoque, unidade_medida, id_categoria, id_fornecedor)
VALUES ('Coca-Cola 2L', 'Refrigerante de cola garrafa 2 litros', '7894900011517', 5.50, 9.99, 100, 'UN', 1, 1);

INSERT INTO PRODUTO (nome, descricao, codigo_barras, preco_custo, preco_venda, estoque, unidade_medida, id_categoria, id_fornecedor)
VALUES ('Leite Ninho 400g', 'Leite em pó integral lata 400g', '7891000100103', 12.00, 18.90, 50, 'UN', 2, 2);

INSERT INTO PRODUTO (nome, descricao, codigo_barras, preco_custo, preco_venda, estoque, unidade_medida, id_categoria, id_fornecedor)
VALUES ('Sabão OMO 1kg', 'Sabão em pó multiação 1kg', '7891150038493', 15.00, 24.90, 80, 'UN', 3, 3);

INSERT INTO PRODUTO (nome, descricao, codigo_barras, preco_custo, preco_venda, estoque, unidade_medida, id_categoria, id_fornecedor)
VALUES ('Frango Congelado Sadia', 'Frango inteiro congelado aprox. 2kg', '7893500020110', 18.00, 28.50, 30, 'KG', 5, 4);

INSERT INTO PRODUTO (nome, descricao, codigo_barras, preco_custo, preco_venda, estoque, unidade_medida, id_categoria, id_fornecedor)
VALUES ('Picanha Bovina Friboi', 'Picanha bovina resfriada por kg', '7891000295007', 55.00, 79.90, 20, 'KG', 5, 5);
GO

-- Conferir resultado
SELECT * FROM PRODUTO;
GO

-- Conferir com JOIN — mostra nomes em vez de IDs
SELECT
    p.id_produto,
    p.nome AS produto,
    c.nome AS categoria,
    f.nome_fantasia AS fornecedor,
    p.preco_venda,
    p.estoque
FROM PRODUTO p
INNER JOIN CATEGORIA c ON p.id_categoria = c.id_categoria
INNER JOIN FORNECEDOR f ON p.id_fornecedor = f.id_fornecedor;
GO