drop database db_minhadb;

create database db_minhadb;

use db_minhadb;


create table tbTelefones(
codigo int,
nome varchar(50),
telefone char(15)
);

desc tbTelefones;

-- Inserindo registros na tabela tbTelefones

insert into tbTelefones(codigo,nome,telefone)
	values(1,"Marco Teixeira","(11)5555-5555");

insert into tbTelefones(codigo,nome,telefone)
	values(2,"Vinicius Castro","(11)1111-1111");

insert into tbTelefones(codigo,nome,telefone)
	values(3,"Sarah Mendonca","(11)2222-2222");

insert into tbTelefones(codigo,nome,telefone)
	values(4,"Michele Brito","(11)3333-3333");

insert into tbTelefones(codigo,nome,telefone)
	values(5,"Sergio da Silva","(11)4444-4444");

insert into tbTelefones(codigo,nome,telefone)
	values(6,"Davi Castro","(11)6666-6666");

insert into tbTelefones(codigo,nome,telefone)
	values(7,"Rafa Moreira","(11)7777-7777");

insert into tbTelefones(codigo,nome,telefone)
	values(8,"André Moraes","(11)8888-8888");

insert into tbTelefones(codigo,nome,telefone)
	values(9,"Joao Vitor Tavares","(11)9999-9999");

insert into tbTelefones(codigo,nome,telefone)
	values(0,"Vinicius Silva","(11)0000-0000");


-- Visualizando os registros de tbtelefones

select * from tbTelefones; --nome da tabela


-- Deletando uma linda de informação dentro da tabela;

-- delete from tbtelefones where nome/codigo/telefone = 'nome do registro';