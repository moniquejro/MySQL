create database db_aula6;

use  db_aula6;

create table tb_marcas(
id bigint (5) auto_increment,
nome varchar(20) not null,
ativo boolean,
primary key (id)
);

select * from tb_marcas

insert into tb_marcas(nome, ativo) values ("Nike", true)
insert into tb_marcas(nome, ativo) values ("Fatal Surf", false)

update tb_marcas set nome = "Fatall Surff", ativo = true 
where id = 2;

select * from tb_marcas where id = 2
select * from tb_marcas where id < 2
select * from tb_marcas where id >= 2
select * from tb_marcas where id <> 2

select nome, ativo from tb_marcas

delete from tb_marcas where id = 1
select * from tb_marcas