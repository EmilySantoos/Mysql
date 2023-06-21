create database escola;
use escola;

create table tb_alunos(
id_alunos bigint auto_increment,
nome_alunos varchar(255) not null,
serie varchar(30)not null,
materia varchar (255) not null,
nota DECIMAL(3,1)not null,
primary key(id_alunos)
);

INSERT INTO tb_alunos(nome_alunos,serie,materia,nota)
values("Vitoria Martins","1ª Série ","Geografia",9.3);
INSERT INTO tb_alunos(nome_alunos,serie,materia,nota)
values("Vitor Menezes","2ª Série ","Historia",7.3);
INSERT INTO tb_alunos(nome_alunos,serie,materia,nota)
values("Alice Alencar","3ª Série ","PortuguêS",10.0);
INSERT INTO tb_alunos(nome_alunos,serie,materia,nota)
values("Marcos da Silva","3ª Série ","Matemática",3.5);
INSERT INTO tb_alunos(nome_alunos,serie,materia,nota)
values("David Pereira","3ª Série ","InglêS",10.0);
INSERT INTO tb_alunos(nome_alunos,serie,materia,nota)
values("Wilian dos Santos ","3ª Série ","Frances",9.9);
INSERT INTO tb_alunos(nome_alunos,serie,materia,nota)
values("Debora da Silva","2ª Série ","Geografia",1.3);
INSERT INTO tb_alunos(nome_alunos,serie,materia,nota)
values("Lucas Ferraz","1ª Série ","Matemática",10.0);
INSERT INTO tb_alunos(nome_alunos,serie,materia,nota)
values("Marina da Silva","4ª Série ","InglêS",4.5);
INSERT INTO tb_alunos(nome_alunos,serie,materia,nota)
values("Nicolas Perez","4ª Série ","Frances",8.3);

select * from tb_alunos;

SELECT * FROM tb_alunos WHERE nota > 7.0;

SELECT * FROM tb_alunos WHERE nota < 7.0;

UPDATE tb_alunos SET nota = 8.0 WHERE id_alunos = 7;
SELECT * FROM tb_alunos  WHERE id_alunos = 8;