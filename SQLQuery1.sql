select * from Produtos


Select  * from information_schema.columns WHERE TABLE_NAME='Produtos' 

select *  from Pedidos

ALTER TABLE Pedidos
  ADD IdProd smallint 
  references Produtos(IdProd);

drop table Pedidos;

select * from pedido

select * from item_pedido