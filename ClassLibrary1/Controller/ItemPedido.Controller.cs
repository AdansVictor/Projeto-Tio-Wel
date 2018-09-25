using System;
using System.Collections.Generic;
using System.Text;
using Web.Controller.DAO;
using Web.Controller.Model;

namespace Web.Controller.Controller
{
    public class ItemPedidoController
        {
            public ItemPedido InserirItemPedido(string QuantProd)
            {
                return new ItemPedidoDB().InserirItemPedido(QuantProd);
            }
            public ItemPedidoController() { }



        public List<ItemPedido> ConsultaItemPedido()
        {
            return new ItemPedidoDB().ConsultaItemPedido();
        }
    }
}
