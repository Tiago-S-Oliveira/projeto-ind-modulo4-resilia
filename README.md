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


Script utilizado:
