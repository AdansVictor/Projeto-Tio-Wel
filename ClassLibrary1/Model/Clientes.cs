using System;
using System.Collections.Generic;
using System.Text;

namespace Web.Controller.Model
{
    public class Clientes
    {
        public Clientes() { IdUser = 0; }
        #region Propriedade Cliente

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

        private string _CPF;

        public string CPF
        {
            get { return _CPF; }
            set { _CPF = value; }
        }

        private string _Ende;

        public string Ende
        {
            get { return _Ende; }
            set { _Ende = value; }
        }

        private string _Tel;

        public string Tel
        {
            get { return _Tel; }
            set { _Tel = value; }
        }

        private string _DataNasc;

        public string DataNasc
        {
            get { return _DataNasc; }
            set { _DataNasc = value; }
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
