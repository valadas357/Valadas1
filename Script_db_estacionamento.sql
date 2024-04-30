create database db_estacionamento;
use db_estacionamento;


create table tb_cliente(
ID int primary key auto_increment,
Nome varchar(120) not null,
RG varchar(50) unique,
Telefone integer
);

create table tb_veiculo(
ID int primary key auto_increment,
Placa varchar(50),
Modelo varchar(50),
Cor varchar(50)
);

create table tb_entrada_saida(
dt_entrada datetime,
dt_saida datetime,
ID_cliente int,
ID_veiculo int,
primary key(ID_veiculo, ID_cliente)
);
alter table tb_entrada_saida
add constraint fk_cliente_ID
foreign key (ID_cliente)
references tb_cliente(ID)
on delete cascade;
alter table tb_entrada_saida
add constraint fk_veiculo_ID
foreign key (ID_veiculo)
references tb_veiculo(ID)
on delete cascade;

show tables;
describe tb_entrada_saida;