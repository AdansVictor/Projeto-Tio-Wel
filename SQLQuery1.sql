select * from Produtos


Select  * from information_schema.columns WHERE TABLE_NAME='Produtos' 

Select * from Produtos ORDER BY DescProduto

select *  from Pedidos

ALTER TABLE Pedidos
  ADD IdProd smallint 
  references Produtos(IdProd);

drop table Pedidos;

select * from pedido

select * from item_pedido