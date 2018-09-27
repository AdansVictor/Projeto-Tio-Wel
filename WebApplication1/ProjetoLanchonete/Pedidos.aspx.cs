using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Web.Controller.Controller;
using Web.Controller.Model;

namespace WebApplication1.ProjetoLanchonete
{
    public partial class Pedidos : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Validate initially to force asterisks
                // to appear before the first roundtrip.



                List<Produtos> ListaProd = new ProdutoController().ConsultaProdutosPed();

                //StringBuilder gridProd = new StringBuilder();

                foreach (var produto in ListaProd)
                {
                    ListItem item = new ListItem();
                    item.Text = produto.DescProduto;
                    item.Value = produto.IdProd.ToString();

                    //ArrayList values = new ArrayList();

                    ListBox1.Items.Add(item);



                    //ListBox1.DataTextField = ("DescProduto");
                    //ListBox1.DataValueField = "IdProd";




                    //gridProd.Append("<tr>");
                    //gridProd.Append(string.Format("<td>{0}</td>", produto.IdProd));
                    //gridProd.Append(string.Format("<td>{0}</td>", produto.DescProduto));
                    //gridProd.Append("</tr>");
                    //Response.Write("Value=" + Convert.ToString(produto.IdProd) + "<br>");
                    //Response.Write("Text =" + produto.DescProduto + "<br>");
                    //Response.Write("Index =" + ListBox1.Items.IndexOf(li).ToString() + "<br>");
                    //Response.Write("----------------------------------------");

                }

                //resultProd. InnerHtml = gridProd.ToString();


                if (ListBox1.SelectedIndex == -1)
                {
                    label1.ForeColor = System.Drawing.Color.Red;
                }
                else
                {
                    label1.ForeColor = System.Drawing.Color.Black;
                }








                List<Clientes> ConsultaCli = new ClienteController().ConsultaCliente();

                //StringBuilder gridProd = new StringBuilder();

                foreach (var cli in ConsultaCli)
                {
                    ListItem item = new ListItem();
                    item.Text = cli.NomeCompleto;
                    item.Value = cli.IdUser.ToString();

                    //ArrayList values = new ArrayList();

                    ListBox2.Items.Add(item);



                    //ListBox1.DataTextField = ("DescProduto");
                    //ListBox1.DataValueField = "IdProd";




                    //gridProd.Append("<tr>");
                    //gridProd.Append(string.Format("<td>{0}</td>", produto.IdProd));
                    //gridProd.Append(string.Format("<td>{0}</td>", produto.DescProduto));
                    //gridProd.Append("</tr>");
                    //Response.Write("Value=" + Convert.ToString(produto.IdProd) + "<br>");
                    //Response.Write("Text =" + produto.DescProduto + "<br>");
                    //Response.Write("Index =" + ListBox1.Items.IndexOf(li).ToString() + "<br>");
                    //Response.Write("----------------------------------------");

                }

                //resultProd. InnerHtml = gridProd.ToString();


                if (ListBox1.SelectedIndex == -1)
                {
                    label1.ForeColor = System.Drawing.Color.Red;
                }
                else
                {
                    label1.ForeColor = System.Drawing.Color.Black;
                }
















            }
        }



        protected void ListBox1_SelectedIndexChanged1(object sender, EventArgs e)
        {
            Produtos prod = new ProdutoController().ConsultaProdutosVal(ListBox1.SelectedItem.Value);



            Valitem.Text = prod.ValorProduto;
        }

        protected void ListBox2_SelectedIndexChanged(object sender, EventArgs e)
        {
            Clientes cli = new ClienteController().ConsultaClientes(ListBox2.SelectedItem.Value);
            Valcli.Text = cli.NomeCompleto;
        }

        protected void btnPed_Click(object sender, EventArgs e)
        {
            string IdCli = ListBox2.SelectedItem.Value;
            string IdProd = ListBox1.SelectedItem.Value;
            string QuantProd = QuantidadeProduto.Text;
            string ValorProduto = Valitem.Text;


            //Pedidos gravarproduto = new PedidoController().InserirPedido(IdCli, IdProd, QuantProd, ValorProduto);




            //resultado.Text = "Seu Pedido foi registrado com sucesso";
        }
    }

}