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
    public partial class ConsultaCliente : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            List<Clientes> ConsultaCli = new ClienteController().ConsultaCliente();
            if (ConsultaCli.Count > 0)
            {
                StringBuilder gridCli = new StringBuilder();

                foreach (var item in ConsultaCli)
                {
                    gridCli.Append("<tr>");
                    gridCli.Append(String.Format("<td>{0}</td>", item.NomeCompleto));
                    gridCli.Append(String.Format("<td>{0}</td>", item.CPF));
                    gridCli.Append(String.Format("<td>{0}</td>", item.Ende));
                    gridCli.Append(String.Format("<td>{0}</td>", item.Tel));
                    gridCli.Append(String.Format("<td>{0}</td>", item.DataNasc));
                    gridCli.Append(String.Format("<td>{0}</td>", item.DataCadastro));
                    gridCli.Append("</tr>");
                }
                resultProd.InnerHtml = gridCli.ToString();
            }
        }
    }
}