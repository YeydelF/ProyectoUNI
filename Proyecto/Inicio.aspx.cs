using System;
using System.Collections;
using System.Web;

namespace Proyecto
{
    public partial class Inicio : System.Web.UI.Page
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
                    Console.WriteLine(word.ToString());
                }
               
            }
            else
            {
                Response.Redirect("Indice.aspx");
            }
        }

        
        public void ValidarSesión()
        {

        }
    }
}