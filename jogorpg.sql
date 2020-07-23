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

insert into tb_personagem (nome, life, ataque, classe_id) values ("KiMiKo", 1200, 20, 1);
insert into tb_personagem (nome, life, ataque, classe_id) values ("Caramelo", 2000, 30, 2);
insert into tb_personagem (nome, life, ataque, classe_id) values ("Pegazus", 1000, 15, 3);
insert into tb_personagem (nome, life, ataque, classe_id) values ("KiMiKo", 500, 10, 1);
insert into tb_personagem (nome, life, ataque, classe_id) values ("Caipora", 2000, 30, 2);
insert into tb_personagem (nome, life, ataque, classe_id) values ("Lobisomem", 2200, 45, 2);
insert into tb_personagem (nome, life, ataque, classe_id) values ("Ares", 5000, 55, 2);
insert into tb_personagem (nome, life, ataque, classe_id) values ("Morfeu", 2200, 15, 2);

--Populei duas vezes a tabela e resolvi deletar alguns e alterar outros
delete from tb_personagem where id = 4
update tb_personagem set nome = "Caruru" where id = 6
update tb_personagem set nome = "Arapuá" where id = 11
update tb_personagem set nome = "Pororoca" where id = 13
update tb_personagem set nome = "Baiana" where id = 14
update tb_personagem set nome = "Capoeira" where id = 5
update tb_personagem set nome = "Jacarandá" where id = 12

select * from tb_personagem where ataque > 20;
select * from tb_personagem where ataque between 15 and 45;
select * from tb_personagem where nome like  "C%"