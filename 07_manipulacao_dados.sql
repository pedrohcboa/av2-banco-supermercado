-- =====================================================
-- AV2 - LABORATÓRIO DE BANCO DE DADOS
-- Tema: Supermercado Tradicional
-- Grupo: [nomes dos integrantes do grupo]
-- Arquivo: 07_manipulacao_dados.sql
-- Descrição: Demonstração de manipulação de dados (DML).
--   Roda POR CIMA da base criada pelos arquivos 01 a 06 (5 linhas/tabela).
--   Ordem: 100 INSERT -> 100 UPDATE -> 50 SELECT -> 100 DELETE.
--   Os DELETE removem apenas as linhas inseridas aqui (ids 6-25);
--   a base de 5 linhas por tabela permanece intacta.
-- =====================================================

USE Supermercado;
GO

-- #####################################################################
-- ##  PASSO 1 de 4  ->  SELECIONE DESTA LINHA ATE O FIM DA SECAO 1 ##
-- ##                E APERTE F5 (insere as 100 linhas novas)       ##
-- #####################################################################
-- =====================================================
-- SEÇÃO 1 - INSERT (100 comandos) - 20 por tabela, ordem pai->filha
-- =====================================================

-- CATEGORIA (20 INSERT)
INSERT INTO CATEGORIA (nome, descricao) VALUES ('Mercearia', 'Itens básicos de despensa');
INSERT INTO CATEGORIA (nome, descricao) VALUES ('Congelados', 'Alimentos congelados e pré-prontos');
INSERT INTO CATEGORIA (nome, descricao) VALUES ('Higiene Pessoal', 'Produtos de cuidado pessoal');
INSERT INTO CATEGORIA (nome, descricao) VALUES ('Doces e Sobremesas', 'Chocolates, balas e sobremesas');
INSERT INTO CATEGORIA (nome, descricao) VALUES ('Massas', 'Macarrões e massas em geral');
INSERT INTO CATEGORIA (nome, descricao) VALUES ('Cereais e Grãos', 'Arroz, feijão, aveia e grãos');
INSERT INTO CATEGORIA (nome, descricao) VALUES ('Enlatados', 'Conservas e alimentos enlatados');
INSERT INTO CATEGORIA (nome, descricao) VALUES ('Bebidas Alcoólicas', 'Cervejas, vinhos e destilados');
INSERT INTO CATEGORIA (nome, descricao) VALUES ('Pet Shop', 'Rações e itens para animais');
INSERT INTO CATEGORIA (nome, descricao) VALUES ('Frios e Embutidos', 'Presuntos, queijos e embutidos');
INSERT INTO CATEGORIA (nome, descricao) VALUES ('Biscoitos e Snacks', 'Biscoitos, salgadinhos e snacks');
INSERT INTO CATEGORIA (nome, descricao) VALUES ('Café e Achocolatados', 'Cafés, chás e achocolatados');
INSERT INTO CATEGORIA (nome, descricao) VALUES ('Temperos e Condimentos', 'Temperos, molhos e condimentos');
INSERT INTO CATEGORIA (nome, descricao) VALUES ('Bazar e Utilidades', 'Itens de bazar e utilidades');
INSERT INTO CATEGORIA (nome, descricao) VALUES ('Açougue', 'Carnes bovinas, suínas e aves');
INSERT INTO CATEGORIA (nome, descricao) VALUES ('Hortaliças Especiais', 'Verduras e legumes selecionados');
INSERT INTO CATEGORIA (nome, descricao) VALUES ('Frutas Importadas', 'Frutas importadas e exóticas');
INSERT INTO CATEGORIA (nome, descricao) VALUES ('Produtos Naturais', 'Alimentos naturais e integrais');
INSERT INTO CATEGORIA (nome, descricao) VALUES ('Bebidas Quentes', 'Chás, infusões e bebidas quentes');
INSERT INTO CATEGORIA (nome, descricao) VALUES ('Utilidades Domésticas', 'Utensílios e itens para casa');
GO

-- FORNECEDOR (20 INSERT) - id_categoria_principal aponta para categorias novas (6..25)
INSERT INTO FORNECEDOR (razao_social, nome_fantasia, cnpj, telefone, email, cidade, estado, id_categoria_principal) VALUES ('Atacadão Distribuição S.A.', 'Atacadão', '75315333000109', '1130000000', 'contato@atacadao.com.br', 'São Paulo', 'SP', 6);
INSERT INTO FORNECEDOR (razao_social, nome_fantasia, cnpj, telefone, email, cidade, estado, id_categoria_principal) VALUES ('Friozem Congelados Ltda', 'Friozem', '11444555000166', '1130111111', 'contato@friozem.com.br', 'São Paulo', 'SP', 7);
INSERT INTO FORNECEDOR (razao_social, nome_fantasia, cnpj, telefone, email, cidade, estado, id_categoria_principal) VALUES ('Higiluxo Cosméticos Ltda', 'Higiluxo', '22555666000177', '1130222222', 'contato@higiluxo.com.br', 'São Paulo', 'SP', 8);
INSERT INTO FORNECEDOR (razao_social, nome_fantasia, cnpj, telefone, email, cidade, estado, id_categoria_principal) VALUES ('Garoto Chocolates S.A.', 'Garoto', '27093558000115', '1130333333', 'contato@garoto.com.br', 'São Paulo', 'SP', 9);
INSERT INTO FORNECEDOR (razao_social, nome_fantasia, cnpj, telefone, email, cidade, estado, id_categoria_principal) VALUES ('Massas Santa Amália Ltda', 'Santa Amália', '33666777000188', '1130444444', 'contato@santaamália.com.br', 'São Paulo', 'SP', 10);
INSERT INTO FORNECEDOR (razao_social, nome_fantasia, cnpj, telefone, email, cidade, estado, id_categoria_principal) VALUES ('Camil Alimentos S.A.', 'Camil', '64904295000103', '1130555555', 'contato@camil.com.br', 'São Paulo', 'SP', 11);
INSERT INTO FORNECEDOR (razao_social, nome_fantasia, cnpj, telefone, email, cidade, estado, id_categoria_principal) VALUES ('Conservas Oderich S.A.', 'Oderich', '97837181000147', '1130666666', 'contato@oderich.com.br', 'São Paulo', 'SP', 12);
INSERT INTO FORNECEDOR (razao_social, nome_fantasia, cnpj, telefone, email, cidade, estado, id_categoria_principal) VALUES ('Heineken Brasil Ltda', 'Heineken', '76430438000172', '1130777777', 'contato@heineken.com.br', 'São Paulo', 'SP', 13);
INSERT INTO FORNECEDOR (razao_social, nome_fantasia, cnpj, telefone, email, cidade, estado, id_categoria_principal) VALUES ('Pedigree Pet Foods Ltda', 'Pedigree', '44777888000199', '1130888888', 'contato@pedigree.com.br', 'São Paulo', 'SP', 14);
INSERT INTO FORNECEDOR (razao_social, nome_fantasia, cnpj, telefone, email, cidade, estado, id_categoria_principal) VALUES ('Perdigão Embutidos Ltda', 'Perdigão', '55888999000100', '1130999999', 'contato@perdigao.com.br', 'São Paulo', 'SP', 15);
INSERT INTO FORNECEDOR (razao_social, nome_fantasia, cnpj, telefone, email, cidade, estado, id_categoria_principal) VALUES ('Marilan Alimentos S.A.', 'Marilan', '50331985000169', '1131111110', 'contato@marilan.com.br', 'São Paulo', 'SP', 16);
INSERT INTO FORNECEDOR (razao_social, nome_fantasia, cnpj, telefone, email, cidade, estado, id_categoria_principal) VALUES ('3 Corações Café S.A.', '3 Corações', '07840584000176', '1131222221', 'contato@trescoracoes.com.br', 'São Paulo', 'SP', 17);
INSERT INTO FORNECEDOR (razao_social, nome_fantasia, cnpj, telefone, email, cidade, estado, id_categoria_principal) VALUES ('Cepêra Temperos Ltda', 'Cepêra', '60876984000130', '1131333332', 'contato@cepera.com.br', 'São Paulo', 'SP', 18);
INSERT INTO FORNECEDOR (razao_social, nome_fantasia, cnpj, telefone, email, cidade, estado, id_categoria_principal) VALUES ('Brinox Utilidades Ltda', 'Brinox', '88999000000111', '1131444443', 'contato@brinox.com.br', 'São Paulo', 'SP', 19);
INSERT INTO FORNECEDOR (razao_social, nome_fantasia, cnpj, telefone, email, cidade, estado, id_categoria_principal) VALUES ('Aurora Alimentos Ltda', 'Aurora', '82120689000136', '1131555554', 'contato@aurora.com.br', 'São Paulo', 'SP', 20);
INSERT INTO FORNECEDOR (razao_social, nome_fantasia, cnpj, telefone, email, cidade, estado, id_categoria_principal) VALUES ('Verde Campo Hortaliças Ltda', 'Verde Campo', '99000111000122', '1131666665', 'contato@verdecampo.com.br', 'São Paulo', 'SP', 21);
INSERT INTO FORNECEDOR (razao_social, nome_fantasia, cnpj, telefone, email, cidade, estado, id_categoria_principal) VALUES ('Frutas do Vale Importadora Ltda', 'Vale Frutas', '10111222000133', '1131777776', 'contato@valefrutas.com.br', 'São Paulo', 'SP', 22);
INSERT INTO FORNECEDOR (razao_social, nome_fantasia, cnpj, telefone, email, cidade, estado, id_categoria_principal) VALUES ('Mãe Terra Naturais Ltda', 'Mãe Terra', '61363757000180', '1131888887', 'contato@maeterra.com.br', 'São Paulo', 'SP', 23);
INSERT INTO FORNECEDOR (razao_social, nome_fantasia, cnpj, telefone, email, cidade, estado, id_categoria_principal) VALUES ('Leão Bebidas Ltda', 'Leão', '21333444000155', '1131999998', 'contato@leao.com.br', 'São Paulo', 'SP', 24);
INSERT INTO FORNECEDOR (razao_social, nome_fantasia, cnpj, telefone, email, cidade, estado, id_categoria_principal) VALUES ('Tramontina Utilidades S.A.', 'Tramontina', '84683408000103', '1132111109', 'contato@tramontina.com.br', 'São Paulo', 'SP', 25);
GO

-- CLIENTE (20 INSERT)
INSERT INTO CLIENTE (nome, cpf, data_nascimento, email, telefone, cidade, estado, sexo) VALUES ('Juliana Rodrigues Alves', '60000000000', '1975-01-01', 'juliana.alves@email.com', '24980000000', 'Volta Redonda', 'RJ', 'F');
INSERT INTO CLIENTE (nome, cpf, data_nascimento, email, telefone, cidade, estado, sexo) VALUES ('Marcos Vinícius Pereira', '60001010101', '1976-02-02', 'marcos.pereira@email.com', '24980101010', 'Barra Mansa', 'RJ', 'M');
INSERT INTO CLIENTE (nome, cpf, data_nascimento, email, telefone, cidade, estado, sexo) VALUES ('Fernanda Lima Carvalho', '60002020202', '1977-03-03', 'fernanda.carvalho@email.com', '24980202020', 'Resende', 'RJ', 'F');
INSERT INTO CLIENTE (nome, cpf, data_nascimento, email, telefone, cidade, estado, sexo) VALUES ('Roberto Carlos Mendes', '60003030303', '1978-04-04', 'roberto.mendes@email.com', '24980303030', 'Volta Redonda', 'RJ', 'M');
INSERT INTO CLIENTE (nome, cpf, data_nascimento, email, telefone, cidade, estado, sexo) VALUES ('Patrícia Gomes Ribeiro', '60004040404', '1979-05-05', 'patricia.ribeiro@email.com', '24980404040', 'Barra Mansa', 'RJ', 'F');
INSERT INTO CLIENTE (nome, cpf, data_nascimento, email, telefone, cidade, estado, sexo) VALUES ('Lucas Gabriel Martins', '60005050505', '1980-06-06', 'lucas.martins@email.com', '24980505050', 'Resende', 'RJ', 'M');
INSERT INTO CLIENTE (nome, cpf, data_nascimento, email, telefone, cidade, estado, sexo) VALUES ('Camila Santos Barbosa', '60006060606', '1981-07-07', 'camila.barbosa@email.com', '24980606060', 'Volta Redonda', 'RJ', 'F');
INSERT INTO CLIENTE (nome, cpf, data_nascimento, email, telefone, cidade, estado, sexo) VALUES ('Rafael Augusto Cardoso', '60007070707', '1982-08-08', 'rafael.cardoso@email.com', '24980707070', 'Barra Mansa', 'RJ', 'M');
INSERT INTO CLIENTE (nome, cpf, data_nascimento, email, telefone, cidade, estado, sexo) VALUES ('Beatriz Nunes Teixeira', '60008080808', '1983-09-09', 'beatriz.teixeira@email.com', '24980808080', 'Resende', 'RJ', 'F');
INSERT INTO CLIENTE (nome, cpf, data_nascimento, email, telefone, cidade, estado, sexo) VALUES ('Gustavo Henrique Dias', '60009090909', '1984-10-10', 'gustavo.dias@email.com', '24980909090', 'Volta Redonda', 'RJ', 'M');
INSERT INTO CLIENTE (nome, cpf, data_nascimento, email, telefone, cidade, estado, sexo) VALUES ('Larissa Fernandes Rocha', '60010101010', '1985-11-11', 'larissa.rocha@email.com', '24981010100', 'Barra Mansa', 'RJ', 'F');
INSERT INTO CLIENTE (nome, cpf, data_nascimento, email, telefone, cidade, estado, sexo) VALUES ('Bruno César Araújo', '60011111111', '1986-12-12', 'bruno.araujo@email.com', '24981111110', 'Resende', 'RJ', 'M');
INSERT INTO CLIENTE (nome, cpf, data_nascimento, email, telefone, cidade, estado, sexo) VALUES ('Vanessa Cristina Moraes', '60012121212', '1987-01-13', 'vanessa.moraes@email.com', '24981212120', 'Volta Redonda', 'RJ', 'F');
INSERT INTO CLIENTE (nome, cpf, data_nascimento, email, telefone, cidade, estado, sexo) VALUES ('Diego Fernando Castro', '60013131313', '1988-02-14', 'diego.castro@email.com', '24981313130', 'Barra Mansa', 'RJ', 'M');
INSERT INTO CLIENTE (nome, cpf, data_nascimento, email, telefone, cidade, estado, sexo) VALUES ('Alex Sandro Pinto', '60014141414', '1989-03-15', 'alex.pinto@email.com', '24981414140', 'Resende', 'RJ', 'O');
INSERT INTO CLIENTE (nome, cpf, data_nascimento, email, telefone, cidade, estado, sexo) VALUES ('Tatiane Ramos Freitas', '60015151515', '1990-04-16', 'tatiane.freitas@email.com', '24981515150', 'Volta Redonda', 'RJ', 'F');
INSERT INTO CLIENTE (nome, cpf, data_nascimento, email, telefone, cidade, estado, sexo) VALUES ('Wesley Oliveira Campos', '60016161616', '1991-05-17', 'wesley.campos@email.com', '24981616160', 'Barra Mansa', 'RJ', 'M');
INSERT INTO CLIENTE (nome, cpf, data_nascimento, email, telefone, cidade, estado, sexo) VALUES ('Priscila Duarte Nogueira', '60017171717', '1992-06-18', 'priscila.nogueira@email.com', '24981717170', 'Resende', 'RJ', 'F');
INSERT INTO CLIENTE (nome, cpf, data_nascimento, email, telefone, cidade, estado, sexo) VALUES ('Anderson Luiz Tavares', '60018181818', '1993-07-19', 'anderson.tavares@email.com', '24981818180', 'Volta Redonda', 'RJ', 'M');
INSERT INTO CLIENTE (nome, cpf, data_nascimento, email, telefone, cidade, estado, sexo) VALUES ('Mariana Bittencourt Reis', '60019191919', '1994-08-20', 'mariana.reis@email.com', '24981919190', 'Barra Mansa', 'RJ', 'F');
GO

-- PRODUTO (20 INSERT) - referenciam categoria nova e fornecedor novo (6..25)
INSERT INTO PRODUTO (nome, descricao, codigo_barras, preco_custo, preco_venda, estoque, id_categoria, id_fornecedor) VALUES ('Açúcar Refinado 1kg', 'Açúcar refinado união', '2001000000016', 2.20, 3.99, 200, 6, 6);
INSERT INTO PRODUTO (nome, descricao, codigo_barras, preco_custo, preco_venda, estoque, id_categoria, id_fornecedor) VALUES ('Lasanha Congelada 600g', 'Lasanha à bolonhesa congelada', '2001000000023', 9.50, 15.90, 70, 7, 7);
INSERT INTO PRODUTO (nome, descricao, codigo_barras, preco_custo, preco_venda, estoque, id_categoria, id_fornecedor) VALUES ('Sabonete Líquido 250ml', 'Sabonete líquido hidratante', '2001000000030', 3.10, 5.49, 150, 8, 8);
INSERT INTO PRODUTO (nome, descricao, codigo_barras, preco_custo, preco_venda, estoque, id_categoria, id_fornecedor) VALUES ('Chocolate ao Leite 90g', 'Tablete de chocolate ao leite', '2001000000047', 3.80, 6.99, 140, 9, 9);
INSERT INTO PRODUTO (nome, descricao, codigo_barras, preco_custo, preco_venda, estoque, id_categoria, id_fornecedor) VALUES ('Macarrão Parafuso 500g', 'Massa de sêmola parafuso', '2001000000054', 2.60, 4.89, 160, 10, 10);
INSERT INTO PRODUTO (nome, descricao, codigo_barras, preco_custo, preco_venda, estoque, id_categoria, id_fornecedor) VALUES ('Arroz Integral 1kg', 'Arroz integral tipo 1', '2001000000061', 4.50, 7.49, 120, 11, 11);
INSERT INTO PRODUTO (nome, descricao, codigo_barras, preco_custo, preco_venda, estoque, id_categoria, id_fornecedor) VALUES ('Milho em Conserva 200g', 'Milho verde em conserva', '2001000000078', 2.40, 4.29, 130, 12, 12);
INSERT INTO PRODUTO (nome, descricao, codigo_barras, preco_custo, preco_venda, estoque, id_categoria, id_fornecedor) VALUES ('Cerveja Pilsen 350ml', 'Cerveja pilsen lata', '2001000000085', 2.10, 3.79, 300, 13, 13);
INSERT INTO PRODUTO (nome, descricao, codigo_barras, preco_custo, preco_venda, estoque, id_categoria, id_fornecedor) VALUES ('Ração Cães 1kg', 'Ração seca para cães adultos', '2001000000092', 8.50, 14.90, 50, 14, 14);
INSERT INTO PRODUTO (nome, descricao, codigo_barras, preco_custo, preco_venda, estoque, id_categoria, id_fornecedor) VALUES ('Mortadela Fatiada 200g', 'Mortadela defumada fatiada', '2001000000108', 4.90, 8.49, 80, 15, 15);
INSERT INTO PRODUTO (nome, descricao, codigo_barras, preco_custo, preco_venda, estoque, id_categoria, id_fornecedor) VALUES ('Biscoito Recheado 140g', 'Biscoito recheado chocolate', '2001000000115', 1.90, 3.49, 220, 16, 16);
INSERT INTO PRODUTO (nome, descricao, codigo_barras, preco_custo, preco_venda, estoque, id_categoria, id_fornecedor) VALUES ('Café Torrado 500g', 'Café torrado e moído', '2001000000122', 11.00, 17.90, 100, 17, 17);
INSERT INTO PRODUTO (nome, descricao, codigo_barras, preco_custo, preco_venda, estoque, id_categoria, id_fornecedor) VALUES ('Molho de Tomate 340g', 'Molho de tomate tradicional', '2001000000139', 1.80, 3.29, 180, 18, 18);
INSERT INTO PRODUTO (nome, descricao, codigo_barras, preco_custo, preco_venda, estoque, id_categoria, id_fornecedor) VALUES ('Pano de Prato Algodão', 'Pano de prato 100% algodão', '2001000000146', 3.00, 5.99, 90, 19, 19);
INSERT INTO PRODUTO (nome, descricao, codigo_barras, preco_custo, preco_venda, estoque, id_categoria, id_fornecedor) VALUES ('Linguiça Toscana kg', 'Linguiça toscana resfriada', '2001000000153', 12.00, 18.90, 40, 20, 20);
INSERT INTO PRODUTO (nome, descricao, codigo_barras, preco_custo, preco_venda, estoque, id_categoria, id_fornecedor) VALUES ('Alface Crespa Unidade', 'Alface crespa hidropônica', '2001000000160', 1.50, 2.99, 60, 21, 21);
INSERT INTO PRODUTO (nome, descricao, codigo_barras, preco_custo, preco_venda, estoque, id_categoria, id_fornecedor) VALUES ('Manga Palmer kg', 'Manga palmer importada', '2001000000177', 4.00, 7.90, 55, 22, 22);
INSERT INTO PRODUTO (nome, descricao, codigo_barras, preco_custo, preco_venda, estoque, id_categoria, id_fornecedor) VALUES ('Granola Integral 500g', 'Granola natural integral', '2001000000184', 7.50, 12.90, 75, 23, 23);
INSERT INTO PRODUTO (nome, descricao, codigo_barras, preco_custo, preco_venda, estoque, id_categoria, id_fornecedor) VALUES ('Chá Verde Caixa 25un', 'Chá verde sachê caixa', '2001000000191', 4.20, 7.49, 110, 24, 24);
INSERT INTO PRODUTO (nome, descricao, codigo_barras, preco_custo, preco_venda, estoque, id_categoria, id_fornecedor) VALUES ('Jogo de Talheres 4pç', 'Jogo de talheres inox', '2001000000207', 9.00, 16.90, 35, 25, 25);
GO

-- VENDA (20 INSERT) - referenciam cliente novo e produto novo (6..25)
INSERT INTO VENDA (id_cliente, id_produto, quantidade, preco_unitario, desconto, valor_total, forma_pagamento) VALUES (6, 6, 1, 3.99, 0.00, 3.99, 'Dinheiro');
INSERT INTO VENDA (id_cliente, id_produto, quantidade, preco_unitario, desconto, valor_total, forma_pagamento) VALUES (7, 7, 2, 15.90, 0.50, 31.30, 'Cartão de Débito');
INSERT INTO VENDA (id_cliente, id_produto, quantidade, preco_unitario, desconto, valor_total, forma_pagamento) VALUES (8, 8, 3, 5.49, 1.00, 15.47, 'Cartão de Crédito');
INSERT INTO VENDA (id_cliente, id_produto, quantidade, preco_unitario, desconto, valor_total, forma_pagamento) VALUES (9, 9, 4, 6.99, 0.00, 27.96, 'PIX');
INSERT INTO VENDA (id_cliente, id_produto, quantidade, preco_unitario, desconto, valor_total, forma_pagamento) VALUES (10, 10, 5, 4.89, 0.50, 23.95, 'Vale Alimentação');
INSERT INTO VENDA (id_cliente, id_produto, quantidade, preco_unitario, desconto, valor_total, forma_pagamento) VALUES (11, 11, 1, 7.49, 1.00, 6.49, 'Dinheiro');
INSERT INTO VENDA (id_cliente, id_produto, quantidade, preco_unitario, desconto, valor_total, forma_pagamento) VALUES (12, 12, 2, 4.29, 0.00, 8.58, 'Cartão de Débito');
INSERT INTO VENDA (id_cliente, id_produto, quantidade, preco_unitario, desconto, valor_total, forma_pagamento) VALUES (13, 13, 3, 3.79, 0.50, 10.87, 'Cartão de Crédito');
INSERT INTO VENDA (id_cliente, id_produto, quantidade, preco_unitario, desconto, valor_total, forma_pagamento) VALUES (14, 14, 4, 14.90, 1.00, 58.60, 'PIX');
INSERT INTO VENDA (id_cliente, id_produto, quantidade, preco_unitario, desconto, valor_total, forma_pagamento) VALUES (15, 15, 5, 8.49, 0.00, 42.45, 'Vale Alimentação');
INSERT INTO VENDA (id_cliente, id_produto, quantidade, preco_unitario, desconto, valor_total, forma_pagamento) VALUES (16, 16, 1, 3.49, 0.50, 2.99, 'Dinheiro');
INSERT INTO VENDA (id_cliente, id_produto, quantidade, preco_unitario, desconto, valor_total, forma_pagamento) VALUES (17, 17, 2, 17.90, 1.00, 34.80, 'Cartão de Débito');
INSERT INTO VENDA (id_cliente, id_produto, quantidade, preco_unitario, desconto, valor_total, forma_pagamento) VALUES (18, 18, 3, 3.29, 0.00, 9.87, 'Cartão de Crédito');
INSERT INTO VENDA (id_cliente, id_produto, quantidade, preco_unitario, desconto, valor_total, forma_pagamento) VALUES (19, 19, 4, 5.99, 0.50, 23.46, 'PIX');
INSERT INTO VENDA (id_cliente, id_produto, quantidade, preco_unitario, desconto, valor_total, forma_pagamento) VALUES (20, 20, 5, 18.90, 1.00, 93.50, 'Vale Alimentação');
INSERT INTO VENDA (id_cliente, id_produto, quantidade, preco_unitario, desconto, valor_total, forma_pagamento) VALUES (21, 21, 1, 2.99, 0.00, 2.99, 'Dinheiro');
INSERT INTO VENDA (id_cliente, id_produto, quantidade, preco_unitario, desconto, valor_total, forma_pagamento) VALUES (22, 22, 2, 7.90, 0.50, 15.30, 'Cartão de Débito');
INSERT INTO VENDA (id_cliente, id_produto, quantidade, preco_unitario, desconto, valor_total, forma_pagamento) VALUES (23, 23, 3, 12.90, 1.00, 37.70, 'Cartão de Crédito');
INSERT INTO VENDA (id_cliente, id_produto, quantidade, preco_unitario, desconto, valor_total, forma_pagamento) VALUES (24, 24, 4, 7.49, 0.00, 29.96, 'PIX');
INSERT INTO VENDA (id_cliente, id_produto, quantidade, preco_unitario, desconto, valor_total, forma_pagamento) VALUES (25, 25, 5, 16.90, 0.50, 84.00, 'Vale Alimentação');
GO

-- #####################################################################
-- ##  PASSO 2 de 4  ->  SELECIONE A SEÇÃO 2 INTEIRA E APERTE F5    ##
-- ##                (aplica os 100 UPDATE)                         ##
-- #####################################################################
-- =====================================================
-- SEÇÃO 2 - UPDATE (100 comandos) - todos com WHERE
-- =====================================================

-- CATEGORIA (20 UPDATE)
UPDATE CATEGORIA SET descricao = 'Categoria revisada em auditoria' WHERE id_categoria = 6;
UPDATE CATEGORIA SET descricao = 'Categoria revisada em auditoria' WHERE id_categoria = 7;
UPDATE CATEGORIA SET descricao = 'Categoria revisada em auditoria' WHERE id_categoria = 8;
UPDATE CATEGORIA SET descricao = 'Categoria revisada em auditoria' WHERE id_categoria = 9;
UPDATE CATEGORIA SET descricao = 'Categoria revisada em auditoria' WHERE id_categoria = 10;
UPDATE CATEGORIA SET descricao = 'Categoria revisada em auditoria' WHERE id_categoria = 11;
UPDATE CATEGORIA SET descricao = 'Categoria revisada em auditoria' WHERE id_categoria = 12;
UPDATE CATEGORIA SET descricao = 'Categoria revisada em auditoria' WHERE id_categoria = 13;
UPDATE CATEGORIA SET descricao = 'Categoria revisada em auditoria' WHERE id_categoria = 14;
UPDATE CATEGORIA SET descricao = 'Categoria revisada em auditoria' WHERE id_categoria = 15;
UPDATE CATEGORIA SET descricao = 'Categoria revisada em auditoria' WHERE id_categoria = 16;
UPDATE CATEGORIA SET descricao = 'Categoria revisada em auditoria' WHERE id_categoria = 17;
UPDATE CATEGORIA SET descricao = 'Categoria revisada em auditoria' WHERE id_categoria = 18;
UPDATE CATEGORIA SET descricao = 'Categoria revisada em auditoria' WHERE id_categoria = 19;
UPDATE CATEGORIA SET descricao = 'Categoria revisada em auditoria' WHERE id_categoria = 20;
UPDATE CATEGORIA SET descricao = 'Categoria revisada em auditoria' WHERE id_categoria = 21;
UPDATE CATEGORIA SET descricao = 'Categoria revisada em auditoria' WHERE id_categoria = 22;
UPDATE CATEGORIA SET descricao = 'Categoria revisada em auditoria' WHERE id_categoria = 23;
UPDATE CATEGORIA SET descricao = 'Categoria revisada em auditoria' WHERE id_categoria = 24;
UPDATE CATEGORIA SET descricao = 'Categoria revisada em auditoria' WHERE id_categoria = 25;
GO

-- FORNECEDOR (20 UPDATE)
UPDATE FORNECEDOR SET telefone = '1140000000', cidade = 'Campinas' WHERE id_fornecedor = 6;
UPDATE FORNECEDOR SET telefone = '1140121212', cidade = 'Campinas' WHERE id_fornecedor = 7;
UPDATE FORNECEDOR SET telefone = '1140242424', cidade = 'Campinas' WHERE id_fornecedor = 8;
UPDATE FORNECEDOR SET telefone = '1140363636', cidade = 'Campinas' WHERE id_fornecedor = 9;
UPDATE FORNECEDOR SET telefone = '1140484848', cidade = 'Campinas' WHERE id_fornecedor = 10;
UPDATE FORNECEDOR SET telefone = '1140606060', cidade = 'Campinas' WHERE id_fornecedor = 11;
UPDATE FORNECEDOR SET telefone = '1140727272', cidade = 'Campinas' WHERE id_fornecedor = 12;
UPDATE FORNECEDOR SET telefone = '1140848484', cidade = 'Campinas' WHERE id_fornecedor = 13;
UPDATE FORNECEDOR SET telefone = '1140969696', cidade = 'Campinas' WHERE id_fornecedor = 14;
UPDATE FORNECEDOR SET telefone = '1141090908', cidade = 'Campinas' WHERE id_fornecedor = 15;
UPDATE FORNECEDOR SET telefone = '1141212120', cidade = 'Campinas' WHERE id_fornecedor = 16;
UPDATE FORNECEDOR SET telefone = '1141333332', cidade = 'Campinas' WHERE id_fornecedor = 17;
UPDATE FORNECEDOR SET telefone = '1141454544', cidade = 'Campinas' WHERE id_fornecedor = 18;
UPDATE FORNECEDOR SET telefone = '1141575756', cidade = 'Campinas' WHERE id_fornecedor = 19;
UPDATE FORNECEDOR SET telefone = '1141696968', cidade = 'Campinas' WHERE id_fornecedor = 20;
UPDATE FORNECEDOR SET telefone = '1141818180', cidade = 'Campinas' WHERE id_fornecedor = 21;
UPDATE FORNECEDOR SET telefone = '1141939392', cidade = 'Campinas' WHERE id_fornecedor = 22;
UPDATE FORNECEDOR SET telefone = '1142060604', cidade = 'Campinas' WHERE id_fornecedor = 23;
UPDATE FORNECEDOR SET telefone = '1142181816', cidade = 'Campinas' WHERE id_fornecedor = 24;
UPDATE FORNECEDOR SET telefone = '1142303028', cidade = 'Campinas' WHERE id_fornecedor = 25;
GO

-- CLIENTE (20 UPDATE)
UPDATE CLIENTE SET cidade = 'Resende', estado = 'RJ' WHERE id_cliente = 6;
UPDATE CLIENTE SET cidade = 'Resende', estado = 'RJ' WHERE id_cliente = 7;
UPDATE CLIENTE SET cidade = 'Resende', estado = 'RJ' WHERE id_cliente = 8;
UPDATE CLIENTE SET cidade = 'Resende', estado = 'RJ' WHERE id_cliente = 9;
UPDATE CLIENTE SET cidade = 'Resende', estado = 'RJ' WHERE id_cliente = 10;
UPDATE CLIENTE SET cidade = 'Resende', estado = 'RJ' WHERE id_cliente = 11;
UPDATE CLIENTE SET cidade = 'Resende', estado = 'RJ' WHERE id_cliente = 12;
UPDATE CLIENTE SET cidade = 'Resende', estado = 'RJ' WHERE id_cliente = 13;
UPDATE CLIENTE SET cidade = 'Resende', estado = 'RJ' WHERE id_cliente = 14;
UPDATE CLIENTE SET cidade = 'Resende', estado = 'RJ' WHERE id_cliente = 15;
UPDATE CLIENTE SET cidade = 'Resende', estado = 'RJ' WHERE id_cliente = 16;
UPDATE CLIENTE SET cidade = 'Resende', estado = 'RJ' WHERE id_cliente = 17;
UPDATE CLIENTE SET cidade = 'Resende', estado = 'RJ' WHERE id_cliente = 18;
UPDATE CLIENTE SET cidade = 'Resende', estado = 'RJ' WHERE id_cliente = 19;
UPDATE CLIENTE SET cidade = 'Resende', estado = 'RJ' WHERE id_cliente = 20;
UPDATE CLIENTE SET cidade = 'Resende', estado = 'RJ' WHERE id_cliente = 21;
UPDATE CLIENTE SET cidade = 'Resende', estado = 'RJ' WHERE id_cliente = 22;
UPDATE CLIENTE SET cidade = 'Resende', estado = 'RJ' WHERE id_cliente = 23;
UPDATE CLIENTE SET cidade = 'Resende', estado = 'RJ' WHERE id_cliente = 24;
UPDATE CLIENTE SET cidade = 'Resende', estado = 'RJ' WHERE id_cliente = 25;
GO

-- PRODUTO (20 UPDATE) - reajuste de preço e estoque (mantém preco_venda >= preco_custo)
UPDATE PRODUTO SET preco_venda = preco_venda * 1.10, estoque = estoque + 10 WHERE id_produto = 6;
UPDATE PRODUTO SET preco_venda = preco_venda * 1.10, estoque = estoque + 10 WHERE id_produto = 7;
UPDATE PRODUTO SET preco_venda = preco_venda * 1.10, estoque = estoque + 10 WHERE id_produto = 8;
UPDATE PRODUTO SET preco_venda = preco_venda * 1.10, estoque = estoque + 10 WHERE id_produto = 9;
UPDATE PRODUTO SET preco_venda = preco_venda * 1.10, estoque = estoque + 10 WHERE id_produto = 10;
UPDATE PRODUTO SET preco_venda = preco_venda * 1.10, estoque = estoque + 10 WHERE id_produto = 11;
UPDATE PRODUTO SET preco_venda = preco_venda * 1.10, estoque = estoque + 10 WHERE id_produto = 12;
UPDATE PRODUTO SET preco_venda = preco_venda * 1.10, estoque = estoque + 10 WHERE id_produto = 13;
UPDATE PRODUTO SET preco_venda = preco_venda * 1.10, estoque = estoque + 10 WHERE id_produto = 14;
UPDATE PRODUTO SET preco_venda = preco_venda * 1.10, estoque = estoque + 10 WHERE id_produto = 15;
UPDATE PRODUTO SET preco_venda = preco_venda * 1.10, estoque = estoque + 10 WHERE id_produto = 16;
UPDATE PRODUTO SET preco_venda = preco_venda * 1.10, estoque = estoque + 10 WHERE id_produto = 17;
UPDATE PRODUTO SET preco_venda = preco_venda * 1.10, estoque = estoque + 10 WHERE id_produto = 18;
UPDATE PRODUTO SET preco_venda = preco_venda * 1.10, estoque = estoque + 10 WHERE id_produto = 19;
UPDATE PRODUTO SET preco_venda = preco_venda * 1.10, estoque = estoque + 10 WHERE id_produto = 20;
UPDATE PRODUTO SET preco_venda = preco_venda * 1.10, estoque = estoque + 10 WHERE id_produto = 21;
UPDATE PRODUTO SET preco_venda = preco_venda * 1.10, estoque = estoque + 10 WHERE id_produto = 22;
UPDATE PRODUTO SET preco_venda = preco_venda * 1.10, estoque = estoque + 10 WHERE id_produto = 23;
UPDATE PRODUTO SET preco_venda = preco_venda * 1.10, estoque = estoque + 10 WHERE id_produto = 24;
UPDATE PRODUTO SET preco_venda = preco_venda * 1.10, estoque = estoque + 10 WHERE id_produto = 25;
GO

-- VENDA (20 UPDATE) - ajuste de forma de pagamento
UPDATE VENDA SET forma_pagamento = 'Cartão de Crédito' WHERE id_venda = 6;
UPDATE VENDA SET forma_pagamento = 'PIX' WHERE id_venda = 7;
UPDATE VENDA SET forma_pagamento = 'Vale Alimentação' WHERE id_venda = 8;
UPDATE VENDA SET forma_pagamento = 'Dinheiro' WHERE id_venda = 9;
UPDATE VENDA SET forma_pagamento = 'Cartão de Débito' WHERE id_venda = 10;
UPDATE VENDA SET forma_pagamento = 'Cartão de Crédito' WHERE id_venda = 11;
UPDATE VENDA SET forma_pagamento = 'PIX' WHERE id_venda = 12;
UPDATE VENDA SET forma_pagamento = 'Vale Alimentação' WHERE id_venda = 13;
UPDATE VENDA SET forma_pagamento = 'Dinheiro' WHERE id_venda = 14;
UPDATE VENDA SET forma_pagamento = 'Cartão de Débito' WHERE id_venda = 15;
UPDATE VENDA SET forma_pagamento = 'Cartão de Crédito' WHERE id_venda = 16;
UPDATE VENDA SET forma_pagamento = 'PIX' WHERE id_venda = 17;
UPDATE VENDA SET forma_pagamento = 'Vale Alimentação' WHERE id_venda = 18;
UPDATE VENDA SET forma_pagamento = 'Dinheiro' WHERE id_venda = 19;
UPDATE VENDA SET forma_pagamento = 'Cartão de Débito' WHERE id_venda = 20;
UPDATE VENDA SET forma_pagamento = 'Cartão de Crédito' WHERE id_venda = 21;
UPDATE VENDA SET forma_pagamento = 'PIX' WHERE id_venda = 22;
UPDATE VENDA SET forma_pagamento = 'Vale Alimentação' WHERE id_venda = 23;
UPDATE VENDA SET forma_pagamento = 'Dinheiro' WHERE id_venda = 24;
UPDATE VENDA SET forma_pagamento = 'Cartão de Débito' WHERE id_venda = 25;
GO

-- #####################################################################
-- ##  PASSO 3 de 4  ->  SELECIONE A SEÇÃO 3 INTEIRA E APERTE F5    ##
-- ##  *** AQUI VOCE TIRA OS PRINTS DOS RESULTADOS (banco cheio) ***##
-- ##  Dica: rode em grupos de ~8-10 consultas para printar com calma##
-- #####################################################################
-- =====================================================
-- SEÇÃO 3 - SELECT (50 comandos)
-- =====================================================

-- Consulta 1
SELECT * FROM CATEGORIA;
GO

-- Consulta 2
SELECT * FROM FORNECEDOR;
GO

-- Consulta 3
SELECT * FROM CLIENTE;
GO

-- Consulta 4
SELECT * FROM PRODUTO;
GO

-- Consulta 5
SELECT * FROM VENDA;
GO

-- Consulta 6
SELECT nome, descricao FROM CATEGORIA;
GO

-- Consulta 7
SELECT razao_social, cnpj, cidade FROM FORNECEDOR;
GO

-- Consulta 8
SELECT nome, cpf, cidade FROM CLIENTE;
GO

-- Consulta 9
SELECT nome, preco_venda, estoque FROM PRODUTO;
GO

-- Consulta 10
SELECT id_venda, valor_total, forma_pagamento FROM VENDA;
GO

-- Consulta 11
SELECT * FROM CLIENTE WHERE estado = 'RJ';
GO

-- Consulta 12
SELECT * FROM CLIENTE WHERE sexo = 'F';
GO

-- Consulta 13
SELECT * FROM CLIENTE WHERE cidade = 'Resende';
GO

-- Consulta 14
SELECT * FROM PRODUTO WHERE preco_venda > 10.00;
GO

-- Consulta 15
SELECT * FROM PRODUTO WHERE estoque < 60;
GO

-- Consulta 16
SELECT * FROM PRODUTO WHERE preco_venda BETWEEN 5.00 AND 15.00;
GO

-- Consulta 17
SELECT * FROM FORNECEDOR WHERE estado = 'SP';
GO

-- Consulta 18
SELECT * FROM VENDA WHERE forma_pagamento = 'PIX';
GO

-- Consulta 19
SELECT * FROM VENDA WHERE valor_total > 20.00;
GO

-- Consulta 20
SELECT * FROM CATEGORIA WHERE nome LIKE '%Bebidas%';
GO

-- Consulta 21
SELECT nome, preco_venda FROM PRODUTO ORDER BY preco_venda DESC;
GO

-- Consulta 22
SELECT TOP 5 nome, estoque FROM PRODUTO ORDER BY estoque ASC;
GO

-- Consulta 23
SELECT nome, data_nascimento FROM CLIENTE ORDER BY data_nascimento;
GO

-- Consulta 24
SELECT razao_social FROM FORNECEDOR ORDER BY razao_social ASC;
GO

-- Consulta 25
SELECT id_venda, valor_total FROM VENDA ORDER BY valor_total DESC;
GO

-- Consulta 26
SELECT COUNT(*) AS total_produtos FROM PRODUTO;
GO

-- Consulta 27
SELECT AVG(preco_venda) AS preco_medio FROM PRODUTO;
GO

-- Consulta 28
SELECT MAX(preco_venda) AS mais_caro, MIN(preco_venda) AS mais_barato FROM PRODUTO;
GO

-- Consulta 29
SELECT SUM(valor_total) AS faturamento_total FROM VENDA;
GO

-- Consulta 30
SELECT forma_pagamento, COUNT(*) AS qtd FROM VENDA GROUP BY forma_pagamento;
GO

-- Consulta 31
SELECT estado, COUNT(*) AS qtd_clientes FROM CLIENTE GROUP BY estado;
GO

-- Consulta 32
SELECT id_categoria, COUNT(*) AS qtd_produtos FROM PRODUTO GROUP BY id_categoria;
GO

-- Consulta 33
SELECT id_categoria, COUNT(*) AS qtd FROM PRODUTO GROUP BY id_categoria HAVING COUNT(*) > 0;
GO

-- Consulta 34
SELECT p.nome AS produto, c.nome AS categoria FROM PRODUTO p INNER JOIN CATEGORIA c ON p.id_categoria = c.id_categoria;
GO

-- Consulta 35
SELECT p.nome AS produto, f.nome_fantasia AS fornecedor FROM PRODUTO p INNER JOIN FORNECEDOR f ON p.id_fornecedor = f.id_fornecedor;
GO

-- Consulta 36
SELECT f.nome_fantasia AS fornecedor, c.nome AS categoria_principal FROM FORNECEDOR f LEFT JOIN CATEGORIA c ON f.id_categoria_principal = c.id_categoria;
GO

-- Consulta 37
SELECT v.id_venda, cli.nome AS cliente, p.nome AS produto FROM VENDA v INNER JOIN CLIENTE cli ON v.id_cliente = cli.id_cliente INNER JOIN PRODUTO p ON v.id_produto = p.id_produto;
GO

-- Consulta 38
SELECT v.id_venda, p.nome AS produto, cat.nome AS categoria FROM VENDA v INNER JOIN PRODUTO p ON v.id_produto = p.id_produto INNER JOIN CATEGORIA cat ON p.id_categoria = cat.id_categoria;
GO

-- Consulta 39
SELECT cli.nome AS cliente, SUM(v.valor_total) AS total_gasto FROM VENDA v INNER JOIN CLIENTE cli ON v.id_cliente = cli.id_cliente GROUP BY cli.nome;
GO

-- Consulta 40
SELECT cat.nome AS categoria, COUNT(p.id_produto) AS qtd_produtos FROM CATEGORIA cat LEFT JOIN PRODUTO p ON cat.id_categoria = p.id_categoria GROUP BY cat.nome;
GO

-- Consulta 41
SELECT f.nome_fantasia AS fornecedor, COUNT(p.id_produto) AS qtd_produtos FROM FORNECEDOR f LEFT JOIN PRODUTO p ON f.id_fornecedor = p.id_fornecedor GROUP BY f.nome_fantasia;
GO

-- Consulta 42
SELECT cat.nome AS categoria, AVG(p.preco_venda) AS preco_medio FROM PRODUTO p INNER JOIN CATEGORIA cat ON p.id_categoria = cat.id_categoria GROUP BY cat.nome;
GO

-- Consulta 43
SELECT p.nome AS produto, SUM(v.quantidade) AS unidades_vendidas FROM VENDA v INNER JOIN PRODUTO p ON v.id_produto = p.id_produto GROUP BY p.nome;
GO

-- Consulta 44
SELECT cli.cidade, COUNT(v.id_venda) AS qtd_vendas FROM VENDA v INNER JOIN CLIENTE cli ON v.id_cliente = cli.id_cliente GROUP BY cli.cidade;
GO

-- Consulta 45
SELECT v.id_venda, cli.nome AS cliente, p.nome AS produto, cat.nome AS categoria, v.valor_total FROM VENDA v INNER JOIN CLIENTE cli ON v.id_cliente = cli.id_cliente INNER JOIN PRODUTO p ON v.id_produto = p.id_produto INNER JOIN CATEGORIA cat ON p.id_categoria = cat.id_categoria ORDER BY v.valor_total DESC;
GO

-- Consulta 46
SELECT COUNT(*) AS total_clientes FROM CLIENTE;
GO

-- Consulta 47
SELECT COUNT(DISTINCT cidade) AS cidades_atendidas FROM CLIENTE;
GO

-- Consulta 48
SELECT nome, preco_custo, preco_venda, (preco_venda - preco_custo) AS margem FROM PRODUTO;
GO

-- Consulta 49
SELECT * FROM PRODUTO WHERE nome LIKE 'C%';
GO

-- Consulta 50
SELECT AVG(valor_total) AS ticket_medio FROM VENDA;
GO

-- #####################################################################
-- ##  PASSO 4 de 4  ->  SELECIONE A SEÇÃO 4 INTEIRA E APERTE F5    ##
-- ##  (apaga as 100 linhas novas; a base de 5 por tabela continua) ##
-- ##  RODE POR ULTIMO, DEPOIS DE TIRAR OS PRINTS DO PASSO 3        ##
-- #####################################################################
-- =====================================================
-- SEÇÃO 4 - DELETE (100 comandos) - ordem filha->pai
-- =====================================================

-- VENDA (20 DELETE) - tabela filha, deletada primeiro
DELETE FROM VENDA WHERE id_venda = 6;
DELETE FROM VENDA WHERE id_venda = 7;
DELETE FROM VENDA WHERE id_venda = 8;
DELETE FROM VENDA WHERE id_venda = 9;
DELETE FROM VENDA WHERE id_venda = 10;
DELETE FROM VENDA WHERE id_venda = 11;
DELETE FROM VENDA WHERE id_venda = 12;
DELETE FROM VENDA WHERE id_venda = 13;
DELETE FROM VENDA WHERE id_venda = 14;
DELETE FROM VENDA WHERE id_venda = 15;
DELETE FROM VENDA WHERE id_venda = 16;
DELETE FROM VENDA WHERE id_venda = 17;
DELETE FROM VENDA WHERE id_venda = 18;
DELETE FROM VENDA WHERE id_venda = 19;
DELETE FROM VENDA WHERE id_venda = 20;
DELETE FROM VENDA WHERE id_venda = 21;
DELETE FROM VENDA WHERE id_venda = 22;
DELETE FROM VENDA WHERE id_venda = 23;
DELETE FROM VENDA WHERE id_venda = 24;
DELETE FROM VENDA WHERE id_venda = 25;
GO

-- PRODUTO (20 DELETE) - depois que as vendas que o referenciam saíram
DELETE FROM PRODUTO WHERE id_produto = 6;
DELETE FROM PRODUTO WHERE id_produto = 7;
DELETE FROM PRODUTO WHERE id_produto = 8;
DELETE FROM PRODUTO WHERE id_produto = 9;
DELETE FROM PRODUTO WHERE id_produto = 10;
DELETE FROM PRODUTO WHERE id_produto = 11;
DELETE FROM PRODUTO WHERE id_produto = 12;
DELETE FROM PRODUTO WHERE id_produto = 13;
DELETE FROM PRODUTO WHERE id_produto = 14;
DELETE FROM PRODUTO WHERE id_produto = 15;
DELETE FROM PRODUTO WHERE id_produto = 16;
DELETE FROM PRODUTO WHERE id_produto = 17;
DELETE FROM PRODUTO WHERE id_produto = 18;
DELETE FROM PRODUTO WHERE id_produto = 19;
DELETE FROM PRODUTO WHERE id_produto = 20;
DELETE FROM PRODUTO WHERE id_produto = 21;
DELETE FROM PRODUTO WHERE id_produto = 22;
DELETE FROM PRODUTO WHERE id_produto = 23;
DELETE FROM PRODUTO WHERE id_produto = 24;
DELETE FROM PRODUTO WHERE id_produto = 25;
GO

-- FORNECEDOR (20 DELETE) - depois que os produtos saíram
DELETE FROM FORNECEDOR WHERE id_fornecedor = 6;
DELETE FROM FORNECEDOR WHERE id_fornecedor = 7;
DELETE FROM FORNECEDOR WHERE id_fornecedor = 8;
DELETE FROM FORNECEDOR WHERE id_fornecedor = 9;
DELETE FROM FORNECEDOR WHERE id_fornecedor = 10;
DELETE FROM FORNECEDOR WHERE id_fornecedor = 11;
DELETE FROM FORNECEDOR WHERE id_fornecedor = 12;
DELETE FROM FORNECEDOR WHERE id_fornecedor = 13;
DELETE FROM FORNECEDOR WHERE id_fornecedor = 14;
DELETE FROM FORNECEDOR WHERE id_fornecedor = 15;
DELETE FROM FORNECEDOR WHERE id_fornecedor = 16;
DELETE FROM FORNECEDOR WHERE id_fornecedor = 17;
DELETE FROM FORNECEDOR WHERE id_fornecedor = 18;
DELETE FROM FORNECEDOR WHERE id_fornecedor = 19;
DELETE FROM FORNECEDOR WHERE id_fornecedor = 20;
DELETE FROM FORNECEDOR WHERE id_fornecedor = 21;
DELETE FROM FORNECEDOR WHERE id_fornecedor = 22;
DELETE FROM FORNECEDOR WHERE id_fornecedor = 23;
DELETE FROM FORNECEDOR WHERE id_fornecedor = 24;
DELETE FROM FORNECEDOR WHERE id_fornecedor = 25;
GO

-- CLIENTE (20 DELETE) - depois que as vendas saíram
DELETE FROM CLIENTE WHERE id_cliente = 6;
DELETE FROM CLIENTE WHERE id_cliente = 7;
DELETE FROM CLIENTE WHERE id_cliente = 8;
DELETE FROM CLIENTE WHERE id_cliente = 9;
DELETE FROM CLIENTE WHERE id_cliente = 10;
DELETE FROM CLIENTE WHERE id_cliente = 11;
DELETE FROM CLIENTE WHERE id_cliente = 12;
DELETE FROM CLIENTE WHERE id_cliente = 13;
DELETE FROM CLIENTE WHERE id_cliente = 14;
DELETE FROM CLIENTE WHERE id_cliente = 15;
DELETE FROM CLIENTE WHERE id_cliente = 16;
DELETE FROM CLIENTE WHERE id_cliente = 17;
DELETE FROM CLIENTE WHERE id_cliente = 18;
DELETE FROM CLIENTE WHERE id_cliente = 19;
DELETE FROM CLIENTE WHERE id_cliente = 20;
DELETE FROM CLIENTE WHERE id_cliente = 21;
DELETE FROM CLIENTE WHERE id_cliente = 22;
DELETE FROM CLIENTE WHERE id_cliente = 23;
DELETE FROM CLIENTE WHERE id_cliente = 24;
DELETE FROM CLIENTE WHERE id_cliente = 25;
GO

-- CATEGORIA (20 DELETE) - tabela pai, deletada por último
DELETE FROM CATEGORIA WHERE id_categoria = 6;
DELETE FROM CATEGORIA WHERE id_categoria = 7;
DELETE FROM CATEGORIA WHERE id_categoria = 8;
DELETE FROM CATEGORIA WHERE id_categoria = 9;
DELETE FROM CATEGORIA WHERE id_categoria = 10;
DELETE FROM CATEGORIA WHERE id_categoria = 11;
DELETE FROM CATEGORIA WHERE id_categoria = 12;
DELETE FROM CATEGORIA WHERE id_categoria = 13;
DELETE FROM CATEGORIA WHERE id_categoria = 14;
DELETE FROM CATEGORIA WHERE id_categoria = 15;
DELETE FROM CATEGORIA WHERE id_categoria = 16;
DELETE FROM CATEGORIA WHERE id_categoria = 17;
DELETE FROM CATEGORIA WHERE id_categoria = 18;
DELETE FROM CATEGORIA WHERE id_categoria = 19;
DELETE FROM CATEGORIA WHERE id_categoria = 20;
DELETE FROM CATEGORIA WHERE id_categoria = 21;
DELETE FROM CATEGORIA WHERE id_categoria = 22;
DELETE FROM CATEGORIA WHERE id_categoria = 23;
DELETE FROM CATEGORIA WHERE id_categoria = 24;
DELETE FROM CATEGORIA WHERE id_categoria = 25;
GO

-- Conferir que a base de 5 linhas por tabela permanece intacta
SELECT 'CATEGORIA' AS tabela, COUNT(*) AS linhas FROM CATEGORIA
UNION ALL SELECT 'FORNECEDOR', COUNT(*) FROM FORNECEDOR
UNION ALL SELECT 'CLIENTE', COUNT(*) FROM CLIENTE
UNION ALL SELECT 'PRODUTO', COUNT(*) FROM PRODUTO
UNION ALL SELECT 'VENDA', COUNT(*) FROM VENDA;
GO
