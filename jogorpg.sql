create database db_generation_game_online

use db_generation_game_online;

create table tb_classe(
id int(3) auto_increment,
nome varchar(200),
arma1 varchar (250),
escudo2 varchar (250),

primary key (id)
);

use db_generation_game_online;

create table tb_personagem(
id int(3) auto_increment,
nome varchar (100) not null,
life int (20) not null,
ataque int (20) not null,
classe_id int not null,
primary key (id),
	foreign key (classe_id) references tb_classe(id)
);

insert into tb_classe (nome, arma1, escudo2) values ("LifeLine", "Cajado", "Chapéu");
insert into tb_classe (nome, arma1, escudo2) values ("BloodHund", "Relógio Scanner", "Runner");
insert into tb_classe (nome, arma1, escudo2) values ("Watson", "Gerador de Energia", "Cerca Elétrica");

select * from tb_classe

--Percebi que populei errado e corrigi
update tb_classe set nome = "Sacerdote" where id = 1
update tb_classe set nome = "Caçadora" where id = 2
update tb_classe set nome = "Suporte" where id = 3