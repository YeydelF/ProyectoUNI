using System;
using Datos;
namespace Proyecto
{
    public partial class Indice : System.Web.UI.Page
    {
        Procedimientos p = new Procedimientos();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
          string uss =  txtUser.Value.ToString();
            string pss = txtPass.Value.ToString();
            string val = p.login(uss,pss);

            if (val == "1")
            {
                Response.Redirect("Inicio.aspx");
            }
            else
            {
                Console.WriteLine("Error");
            }

        }

    }
}