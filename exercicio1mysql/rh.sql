CREATE DATABASE db_RecursosHumanos;
USE db_RecursosHumanos;

create table tabela_colaboradores(
	id_colaborador bigint auto_increment,
	nome_colaborador varchar(255)not null,
    idade int,
    cargo varchar (100),
    salario decimal(6,2) not null,
    anos_colaboracao int,
    PRIMARY KEY(id_colaborador)
);

INSERT INTO tabela_colaboradores(nome_colaborador,idade,cargo,salario,anos_colaboracao)
values("Marcos Antonio Ferraz",25,"estagiario",3000.00,2.5);
INSERT INTO tabela_colaboradores(nome_colaborador,idade,cargo,salario,anos_colaboracao)
values("Marina Perez",28,"estagiaria de TI",6000.00,3.0);
INSERT INTO tabela_colaboradores(nome_colaborador,idade,cargo,salario,anos_colaboracao)
values("Vinicius Alencar",45,"vice-presidente",2000.00,10.5);
INSERT INTO tabela_colaboradores(nome_colaborador,idade,cargo,salario,anos_colaboracao)
values("Clara Martins",55,"CEO",2500.00,15.0);
INSERT INTO tabela_colaboradores(nome_colaborador,idade,cargo,salario,anos_colaboracao)
values("Juliana Ramos",40,"Presidente",5000.00,25.0);
INSERT INTO tabela_colaboradores(nome_colaborador,idade,cargo,salario,anos_colaboracao)
values("Mateus ferraz",35,"Gerente",1000.00,4.0);
INSERT INTO tabela_colaboradores(nome_colaborador,idade,cargo,salario,anos_colaboracao)
values("Erick Allan",40,"analista",1000.00,2.5);
INSERT INTO tabela_colaboradores(nome_colaborador,idade,cargo,salario,anos_colaboracao)
values("Augusto silva",18,"auxiliar administrativo",2000.00,1.3);

select * from tabela_colaboradores;


select * from tabela_colaboradores where salario > 2000;

select * from tabela_colaboradores where salario < 2000;

UPDATE tabela_colaboradores SET salario = 4000.00 WHERE id_colaborador = 7;
SELECT * FROM tabela_colaboradores WHERE id_colaborador= 7;