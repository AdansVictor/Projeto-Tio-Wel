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
    public partial class ConsultaPedido : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Validate initially to force asterisks
                // to appear before the first roundtrip.



                List<Pedidos> ListaPed = new PedidoController().ConsultaPedidos();


                foreach (var pedidos in ListaPed)
                {
                    ListItem item = new ListItem();
                    item.Text = pedidos.NomeCompleto;
                    item.Value = pedidos.IdPed.ToString();
                    item.Text = pedidos.DescProduto;
                    item.Text = pedidos.ValDev.ToString();
                    item.Text = pedidos.DescProduto;


                    ListBox1.Items.Add(item);





                }




            }
        }

        protected void ListBox1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}