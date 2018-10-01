using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Text;
using Web.Controller.Model;

namespace Web.Controller.DAO
{
    public class PedidoDB
    {
        string conecta = ConfigurationManager.ConnectionStrings["ConectaBanco"].ConnectionString;
        internal List<Produtos> ConsultaProdutos()
        {

            List<Produtos> lstProdutos = new List<Produtos>();
            SqlConnection conn = new SqlConnection(conecta);

            string sql = "Select * from Produtos";

            SqlCommand cmd = new SqlCommand(sql, conn);

            conn.Open();

            SqlDataReader leitor = cmd.ExecuteReader();

            while (leitor.Read())
            {
                //Precisa finalizar a linha com .ToString

                Produtos Produtos = new Produtos();
                Produtos.IdProd = Convert.ToInt32(leitor["IdProd"].ToString());
                Produtos.DescProduto = leitor["DescProduto"].ToString();
                Produtos.ValorProduto = leitor["ValorProduto"].ToString();
                Produtos.QuantProd = leitor["QuantProd"].ToString();
                lstProdutos.Add(Produtos);
            }

            conn.Close();

            return lstProdutos;

        }



        internal Pedidos InserirPedido(string IdCli, string IdProd, string QuantProd, string ValorProduto, decimal ValDev)
        {
            SqlConnection conn = new SqlConnection(conecta);
            string sqlQuery = "INSERT INTO Pedidos (IdCli,IdProd,QuantProd,ValorProduto,ValDev)VALUES(@IdCli,@IdProd,@QuantProd,@ValorProduto,@ValDev)";
            SqlCommand comando = new SqlCommand(sqlQuery, conn);
            comando.Parameters.Add(new SqlParameter("@IdCli", Convert.ToInt32(IdCli)));
            comando.Parameters.Add(new SqlParameter("@IdProd", Convert.ToInt32(IdProd)));
            comando.Parameters.Add(new SqlParameter("@QuantProd", Convert.ToInt32(QuantProd)));
            comando.Parameters.Add(new SqlParameter("@ValorProduto", Convert.ToDecimal(ValorProduto)));
            comando.Parameters.Add(new SqlParameter("@ValDev", Convert.ToDecimal(ValDev)));

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



        internal List<Pedidos> ConsultaPedidos()
        {

            List<Pedidos> lstPedidos = new List<Pedidos>();
            SqlConnection conn = new SqlConnection(conecta);

            string sql = "select distinct NomeCompleto,IdUser from Pedidos as p inner join Clientes as c on p.IdCli = c.IdUser order by NomeCompleto";

            SqlCommand cmd = new SqlCommand(sql, conn);

            conn.Open();

            SqlDataReader leitor = cmd.ExecuteReader();

            while (leitor.Read())
            {
                //Precisa finalizar a linha com .ToString

                Pedidos pedidos = new Pedidos();
                pedidos.NomeCompleto = leitor["NomeCompleto"].ToString();
                pedidos.IdCli = Convert.ToInt32(leitor["IdUser"].ToString());

                lstPedidos.Add(pedidos);
            }

            conn.Close();
            return lstPedidos;

        }


        internal Pedidos ConsultaPedidosVal(string Id)
        {
            Pedidos ped = new Pedidos();
            SqlConnection conn = new SqlConnection(conecta);

            string sql = "select sum (ValDev) as ValDev From Pedidos where IdCli = @IdCli";

            SqlCommand cmd = new SqlCommand(sql, conn);
            cmd.Parameters.Add(new SqlParameter("@IdCli", Id));
            conn.Open();

            SqlDataReader leitor = cmd.ExecuteReader();

            while (leitor.Read())

            {
                ped.ValDev = leitor["ValDev"].ToString();
            }

            conn.Close();

            return ped;

        }





        internal Clientes ConsultaClientecred(int IdUser, string Cred)
        {
            Clientes cred = new Clientes();
            SqlConnection conn = new SqlConnection(conecta);

            string sql = "select * from Clientes";

            SqlCommand cmd = new SqlCommand(sql, conn);
            cmd.Parameters.Add(new SqlParameter("@IdCli", IdUser));
            cmd.Parameters.Add(new SqlParameter("@Cred", Cred));
            conn.Open();

            SqlDataReader leitor = cmd.ExecuteReader();

            while (leitor.Read())

            {
                cred.Cred = leitor["ValDev"].ToString();
            }

            conn.Close();

            return cred;

        }





        internal Pedidos PagarDeb(string Id, decimal cred, decimal result)
        {

            try
            {
                using (var sc = new SqlConnection(conecta)) //implementa o DISPOSABLE, gerencia a conexão.
                using (var cmd = sc.CreateCommand())
                {
                    sc.Open();
                    cmd.CommandText = "Update Clientes set Cred = @cred where IdCli = @IdCli";
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
            return null;

            //}




        }
    }
}
