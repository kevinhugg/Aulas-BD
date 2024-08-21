/*Drop database apaga a base de dados*/
drop database cd_b;

/*Drop table apga a tabela específica*/
drop table cantor;

/* Create database é utilizado para criação de base de dados */
create database cd_b;

/* USE é utilizado para utilizar uma base de dados específica */
use cd_b;

/* Create table é utilizado para criar uma tabela*/
create table musica(
	id_musica int not null primary key,
    duracao int not null,
    titulo varchar(50) not null
);

drop table musica;

create table cantor(
	id_cantor int not null,
    nome varchar (50) not null,
    nome_artistico varchar(50) not null,
    idade int,
    constraint Pk_cantor primary key(id_cantor)
);

create table musica(
	id_musica int not null primary key,
	titulo varchar(50) not null,
	duração int not null,
	id_cantor int not null  /*foreign key*/,
	/*OU*/
	Foreign key (id_cantor) references cantor(id_cantor)
);

insert into cantor(id_cantor, nome, nome_artistico, idade)
values(2, 'Wagner', 'Gusmão', 48);

insert into cantor(id_cantor, nome, nome_artistico, idade)/*Tem q ter sempre antes*/
values(1, 'Kevin', 'Martins', 16);

insert into musica (id_musica, duração, titulo, id_cantor)
values(1, 210, 'ABC', 2);

insert into musica (id_musica, duração, titulo, id_cantor)
values(2, 400, 'KAA', 1);

select * from cantor;
select * from musica;