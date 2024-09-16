create database livro_b;
#drop database livro_b;
use livro_b;

create table editora(
	id_editora int auto_increment primary key,
    nome_editora varchar(50) not null,
    nome_contato varchar(50) not null,
    telefone varchar(14) not null,
    email varchar(50) not null
);

create table livro(
	id_livro int auto_increment primary key,
    titulo varchar(50) not null,
	genero varchar(50) not null,
    publicacao int not null,
    pagina int,
    sinopse varchar(200),
    id_editora int,
    foreign key (id_editora) references editora(id_editora)
);

create table autor(
	id_autor int auto_increment primary key,
    nome varchar(50) not null        
);

create table livro_autor(
	id_livro_autor int auto_increment primary key,
    id_livro int not null,
    id_autor int not null,
    foreign key(id_livro) references livro (id_livro),
	foreign key(id_autor) references autor(id_autor)
);

insert into autor(nome) values ('Wagner Gusmão');
insert into autor(nome) values ('Alberto Lima');
insert into autor(nome) values ('Barbara Fonseca');
insert into autor(nome) values ('Camila Alves');
insert into autor(nome) values ('João de Alencar');
insert into autor(nome) values ('Mariana Foster');
insert into autor(nome) values ('Hélio Lima');
insert into autor(nome) values ('Maria Graça Santos');
insert into autor(nome) values ('Danilo Soares');
insert into autor(nome) values ('Vanessa Campos');

insert into editora (nome_editora, nome_contato, telefone, email)
values ('WG S/A', 'Gusmão', '(11)98765-4321', 'gusmao@gmail.com');
insert into editora (nome_editora, nome_contato, telefone, email)
values ('Wagner S/A', 'Silva', '(11)12345-6789', 'silva@wagner.com');
insert into editora (nome_editora, nome_contato, telefone, email)
values ('Gusmão S/A', 'Wagner', '(11)98765-1234', 'wagner@gusmao.com');
insert into editora (nome_editora, nome_contato, telefone, email)
values ('Silva e Silva', 'Santos', '(11)56789-4321', 'santos@silvaesilva.com');
insert into editora (nome_editora, nome_contato, telefone, email)
values ('Camargo Correia', 'José', '(11)12345-6789', 'jose@camargocorreia.com');

insert into livro (titulo, genero, publicacao, pagina, sinopse, id_editora)
values('Banco de Dados', 'Técnico', '2022', 456, 'Banco de Dados de A a Z', 1);
insert into livro (titulo, genero, publicacao, pagina, sinopse, id_editora)
values('O Pequeno Príncipe', 'Literatura', '2000', 343, 'A História do Príncipe', 2);
insert into livro (titulo, genero, publicacao, pagina, sinopse, id_editora)
values('JavaScript', 'Técnico', '2012', 222, 'JavaScript', 3);
insert into livro (titulo, genero, publicacao, pagina, sinopse, id_editora)
values('O monge e o executivo', 'Motivacional', '2011', 234, 'Como crescer na vida', 4);
insert into livro (titulo, genero, publicacao, pagina, sinopse, id_editora)
values('Arte da Guerra', 'Juvenil', '2005', 156, 'Estratégia de vida', 1);
insert into livro (titulo, genero, publicacao, pagina, sinopse, id_editora)
values('Cavalo de Troia 1', 'Ficção Científica', '2002', 450, 'Viajem no Tempo', 2);
insert into livro (titulo, genero, publicacao, pagina, sinopse, id_editora)
values('Cavalo de Troia 2', 'Ficção Científica', '2004', 654, 'Viajem no Tempo', 3);
insert into livro (titulo, genero, publicacao, pagina, sinopse, id_editora)
values('Chapeuzinho Vermelho', 'Infantil', '2009', 245, 'Conto Infantil', 4);
insert into livro (titulo, genero, publicacao, pagina, sinopse, id_editora)
values('Chapeuzinho Vermelho', 'Infantil', '2009', 245, 'Conto Infantil', 4);

insert into livro_autor(id_autor, id_livro) values (1,1);
insert into livro_autor(id_autor, id_livro) values (1,2);
insert into livro_autor(id_autor, id_livro) values (4,2);
insert into livro_autor(id_autor, id_livro) values (5,3);
insert into livro_autor(id_autor, id_livro) values (2,4);
insert into livro_autor(id_autor, id_livro) values (3,4);
insert into livro_autor(id_autor, id_livro) values (6,5);
insert into livro_autor(id_autor, id_livro) values (7,6);
insert into livro_autor(id_autor, id_livro) values (8,6);
insert into livro_autor(id_autor, id_livro) values (9,7);
insert into livro_autor(id_autor, id_livro) values (10,7);
#insert into livro_autor(id_autor, id_livro) values (11,8);
#insert into livro_autor(id_autor, id_livro) values (12,8);
#insert into livro_autor(id_autor, id_livro) values (13,5);
#insert into livro_autor(id_autor, id_livro) values (14,7);
#insert into livro_autor(id_autor, id_livro) values (15,8);
#insert into livro_autor(id_autor, id_livro) values (15,5);
#insert into livro_autor(id_autor, id_livro) values (13,3);
#insert into livro_autor(id_autor, id_livro) values (15,4);

select * from editora;
select * from autor;
select * from livro;
select * from livro_autor;


/*Tipos de select*/

/*genérica è "*" chama todos os campos da tabela mencionada*/
/* O comando de busca é dividido assim:
	1° SELECT - o comando que será executado
    2° * - Representa os campos que serao retornados "O * no caso apresenta todos da tabela"
    3° FROM - parte do comando select
    4° LIVRO - O nome da tabela que esta sendo buscada 
    5° WHERE - parte do comando, onde coloca uma condiçãoptimeze
    6° ID_LIVRO = 7 - é a condição para realizar a pesquisa*/
    
select * from livro where id_livro = 7;   
 
select nome_editora, nome_contato
from Editora
where id_editora = 5;

select * from livro;

select* from Editora;

select * from autor;

select * from livro_autor;

/*Campos específicos*/
/*Assim podemos controlar a ordem do que aparece*/
select id_livro, titulo from livro;
select id_livro, genero, titulo from livro;
select genero, titulo, id_livro from livro;

/*Na ecxecução do comando select podemos adicionar os operadores
logico, isso é, AND e OR*/

select id_livro, titulo, genero
from livro
where id_livro >= 5
and id_livrop <= 10;

select titulo from livro where genero = 'infantil' or genero = 'técnico';

SELECT 
    id_livro, titulo
FROM
    livro
WHERE
    genero = 'infantil'
        OR (genero = 'técnico' AND id_editora = 2);




/*
oque usa para fazer a pesquisa é o 'LIKE'
Busca na tabela oque COMEÇA com a letra indicada ANTES da porcentagem "%"
Busca na tabela oque TERMINA com a letra indicada DEPOIS da porcentagem "%"
Busca na tabela quais palavras tem no MEIO da palavra entre as porcentagens "%%"
*/
/*EXEMPLO:*/
select *from editora;

select id_editora, nome_editora from editora where nome_editora LIKE 'a%';
select id_editora, nome_editora from editora where nome_editora LIKE 'w%';
select id_editora, nome_editora from editora where nome_editora LIKE '%a';
select id_editora, nome_editora from editora where nome_editora LIKE '%ia';
select id_editora, nome_editora from editora where nome_editora LIKE '%ne%';


/*
O upper() faz o nome aparecer em CAPSLOCK
*/
select * from autor;
select id_autor, nome from autor where nome LIKE '%ne%';

/*	Neste caso ele pede para que o nome apareça em CPL, que começe com Maria e tenha em algum lugar Santos	*/
select id_autor, upper(nome) from autor where nome LIKE 'Maria %Santos%';

/*ORDER BY - Permite realizar uma pesquisa ordenando de crescente ou decrescente*/

/*Select em ordem crescente*/
select id_autor, nome from autor order by nome;
select id_livro, titulo from livro order by titulo;

/*Select na ordem decrescente*/
select id_autor, nome from autor order by id_autor desc;
select id_livro, titulo, genero from livro order by genero desc;




/*MONTANDO SELECT MAIS COMPLEXA COM O GUSMI*/
/*
Essa estrutura faz com que a tabela buscada seja selecionada e depois do ponto vem o campo desejado EXEMPLO: tabela.campo
E faz isso quando o id da editora na tabela livro for igual o da editora na tabela editora.
Se o campo de id editora estiver vazia na tabela livro este livro não aparecerá.
*/
select * from livro;
select livro.id_livro, livro.titulo, editora.nome_editora
from livro, editora
where livro.id_editora = editora.id_editora;

/*
	MAIS SIMPLES
    
    Com apenas uma letra ou conjunto de caracteres do nome da tabela se da um apelido para buscar
*/
select L.id_livro, L.titulo, E.nome_editora, E.id_editora
from livro as L, editora E /*	No MY as duas formas funcionam (com as ou sem)	*/
where L.id_editora = E.id_editora;

/*
		
*/
select L.id_livro, L.titulo, E.nome_editora, E.id_editora
from livro as L, editora E
where L.id_editora = E.id_editora
and L.genero = 'infantil';

























