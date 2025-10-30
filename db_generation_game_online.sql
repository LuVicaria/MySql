CREATE DATABASE db_generation_game_online;
USE db_generation_game_online;

CREATE TABLE tb_classes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    descricao TEXT
);

CREATE TABLE tb_personagens (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    poder_ataque INT,
    poder_defesa INT,
    nivel INT,
    classe_id INT,
    FOREIGN KEY (classe_id) REFERENCES tb_classes(id)
);

INSERT INTO tb_classes (nome, descricao) VALUES
('Arqueiro', 'Especialista em ataques à distância'),
('Guerreiro', 'Forte em combate corpo a corpo'),
('Mago', 'Utiliza magias poderosas'),
('Assassino', 'Ataques furtivos e críticos'),
('Tanque', 'Alta resistência e defesa');

INSERT INTO tb_personagens (nome, poder_ataque, poder_defesa, nivel, classe_id) VALUES
('Cassandra', 2500, 1200, 10, 1),
('Thorgar', 1800, 2200, 12, 2),
('Merlin', 3000, 800, 15, 3),
('Shadow', 2700, 900, 11, 4),
('Brutus', 1500, 2500, 13, 5),
('Celeste', 2100, 1100, 9, 3),
('Craven', 2300, 1300, 10, 4),
('Luna', 1900, 1700, 8, 1);

SELECT * FROM tb_personagens
WHERE poder_ataque > 2000;

SELECT * FROM tb_personagens
WHERE poder_defesa BETWEEN 1000 AND 2000;

SELECT * FROM tb_personagens
WHERE nome LIKE '%C%';

SELECT p.*, c.nome AS classe_nome
FROM tb_personagens p
INNER JOIN tb_classes c ON p.classe_id = c.id;

SELECT p.*, c.nome AS classe_nome
FROM tb_personagens p
INNER JOIN tb_classes c ON p.classe_id = c.id
WHERE c.nome = 'Arqueiro';


