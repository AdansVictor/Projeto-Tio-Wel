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
    public partial class CadastroCliente : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }
        protected void btnGravar_Click(object sender, EventArgs e)
        {
            string nome = nomeComp.Text;
            string cpf = txtcpf.Text;
            string end = txtEndereco.Text;
            string tel = txtTel.Text;
            string datanasc = txtNac.Text;

            Clientes gravarcliente = new ClienteController().InserirCliente(nome, cpf, end, tel, datanasc);

            resultado.Text = "Seus Dados Foram Gravados";

            nomeComp.Text = "";
            txtcpf.Text = "";
        }
    }
}