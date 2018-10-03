using System;
using System.Collections.Generic;
using System.Text;
using Web.Controller.DAO;
using Web.Controller.Model;

namespace Web.Controller.Controller
{
    public class ClienteController
    {
        public Clientes InserirCliente(string nome, string cpf, string end, string tel, string Cred, string datanasc)
        {
            return new ClienteDB().InserirCliente(nome, cpf, end, tel, Cred, datanasc);
        }
        public ClienteController() { }

        public List<Clientes> ConsultaCliente()
        {
            return new ClienteDB().ConsultaCliente();
        }

        //retorna cliente selecionado
        public Clientes ConsultaClientes(string Id)
        {
            return new ClienteDB().ConsultaClientes(Id);
        }


        
        /// <summary>
        /// Consulta Credito do Cliente
        /// </summary>
        /// <param name="Id">Id do Cliente da tabela CLIENTES</param>
        /// <returns></returns>
        public Clientes ConsultaCredClientes(string Id)
        {
            return new ClienteDB().ConsultaCredClientes(Id);
        }



        //public Clientes AttCredClientes(string Id, decimal cred)
        //{
        //    new ClienteDB().AttCredClientes(Id, cred);
        //}

    }
}
