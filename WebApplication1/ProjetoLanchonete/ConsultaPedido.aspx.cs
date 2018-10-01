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



                var ListaPed = new PedidoController().ConsultaPedidos();


                foreach (var pedidos in ListaPed)
                {
                    ListItem item = new ListItem();
                    item.Value = pedidos.IdCli.ToString();
                    item.Text = pedidos.NomeCompleto;                   
                    
                    ListBox1.Items.Add(item);
                    
                }
            }
        }

        protected void ListBox1_SelectedIndexChanged(object sender, EventArgs e)
        {
            var ped = new PedidoController().ConsultaPedidosVal(ListBox1.SelectedItem.Value);
            Valped.Text = ped.ValDev;
        }

        //protected void btnPagar_Click(object sender, EventArgs e)
        //{
        //    string valped = Valped.Text;
        //    var Consulta = new ClienteController().ConsultaCliente();
        //    string cred = item.Cred.Text;
        //    decimal result = Convert.ToDecimal(cred) - Convert.ToDecimal(valped);

        //    var gravarped = new PedidoController().PagarDeb(valped, cred, result);
        //}
    }
}