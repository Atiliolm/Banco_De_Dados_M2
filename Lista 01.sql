/*
Resolva os exercícios abaixo:
*/
-- 1) Crie o banco de Dados Locadora e coloque-o em uso

Create database BDLocadora 
use BDLocadora

/* 2) Crie as seguintes tabelas:
tbClientes(
	CodCli inteiro, -chave primária 
	Nome texto(50), 
	Endereco texto(50),
	Cidade  texto(50),
	Sexo caracter(1),
	Datanasc datahora,
	CNH texto(25),
	DataHabilitacao data,
)

tbCarros (
	CodCarro inteiro, -chave primária
	Marca texto(30),
	Modelo texto(30),
	Placa texto(8),
	ValorDiaria moeda,
	Fornecedor texto(50),
)

tbAluguel(
	CodAluguel inteiro autoincremento, -chave primária
	CodCli inteiro, - chave estrangeira
	CodCarro inteiro, - chave estrangeira
	DataRet datahora,
	DataDev datahora,
	ValorPago moeda
)

*/
	create table tbClientes(
		CodCli int,
		Nome varchar(50), 
		Endereco varchar(50),
		Cidade varchar(50),
		Sexo char(1),
		Datanasc date,
		CNH varchar(25),
		DataHabilitacao date,
		primary key (CodCli)
		)


	create table tbCarros (
		CodCarro int, 
		Marca varchar(30),
		Modelo varchar(30),
		Placa varchar(8),
		ValorDiaria money,
		Fornecedor varchar(50),
		primary key (CodCarro)
	)

	create table tbAluguel(
		CodAluguel int,
		CodCli int, 
		CodCarro int, 
		DataRet date,
		DataDev date,
		ValorPago money,
		primary key (CodAluguel, CodCli, CodCarro),
		foreign key (CodCli) references tbClientes(CodCli),
		foreign key (CodCarro) references tbCarros(CodCarro)
	)



-- 3) Acrescentar o campo Estado (caracter 2) na tabela de Clientes

	alter table tbClientes add Estado char(2)


-- 4) Acrescentar o campo Categoria (texto 30) na tabela de Carros

	alter table tbCarros add Categoria varchar(30)


-- 5) Acrescentar o campo Cor (texto 20) na tabela de Carros

	alter table tbCarros add Cor varchar (20)


-- 6) Mudar o nome do campo DataRet para DataRetirada na tbAluguel

	exec sp_rename 'tbAluguel.DataRet', 'DataRetirada'


-- 7) Mudar o nome do campo DataDev para DataDevolucao na tbAluguel

	exec sp_rename 'tbAluguel.DataDev', 'DataDevolucao'


-- 8) Remova o campo DataHabilitacao da tabela de Clientes

	alter table tbClientes drop column DataHabilitacao


-- 9) Remova o campo Fornecedor da tabela de Carros
	
	alter table tbCarros drop column Fornecedor

	
