-----------------------------------------------
-- Criando banco de dados para uma mercearia --

create database dbmercearia;

use dbmercearia

create table tbcliente(
idcliente int,
nome varchar(45),
telefone varchar(45),
emails varchar(45)
);

create table tbvenda(
idvenda int,
valorTotal decimal(10,2),
data datetime,
clienteId int,
vendedorId int,
pagamentoId int
);

create table tbvendaHasProduto(
vendaId int,
produtoId int
);

create table tbproduto(
idProduto int,
nome varchar(45),
preco decimal(10,2),
qtdEstoque varchar(45),
categoriaId int,
fornecedoresId int
);

create table tbVendedor(
idVendedor int,
nome varchar(45)
);

create table tbPagamento(
idPagamento int,
formaPagamento varchar(45)
);

create table tbCategoria(
idCategoria int,
nome varchar(45)
);

create table tbFornecedores(
idFornecedor int,
cnpj varchar(45),
nome varchar(45)
);

desc tbcliente;

desc tbvenda;

desc tbvendaHasProduto;

desc tbproduto;

desc tbVendedor;

desc tbPagamento;

desc tbCategoria;

desc tbFornecedores;

