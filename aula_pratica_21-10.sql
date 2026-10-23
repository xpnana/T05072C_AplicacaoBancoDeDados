CREATE DATABASE DB_T05072C_Ana_Cibele;
USE DB_T05072C_Ana_Cibele;

CREATE TABLE Cliente(
    id_cliente INT PRIMARY KEY AUTO_INCREMENT,
    nome_cliente VARCHAR(100) not null,
    telefone VARCHAR(30) not null,
    email VARCHAR(100)
);

-- Tabela Produto
-- nome, tipo, preco e estoque 

CREATE TABLE Produto(
    id_produto INT PRIMARY KEY AUTO_INCREMENT,
    nome_produto VARCHAR(100),
    tipo_produto VARCHAR(50),
    preco DECIMAL(10,2) not null,
    estoque_produto INT not null
);

SHOW TABLES;

ALTER TABLE Produto 
MODIFY nome_produto VARCHAR(100) NOT NULL,
MODIFY tipo_produto VARCHAR(50) NOT NULL;

CREATE TABLE Pedido(
    id_pedido INT PRIMARY KEY AUTO_INCREMENT,
    valor_total DEC(6,2) NOT NULL,
    quantidade DEC(5,2) NOT NULL,
    id_cliente INT,
    id_produto INT,
    forma_pagamento VARCHAR(15) NOT NULL,
    FOREIGN KEY (id_cliente) REFERENCES Cliente(id_cliente),
    FOREIGN KEY (id_produto) REFERENCES Produto (id_produto)
);
