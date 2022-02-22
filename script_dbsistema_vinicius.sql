--------------------------------------------------------------
-- Criando um bando de dados para um sistema de informações --

create database dbsistema;

use dbsistema

create table tb_demanda_mensal(
mes int,
ano int,
demanda int,
previsao decimal(9,2),
tb_tipo_sanguineo_cod_tipo_sanguineo int,
tb_produto_cod_produto int
);

create table tbEntradas(
data_entrada date,
volume int,
tb_produto_cod_produto int,
tb_tipo_sanguineo_cod_tipo_sanguineo int,
validade date,
cos_bolsa int
);

create table tb_tipo_sanguineo(
cod_tipo_sanguineo int,
descricao_tipo varchar(45)
);

create table tb_produto(
cod_produto int,
descricao_produto varchar(45),
sigla char(5),
validade int,
lead_time_horas decimal(9,2)
);

create table tb_doadores(
identidade int,
nome varchar(45),
endereco varchar(45),
tb_tipo_sanguineo_cod_tipo_sanguineo int,
dataNascimento date,
cidade varchar(45),
uf char(2),
estado_civil varchar(45),
email varchar(45),
telefone varchar(45)
);

create table tb_saida(
nome_paciente varchar(100),
nome_hospital varchar(100),
data_saida date,
RT int,
tb_produto_cod_produto int,
tb_tipo_sanguineo_cod_tipo_sanguineo int,
tb_entradas_cod_bolsa int
);

desc tb_demanda_mensal;

desc tbEntradas;

desc tb_tipo_sanguineo;

desc tb_produto;

desc tb_doadores;

desc tb_saida;