using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication3
{
    public partial class _Default : Page
    {



        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ProductRepeater.DataSource = Prodotto.Prodotti;
                ProductRepeater.DataBind();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Button btnDettagli = (Button)sender;
            string id = btnDettagli.CommandArgument.ToString();
            RepeaterItem item = (RepeaterItem)btnDettagli.NamingContainer;
            int index = item.ItemIndex;
            int idProdotto = Prodotto.Prodotti[index].Id; // Utilizzo l'ID invece del Nome

            Response.Redirect("PaginaSuccessiva.aspx?Id=" + id);
        }
        protected void Carrello (object sender, EventArgs e)
        {
            Response.Redirect("WebForm1.aspx");
        }
    }

}
