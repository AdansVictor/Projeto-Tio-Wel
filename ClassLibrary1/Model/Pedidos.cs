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

        private int _IdCli;

        public int IdCli
        {
            get { return _IdCli; }
            set { _IdCli = value; }
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



        private string _ValorProduto;

        public string ValorProduto
        {
            get { return _ValorProduto; }
            set { _ValorProduto = value; }
        }

        private string _ValDev;

        public string ValDev
        {
            get { return _ValDev; }
            set { _ValDev = value; }
        }


        private string _ValPed;
        public string ValPed
        {
            get { return _ValPed; }
            set { _ValPed = value; }
        }


        private decimal _ValTotDev;

        public decimal ValTotDev
        {
            get { return _ValTotDev; }
            set { _ValTotDev = value; }
        }


        private decimal _cred;

        public decimal cred
        {
            get { return _cred; }
            set { _cred = value; }
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

