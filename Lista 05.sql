
/********************** Exercícios *******************************************************/
use Empresa2M
/* TOP */

--01) Exiba o nome, o sobrenome, o cargo e o salário dos 3 funcionários que possuem o maior salário
select top 3  Nome, Sobrenome, Cargo, Salario from Funcionarios
order by Salario desc


--02) Exiba o nome e o sobrenome do funcionário mais velho.
select top 1  Nome, Sobrenome, DataNasc from Funcionarios
order by DataNasc asc

--03) Exiba o nome e o sobrenome do funcionário mais novo.
select top 1  Nome, Sobrenome, DataNasc from Funcionarios
order by DataNasc desc

--04) Mostre todos os dados dos 5 pedidos mais recentes.
select top 5 * from Pedidos
order by DataPed desc


--05) Mostre todos os dados dos 6 últimos pedidos do ano de 1996.
select top 6 * from Pedidos
where year (DataPed) = 1996 
order by DataPed desc

--06) Exiba Nome e Contato dos 3 primeiros clientes do Reino Unido. Ordenado por nome
select top 3 Nome, Contato
from Clientes
where Pais = 'REINO UNIDO'
order by Nome

--07) Exiba todos os dados dos 10 produtos mais caros.
select top 10 * from Produtos
order by Preco desc

--08) Exiba a Descrição e o preço dos 5 produtos mais baratos.
select top 5 Descr, Preco from Produtos
order by Preco asc

--09) Exiba todos os dados dos 3 pedidos com maior frete.
select top 3 * from Pedidos
order by Frete desc

--10) Exiba todos os dados dos 5 pedidos com menor frete no ano de 1996
select top 5 * from Pedidos
where year (DataPed) = 1996
order by Frete desc


/* Union */

--01) Exiba o nome e o cargo de todos os funcionários dos EUA e o contato e o cargo de todos os fornecedores dos EUA (Usando UNION)
select NOME, CARGO from Funcionarios
where Pais LIKE 'EUA'
union
select CONTATO, CARGO from Fornecedores
where Pais LIKE 'EUA'

--02) Exiba nome, contato e país de todos os clientes do Brasil e da Alemanha (Usando UNION)
select NOME, CONTATO, PAIS from Clientes
where Pais LIKE 'BRASIL'
union
select NOME, CONTATO, PAIS from Clientes
where Pais LIKE 'ALEMANHA'

--03) Exiba nome, contato e a cidade de todos os clientes de Madrid e de Paris (Usando UNION)
select NOME, CONTATO, CIDADE from Clientes
where Cidade LIKE 'MADRID'
union
select NOME, CONTATO, CIDADE from Clientes
where Cidade LIKE 'PARIS'

--04) Mostre a descrição e o preço dos produtos das categorias de código 1 e 3 (Usando UNION)
select DESCR, PRECO from Produtos
where CodCategoria = 1 
union
select DESCR, PRECO from Produtos
where CodCategoria = 3

--05) Exiba o nome, o cargo e o país de todos os funcionários do Reino Unido e o contato e o cargo de todos os fornecedores da França
select NOME, CARGO from Funcionarios
where PAIS LIKE 'REINO UNIDO'
union
select Contato, Cargo from Fornecedores 
where Pais LIKE 'FRANÇA'

/* Grupo */

-- 01) Exiba maior, menor, média e soma dos fretes dos pedidos.
select year (DataPed), min (Frete) as 'Menor', max (Frete) as 'Maior', avg (Frete) as 'Media' from Pedidos
group by DataPed


-- 02) Exiba maior, menor, média e soma dos fretes dos pedidos no primeiro semestre de 1997.
select  max (Frete) as 'Maior' , min (Frete) as 'Menor', avg (Frete) as 'Media', sum (Frete) as 'Soma' from Pedidos
where DataPed between '1997-01-01' and '1997-06-30'
group by year (DataPed)

-- 03) Exiba maior, menor, média e soma dos fretes dos pedidos entregues em setembro de 1997.
select max (Frete) as 'Menor' , min (Frete) as 'Menor', avg (Frete) as 'Media', sum (Frete) as 'Soma' from Pedidos
where month (DataPed) = 7
group by year (DataPed)

-- 04) Exiba maior, menor, média e soma dos preços dos produtos.
select CodProd, max (Preco) as 'Maior', min (Preco) as 'Menor', avg (PRECO) as 'Media' from Produtos
group by CodProd

-- 05) Exiba maior, menor, média e soma dos preços dos produtos que começam com a letra A.
select CodProd, max (Preco) as 'Maior', min (Preco) as 'Menor', avg (Preco) as 'Media', sum (Preco) as 'Soma' from Produtos
where Descr like 'A%'
group by CodProd

-- 06) Exiba maior, menor, média e soma dos preços dos produtos que terminam com ild.
select CodProd, max (Preco) as 'Maior', min (Preco) as 'Menor', avg (Preco) as 'Media', sum (Preco) as 'Soma' from Produtos
where Descr like '%ild'
group by CodProd

-- 07) Exiba maior, menor, média e soma dos preços dos produtos da categoria de codigo 20.
select CodProd, max (Preco) as 'Maior', min (Preco) as 'Menor', avg (Preco) as 'Media', sum (Preco) as 'Soma' from Produtos
where CodProd = 20
group by CodProd

-- 08) Exiba maior e o menor código dos produtos.
select CodProd, max (CodProd) as 'Maior', min (CodProd) as 'Menor' from Produtos
group by CodProd

-- 09) Exiba maior e o menor código dos funcionários.
select CodFun, max(CodFun) as 'Maior', min (CodFun) as 'Menor' from Funcionarios
group by CodFun 

-- 10) Exiba maior e o menor código das categorias.
select CodCategoria, max (CodCategoria) as 'Maior', min (CodCategoria) as 'Menor'  from Categorias
group by CodCategoria