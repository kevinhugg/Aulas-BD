create database cd_b;

use cd_b;

create table empresa(
	id_empresa int not null primary key,
    telefone_empresa varchar(14) not null,
    endereco_empresa varchar(70) not null,
	lucros int not null,
	prejuizos int not null,
	qtde_projetos int not null
);

create table departamento(
	id_departamento int not null primary key,
    telefone_departamento varchar(14) not null,
    endereco_departamento varchar(70) not null,
    qtd_funcionarios int not null,
    
    empresa_fk int not null,
    foreign key (empresa_fk) references empresa(id_empresa)
);

create table projetos(
	id_projetos int not null,
    nome_projetos varchar(50) not null,
    tema_projetos varchar(50) not null,
    qtd_func_pprojetos int not null,
    
    empresa_fk int not  null,
    foreign key (empresa_fk) references empresa(id_empresa),
    
    departamento_fk int not null,
    foreign key (departamento_fk) references departamento(id_departamento)
);

create table funcionario(
	id_funcionario int not null,
    nome_funcionario varchar(50) not null,
    idade_funcionario int not null,
    telefone_funcionario varchar(14) not null,
    endereco_funcionario varchar(70) not null,
    turno varchar(70) not null,
    tempo int not null,
    
    departamento_fk int not null,
    foreign key (departamento_fk) references departamento(id_departamento)
);

insert into empresa(id_empresa, telefone_empresa, endereco_empresa, lucros, prejuizos,  qtde_projetos)
values(001, '11 35493-9844', 'Rua Camargo André N°302', 100000, 500000, 30);

insert into departamento(id_departamento, telefone_departamento, endereco_departamento, qtd_funcionarios, empresa_fk)
values(010, '11 56897-6634', 'Rua Camargo André N°302', 15, 001);

insert into projetos(id_projetos, nome_projetos , tema_projetos, qtd_func_pprojetos, empresa_fk, departamento_fk)
values(100, 'Prejeto integração no mundo', 'integração de funcionários', 2, 001, 010);

insert into funcionario(id_funcionario, nome_funcionario, idade_funcionario, telefone_funcionario, endereco_funcionario, turno, tempo, departamento_fk)
values(007, 'Joice Soares', 16, '11 65987-6352', 'Rua Antigos Mares N°400', 'Tarde', 05, 010);

select * from empresa;
select * from departamento;
select * from projetos;
select * from funcionario;