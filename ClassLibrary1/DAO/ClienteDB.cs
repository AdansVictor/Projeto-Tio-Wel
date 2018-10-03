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
        internal Clientes InserirCliente(string nome, string cpf, string end, string tel, string Cred, string datanasc)
        {
            SqlConnection conn = new SqlConnection(conecta);
            string sqlQuery = "INSERT INTO CLIENTES (NomeCompleto,CPF,Ende,Tel,Cred,DataNasc)VALUES(@nomecompleto,@cpf,@end,@tel,@Cred,@datanasc)";
            SqlCommand comando = new SqlCommand(sqlQuery, conn);
            comando.Parameters.Add(new SqlParameter("@nomecompleto", nome));
            comando.Parameters.Add(new SqlParameter("@cpf", cpf));
            comando.Parameters.Add(new SqlParameter("@end", end));
            comando.Parameters.Add(new SqlParameter("@tel", tel));
            comando.Parameters.Add(new SqlParameter("@Cred", Cred));
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

            string sql = "Select * From Clientes order by NomeCompleto";


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
                clientes.Cred = leitor["Cred"].ToString();
                clientes.DataNasc = leitor["DataNasc"].ToString();
                clientes.DataCadastro = Convert.ToDateTime(leitor["DataCadastro"].ToString());

                lstCliente.Add(clientes);
            }
            conn.Close();
            return lstCliente;
        }


        //retorna o cliente selecionado
        internal Clientes ConsultaClientes(string Id)
        {
            Clientes cli = new Clientes();
            SqlConnection conn = new SqlConnection(conecta);

            string sql = "Select NomeCompleto from Clientes where IdUser = @IdUser";

            SqlCommand cmd = new SqlCommand(sql, conn);
            cmd.Parameters.Add(new SqlParameter("@IdUser", Id));
            conn.Open();

            SqlDataReader leitor = cmd.ExecuteReader();

            while (leitor.Read())

            {
                //Precisa finalizar a linha com .ToString


                //Produtos.IdProd = Convert.ToInt32(leitor["IdProd"].ToString());
                cli.NomeCompleto = leitor["NomeCompleto"].ToString();
            }

            conn.Close();

            return cli;

        }





        //retorna o cliente selecionado
        /// <summary>
        /// Retorna o Credito que o Cliente possui
        /// </summary>
        /// <param name="Id">Id Do Cliente</param>
        /// <returns></returns>
        internal Clientes ConsultaCredClientes(string Id)
        {
            Clientes cli = new Clientes();
            SqlConnection conn = new SqlConnection(conecta);

            string sql = "Select Cred from Clientes where IdUser = @IdUser";

            SqlCommand cmd = new SqlCommand(sql, conn);
            cmd.Parameters.Add(new SqlParameter("@IdUser", Id));
            conn.Open();

            SqlDataReader leitor = cmd.ExecuteReader();

            while (leitor.Read())

            {
                //Precisa finalizar a linha com .ToString


                //Produtos.IdProd = Convert.ToInt32(leitor["IdProd"].ToString());
                cli.Cred = leitor["Cred"].ToString();
            }

            conn.Close();

            return cli;

        }





        internal void AttCredClientes(string Id, decimal cred)
        {

            try
            {
                using (var sc = new SqlConnection(conecta)) //implementa o DISPOSABLE, gerencia a conexão.
                using (var cmd = sc.CreateCommand())
                {
                    sc.Open();
                    cmd.CommandText = "Update Clientes set Cred = @Cred where IdCli = @IdCli";
                    cmd.Parameters.Add(new SqlParameter("@IdCli", Id));
                    cmd.Parameters.Add(new SqlParameter("@cred", cred));
                    cmd.ExecuteNonQuery();
                };
                //conn.Close();
            }
            catch (Exception e)
            {

                throw new Exception("Houve um problema na gravação dos dados!" + e);
            }

            //finally
            //{
            //    conn.Close();
            //}


            //}




        }
    }
}
