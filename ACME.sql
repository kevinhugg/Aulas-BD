create database cd_b;

use cd_b;

create table empresa (
	id_empresa int not null primary key,
    nome_empresa varchar(50) not null,
    telefone_empresa varchar(14) not null
);


create table departamento (
	id_departamento int not null primary key,
    nome_departamento varchar(30) not null,
    telefone_departamento varchar(14) not null,
    qtde_funcionarios int not null,
    projetos varchar(70) not null,
    
    empresa_fk int not null,
    foreign key (empresa_fk) references empresa(id_empresa)
);

create table diretoria (
	id_diretoria int not null primary key,
    telefone_diretoria varchar(14) not null,
	lucro_empresa int not null,
    pejuizo_empresa int not null,
    
    departamento_fk  int not null,
    foreign key (departamento_fk) references departamento(id_departamento)
);

create table funcionario(
	id_funcionario int not null primary key,
    nome_funcionario varchar(50) not null,
    idade_funcionario int not null,
    telefone_funcionario varchar(14) not null,
    endereco_funcionario varchar(50) not null,
    turno varchar(50) not null,
    tempo_turno int not null,

    departamento_fk int not null,
    foreign key (departamento_fk) references departamento(id_departamento)
);

create table dependente(
	id_dependente int not null,
    nome_dependente varchar(50) not null,
    idade_dependente int not null,
    telefone_dependente varchar(14) not null,
    endereco_dependente varchar(50) not null,
    
    funcionario_fk int not null,
    foreign key (funcionario_fk) references funcionario(id_funcionario),
    
    departamento_fk int not null,
    foreign key (departamento_fk) references departamento(id_departamento)
);

insert into empresa(id_empresa, nome_empresa, telefone_empresa)
values(001, 'Cacos enterprise', '11 99782-8492');

insert into departamento(id_departamento, nome_departamento, telefone_departamento, qtde_funcionarios, projetos, empresa_fk)
values(010, 'Financiamentos', '11 20498-3975', 030, 'projeto escalação manual de equipes', 001);

insert into diretoria(id_diretoria, telefone_diretoria, lucro_empresa, pejuizo_empresa, departamento_fk)
values(100, '11 20258-9871', 100000, 000, 010);

insert into funcionario(id_funcionario, nome_funcionario, idade_funcionario, telefone_funcionario, endereco_funcionario, turno, tempo_turno, departamento_fk)
values(007, 'Kevin Martins da Silva', 16, '11 94563-8624', 'Rua dos Jardin Uivantes n°101', 'Tarde', 06, 010);

insert into dependente(id_dependente, nome_dependente, idade_dependente, telefone_dependente, endereco_dependente, funcionario_fk, departamento_fk)
values(001, 'Roberto Carlos', 02, '11 35493-9844', 'Rua dos Jardin Uivantes n°101', 007, 010);


select * from empresa;
select * from departamento;
select * from diretoria;
select * from funcionario;
select * from dependente;