-- 1. 
CREATE DATABASE db_ec001;
USE db_ec001;

-- 2.
CREATE TABLE tb_produtos(
	id bigint AUTO_INCREMENT, 
    nome_produto varchar(255) NOT NULL,
    categoria_produto varchar(15),
    preco decimal(6,2) NOT NULL,
    qtd_estoque int,
    avaliacao_produto decimal(2,1),
    PRIMARY KEY(id)
);

-- 3
INSERT INTO tb_produtos (nome_produto, categoria_produto, preco, qtd_estoque, avaliacao_produto) VALUES
('Mochila Explorer', 'Acessórios', 199.90, 25, 4.7),
('Tênis RunFast', 'Calçados', 299.90, 40, 4.5),
('Camiseta TechWear', 'Roupas', 89.90, 100, 4.2),
('Fone SoundPro', 'Eletrônicos', 249.90, 30, 4.8),
('Relógio SmartFit', 'Eletrônicos', 499.90, 15, 4.6),
('Jaqueta WindStop', 'Roupas', 349.90, 20, 4.4),
('Bolsa TrendyBag', 'Acessórios', 179.90, 35, 4.3),
('Óculos Solar Lux', 'Acessórios', 149.90, 50, 4.5);

-- 4.
select * from tb_produtos where preco > 500;

-- 5.
select * from tb_produtos where preco < 500;

-- 6. 
UPDATE tb_produtos SET preco = 501.00 WHERE id = 3;

commit;
