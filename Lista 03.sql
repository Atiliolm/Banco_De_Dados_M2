-- Exerc�cios utilizando fun��es de data
USE Empresa2M
/* 01) Mostre os funcionarios que nasceram no dia 19*/
select CodFun, Sobrenome, Nome, Cargo, DataNasc
from Funcionarios
where DAY (DataNasc) = 19

/* 02) Mostre o nome dos funcion�rios nascidos 
em Julho*/
select Nome
from Funcionarios
where MONTH (DataNasc) = 7

/* 03) Mostre todos os pedidos entregues em 1998*/
select NumPed, CodCli, CodFun, DataPed, DataEntrega, Frete
from Pedidos
where Year (DataENTREGA) = 1998


/* 04) Exiba o nome e a idade de todos os funcion�rios */
select Nome, DATEDIFF(year,  DataNasc, GETDATE()) 
from Funcionarios


/* 05) Exiba o n�mero do pedido, a data do pedido, a data de entrega e 
a diferen�a de dias entre o pedido e a entrega*/
select NumPed, DataPed, DataEntrega, DATEDIFF (DAY, DataPed, DataEntrega)
from Pedidos


/* 06) Exiba os pedidos com 10 dias a mais para a data de entrega? */
SELECT * 
FROM Pedidos 
WHERE datediff(day, DataPed, DataEntrega) > 10




/* 07) Exiba todos os nomes dos funcion�rios e o nome do m�s que eles nasceram*/
select Nome, DATENAME(MONTH, DataNasc)
from Funcionarios



/* 08) Exiba quantos dias j� se passou do seu nascimento */
select DATEDIFF(day, '2002-07-05', getdate())