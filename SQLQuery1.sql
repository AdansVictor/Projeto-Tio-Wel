select * from Pedidos
select * from Produtos
select * from item_pedidos




insert into item_pedidos (
IdPed,IdCli,IdProd,ValTot)
select
IdPed,IdCli,IdProd,(ValorProduto*QuantProd) as ValTot
from
Pedidos



insert into Pedidos (IdCli,DataCadastro,IdProd,ValorProduto,QuantProd)
values
(1,26/09/2018,305,6.00,5);

Select * from Clientes
Select  * from information_schema.columns WHERE TABLE_NAME='Pedidos' 

Select * from Produtos ORDER BY DescProduto

create table item_pedidos(
Id_itemped smallint primary key identity,
IdPed smallint,
IdCli smallint,
IdProd smallint,
ValTot decimal,
DataCadastro date
);

drop table item_pedidos

select *  from Produtos
select * from Clientes

delete from Clientes where IdUser = 102;

Select * from Produtos order by DescProduto

ALTER TABLE Pedidos
ADD CONSTRAINT FK_QuantProd
FOREIGN KEY (QuantProd) REFERENCES Produtos(QuantProd); 





ALTER TABLE Pedidos
  ADD QuantProd int not null
  

  ALTER TABLE Pedidos
DROP COLUMN QuantProd;

ALTER TABLE Pedidos
ADD QuantProd int ;

select * from pedidos

select * from item_pedido