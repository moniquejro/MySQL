use db_rh2;

create table tb_cargos(
 id int(3) AUTO_INCREMENT, 
    nome_cargo varchar(215) NOT NULL,
    setor varchar(215),
    PRIMARY KEY (id) 
);

create table tb_funcionario(
id int(3),
nome varchar(100),
codigo varchar(50),
salario float (5.2),
cel int(11),
cargo_id int(3),
primary key (id)
);

