using System;
using System.Collections;

using Datos;
namespace Proyecto
{
    public partial class Carreras : System.Web.UI.Page
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

        protected void Guardar_Click(object sender, EventArgs e)
        {
            Procedimientos p = new Procedimientos();
            string cod = txtCodigo.Value.ToString();
            string nom = txtNombre.Value.ToString();
            p.AgregarCarreras(nom, cod);
        }
    }
}