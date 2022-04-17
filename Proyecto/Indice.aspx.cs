using System;
using System.Web;
using Datos;
namespace Proyecto
{
    public partial class Indice : System.Web.UI.Page
    {
        Procedimientos p = new Procedimientos();
        Consultas c = new Consultas();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Request.Cookies["Valores"] != null)
            {
                HttpCookie co = new HttpCookie("Valores");
                co.Expires = DateTime.Now.AddSeconds(1);
                Response.Cookies.Add(co);
            }
            else
            {
                
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
          string uss =  txtUser.Value.ToString();
            string pss = txtPass.Value.ToString();
            string val = p.login(uss,pss);
            int d = Convert.ToInt32(val);
            if (d >= 1)
            {
                string id = c.CSimple("SELECT idTipoUser FROM Usuarios WHERE idUsuario = '"+d+"'");
                HttpCookie cook = new HttpCookie("Valores");
                cook.Value = d + "-" + id;
                cook.Expires = DateTime.Now.AddHours(1);
                Response.Cookies.Add(cook);
                Response.Redirect("Inicio.aspx");
            }
            else
            {
                Console.WriteLine("Error");
                Label1.Text = "Nombre o contraseña incorrecta";
            }

        }

    }
}
