create database Resilia;
use resilia;

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

alter table aluno
ADD id_turma int;
alter table aluno
ADD FOREIGN KEY (id_turma) REFERENCES turma(id);
    

alter table turma
ADD id_curso int;
alter table turma
ADD FOREIGN KEY (id_curso) REFERENCES curso(id);

    
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
