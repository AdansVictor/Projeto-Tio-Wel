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
    }
}
