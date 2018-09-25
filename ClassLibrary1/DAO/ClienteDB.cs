using System;
using System.Collections.Generic;
using System.Text;
using System.Configuration;
using System.Data.SqlClient;
using Web.Controller.Model;

namespace Web.Controller.DAO
{
    public class ClienteDB
    {
        string conecta = ConfigurationManager.ConnectionStrings["ConectaBanco"].ConnectionString;
        internal Clientes InserirCliente(string nome, string cpf, string end, string tel, string datanasc)
        {
            SqlConnection conn = new SqlConnection(conecta);
            string sqlQuery = "INSERT INTO CLIENTES (NomeCompleto,CPF,Ende,Tel,DataNasc)VALUES(@nomecompleto,@cpf,@end,@tel,@datanasc)";
            SqlCommand comando = new SqlCommand(sqlQuery, conn);
            comando.Parameters.Add(new SqlParameter("@nomecompleto", nome));
            comando.Parameters.Add(new SqlParameter("@cpf", cpf));
            comando.Parameters.Add(new SqlParameter("@end", end));
            comando.Parameters.Add(new SqlParameter("@tel", tel));
            comando.Parameters.Add(new SqlParameter("@datanasc", datanasc));

            try
            {
                conn.Open();
                comando.ExecuteNonQuery();
                //conn.Close();
            }
            catch (Exception e)
            {

                throw new Exception("Houve um problema na gravação dos dados!" + e);
            }

            finally
            {
                conn.Close();
            }
            return null;

        }

        internal List<Clientes> ConsultaCliente()
        {
            List<Clientes> lstCliente = new List<Clientes>();
            SqlConnection conn = new SqlConnection(conecta);

            string sql = "Select * From Clientes";


            SqlCommand cmd = new SqlCommand(sql, conn);

            conn.Open();

            SqlDataReader leitor = cmd.ExecuteReader();

            while (leitor.Read())
            {
                Clientes clientes = new Clientes();
                clientes.IdUser = Convert.ToInt32(leitor["IdUser"].ToString());
                clientes.NomeCompleto = leitor["NomeCompleto"].ToString();
                clientes.CPF = leitor["CPF"].ToString();
                clientes.Ende = leitor["Ende"].ToString();
                clientes.Tel = leitor["Tel"].ToString();
                clientes.DataNasc = leitor["DataNasc"].ToString();
                clientes.DataCadastro = Convert.ToDateTime(leitor["DataCadastro"].ToString());

                lstCliente.Add(clientes);
            }
            conn.Close();
            return lstCliente;
        }
    }
}
