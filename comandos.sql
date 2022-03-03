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


-- visualizar os registros/dados de uma tabela

select * from tbanimais;

-- inserindo valores nas tabelas

insert into tbanimais(codAni,nome,raca)
	values(1,'Dog','Vira-lata');

