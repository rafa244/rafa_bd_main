
create database biblioteca;

use biblioteca;

create table aluno(
pk int not null primary key auto_increment,
    nome varchar(255) not null
);

create table livro(
pk int not null primary key auto_increment,
nome varchar(255) not null
);

create table emprestimo(
pk int not null primary key auto_increment,
    data_emprestimo date not null,
    data_devolucao date not null,
aluno_fk int not null, foreign key (aluno_fk) references aluno (pk),
    livro_fk int not null, foreign key (livro_fk) references livro (pk)
);

