use db_pessoas;
create table funcionarios(
id bigint(5) auto_increment,
nome varchar(20) not null,
cpf varchar(11),
cel bigint(9),
endereco varchar(100),
email varchar(127),
primary key (id)
);