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



        internal Pedidos InserirPedido(string IdCli, string IdProd,string QuantProd,string ValorProduto, decimal ValDev)
        {
            SqlConnection conn = new SqlConnection(conecta);
            string sqlQuery = "INSERT INTO Pedidos (IdCli,IdProd,QuantProd,ValorProduto,ValDev)VALUES(@IdCli,@IdProd,@QuantProd,@ValorProduto,@ValDev)";
            SqlCommand comando = new SqlCommand(sqlQuery, conn);
            comando.Parameters.Add(new SqlParameter("@IdCli", Convert.ToInt32 (IdCli)));
            comando.Parameters.Add(new SqlParameter("@IdProd", Convert.ToInt32 (IdProd)));
            comando.Parameters.Add(new SqlParameter("@QuantProd", Convert.ToInt32 (QuantProd)));
            comando.Parameters.Add(new SqlParameter("@ValorProduto", Convert.ToDecimal (ValorProduto)));
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

            string sql = "Select * from Pedidos order by IdCli";

            SqlCommand cmd = new SqlCommand(sql, conn);

            conn.Open();

            SqlDataReader leitor = cmd.ExecuteReader();

            while (leitor.Read())
            {
                //Precisa finalizar a linha com .ToString

                Pedidos pedidos = new Pedidos();
                pedidos.IdPed = Convert.ToInt32(leitor["IdPed"].ToString());
                pedidos.IdCli = leitor["IdCli"].ToString();
                pedidos.IdProd = leitor["IdProd"].ToString();
                pedidos.ValDev = Convert.ToDecimal( leitor["ValDev"].ToString());
                pedidos.ValTotDev = Convert.ToDecimal (leitor["ValTotDev"].ToString());
                pedidos.DataCadastro = Convert.ToDateTime(leitor["DataCadastro"].ToString());

                lstPedidos.Add(pedidos);
            }

            conn.Close();

            return lstPedidos;

        }




    }
}
