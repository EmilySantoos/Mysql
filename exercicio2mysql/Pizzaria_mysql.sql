create database db_pizzaria_legal;
use db_pizzaria_legal;

create table tb_categorias(
 id_categoria BIGINT AUTO_INCREMENT,
    sabor_pizza VARCHAR(300) NOT NULL,
    quantidade int not null,
    refrigerante varchar (300),
    PRIMARY KEY (id_categoria)
);

CREATE TABLE tb_pizzas (
    id_pizzas BIGINT AUTO_INCREMENT,
    nome_pizza VARCHAR(300) NOT NULL,
    descricao VARCHAR(300),
    valor_entrega INT NOT NULL,
    valor DECIMAL(5,3) NOT NULL,      
    id_categoria BIGINT NOT NULL,
    PRIMARY KEY (id_pizzas),
    FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id_categoria)
);

INSERT INTO tb_categorias(sabor_pizza,quantidade,refrigerante)
values("Mussarela",2,"Coca-cola");
INSERT INTO tb_categorias(sabor_pizza,quantidade,refrigerante)
values("Calabresa ",3,"Fanta-uva");
INSERT INTO tb_categorias(sabor_pizza,quantidade,refrigerante)
values("Frango com Catupiry",1,"Guaraná");
INSERT INTO tb_categorias(sabor_pizza,quantidade,refrigerante)
values("Chocolate",3,"Coca-cola");
INSERT INTO tb_categorias(sabor_pizza,quantidade,refrigerante)
values("Peperroni",3,"Fanta-laranja");
INSERT INTO tb_categorias(sabor_pizza,quantidade,refrigerante)
values("Camarão",5,"coca-cola");
INSERT INTO tb_categorias(sabor_pizza,quantidade,refrigerante)
values("Quatro Queijo",1,"Guaraná");
INSERT INTO tb_categorias(sabor_pizza,quantidade,refrigerante)
values("Brigadeiro",3,"coca-cola");
INSERT INTO tb_categorias(sabor_pizza,quantidade,refrigerante)
values("Queijo com goiabada",1,"Coca-cola");

select * from tb_categorias;

INSERT INTO tb_pizzas(nome_pizza,descricao,valor_entrega ,valor,id_categoria)
values("Mussarela ","queijo com borda recheada",10,35.99,1);
INSERT INTO tb_pizzas(nome_pizza,descricao,valor_entrega ,valor,id_categoria)
values("Calabresa","calabresa ralada com borda recheada",8,33.99,2);
INSERT INTO tb_pizzas(nome_pizza,descricao,valor_entrega ,valor,id_categoria)
values("Frango ","frango com borda de queijo",5,45.99,5);
INSERT INTO tb_pizzas(nome_pizza,descricao,valor_entrega ,valor,id_categoria)
values("Chocolate  ","Chocolate com morango",4,65.99,5);
INSERT INTO tb_pizzas(nome_pizza,descricao,valor_entrega ,valor,id_categoria)
values("Frango ","frango com borda de queijo",5,45.99,5);