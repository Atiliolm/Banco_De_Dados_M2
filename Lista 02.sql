/*
Resolva os exerc�cios abaixo:
*/
use BDLocadora

-- 1) inserir os seguintes clientes:
insert into tbClientes (CodCli, Nome, Endereco, Cidade, Sexo, Datanasc, CNH)
	values  (1,'Jos� de Oliveira','Av. Jatob�','Jundia�','M','1965-05-11','0009'),
			(2,'Maria da Silva','Av. Presidente','Itatiba','F','1979-10-08', '0008'),
			(3,'Antonio Carlos','R. Floren�a','Jundia�','M','1980-09-20','0007'),
			(4,'Luisa de Souza','Av. Jequitib�','Jundia�','F','1975-10-10', '0005' )

-- 2) inserir os seguintes carros:
insert into tbCarros (CodCarro, Marca, Modelo, Placa, ValorDiaria, Categoria)
	values	(1,'Ford','Ka','AAA-0001', 180.00, 'Econ�mico'),
			(2,'GM','Onix','AAA-0002', 180.00, 'Econ�mico'),
			(3,'Honda','HRV','AAA-0003', 270.00, 'SUV'),
			(4,'Jeep','Compass','AAA-0004', 310.00, 'SUV M�dia'),
			(5,'VW','Jetta','AAA-0005', 270.00, 'Sedan'),
			(6,'Fiat','Mobi','AAA-0006', 130.00, 'Compacto')

-- 3) inserir os seguintes alugu�is:
insert into tbAluguel (CodAluguel, CodCli, CodCarro, DataRetirada, DataDevolucao, ValorPago)
	values	(1,1,1,'02-08-2019', '07-08-2019', 900),
			(2,2,3,'12-08-2019', '15-08-2019', 500),
			(3,3,2,'02-08-2019', '07-08-2019', 900),
			(4,4,5,'12-08-2019', '15-08-2019', 700)

-- 4) atualizar o campo estado para SP de todos os clientes
update tbClientes set Endereco = 'SP'

-- 5) atualizar o campo Valor Di�ria para 350 do Compass
update tbCarros set ValorDiaria = 350.00
where  Modelo = 'Compass'


-- 6) atualizar para 'Vinhedo' a cidade do cliente de c�digo 2
update tbClientes set Cidade = 'Vinhedo'
where CodCli = 2


-- 7) apagar o carro Mobi
delete from tbCarros
where Modelo = 'Mobi'


-- 8) apagar os alugu�is do cliente de c�digo 3
delete from tbAluguel
where CodCli = 3


-- 9) apagar os alugu�is do carro de c�digo 2
delete from tbAluguel
where CodCarro = 2


-- 10) atualizar o campo valor di�ria em 7%
update tbCarros set ValorDiaria = ValorDiaria * (1+0.07)
select * from tbCarros
