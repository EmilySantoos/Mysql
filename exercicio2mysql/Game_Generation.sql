create database db_generation_game_online;
use db_generation_game_online;

CREATE TABLE tb_classes (
    id_classe BIGINT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    fases_doJogo VARCHAR(255),
    PRIMARY KEY (id_classe)
);

CREATE TABLE tb_personagens (
    id_personagens BIGINT AUTO_INCREMENT,
    nome_personagens VARCHAR(300) NOT NULL,
    nivel INT NOT NULL,
    habilidades VARCHAR(300),
    poder_ataque INT NOT NULL,
    poder_defesa DECIMAL(9,3) NOT NULL,      
    id_classe BIGINT NOT NULL,
    PRIMARY KEY (id_personagens),
    FOREIGN KEY (id_classe) REFERENCES tb_classes(id_classe)
);


INSERT INTO tb_classes(nome,fases_doJogo)
values("Mario bros","1ª fase");
INSERT INTO tb_classes(nome,fases_doJogo)
values(" Super Mario ","3ª fase");
INSERT INTO tb_classes(nome,fases_doJogo)
values(" Super Mario world ","5ª fase");
INSERT INTO tb_classes(nome,fases_doJogo)
values("Uno","10ª fase");
INSERT INTO tb_classes(nome,fases_doJogo)
values("Minecraft.","27ª fase");
INSERT INTO tb_classes(nome,fases_doJogo)
values("Call of Duty Mobile","6ª fase");
INSERT INTO tb_classes(nome,fases_doJogo)
values("Among Us","4ª fase");
INSERT INTO tb_classes(nome,fases_doJogo)
values("Fortnite","2ª fase");

select * from tb_classes;

INSERT INTO tb_personagens(nome_personagens,nivel,habilidades,poder_ataque,poder_defesa,id_classe)
values("Mario ",2 ,"pular",10000,1900.87,2);tb_categorias
INSERT INTO tb_personagens(nome_personagens,nivel,habilidades,poder_ataque,poder_defesa,id_classe)
values("Luigid ",5 ,"correr",40000,20000.00,3);
INSERT INTO tb_personagens(nome_personagens,nivel,habilidades,poder_ataque,poder_defesa,id_classe)
values("Princesa Peach ",7 ,"flutua",50000,3000.00,2);
INSERT INTO tb_personagens(nome_personagens,nivel,habilidades,poder_ataque,poder_defesa,id_classe)
values("Bowser",5 ,"vilão",1000,1000.00,5);
INSERT INTO tb_personagens(nome_personagens,nivel,habilidades,poder_ataque,poder_defesa,id_classe)
values("Toad ",6 ,"super força",90000,5000.00,1);
INSERT INTO tb_personagens(nome_personagens,nivel,habilidades,poder_ataque,poder_defesa,id_classe)
values("Donkey Kong ",8 ,"força",800,18000.00,1);
INSERT INTO tb_personagens(nome_personagens,nivel,habilidades,poder_ataque,poder_defesa,id_classe)
values("Yoshi ",6 ,"ajudar",500,7000.00,4);
INSERT INTO tb_personagens(nome_personagens,nivel,habilidades,poder_ataque,poder_defesa,id_classe)
values("Cranky Kong ",3 ,"atrapalhar",9000,900.00,3);
INSERT INTO tb_personagens(nome_personagens,nivel,habilidades,poder_ataque,poder_defesa,id_classe)
values("Super Mario ",4 ,"força",7000,3000.00,4);
INSERT INTO tb_personagens(nome_personagens,nivel,habilidades,poder_ataque,poder_defesa,id_classe)
values("Kamek ",8,"feiticeiro",60000,4000.00,6);


select * from tb_personagens;

SELECT * FROM tb_personagens WHERE poder_ataque > 2000;
SELECT * FROM tb_personagens WHERE poder_defesa BETWEEN 1000 AND 2000;
SELECT * FROM tb_personagens WHERE nome_personagens LIKE '%C%';

SELECT tb_personagens.nome_personagens, tb_personagens.nivel, tb_personagens.poder_ataque, tb_personagens.poder_defesa, tb_classes.nome AS classe, tb_classes.fases_doJogo
FROM tb_personagens
INNER JOIN tb_classes ON tb_personagens.id_classe = tb_classes.id_classe;

SELECT tb_personagens.nome_personagens, tb_personagens.nivel, tb_personagens.poder_ataque, tb_personagens.poder_defesa, tb_classes.nome AS classe, tb_classes.fases_doJogo
FROM tb_personagens
INNER JOIN tb_classes ON tb_personagens.id_classe = tb_classes.id_classe
WHERE tb_classes.nome = 'Mario Bros';