using System;
using System.Collections.Generic;
using System.Text;
using Web.Controller.DAO;
using Web.Controller.Model;

namespace Web.Controller.Controller
{
    public class PedidoController
    {
        public Pedidos InserirPedido(string nomecli, string descprod,string QuantProd)
        {
            return new PedidoDB().InserirPedido(nomecli,descprod,QuantProd);
        }
        public PedidoController() { }
    }
}
