-- 1. 
CREATE DATABASE db_RH001;
USE db_RH001;

-- 2.
CREATE TABLE tb_colaboradores(
	id bigint AUTO_INCREMENT, 
    nome varchar(255) NOT NULL,
    data_admissao date,
    desc_cargo varchar(50),
    salario decimal NOT NULL,
    PRIMARY KEY(id)
);
-- 3.
INSERT INTO tb_colaboradores(nome,data_admissao,desc_cargo,salario)
VALUES ("João da Silva","2022-04-10","Analista de negócios", 5000.00);
INSERT INTO tb_colaboradores(nome,data_admissao,desc_cargo,salario)
VALUES ("Julia Donato","2023-01-15","Analista de sistemas", 4000.00);
INSERT INTO tb_colaboradores(nome,data_admissao,desc_cargo,salario)
VALUES ("Camila Santos","2024-08-09","Atendente de call center", 2000.00);
INSERT INTO tb_colaboradores(nome,data_admissao,desc_cargo,salario)
VALUES ("Paulo Camillo","2024-10-01","Recepcionista", 1600.00);
INSERT INTO tb_colaboradores(nome,data_admissao,desc_cargo,salario)
VALUES ("Lilian Torres","2021-11-01","Diretora de Operações", 10000.00);

-- 4.
select * from tb_colaboradores where salario > 2000.00;

-- 5.
select * from tb_colaboradores where salario < 2000.00;

-- 6. 
UPDATE tb_colaboradores SET salario = 2500.00 WHERE id = 3;