CREATE DATABASE db_RH22;
USE db_RH22;

CREATE TABLE tb_cargo22(
	id int auto_increment,
    nvl varchar(30) NOT NULL,
    setor varchar(30) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE tb_funcionario22(
	id int auto_increment,
    nome varchar(125) NOT NULL,
    email varchar(125) NOT NULL,
    endereco varchar(125) NOT NULL,
    cel varchar(15) NOT NULL,
    salario float NOT NULL,
    id_cargo int NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (id_cargo) REFERENCES tb_cargo22(id)
);