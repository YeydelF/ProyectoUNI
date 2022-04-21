using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Proyecto
{
    public partial class ListaAdmin : System.Web.UI.Page
    {
        ArrayList arr = new ArrayList();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Cookies["Valores"] != null)
            {
                string cok = Request.Cookies["Valores"].Value.ToString();
                string[] words = cok.Split('-');
                foreach (var word in words)
                {
                    arr.Add(word);
                }
                string val1 = arr[0].ToString();
                string val2 = arr[1].ToString();

                if(val2 != "1")
                {
                    Response.Redirect("Error/Error.html");
                }

            }
            else
            {
                Response.Redirect("Indice.aspx");
            }
        }
    }
}