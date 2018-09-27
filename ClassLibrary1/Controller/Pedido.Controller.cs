using System;
using System.Collections.Generic;
using System.Text;
using Web.Controller.DAO;
using Web.Controller.Model;

namespace Web.Controller.Controller
{
    public class PedidoController
    {
        public Pedidos InserirPedido(string IdCli, string IdProd, string QuantProd, string ValorProduto, decimal ValDev)
        {
            return new PedidoDB().InserirPedido(IdCli, IdProd, QuantProd,ValorProduto, ValDev);
        }
        public PedidoController() { }


        public List<Pedidos> ConsultaPedidos()
        {
            return new PedidoDB().ConsultaPedidos();
        }



    }
}
