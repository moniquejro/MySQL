SELECT * FROM tb_cargo22;
SELECT * FROM tb_funcionario22;

SELECT * FROM tb_funcionario22 WHERE salario > 2000;
SELECT * FROM tb_funcionario22 WHERE salario BETWEEN 1000 AND 2000;
SELECT * FROM tb_funcionario22 WHERE nome LIKE "%c%";

SELECT nome, salario, nvl, setor FROM tb_funcionario22
	INNER JOIN tb_cargo22 ON tb_funcionario22.id_cargo = tb_cargo.id;
    
SELECT nome, salario, nvl, setor FROM tb_funcionario22
	INNER JOIN tb_cargo22 ON tb_funcionario22.id_cargo = tb_cargo.id
		WHERE tb_cargo22.setor = "TI";