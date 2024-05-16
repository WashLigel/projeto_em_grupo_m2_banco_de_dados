CREATE DATABASE resiliadata;

USE resiliadata;

CREATE TABLE aluno (
    id int PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nome varchar(20),
    sobrenome varchar(40),
    matricula varchar(7),
    nascimento date,
    cpf varchar(14) UNIQUE,
    email varchar(60),
    telefone varchar(20),
    status_aluno varchar(15)
);

CREATE TABLE facilitador (
    id int PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nome varchar(20),
    sobrenome varchar (40),
    nascimento date,
    cpf varchar(14) UNIQUE,
    status_facilitador varchar(15),
    telefone varchar(20),
    email varchar(60),
    matricula varchar(7)
);

CREATE TABLE responsavel (
    id int PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nome varchar(20),
    sobrenome varchar(40),
    rg varchar(15) UNIQUE
);

CREATE TABLE endereco (
    id int PRIMARY KEY NOT NULL AUTO_INCREMENT,
    cep varchar (10),
    rua varchar(40),
    bairro varchar(30),
    numero int,
    cidade varchar(30)
);

CREATE TABLE area (
    id int PRIMARY KEY NOT NULL  AUTO_INCREMENT,
    desenvol_web BIT,
    ciencia_dados BIT,
    seguranca_info BIT,
    machine_learning BIT,
    desenvol_apps BIT,
    adm_bd BIT,
    redes_comput BIT,
    soft_skills BIT
);

CREATE TABLE unidade (
    id int PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nome varchar(40),
    telefone varchar(20),
    endereco_id int,
    FOREIGN KEY (endereco_id) REFERENCES endereco(id) ON DELETE CASCADE ON UPDATE CASCADE
);


CREATE TABLE curso (
    id int PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nome varchar(60),
    descricao varchar(99),
    duracao int,
    area_id int,
    FOREIGN KEY (area_id) REFERENCES area(id) ON DELETE CASCADE ON UPDATE CASCADE
);


CREATE TABLE turma (
    id int PRIMARY KEY NOT NULL AUTO_INCREMENT,
    numeracao int,
    modalidade varchar(20),
    status_turma varchar(15),
    curso_id int,
    unidade_id int,
    FOREIGN KEY (curso_id) REFERENCES curso(id) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (unidade_id) REFERENCES unidade(id) ON DELETE CASCADE ON UPDATE CASCADE
);


CREATE TABLE modulo (
    id int PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nome varchar(40),
    descricao text(200),
    num_aulas int,
    curso_id int,
    FOREIGN KEY (curso_id) REFERENCES curso(id) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE historico (
    id int PRIMARY KEY NOT NULL AUTO_INCREMENT,
    aluno_id int,
    turma_id int,
    data_his date,
    nota decimal(5,2),
    FOREIGN KEY (aluno_id) REFERENCES aluno(id) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (turma_id) REFERENCES turma(id) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE registro_facilitador (
    id int PRIMARY KEY NOT NULL AUTO_INCREMENT,
    turma_id int,
    facilitador_id int,
    data_reg date,
    FOREIGN KEY (turma_id) REFERENCES turma(id) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (facilitador_id) REFERENCES facilitador(id) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE responsavel_aluno (
    id int PRIMARY KEY NOT NULL AUTO_INCREMENT,
    aluno_id int,
    responsavel_id int,
    FOREIGN KEY (aluno_id) REFERENCES aluno(id) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (responsavel_id) REFERENCES responsavel(id) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE listagem (
	id int PRIMARY KEY NOT NULL AUTO_INCREMENT,
	curso_id int,
	unidade_id int,
	FOREIGN KEY (curso_id) REFERENCES curso(id) ON DELETE CASCADE ON UPDATE CASCADE,
	FOREIGN KEY (unidade_id) REFERENCES unidade(id) ON DELETE CASCADE ON UPDATE CASCADE
);
