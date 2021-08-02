-- Exercícios
use Empresa2M
/* 01) Exiba todos os dados dos produtos que começam
com a letra L, em ordem decrescente de preço  */

select * from Produtos 
where Descr like 'l%' order by Preco desc


/* 02) Exiba todos os dados dos produtos que contenham
em seu nome a palavra chef , em ordem crescente de preço  */

select * from Produtos
where Descr like '%chef%' order by Preco asc


/* 03) Exiba todos os dados dos produtos cuja descrição
termine com ing , em ordem decrescente de unidade  */

select * from Produtos 
where Descr like '%ing' order by Unidades desc


/* 04) Exiba Código, nome e contato dos clientes cujo
contato comece com Jo */

select CodCli, Nome, Contato from Clientes
where contato like 'jo%'


/* 05) Exiba todos os dados dos clientes cujo cargo seja
de gerente. Em ordem de cargo*/

select * from Clientes 
where Cargo like '%gerente%' order by Cargo


/* 06) Exiba código e nome dos funcionarios cujo código
esteja entre 3 e 7*/

select CodFun,Nome from Funcionarios 
where CodFun between 3 and 7


/* 07) Mostre todos os dados dos pedidos entregues
entre 05/01/1998 e 6/02/1998 */

select * from Pedidos 
where DataEntrega between '1998-01-05' and '1998-02-06'


/* 08) Exiba Nome, sobrenome, cargo e salario dos 
funcionários que ganham entre 5000 e 10000. Em
ordem crescente de salário*/

select Nome, Sobrenome, Cargo, Salario from Funcionarios 
where Salario between 5000 and 10000 order by Salario asc


/* 09) Exiba todos os dados dos funcionários que
nasceram entre 1960 e 1965. Em ordem decrescente 
de salário*/

select * from Funcionarios
where DataNasc between '1960' and '1965' order by Salario desc


/* 10) Exiba todos os dados dos pedidos de agosto
de 1997 */

select * from Pedidos 
where year(DataPed) = 1997 and month(DataPed) = 8 


/* 11) Exiba todos os dados dos pedidos feitos todo
dia 10*/

select * from Pedidos 
where day(DataPed) = 10


/* 12) Mostre o cargo e a quantidade de funcionários
por cargo */

select Cargo, Count(*) as Quantidade_Fun from Funcionarios group by Cargo


/* 13) Exiba a cidade e a quantidade de clientes por
cidade. Em ordem descrecente de quantidade. */

select Cidade, count(*) as Quantidade_Cli from Clientes group by Cidade order by Quantidade_Cli desc


/* 14) Mostre o país e a quantidade de funcionários
por país. Em ordem de país. */

select Pais, count(*) as Quantidade_Fun from Funcionarios group by Pais order by Quantidade_Fun


/* 15) Exiba o código da categoria e a quantidade
de produtos da categoria. */ 

select CodCategoria, count(*) as Quantidade_Prod from Produtos group by CodCategoria 


/* 16) Exiba os dados das Categorias em ordem decrescente 
de descrição */

select * from Categorias order by Descr desc


/* 17) Mostre o Contato e a Cidade dos clientes dos EUA */

select Contato,Cidade from Clientes 
where Pais like '%EUA%'


/* 18) Exiba todos os dados dos clientes da cidade de 
  Lisboa*/

select * from Clientes 
where Cidade like '%Lisboa%'


/* 19) Exiba os dados dos clientes que tenham a palavra 
vendas em qualquer parte do cargo */

select * from Clientes 
where Cargo like '%vendas%'


/* 20) Exiba a cidade e a quantidade de clientes por 
cidade */

select Cidade, count(*) as Quantidade_Cli from Clientes group by Cidade 


/* 21) Mostre todos os dados dos funcionarios em ordem 
crescente de nome*/

select * from Funcionarios order by Nome asc


/* 22) Mostre o cargo e a quantidade de funcionarios
por cargo */

select Cargo, count(*) as Quantidade_Fun from Funcionarios group by Cargo 
