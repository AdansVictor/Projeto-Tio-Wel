using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class Index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogar_Click(object sender, EventArgs e)
        {
            {
                string logindigitado = email_modal.Text;
                string senhadigitada = password_modal.Text;

                string login = "adans";
                string senha = "adans";

                if (logindigitado == login && senha == senhadigitada)
                {
                    Response.Redirect("/ProjetoLanchonete/ConsultaProduto.aspx");


                }
                else
                {
                    Response.Redirect("index.aspx");
                }



            }
        
        }
    }
}