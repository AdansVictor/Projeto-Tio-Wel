using System;
using System.Collections.Generic;
using System.Text;
using Web.Controller.DAO;
using Web.Controller.Model;

namespace Web.Controller.Controller
{
    public class PedidoController
    {
        /// <summary>
        /// Insere Pedidos na tabela Pedidos
        /// </summary>
        /// <param name="IdCli"></param>
        /// <param name="IdProd"></param>
        /// <param name="QuantProd"></param>
        /// <param name="ValorProduto"></param>
        /// <param name="ValDev"></param>
        /// <returns></returns>
        public Pedidos InserirPedido(string IdCli, string IdProd, string QuantProd, string ValorProduto, decimal ValDev)
        {
            return new PedidoDB().InserirPedido(IdCli, IdProd, QuantProd,ValorProduto, ValDev);
        }
        public PedidoController() { }


        public List<Pedidos> ConsultaPedidos()
        {
            return new PedidoDB().ConsultaPedidos();
        }


        /// <summary>
        /// Chama uma função que retorna o valor devedor na tabela PEDIDOS
        /// </summary>
        /// <param name="Id">Id do Cliente</param>
        /// <returns></returns>
        public Pedidos ConsultaPedidosVal(string Id)
        {
            return new PedidoDB().ConsultaPedidosVal(Id);
        }

        /// <summary>
        /// Chama uma função que atualiza o ValDev na tabela Pedidos
        /// </summary>
        /// <param name="Id">Código de registro do cliente</param>
        /// <param name="saldo">Saldo atual do cliente</param>
        public void PagarDeb(string Id, decimal saldo)
        {
             new PedidoDB().PagarDeb(Id, saldo);
        }







    }
}
