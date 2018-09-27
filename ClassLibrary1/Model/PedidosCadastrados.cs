using System;
using System.Collections.Generic;
using System.Text;

namespace Web.Controller.Model
{
    public class PedidosCadastrados
    {

        public PedidosCadastrados() { IdPed = 0; }
        #region Propriedade Pedido

        private int _IdPed;
        public int IdPed
        {
            get { return _IdPed; }
            set { _IdPed = value; }
        }

        private int _IdUser;
        public int IdUser
        {
            get { return _IdUser; }
            set { _IdUser = value; }
        }

        private string _NomeCompleto;

        public string NomeCompleto
        {
            get { return _NomeCompleto; }
            set { _NomeCompleto = value; }
        }

        private int _IdProd;
        public int IdProd
        {
            get { return _IdProd; }
            set { _IdProd = value; }
        }





        private string _DescProduto;

        public string DescProduto
        {
            get { return _DescProduto; }
            set { _DescProduto = value; }
        }

        private string _QuantProd;

        public string QuantProd
        {
            get { return _QuantProd; }
            set { _QuantProd = value; }
        }

        private string _ValTot;

        public string ValTot
        {
            get { return _ValTot; }
            set { _ValTot = value; }
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
