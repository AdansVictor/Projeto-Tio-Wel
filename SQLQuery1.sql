select * from Produtos

Select * from Clientes
Select  * from information_schema.columns WHERE TABLE_NAME='Produtos' 

Select * from Produtos ORDER BY DescProduto

select *  from Produtos
select * from Pedidos


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