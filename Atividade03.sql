-- 1. 
CREATE DATABASE db_ESL01;
USE db_ESL01;

-- 2.
CREATE TABLE tb_estudantes(
	id bigint AUTO_INCREMENT, 
    nome varchar(255) NOT NULL,
    serie char(2),
    media1 int,
    media2 int,
    media3 int,
    media4 int,
	MediaFinal int,
    PRIMARY KEY(id)
);

-- 3
alter table tb_estudantes modify serie char(2)
INSERT INTO tb_estudantes (nome, serie, media1, media2, media3, media4, MediaFinal) VALUES
('Ana Souza', '5A', 80, 85, 78, 90, 83),
('Bruno Lima', '6B', 70, 75, 80, 65, 73),
('Carla Mendes', '5A', 90, 92, 88, 95, 91),
('Daniel Oliveira', '7C', 60, 65, 70, 75, 68),
('Eduarda Ferreira', '6B', 85, 80, 82, 88, 84),
('Fernando Alves', '7C', 78, 82, 80, 85, 81),
('Gabriela Santos', '5A', 95, 90, 92, 94, 93),
('Henrique Costa', '6B', 68, 70, 72, 66, 69);

-- 4.
select * from tb_estudantes where mediaFinal > 70;

-- 5.
select * from tb_estudantes where mediaFinal < 70;

-- 6. 
UPDATE tb_estudantes SET mediaFinal = 70 WHERE id = 8;

commit;