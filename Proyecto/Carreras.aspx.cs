using System;
using System.Collections;

using Datos;
namespace Proyecto
{
    public partial class Carreras : System.Web.UI.Page
    {
        ArrayList arr = new ArrayList();
        Datos.Consultas c = new Datos.Consultas();
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
                string val = arr[1].ToString();
                string nom = arr[0].ToString();
                string Nom = c.CSimple("SELECT (Nombre + ' ' + Apellido) AS Usuario FROM Persona, Usuarios WHERE Usuarios.idUsuario = '" + nom + "' AND Persona.idPersona = Usuarios.idPersona");
                Label1.Text = Nom;
                if (val != "1")
                {
                    Response.Redirect("Error/Error.html");
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