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

insert into tb_produtos (nome, preco, marca_id) values ("Camisa", "72.64", 3);
insert into tb_produtos (nome, preco, marca_id) values ("Sapato", "81.66", 8);
insert into tb_produtos (nome, preco, marca_id) values ("Tênis", "40.43", 9);
insert into tb_produtos (nome, preco, marca_id) values ("Calça", "14.51", 5);
insert into tb_produtos (nome, preco, marca_id) values ("Tênis", "95.60", 6);
insert into tb_produtos (nome, preco, marca_id) values ("Camisa", "21.01", 8);
insert into tb_produtos (nome, preco, marca_id) values ("Camisa", "67.26", 10);
insert into tb_produtos (nome, preco, marca_id) values ("Camisa", "02.56", 8);
insert into tb_produtos (nome, preco, marca_id) values ("Tênis", "33.54", 8);
insert into tb_produtos (nome, preco, marca_id) values ("Camisa", "27.92", 10);
insert into tb_produtos (nome, preco, marca_id) values ("Sapato", "64.65", 10);
insert into tb_produtos (nome, preco, marca_id) values ("Sapato", "90.80", 11);
insert into tb_produtos (nome, preco, marca_id) values ("Camisa", "20.59", 11);
insert into tb_produtos (nome, preco, marca_id) values ("Meias", "56.16", 6);
insert into tb_produtos (nome, preco, marca_id) values ("Blusa", "95.43", 4);
insert into tb_produtos (nome, preco, marca_id) values ("Camisa", "34.98", 7);
insert into tb_produtos (nome, preco, marca_id) values ("Camisa", "24.44", 10);
insert into tb_produtos (nome, preco, marca_id) values ("Camisa", "84.94", 4);
insert into tb_produtos (nome, preco, marca_id) values ("Sapato", "93.48", 11);
insert into tb_produtos (nome, preco, marca_id) values ("Tênis", "83.46", 9);
insert into tb_produtos (nome, preco, marca_id) values ("Blusa", "08.70", 3);
insert into tb_produtos (nome, preco, marca_id) values ("Sapato", "95.80", 10);
insert into tb_produtos (nome, preco, marca_id) values ("Meias", "56.60", 6);
insert into tb_produtos (nome, preco, marca_id) values ("Sapato", "35.73", 7);
insert into tb_produtos (nome, preco, marca_id) values ("Blusa", "41.73", 9);
insert into tb_produtos (nome, preco, marca_id) values ("Camisa", "41.82", 9);
insert into tb_produtos (nome, preco, marca_id) values ("Camisa", "95.51", 10);
insert into tb_produtos (nome, preco, marca_id) values ("Meias", "02.90", 2);
insert into tb_produtos (nome, preco, marca_id) values ("Tênis", "83.82", 1);
insert into tb_produtos (nome, preco, marca_id) values ("Camisa", "52.31", 6);
insert into tb_produtos (nome, preco, marca_id) values ("Calça", "12.88", 6);
insert into tb_produtos (nome, preco, marca_id) values ("Sapato", "77.13", 4);
insert into tb_produtos (nome, preco, marca_id) values ("Camisa", "34.22", 1);
insert into tb_produtos (nome, preco, marca_id) values ("Sapato", "24.86", 3);
insert into tb_produtos (nome, preco, marca_id) values ("Camisa", "00.97", 7);
insert into tb_produtos (nome, preco, marca_id) values ("Sapato", "34.49", 6);
insert into tb_produtos (nome, preco, marca_id) values ("Camisa", "23.66", 9);
insert into tb_produtos (nome, preco, marca_id) values ("Sapato", "86.33", 9);
insert into tb_produtos (nome, preco, marca_id) values ("Camisa", "80.16", 10);
insert into tb_produtos (nome, preco, marca_id) values ("Meias", "51.59", 4);
insert into tb_produtos (nome, preco, marca_id) values ("Meias", "76.18", 5);
insert into tb_produtos (nome, preco, marca_id) values ("Camisa", "87.27", 9);
insert into tb_produtos (nome, preco, marca_id) values ("Tênis", "58.19", 10);
insert into tb_produtos (nome, preco, marca_id) values ("Tênis", "01.94", 9);
insert into tb_produtos (nome, preco, marca_id) values ("Calça", "01.54", 7);
insert into tb_produtos (nome, preco, marca_id) values ("Meias", "81.41", 2);
insert into tb_produtos (nome, preco, marca_id) values ("Camisa", "52.43", 8);
insert into tb_produtos (nome, preco, marca_id) values ("Sapato", "52.34", 6);
insert into tb_produtos (nome, preco, marca_id) values ("Sapato", "23.88", 3);

select * from tb_produtos