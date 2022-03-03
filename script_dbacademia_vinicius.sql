-------------------------------------------------
-- Criando um bando de dados para uma academia --

drop database dbacademia;

create database dbacademia;

use dbacademia;

create table tbRegistro(
idAluno int,
idTurma int,
ausencia int,
idRegistro int
);

create table tbAluno(
matricula int,
dataMatricula date,
nome varchar(45),
endereco varchar(45),
telefone varchar(45),
nascimento date,
altura decimal(9,2),
peso decimal(9,2),
idTurma int
);

create table tbTurma(
idTurma int,
quantAlunos int,
horarioAula datetime,
duracaoAula datetime,
dataInicio date,
dataFim date,
atividade int,
idInstrutor int,
idMonitor int
);

create table tbAtividade(
idAtividade int,
atividade varchar(45)
);

create table tbInstrutor(
rg int,
nome varchar(45),
nascimento date,
titulacao varchar(45),
telefone varchar(45)
);

create table tbMonitor(
idAluno int
);

desc tbRegistro;

desc tbAluno;

desc tbTurma;

desc tbAtividade;

desc tbInstrutor;

desc tbMonitor;


insert into tbAluno
	values("0001","2022/04/21","Vinicius Castro","Rua Francisco Xavier, 1176","(11)1111-1111","2005/04/21","1.85","82.0","0123");
