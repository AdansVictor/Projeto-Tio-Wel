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


        private int _IdProd;
        public int IdProd
        {
            get { return _IdProd; }
            set { _IdProd = value; }
        }

        private int _IdCli;
        public int IdCli
        {
            get { return _IdCli; }
            set { _IdCli = value; }
        }

        private string _NomeCompleto;

        public string NomeCompleto
        {
            get { return _NomeCompleto; }
            set { _NomeCompleto = value; }
        }

        private string _DescProd;

        public string DescProd
        {
            get { return _DescProd; }
            set { _DescProd = value; }
        }

        private string _ValorTot;

        public string ValorTot
        {
            get { return _ValorTot; }
            set { _ValorTot = value; }
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
