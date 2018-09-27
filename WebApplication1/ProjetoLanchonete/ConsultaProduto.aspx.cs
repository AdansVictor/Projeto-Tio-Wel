using System;
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
    public partial class ConsultaProduto : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            List<Produtos> ConsultaProd = new ProdutoController().ConsultaProdutos();
            if (ConsultaProd.Count > 0)
            {
                StringBuilder gridProd = new StringBuilder();

                foreach (var item in ConsultaProd)
                {
                    gridProd.Append("<tr>");
                    gridProd.Append(string.Format("<td>{0}</td>", item.DescProduto));
                    gridProd.Append(string.Format("<td>{0}</td>", item.Categoria));
                    gridProd.Append(string.Format("<td>{0}</td>", item.ValorProduto));
                    gridProd.Append(string.Format("<td>{0}</td>", item.QuantProd));
                    gridProd.Append(string.Format("<td>{0}</td>", item.DataCadastro));
                    gridProd.Append("</tr>");


                }
                resultProd.InnerHtml = gridProd.ToString();
            }
        }

        protected void btnDeletar_Click(object sender, EventArgs e)
        {
            string produto = prodCad.Text;


            ProdutoController deletarproduto = new ProdutoController();

            deletarproduto.DeletarProduto(produto);

            resultado.Text = "Seu Produto foi deletado com sucesso";

        }

        //protected void btnLogar_Click(object sender, EventArgs e)
        //{
        //    {
        //        string logindigitado = email_modal.Text;
        //        string senhadigitada = password_modal.Text;

        //        string login = "adans";
        //        string senha = "adans";

        //        if (logindigitado == login && senha == senhadigitada)
        //        {
        //            Response.Redirect("ConsultaProduto.aspx");


        //        }
        //        else
        //        {
        //            Response.Redirect("../index.aspx");
        //        }



        //    }

        //}


        protected void btnGravar_Click(object sender, EventArgs e)
        {
            string produto = CadProd.Text;
            string categoria = txtProd.Text;
            string valor = txtVal.Text;
            string QtdProd = txtQtd.Text;

            Produtos gravarproduto = new ProdutoController().InserirProduto(produto, categoria, valor, QtdProd);
            TextBox1.Text = "Seu Produto foi Adicionado com sucesso";


            List<Produtos> ConsultaProd = new ProdutoController().ConsultaProdutos();


        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

            List<Produtos> ConsultaProd = new ProdutoController().ConsultaProdutos();
            if (ConsultaProd.Count > 0)
            {
                StringBuilder gridProd = new StringBuilder();

                foreach (var item in ConsultaProd)
                {
                    gridProd.Append("<tr>");
                    gridProd.Append(string.Format("<td>{0}</td>", item.DescProduto));
                    gridProd.Append(string.Format("<td>{0}</td>", item.Categoria));
                    gridProd.Append(string.Format("<td>{0}</td>", item.ValorProduto));
                    gridProd.Append(string.Format("<td>{0}</td>", item.QuantProd));
                    gridProd.Append(string.Format("<td>{0}</td>", item.DataCadastro));
                    gridProd.Append("</tr>");


                }
            }
        }
    }
}