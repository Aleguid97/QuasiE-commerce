using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication3
{
    public partial class PaginaSuccessiva : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string parametro = Request.QueryString["Id"];
            int id = int.Parse(parametro);

            Prodotto prodottoSelezionato = Prodotto.GetProductById(id);

            if (prodottoSelezionato != null)
            {
                lblNomeProdotto.Text = prodottoSelezionato.Nome;
                lblPrezzo.Text = prodottoSelezionato.Prezzo.ToString();
                imgProdotto.ImageUrl = prodottoSelezionato.UrlImmagine;
               
            }


           
        }
        protected void Home (object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
        }
    }
}