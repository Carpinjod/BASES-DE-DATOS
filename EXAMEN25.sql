CREATE SCHEMA EXAMEN2025;
USE EXAMEN2025;
CREATE TABLE CLIENTS(
IDCli int auto_increment PRIMARY KEY,
NOM VARCHAR(50) NOT NULL);

CREATE TABLE CC(
Num INT auto_increment primary KEY,
Fecha timestamp default current_timestamp not null,
IDCli int not null,
CONSTRAINT FK_CLI foreign key (IDCli) references CLIENTS(IDCLI) );

CREATE TABLE LINEA(
NumLin int,
NumCC int ,
Saldo decimal(10,2) unsigned,
primary key(NumLin, NumCC),
CONSTRAINT FK_CC foreign key (NumCC)REFERENCES CC(Num));
