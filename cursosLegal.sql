create database db_cursoDaMinhaVida;
USE db_cursoDaMinhaVida;

CREATE TABLE tb_categoria(
	id bigint auto_increment not null, 
    categoria varchar(30) not null,
    ativo boolean,
    primary key (id)
);

create table tb_produto(
	id bigint auto_increment not null,
    nome varchar(30) not null,
    preco decimal,
    idioma varchar(20),
    categoria_id bigint not null,
    primary key (id),
    foreign key(categoria_id) references tb_categoria(id)
);

insert into tb_categoria(categoria, ativo) values("Python", true);
insert into tb_categoria(categoria, ativo) values("HTML", true);
insert into tb_categoria(categoria, ativo) values("JAVA", true);
insert into tb_categoria(categoria, ativo) values("RUBY", true);
insert into tb_categoria(categoria, ativo) values("COBOL", false);

SELECT * FROM tb_categoria;

insert into tb_produto(nome, preco, idioma, categoria_id) values("Pycharm", 25, "Inglês", 1);
insert into tb_produto(nome, preco, idioma, categoria_id) values("NotePad", 15, "Inglês", 2);
insert into tb_produto(nome, preco, idioma, categoria_id) values("Poo", 5, "Inglês", 3);
insert into tb_produto(nome, preco, idioma, categoria_id) values("Poo", 5, "Latim", 4);
insert into tb_produto(nome, preco, idioma, categoria_id) values("Bibliotecas", 70, "Português", 5);
insert into tb_produto(nome, preco, idioma, categoria_id) values("Herança", 70, "Inglês", 3);
insert into tb_produto(nome, preco, idioma, categoria_id) values("Pycharm", 50, "Português", 1);
insert into tb_produto(nome, preco, idioma, categoria_id) values("Vetores e matrizes", 50, "Português", 3);

select * from tb_produto;

select nome, preco, idioma from tb_produto where preco > 55;

select nome, preco, idioma from tb_produto where preco > 30 and preco < 80;

select * from tb_produto where nome like "P%";

select nome, preco, idioma, categoria from tb_produto
inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id;
    
select nome, preco, idioma, categoria from tb_produto
inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id
where tb_categoria.categoria = "Python"
order by preco desc;