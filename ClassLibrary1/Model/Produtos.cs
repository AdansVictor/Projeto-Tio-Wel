using System;
using System.Collections.Generic;
using System.Text;

namespace Web.Controller.Model
{
    public class Produtos
    {
        public Produtos() { IdProd = 0; }
        #region Propriedade Produto

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

        private string _Categoria;

        public string Categoria
        {
            get { return _Categoria; }
            set { _Categoria = value; }
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
