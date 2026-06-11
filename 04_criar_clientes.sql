USE Supermercado;
GO
    
CREATE TABLE CLIENTE (
    id_cliente        INT             IDENTITY(1,1) NOT NULL,
    nome              VARCHAR(100)    NOT NULL,
    cpf               CHAR(11)        NOT NULL,
    data_nascimento   DATE            NULL,
    email             VARCHAR(100)    NULL,
    telefone          VARCHAR(15)     NULL,
    cidade            VARCHAR(60)     NOT NULL,
    estado            CHAR(2)         NOT NULL,
    sexo              CHAR(1)         NULL,
    ativo             BIT             NOT NULL DEFAULT 1,
    data_cadastro     DATETIME        NOT NULL DEFAULT GETDATE(),

    CONSTRAINT PK_CLIENTE PRIMARY KEY (id_cliente),
    CONSTRAINT UQ_CLIENTE_CPF UNIQUE (cpf),
    CONSTRAINT CK_CLIENTE_SEXO CHECK (sexo IN ('M', 'F', 'O'))
);
GO

-- =====================================================
-- DADOS INICIAIS: 5 clientes
-- =====================================================
INSERT INTO CLIENTE (nome, cpf, data_nascimento, email, telefone, cidade, estado, sexo)
VALUES ('João Silva Santos', '12345678901', '1985-03-15', 'joao.silva@email.com', '24999991111', 'Resende', 'RJ', 'M');

INSERT INTO CLIENTE (nome, cpf, data_nascimento, email, telefone, cidade, estado, sexo)
VALUES ('Maria Oliveira Costa', '23456789012', '1990-07-22', 'maria.costa@email.com', '24999992222', 'Resende', 'RJ', 'F');

INSERT INTO CLIENTE (nome, cpf, data_nascimento, email, telefone, cidade, estado, sexo)
VALUES ('Pedro Almeida Souza', '34567890123', '1978-11-30', 'pedro.souza@email.com', '24999993333', 'Volta Redonda', 'RJ', 'M');

INSERT INTO CLIENTE (nome, cpf, data_nascimento, email, telefone, cidade, estado, sexo)
VALUES ('Ana Beatriz Ferreira', '45678901234', '1995-05-10', 'ana.ferreira@email.com', '24999994444', 'Barra Mansa', 'RJ', 'F');

INSERT INTO CLIENTE (nome, cpf, data_nascimento, email, telefone, cidade, estado, sexo)
VALUES ('Carlos Eduardo Lima', '56789012345', '1982-12-05', 'carlos.lima@email.com', '24999995555', 'Resende', 'RJ', 'M');
GO

-- Conferir resultado
SELECT * FROM CLIENTE;
GO
