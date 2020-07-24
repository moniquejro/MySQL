create database db_pizzaria_legal

use db_pizzaria_legal;

create table tb_categoria(
id bigint auto_increment,
categoria varchar(25),
ativo boolean,
primary key (id)
);

create table tb_produto(
id bigint auto_increment,
sabor varchar(40) not null,
preco decimal not null,
tamanho int,
categoria_id bigint not null,
primary key (id),
foreign key (categoria_id) references tb_categoria(id)
);

alter table tb_produto modify column tamanho varchar(10);

insert into tb_categoria(categoria, ativo) VALUES("Salgada", true);
insert into tb_categoria(categoria, ativo) VALUES("Doce", true);
insert into tb_categoria(categoria, ativo) VALUES("Paulista", true);
insert into tb_categoria(categoria, ativo) VALUES("Vegetariana", true);
insert into tb_categoria(categoria, ativo) VALUES("Fitness", true);

insert into tb_produto(sabor, preco, tamanho, categoria_id) VALUES("Frango", 31.90, "Grande", 1);
insert into tb_produto(sabor, preco, tamanho, categoria_id) VALUES("Calabresa", 27.90, "Grande", 1);
insert into tb_produto(sabor, preco, tamanho, categoria_id) VALUES("Light", 25.00, "Pequena", 3);
insert into tb_produto(sabor, preco, tamanho, categoria_id) VALUES("Rúcula com Queijo", 22.00, "Média", 3);
insert into tb_produto(sabor, preco, tamanho, categoria_id) VALUES("Whey Morango", 45.00, "Grande", 5);
insert into tb_produto(sabor, preco, tamanho, categoria_id) VALUES("Uruguaia", 33.90, "Grande", 1);
insert into tb_produto(sabor, preco, tamanho, categoria_id) VALUES("Brigadeiro", 19.00, "Média", 2);
insert into tb_produto(sabor, preco, tamanho, categoria_id) VALUES("Atum", 25.00, "Pequena", 1);
insert into tb_produto(sabor, preco, tamanho, categoria_id) VALUES("Tapioca e água", 47.00, "Média", 5);

select sabor, preco, tamanho from tb_produto where preco between 30 and 45;
select sabor, preco, tamanho from tb_produto where preco > 30;
select sabor, preco, tamanho from tb_produto where sabor like "c%";

select * from tb_produto
inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id;

select sabor, preco, tamanho, categoria from tb_produto
inner join tb_categoria on tb_produto.categoria_id = tb_categoria.id
where categoria = "Salgada"
order by preco desc;