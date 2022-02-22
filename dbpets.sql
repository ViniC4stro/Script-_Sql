-- Apagar o banco de dados

drop database dbpets;


-- Criar o banco de dados "dbpets"

create database dbpets;


-- Visualizar o banco de dados

show databases;


-- Acessando o bando de dados "dbpets"

use dbpets;


-- Source: comando para executar um script. "source *endereço do arquivo*\*nome do arquivo*.sql"


-- Criando tabelas no banco de dados

create table tbClientes(
idCliente int,
nome varchar(100),
cpf char(14),
dataNasc date,
genero char(1),
logradouro varchar(100),
numero char(10),
cep char(9),
bairro varchar(100),
cidade varchar(100),
estado char(2),
telefone char(10),
email varchar(100)
);

-- Visualizando as tabelas do banco de dados

show tables;


-- Visualizando a estrutura das tabelas criadas no bando de dados

desc tbClientes;


-------------------------------------------------
-- Criando as tabelas da primeira atividade --

create table tbClientes(
idCliente int,
nome varchar(100),
cpf char(14),
dataNasc date,
genero char(1),
logradouro varchar(100),
numero char(10),
cep char(9),
bairro varchar(100),
cidade varchar(100),
estado char(2),
telefone char(10),
email varchar(100)
);


create table tbFornecedores(
idFornecedor int,
razaoSocial varchar(100),
nomeFantasia varchar(100),
cnpj char(15),
logradouro varchar(100),
numero char(10),
cep char(9),
bairro varchar(100),
cidade varchar(100),
estado char(2),
telefone char(10)
);


create table tbProdutos(
idProduto int,
codigoDeBarras varchar(13),
nomeProduto varchar(100),
marca varchar(100),
tipo varchar(100),
fornecedor varchar(100),
valorDaCompra decimal(8,2),
valorDaVenda decimal(8,2),
quantidadeEstoque int,
idFornecedor int
);


create table tbCompras(
idCompra int,
produtos varchar(100),
cpfCliente char (9),
cpfFuncionario char(9),
valorTotal decimal(8,2),
dataAtual date,
funcionariosIdFuncionario int,
clientesIdCliente int
);


create table tbAnimais(
idAnimal int,
nomeAnimal varchar(100),
especie varchar(100),
raca varchar(100),
genero char(1),
dataNasc date,
clientesIdClientes int
);


create table tbServicos(
idServico int,
descricaoServico varchar(100),
valorServico decimal(8,2),
tempoServico time
);


create table tbcargoFuncionario(
idCargo int,
cargo varchar(100),
salario decimal(8,2)
);


create table tbfuncionarios(
idFuncionario int,
nome varchar(100),
cargo varchar(100),
cpf char(14),
logradouro varchar(100),
numero char (10),
cep char (9),
bairro varchar (100),
cidade varchar (100),
estado char(2),
telefone char(10),
email varchar(100),
cargoFuncionarioIdCargo int
);


create table tbCompraHasProdutos(
comprasIdCompra int,
produtosIdProduto int
);


create table tbServicosHasClientes(
servicosIdServico int,
clientesIdCliente int
);


create table tbAnimaisHasServicos(
animaisIdAnimal int,
animaisClientesIdCliente int,
servicosIdServico int
);


create table tbfuncionariosHasServicos(
funcionariosIdfuncionario int,
servicosIdservico int
);
-------------------------------------------