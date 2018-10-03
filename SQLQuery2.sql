select * from pedidos order by IdCli
select * from Produtos
select * from Clientes

alter table Clientes
add Cred decimal null

insert into Clientes (Cred)
values
(5.00)



Select NomeCompleto from Clientes where IdUser = 103

select sum (ValDev) as ValDev From Pedidos where IdCli = 103


UPDATE  tempDataView 
SET     marks = 
        (
          SELECT marks 
          FROM tempData b 
          WHERE tempDataView.Name = b.Name
        )


WITH updateCTE AS
(
    SELECT sum(ValDev) as ValTot
    FROM Pedidos
    WHERE IdCli = 103
)

UPDATE updateCTE
SET ValTot = 22;


UPDATE Clientes
SET Cred = 3.25
WHERE IdUser = 105;


select NomeCompleto a,DescProduto a,ValDev a 
from 
Pedidos a, Produtos b,clientes c
where
a.IdCli = c.IdUser
and
a.IdProd=b.IdProd
and
a.ValorProduto=b.ValorProduto

select NomeCompleto,DescProduto
from Pedidos
inner join Clientes on Pedidos.IdCli = Clientes.IdUser
inner join Produtos on Pedidos.IdProd = Produtos.IdProd and Pedidos.ValorProduto = Produtos.ValorProduto
group by NomeCompleto,DescProduto


select distinct NomeCompleto,IdUser
from Pedidos as p
inner join Clientes as c on p.IdCli = c.IdUser 
order by NomeCompleto
--group by NomeCompleto



select *
from Pedidos a, Produtos b, Clientes c
where
a.IdCli = c.IdUser
and
a.IdProd=b.IdProd
and
a.ValorProduto=b.ValorProduto
order by NomeCompleto



select NomeCompleto,sum(ValDev) as ValDevTot
from Pedidos
inner join Clientes on Pedidos.IdCli = Clientes.IdUser
group by NomeCompleto



select sum (qtd_ped) 
from item_pedido 
where cd_prod = 5;


alter table Pedidos
add ValDev decimal;