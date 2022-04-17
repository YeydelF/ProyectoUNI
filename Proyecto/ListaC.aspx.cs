using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Proyecto
{
    public partial class ListaC : System.Web.UI.Page
    {
        ArrayList arr = new ArrayList();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Cookies["Valores"] != null)//Este codigo siempre debe de ir para validar la sesión
            {
                string cok = Request.Cookies["Valores"].Value.ToString();
                string[] words = cok.Split('-');
                foreach (var word in words)
                {
                    arr.Add(word);
                    Console.WriteLine(word.ToString());
                }

            }
            else
            {
                Response.Redirect("Indice.aspx");
            }
        }
    }
}