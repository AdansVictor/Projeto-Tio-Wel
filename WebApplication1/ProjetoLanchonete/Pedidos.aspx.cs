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
            List<Produtos> ListaProd = new ProdutoController().ConsultaProdutosPed();

            //StringBuilder gridProd = new StringBuilder();

            foreach (var produto in ListaProd)
            {

                //ArrayList values = new ArrayList();

                ListBox1.Items.Add(produto.DescProduto);


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

    //void btnGravar_Click(object sender, EventArgs e)
    //{

    //}
}