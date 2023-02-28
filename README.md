Projeto Individual do Módulo 4 - Resília

Modelagem de um banco de dados

Objetivo:
O projeto nos desafia a fazer a modelagem de um banco de dados para a Resília, contendo cursos, turmas e alunos de forma a organizar seus dados.

A modelagem do Banco de Dados, nomeado de "Resília", foi feita no aplicativo brmodel, contendo como entidades e suas propriedades:
-Cursos:
id(chave primaria);
nome do curso;

-Turmas: 
id(chave primária);
numero da turma;
id do curso( chave estrangeira);
turno;

-Alunos:
id(chave primária);
nome;
id da turma(chave estrangeira);
turno(chave estrangeira);

-Histórico de turmas:
id(chave primária);
id do curso(chave estrangeira);
id da turma(chave estrangeira);
id do aluno(chave estrangeira);

Imagem da modelagem utilizada como base:
<img src="/fotoModelagem.jpg">


Passo a passo do script utilizado( foi utilizado o MySQL Workbench 8.0:

1º Passo - Criar o banco de dados e começar a utilizá-lo.

create database Resilia;
use resilia;

2º Passo - Criar as tabelas.

create table curso (
	id int primary key not null auto_increment,
  nome varchar(100)
);

create table aluno (
	id int primary key not null auto_increment,
	nome varchar(200)
);

create table turma (
	id int primary key not null auto_increment,
    numero int,
    turno varchar(10)
);

create table historico (
	id int primary key not null auto_increment
);

3º Passo - adicionar as chaves de dependencia externas.

(chave da tabela aluno)
alter table aluno
ADD id_turma int;
alter table aluno
ADD FOREIGN KEY (id_turma) REFERENCES turma(id);
    
(chave da tabela turma)
alter table turma
ADD id_curso int;
alter table turma
ADD FOREIGN KEY (id_curso) REFERENCES curso(id);

(chaves da tabela historico)    
alter table historico
ADD id_turma int;
alter table historico
ADD FOREIGN KEY (id_turma) REFERENCES turma(id);

alter table historico
ADD id_curso int;
alter table historico
ADD FOREIGN KEY (id_curso) REFERENCES curso(id);

alter table historico
ADD id_aluno int;
alter table historico
ADD FOREIGN KEY (id_aluno) REFERENCES aluno(id);

