using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Text;
using Web.Controller.Model;

namespace Web.Controller.DAO
{
    class ProdutoDB
    {
        string conecta = ConfigurationManager.ConnectionStrings["ConectaBanco"].ConnectionString;

        internal Produtos InserirProduto(string produto, string categoria, string valor, string QuantProd)
        {
            SqlConnection conn = new SqlConnection(conecta);
            string sqlQuery = "INSERT INTO Produtos (DescProduto,Categoria,ValorProduto,QuantProd)VALUES(@DescProduto,@Categoria,@ValorProduto,@QuantProd)";
            SqlCommand comando = new SqlCommand(sqlQuery, conn);
            comando.Parameters.Add(new SqlParameter("@DescProduto", produto));
            comando.Parameters.Add(new SqlParameter("@Categoria", categoria));
            comando.Parameters.Add(new SqlParameter("@ValorProduto", valor));
            comando.Parameters.Add(new SqlParameter("@QuantProd", QuantProd));

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

        internal List<Produtos> ConsultaProdutos()
        {

            List<Produtos> lstProdutos = new List<Produtos>();
            SqlConnection conn = new SqlConnection(conecta);

            string sql = "Select * from Produtos order by DescProduto";

            SqlCommand cmd = new SqlCommand(sql, conn);

            conn.Open();

            SqlDataReader leitor = cmd.ExecuteReader();

            while (leitor.Read())
            {
                //Precisa finalizar a linha com .ToString

                Produtos Produtos = new Produtos();
                Produtos.IdProd = Convert.ToInt32(leitor["IdProd"].ToString());
                Produtos.DescProduto = leitor["DescProduto"].ToString();
                Produtos.Categoria = leitor["Categoria"].ToString();
                Produtos.ValorProduto = leitor["ValorProduto"].ToString();
                Produtos.QuantProd = leitor["QuantProd"].ToString();
                Produtos.DataCadastro = Convert.ToDateTime(leitor["DataCadastro"].ToString());

                lstProdutos.Add(Produtos);
            }

            conn.Close();

            return lstProdutos;

        }


        internal void DeletarProduto(string produto)
        {
            //SqlConnection conn = new SqlConnection(conecta);
            //string sqlQuery = "DELETE FROM Produtos WHERE DescProduto like"+produto;
            //SqlCommand comando = new SqlCommand(sqlQuery, conn);
            //comando.Parameters.Remove(new SqlParameter("DescProduto", produto));
            try
            {
                using (var sc = new SqlConnection(conecta)) //implementa o DISPOSABLE, gerencia a conexão.
                using (var cmd = sc.CreateCommand())
                {
                    sc.Open();
                    cmd.CommandText = "DELETE FROM Produtos WHERE DescProduto = @produto";
                    cmd.Parameters.AddWithValue("@produto", produto);
                    cmd.ExecuteNonQuery();
                }
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
            //return null;

        }


        internal List<Produtos> ConsultaProdutosPed()
        {

            List<Produtos> lstProdutos = new List<Produtos>();
            SqlConnection conn = new SqlConnection(conecta);

            string sql = "Select * from Produtos ORDER BY DescProduto";

            SqlCommand cmd = new SqlCommand(sql, conn);

            conn.Open();

            SqlDataReader leitor = cmd.ExecuteReader();

            while (leitor.Read())
  
            {
                //Precisa finalizar a linha com .ToString

                Produtos produto = new Produtos();
                produto.IdProd = Convert.ToInt32(leitor["IdProd"].ToString());
                produto.DescProduto = leitor["DescProduto"].ToString();

                lstProdutos.Add(produto);
            }

            conn.Close();

            return lstProdutos;

        }




        internal Produtos ConsultaProdutosVal(string Id)
        {
            Produtos prod = new Produtos();
            SqlConnection conn = new SqlConnection(conecta);

            string sql = "Select ValorProduto from Produtos where IdProd = @IdProd";

            SqlCommand cmd = new SqlCommand(sql, conn);
            cmd.Parameters.Add(new SqlParameter("@IdProd",Id));
            conn.Open();

            SqlDataReader leitor = cmd.ExecuteReader();

            while (leitor.Read())

            {
                //Precisa finalizar a linha com .ToString

                
                //Produtos.IdProd = Convert.ToInt32(leitor["IdProd"].ToString());
                prod.ValorProduto = leitor["ValorProduto"].ToString();
            }

            conn.Close();

            return prod;

        }


    }
}
