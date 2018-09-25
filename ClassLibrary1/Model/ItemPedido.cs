using System;
using System.Collections.Generic;
using System.Text;

namespace Web.Controller.Model
{
    public class ItemPedido
    {
        public ItemPedido() { IdItemPed = 0; }
        #region Propriedade ItemPedido

        private int _IdItemPed;
        public int IdItemPed
        {
            get { return _IdItemPed; }
            set { _IdItemPed = value; }
        }


        private int _IdProd;
        public int IdProd
        {
            get { return _IdProd; }
            set { _IdProd = value; }
        }

        private int _IdPed;
        public int IdPed
        {
            get { return _IdPed; }
            set { _IdPed = value; }
        }

        private string _QuantProd;

        public string QuantProd
        {
            get { return _QuantProd; }
            set { _QuantProd = value; }
        }
        #endregion
    }
}
