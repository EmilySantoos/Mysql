CREATE DATABASE db_Ecommerce;
use db_Ecommerce;

create table tb_Joalheiria(
id_joia bigint auto_increment,
marca varchar(255) not null,
descricao VARCHAR(200) NOT NULL,
acessorio varchar (255) not null,
preco decimal(10,2) not null,
 PRIMARY KEY(id_joia)
);

INSERT INTO tb_joalheiria(marca,descricao,acessorio,preco)
values("Vivara","Ouro 18k ","Anel Ouro Amarelo Ouro Branco Ouro Rosé e Diamantes",5609.00);
INSERT INTO tb_joalheiria(marca,descricao,acessorio,preco)
values("Vivara","Ouro Branco/Ouro Amarelo 18k ","Brinco Ouro Amarelo Ouro Branco Ouro Rosé e Diamantes",7709.00);
INSERT INTO tb_joalheiria(marca,descricao,acessorio,preco)
values("Vivara"," Prata/pedra com safira ","Anel Elos Prata e Safiras",409.00);
INSERT INTO tb_joalheiria(marca,descricao,acessorio,preco)
values("Vivara","Ouro Branco ","Solitário Ouro Branco Água Marinha e 20,8 Pontos de Diamantes",8908.00);
INSERT INTO tb_joalheiria(marca,descricao,acessorio,preco)
values("Hugo Boss","Aço  ","Relógio Boss Masculino Aço",499.50);
INSERT INTO tb_joalheiria(marca,descricao,acessorio,preco)
values("Olivia Burton"," Aço  ","Relógio Olivia Burton Feminino Aço",399.00);
INSERT INTO tb_joalheiria(marca,descricao,acessorio,preco)
values("Lacoste"," Prata ","Relógio Lacoste Feminino Borracha Rosa",459.00);
INSERT INTO tb_joalheiria(marca,descricao,acessorio,preco)
values("Tommy Hilfiger"," Ouro 18k ","Colar Tommy Hilfiger Feminino Pedras Metal Dourado",899.00);
INSERT INTO tb_joalheiria(marca,descricao,acessorio,preco)
values("Vivara"," Prata 925 ","Kit Aliança Life Quadrada Prata",299.00);
INSERT INTO tb_joalheiria(marca,descricao,acessorio,preco)
values("Vivara"," Ouro Branco e Diamantes ","Aliança Ouro Branco e Diamantes",9299.00);

select * from tb_Joalheiria;

SELECT * FROM tb_Joalheiria WHERE preco > 500;

SELECT * FROM tb_Joalheiria WHERE preco < 500;

UPDATE tb_Joalheiria SET preco = 3599.00 WHERE id_Joia = 8;
SELECT * FROM tb_Joalheiria  WHERE id_Joia = 8;