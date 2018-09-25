using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Text;
using Web.Controller.Model;

namespace Web.Controller.DAO
{
    public class ItemPedidoDB
    {
        string conecta = ConfigurationManager.ConnectionStrings["ConectaBanco"].ConnectionString;
        internal ItemPedido InserirItemPedido(string QuantProd)
        {
            SqlConnection conn = new SqlConnection(conecta);
            string sqlQuery = "INSERT INTO Item_Pedidos (QuantProd)VALUES(@QuantProd)";
            SqlCommand comando = new SqlCommand(sqlQuery, conn);
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

        internal List<ItemPedido> ConsultaItemPedido()
        {
            List<ItemPedido> lstCliente = new List<ItemPedido>();
            SqlConnection conn = new SqlConnection(conecta);

            string sql = "Select * From Item_Pedidos";


            SqlCommand cmd = new SqlCommand(sql, conn);

            conn.Open();

            SqlDataReader leitor = cmd.ExecuteReader();

            while (leitor.Read())
            {
                ItemPedido ItemPedido = new ItemPedido();
                ItemPedido.IdItemPed = Convert.ToInt32(leitor["IdItemPed"].ToString());
                ItemPedido.IdProd = Convert.ToInt32(leitor["IdProd"].ToString());
                ItemPedido.IdPed = Convert.ToInt32(leitor["IdPed"].ToString());
                ItemPedido.QuantProd = leitor["QuantProd"].ToString();
                lstCliente.Add(ItemPedido);
            }
            conn.Close();
            return lstCliente;
        }
    }
}
