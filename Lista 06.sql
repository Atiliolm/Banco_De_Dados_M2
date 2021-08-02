-- colocar em uso a tabela Empresa

/* exemplos de CONECTIVOS*/

/********************** Exerc�cios *******************************************************/
use Empresa2M
/* Conectivos */

/*01) Usando os conectivos IN e NOT IN resolva as seguintes consultas:*/

/* Mostre a descri��o e o pre�o dos produtos das categorias Bebidas e Confeitos*/
select Descr,Preco
from Produtos
where  CodCategoria in
(
	select CodCategoria 
	from CATEGORIAS
	where descr = 'Bebidas' or descr = 'Confeitos'
)


/* Mostre todos os dados dos pedidos dos clientes da Alemanha*/
select * from CLIENTES
where Pais in ('ALEMANHA')

/* Exiba todos os produtos da categoria Condimentos*/
select * from Produtos
where  CodCategoria in
(
	select CodCategoria 
	from Categorias
	where descr = 'CONDIMENTOS'
)



/* Mostre a descri��o de todos os produtos que N�O s�o fornecidos por fornecedores dos EUA */
select Descr from Produtos
where codfor  NOT IN
(
	select CodFor 
	from fornecedores
	where Pais = 'EUA'
)



/* Mostre a descri��o de todos produtos que N�O fizeram parte dos pedidos de mar�o de 1997 */
select Descr
from Produtos
where CodProd not in
(
	select NumPed
	from  DetalhesPed
	where NumPed not in
	(
		select NumPed 
		from Pedidos
		where year (DataPed) = '1997' and month (DataPed) = '03'
	)
)



/* Mostre os dados dos clientes que fizeram pedidos em junho de 1997*/
select * from Clientes
where CodCli in
(
		select CodCli
		from Pedidos 
		where year (DataPed) = '1997' and month (DataPed) = '06'
)


