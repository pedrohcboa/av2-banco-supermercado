
USE Supermercado;
GO

CREATE TABLE VENDA (
    id_venda          INT             IDENTITY(1,1) NOT NULL,
    id_cliente        INT             NOT NULL,
    id_produto        INT             NOT NULL,
    quantidade        INT             NOT NULL,
    preco_unitario    DECIMAL(10,2)   NOT NULL,
    desconto          DECIMAL(10,2)   NOT NULL DEFAULT 0,
    valor_total       DECIMAL(10,2)   NOT NULL,
    forma_pagamento   VARCHAR(20)     NOT NULL,
    data_venda        DATETIME        NOT NULL DEFAULT GETDATE(),

    CONSTRAINT PK_VENDA PRIMARY KEY (id_venda),
    CONSTRAINT FK_VENDA_CLIENTE FOREIGN KEY (id_cliente)
        REFERENCES CLIENTE (id_cliente),
    CONSTRAINT FK_VENDA_PRODUTO FOREIGN KEY (id_produto)
        REFERENCES PRODUTO (id_produto),
    CONSTRAINT CK_VENDA_QUANTIDADE CHECK (quantidade > 0),
    CONSTRAINT CK_VENDA_FORMA_PAGAMENTO CHECK (forma_pagamento IN
        ('Dinheiro', 'Cartão de Débito', 'Cartão de Crédito', 'PIX', 'Vale Alimentação'))
);
GO


INSERT INTO VENDA (id_cliente, id_produto, quantidade, preco_unitario, desconto, valor_total, forma_pagamento)
VALUES (1, 1, 3, 9.99, 0.00, 29.97, 'PIX');

INSERT INTO VENDA (id_cliente, id_produto, quantidade, preco_unitario, desconto, valor_total, forma_pagamento)
VALUES (2, 2, 2, 18.90, 1.80, 36.00, 'Cartão de Crédito');

INSERT INTO VENDA (id_cliente, id_produto, quantidade, preco_unitario, desconto, valor_total, forma_pagamento)
VALUES (3, 3, 1, 24.90, 0.00, 24.90, 'Dinheiro');

INSERT INTO VENDA (id_cliente, id_produto, quantidade, preco_unitario, desconto, valor_total, forma_pagamento)
VALUES (4, 4, 2, 28.50, 5.00, 52.00, 'Cartão de Débito');

INSERT INTO VENDA (id_cliente, id_produto, quantidade, preco_unitario, desconto, valor_total, forma_pagamento)
VALUES (1, 5, 1, 79.90, 0.00, 79.90, 'PIX');
GO

-- Conferir resultado
SELECT * FROM VENDA;
GO

SELECT
    v.id_venda,
    c.nome AS cliente,
    p.nome AS produto,
    cat.nome AS categoria,
    v.quantidade,
    v.preco_unitario,
    v.desconto,
    v.valor_total,
    v.forma_pagamento,
    v.data_venda
FROM VENDA v
INNER JOIN CLIENTE c ON v.id_cliente = c.id_cliente
INNER JOIN PRODUTO p ON v.id_produto = p.id_produto
INNER JOIN CATEGORIA cat ON p.id_categoria = cat.id_categoria
ORDER BY v.data_venda DESC;
GO
