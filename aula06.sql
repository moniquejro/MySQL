--Continuacao pela aula07

insert into tb_marcas (nome, ativo) values("H&M", true);
insert into tb_marcas (nome, ativo) values ("Zara", true);
insert into tb_marcas (nome, ativo) values ("LV", true);
insert into tb_marcas (nome, ativo) values ("Adidas", true);
insert into tb_marcas (nome, ativo) values ("Uniq", true);
insert into tb_marcas (nome, ativo) values ("Hermes", true);
insert into tb_marcas (nome, ativo) values ("Rolex", true);
insert into tb_marcas (nome, ativo) values ("Gucci", true);
insert into tb_marcas (nome, ativo) values ("Cartier", true);

select * from tb_marcas

select * from tb_marcas where nome like "%ad%"
select * from tb_marcas where nome like "%fa%"
select * from tb_marcas where ativo = true

--unindo tabelas
use db_aula6;

create table tb_produtos(
id bigint auto_increment,
nome varchar(30) not null,
preco decimal(10,2),
marca_id bigint not null,

primary key(id),
foreign key (marca_id) references tb_marcas (id)
)

insert into tb_produtos(nome, preco, marca_id)
values ("Camisa", 22.99, 3)
insert into tb_produtos(nome, preco, marca_id)
values ("Tênis", 69.99, 3)

select * from tb_produtos where nome = "tenis"
select * from tb_produtos where preco > 20.00
select * from tb_produtos where preco > 60.00