using System;
using System.Collections.Generic;
using System.Text;

namespace Web.Controller.Model
{
    public class Pedidos
    {
        public Pedidos() { IdPed = 0; }
        #region Propriedade Pedido

        private int _IdPed;
        public int IdPed
        {
            get { return _IdPed; }
            set { _IdPed = value; }
        }

        private string _IdCli;

        public string IdCli
        {
            get { return _IdCli; }
            set { _IdCli = value; }
        }

        private string _IdProd;

        public string IdProd
        {
            get { return _IdProd; }
            set { _IdProd = value; }
        }

        private string _ValorProduto;

        public string ValorProduto
        {
            get { return _ValorProduto; }
            set { _ValorProduto = value; }
        }

        private string _QuantProd;

        public string QuantProd
        {
            get { return _QuantProd; }
            set { _QuantProd = value; }
        }


        private DateTime _DataCadastro;

        public DateTime DataCadastro
        {
            get { return _DataCadastro; }
            set { _DataCadastro = value; }
        }
        #endregion
    }
}

