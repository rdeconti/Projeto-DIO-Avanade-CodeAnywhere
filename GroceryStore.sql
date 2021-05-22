-- define database
USE [GroceryStore]
GO

-- define permissions to users
GRANT execute,select,insert,update,delete TO GroceryStore

-- declare Date to be used in table creation: field expiration date
DECLARE @Date DATETIME = 31/12/2021;

-- drop tables
DROP TABLE IF EXISTS STORES;
DROP TABLE IF EXISTS PRODUTOS;
DROP TABLE IF EXISTS estoque;

-- create tables
CREATE TABLE LOJAS (
	codigo INT IDENTITY (1, 1) PRIMARY KEY,
	nome VARCHAR (255) NOT NULL,
	ind_inativo BIT
);

CREATE TABLE PRODUTOS (
	codigo INT IDENTITY (1, 1) PRIMARY KEY,
	descricao VARCHAR (255) NOT NULL,
	ean VARCHAR (13) NOT NULL,
	data_validade DATE NOT NULL,
	ind_inativo BIT
);

CREATE TABLE estoque (
	codigo INT IDENTITY (1, 1) PRIMARY KEY,
	codigo_produto INT NOT NULL,
	codigo_filial INT NOT NULL,
	quantidade INT NOT NULL,
	data_validade DATE NOT NULL
);

-- create data to LOJAS
SET IDENTITY_INSERT LOJAS ON;
INSERT INTO LOJAS(codigo,nome) VALUES(1,'Loja 1')
INSERT INTO LOJAS(codigo,nome) VALUES(2,'Loja 2')
INSERT INTO LOJAS(codigo,nome) VALUES(3,'Loja 3')
SET IDENTITY_INSERT LOJAS OFF;

-- create data to PRODUTOS
SET IDENTITY_INSERT PRODUTOS ON;  
INSERT INTO PRODUTOS(codigo, descricao, ean, data_validade) VALUES(1, 'Produto 1', '1234567890123', @Date)
INSERT INTO PRODUTOS(codigo, descricao, ean, data_validade) VALUES(2, 'Produto 2', '1234567890123', @Date)
INSERT INTO PRODUTOS(codigo, descricao, ean, data_validade) VALUES(3, 'Produto 3', '1234567890123', @Date)
INSERT INTO PRODUTOS(codigo, descricao, ean, data_validade) VALUES(4, 'Produto 4', '1234567890123', @Date)
SET IDENTITY_INSERT PRODUTOS OFF;

-- create data to estoque
SET IDENTITY_INSERT estoque ON;  
INSERT INTO estoque(codigo, codigo_produto, codigo_filial, quantidade, data_validade) VALUES(1,'1','1', 1000, @Date)
INSERT INTO estoque(codigo, codigo_produto, codigo_filial, quantidade, data_validade) VALUES(2,'2','1', 1000, @Date)
INSERT INTO estoque(codigo, codigo_produto, codigo_filial, quantidade, data_validade) VALUES(3,'3','1', 1000, @Date)
INSERT INTO estoque(codigo, codigo_produto, codigo_filial, quantidade, data_validade) VALUES(4,'4','1', 1000, @Date)
INSERT INTO estoque(codigo, codigo_produto, codigo_filial, quantidade, data_validade) VALUES(5,'1','2', 2000, @Date)
INSERT INTO estoque(codigo, codigo_produto, codigo_filial, quantidade, data_validade) VALUES(6,'2','2', 2000, @Date)
INSERT INTO estoque(codigo, codigo_produto, codigo_filial, quantidade, data_validade) VALUES(7,'3','2', 2000, @Date)
INSERT INTO estoque(codigo, codigo_produto, codigo_filial, quantidade, data_validade) VALUES(8,'4','2', 2000, @Date)
INSERT INTO estoque(codigo, codigo_produto, codigo_filial, quantidade, data_validade) VALUES(9,'1','3', 3000, @Date)
INSERT INTO estoque(codigo, codigo_produto, codigo_filial, quantidade, data_validade) VALUES(10,'2','3', 3000, @Date)
INSERT INTO estoque(codigo, codigo_produto, codigo_filial, quantidade, data_validade) VALUES(11,'3','3', 3000, @Date)
INSERT INTO estoque(codigo, codigo_produto, codigo_filial, quantidade, data_validade) VALUES(12,'4','3', 3000, @Date)
SET IDENTITY_INSERT estoque OFF;