using System;
using System.Collections.Generic;
using System.Text;
using Web.Controller.DAO;
using Web.Controller.Model;

namespace Web.Controller.Controller
{
    public class PedidoController
    {
        public Pedidos InserirPedido(string IdCli, string IdProd, string QuantProd, string ValorProduto)
        {
            return new PedidoDB().InserirPedido(IdCli, IdProd, QuantProd,ValorProduto);
        }
        public PedidoController() { }



    }
}
