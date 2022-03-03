------------------------------------------------
-- Criando banco de dados para uma cervejaria --

drop database dbcervejas;

create database dbcervejas;

use dbcervejas;

create table tbcerveja(
codigo_cerveja bigint,
sku varchar(50),
nome varchar(80),
descricao text,
valor decimal(10,2),
teor_alcoolico decimal(10,2),
comissao decimal(10,2),
sabor varchar(50),
origem varchar(50),
codigo_estilo bigint,
quantidade_estoque int,
foto varchar(100),
content_type varchar(100)
);

create table tbcliente(
codigo bigint,
nome varchar(100),
tipo_pessoa varchar(15),
cpf_cnpj varchar(30),
telefone varchar(20),
email varchar(100),
logradouro varchar(50),
numero varchar(15),
complemento varchar(20),
cep varchar(20),
codigo_cidade bigint
);

create table tbvenda(
codigo bigint,
data_criacao datetime,
valor_frete decimal(10,2),
valor_desconto decimal(10,2),
valor_total decimal(10,2),
status varchar(30),
observacao varchar(30),
data_hora_entrega datetime,
codigo_cliente bigint,
codigo_usuario bigint
);

create table tbschema_version(
installed_rank int,
version varchar(50),
description varchar(200),
type varchar(20),
script varchar(1000),
checksum int,
installed_by varchar(100),
installed_on timestamp,
execution_time int,
success int
);

create table tbusuario(
codigo_usuario bigint,
nome varchar(50),
email varchar(50),
senha varchar(120),
ativo int,
data_nascimento date
);

create table tbestilo(
codigo_estilo bigint,
nome varchar(50)
);

create table tbitem_venda(
codigo_venda bigint,
quantidade int,
valor_unitario decimal(10,2),
codigo_cerveja bigint
);

create table tbcidade(
codigo_cidade bigint,
nome varchar(50),
codigo_estado bigint
);

create table tbestado(
codigo_estado bigint,
nome varchar(50),
sigla varchar(2)
);

create table tbusuario_grupo(
codigo_usuario bigint,
codigo_grupo bigint
);

create table tbgrupo(
codigo_grupo bigint,
nome varchar(50)
);

create table tbgrupo_permissao(
codigo_grupo_permissao bigint,
codigo_permissao bigint
);

create table tbpermissao(
codigo_permissao bigint,
nome varchar(50)
);

desc tbcerveja;

desc tbvenda;

desc tbcliente;

desc tbschema_version;

desc tbusuario;

desc tbestilo;

desc tbitem_venda;

desc tbcidade;

desc tbestado;

desc tbgrupo;

desc tbgrupo_permissao;

desc tbpermissao;

desc tbusuario_grupo;


insert into tbcliente
 	values(1,"Vinicius Castro","Pessoa Fisica","497.778.708-09","(11)93763-3325","vinicius.castro.santana@gmail.com","Rua Francisco Xavier de Sales","1176","casa 3","05830-250","01");


select * from tbcliente;
