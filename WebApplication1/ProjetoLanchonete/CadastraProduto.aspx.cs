using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Web.Controller.Controller;
using Web.Controller.Model;

namespace WebApplication1.ProjetoLanchonete
{
    public partial class CadastraProduto : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {


        }
        protected void btnGravar_Click(object sender, EventArgs e)
        {
            string produto = prodCad.Text;
            string categoria = txtProd.Text;
            string valor = txtVal.Text;
            string QtdProd = txtQtd.Text;

            Produtos gravarproduto = new ProdutoController().InserirProduto(produto, categoria, valor,QtdProd);

            resultado.Text = "Seu Produto foi registrado com sucesso";

        }

        
    }
}