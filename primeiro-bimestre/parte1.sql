CREATE DATABASE ecommerce;
use ecommerce;

CREATE TABLE Cliente ( 
    id_cliente INT PRIMARY KEY AUTO_INCREMENT, 
    nome VARCHAR(255) NOT NULL, 
    endereco VARCHAR(255) NOT NULL, 
    email VARCHAR(255) NOT NULL, 
    celular VARCHAR(20), 
    data_nascimento DATE NOT NULL 
); 

CREATE TABLE Produto ( 
    id_produto INT PRIMARY KEY AUTO_INCREMENT, 
    nome VARCHAR(255) NOT NULL, 
    preco DECIMAL(10,2) NOT NULL, 
    descricao TEXT, 
    quantidade_estoque INT NOT NULL 
); 

CREATE TABLE Pedido ( 
    id_pedido INT PRIMARY KEY AUTO_INCREMENT, 
    id_cliente INT, 
    data_compra DATE, 
    valor_total DECIMAL(10,2), 
    data_estimada_entrega DATE, 
    FOREIGN KEY (id_cliente) REFERENCES Cliente(id_cliente) 
); 

CREATE TABLE ItemPedido ( 
    id_item INT PRIMARY KEY AUTO_INCREMENT, 
    id_pedido INT, 
    id_produto INT, 
    quantidade INT, 
    valor_unitario DECIMAL(10,2), 
    valor_total DECIMAL(10,2), 
    FOREIGN KEY (id_pedido) REFERENCES Pedido(id_pedido), 
    FOREIGN KEY (id_produto) REFERENCES Produto(id_produto) 
); 
