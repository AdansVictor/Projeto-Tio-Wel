using System;
using System.Collections.Generic;
using System.Text;
using Web.Controller.DAO;
using Web.Controller.Model;

namespace Web.Controller.Controller
{
    public class ClienteController
    {
        public Clientes InserirCliente(string nome, string cpf, string end, string tel, string datanasc)
        {
            return new ClienteDB().InserirCliente(nome, cpf, end, tel, datanasc);
        }
        public ClienteController() { }

        public List<Clientes> ConsultaCliente()
        {
            return new ClienteDB().ConsultaCliente();
        }
    }
}
