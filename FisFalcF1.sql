create database F1;
drop database F1;
use F1;

create table PONTUACAO_GPs(
pontuacao int default 0,
posicao_final int default 0,
FK_PAISES_GPs_id_pais int not null,
FK_PAISES_GPs_id_gp int not null,
FK_PILOTOS_id_piloto int not null
);

create table PILOTOS(
id_piloto int primary key auto_increment,
nome_piloto varchar(50) not null,
data_nascimento date,
FK_EQUIPES_id_equipe int not null,
FK_PAISES_GPs_id_pais int not null,
FK_PAISES_GPs_id_gp int not null
);

create table CAMPEONATOS(
nome_oficial varchar(50) not null,
id_campeonato int primary key auto_increment,
ano year check(ano >= 1950)
);

create table EQUIPES(
nome_equipe varchar(50) not null unique,
id_equipe int primary key auto_increment,
FK_PAISES_GPs_id_pais int not null
);

create table PAISES_GPs(
nome_pais varchar(50) not null unique,
id_pais int primary key auto_increment,
id_gp int unique not null,
nome_gp varchar(50),
data_realizacao date unique,
FK_CAMPEONATOS_id_campeonato int not null
);

alter table PONTUACAO_GPs
add foreign key (FK_PAISES_GPs_id_pais)
references PAISES_GPs (id_pais);

alter table PONTUACAO_GPs
add foreign key (FK_PAISES_GPs_id_gp)
references PAISES_GPs (id_gp);

alter table PONTUACAO_GPs
add foreign key (FK_PILOTOS_id_piloto)
references PILOTOS (id_piloto);

alter table PILOTOS
add foreign key (FK_EQUIPES_id_equipe)
references EQUIPES (id_equipe);

alter table PILOTOS
add foreign key (FK_PAISES_GPs_id_pais)
references PAISES_GPs (id_pais);

alter table PILOTOS
add foreign key (FK_PAISES_GPs_id_gp)
references PAISES_GPs (id_gp);

alter table EQUIPES
add foreign key (FK_PAISES_GPs_id_pais)
references PAISES_GPs (id_pais);

alter table PAISES_GPs
add foreign key (FK_CAMPEONATOS_id_campeonato)
references CAMPEONATOS (id_campeonato);

insert into CAMPEONATOS(nome_oficial, ano)
values
('Campeonato Mundial de F1', '2025'),
('Campeonato Mundial de F1', '2024'),
('Campeonato Mundial de F1', '2023'),
('Campeonato Mundial de F1', '2022'),
('Campeonato Mundial de F1', '2021'),
('Campeonato Mundial de F1', '2020'),
('Campeonato Mundial de F1', '2019'),
('Campeonato Mundial de F1', '2018'),
('Campeonato Mundial de F1', '2017'),
('Campeonato Mundial de F1', '2016');

insert into PAISES_GPs (nome_pais, id_gp, nome_gp, data_realizacao, FK_CAMPEONATOS_id_campeonato)
values
('França', 1, 'Grande Prêmio do França', '2025-01-10', 1),
('Inglaterra', 2, 'Grande Prêmio da Inglaterra', '2025-01-25', 1),
('Malásia', 3, 'Grande Prêmio da Malásia', '2025-02-15', 1),
('EUA', 4, 'Grande Prêmio dos EUA', '2025-03-05', 1),
('Austrália', 5, 'Grande Prêmio da Austrália', '2025-03-24', 1),
('Itália', 6, 'Grande Prêmio da Itália', '2025-04-16', 1),
('Rússia', 7, 'Grande Prêmio do Rússia', '2025-05-01', 1),
('Brasil', 8, 'Grande Prêmio da Brasil', '2025-05-17', 1),
('Alemanha', 9, 'Grande Prêmio da Alemanha', '2025-05-30', 1),
('Japão', 10, 'Grande Prêmio da Japão','2025-06-13', 1);

insert into EQUIPES (nome_equipe, FK_PAISES_GPs_id_pais)
values
('Ferrari', 6),
('Mercedes', 9),
('Alpine', 1),
('Sauber', 8),
('Williams', 2),
('Racing Bulls', 7),
('Red Bull', 5),
('Mclaren', 4),
('Haas', 10),
('Aston Martin', 3);

insert into PILOTOS (nome_piloto, data_nascimento, FK_EQUIPES_id_equipe, FK_PAISES_GPs_id_pais, FK_PAISES_GPs_id_gp)
values
('Sandra Melo', '1988-11-05', 7, 10, 1),
('Juliana Brito', '1986-09-24', 4, 9, 1),
('Miguel Dias', '2000-07-07', 1, 8, 1),
('Antônio Falcão', '1986-09-16', 9, 7, 1),
('Fernando Muniz', '1984-11-22', 6, 6, 1),
('Iracema Brito', '1988-08-05', 3, 5, 1),
('João Lima', '1984-10-23', 8, 4, 1),
('Charles Melo', '1984-06-13', 2, 3, 1),
('Alexandre José', '1985-06-28', 10, 2, 1),
('Sandro Guerra', '1982-12-15', 5, 1, 1);

insert into PONTUACAO_GPs (pontuacao, posicao_final, FK_PAISES_GPs_id_pais, FK_PAISES_GPs_id_gp, FK_PILOTOS_id_piloto)
values
(25, 1, 1, 1, 1),
(18, 2, 1, 1, 8),
(15, 3, 1, 1, 2),
(12, 4, 1, 1, 6),
(10, 5, 1, 1, 3),
(8, 6, 1, 1, 7),
(6, 7, 1, 1, 5),
(4, 8, 1, 1, 10),
(2, 9, 1, 1, 4),
(1, 10, 1, 1,9);

/*
delete from PONTUACAO_GPs
where FK_PILOTOS_id_piloto = 9;
delete from PILOTOS
where id_piloto = 9;

update PILOTOS
set nome_piloto = 'Renan Beserra', data_nascimento = '1999-04-09' 
where id_piloto = 7;

select * from PILOTOS
order by data_nascimento desc;

select nome_piloto, data_nascimento, FK_EQUIPES_id_equipe
from PILOTOS
where data_nascimento < '2000-01-01' AND FK_EQUIPES_id_equipe = 4;

select
    P.nome_piloto AS 'Piloto',
    E.nome_equipe AS 'Equipe'
from
    PILOTOS P
inner join
    EQUIPES E on P.FK_EQUIPES_id_equipe = E.id_equipe
where
    P.nome_piloto like '%Brito%';

select
    P.nome_piloto as 'Piloto',
    E.nome_equipe as 'Equipe'
from
    PILOTOS P
inner join
    EQUIPES E on P.FK_EQUIPES_id_equipe = E.id_equipe
where
    P.nome_piloto not like '%Brito%';
*/