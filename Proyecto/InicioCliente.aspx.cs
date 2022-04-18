using System;
using System.Collections;
using System.Web;

namespace Proyecto
{
    public partial class InicioCliente : System.Web.UI.Page
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
                string Nom = c.CSimple("SELECT (Nombre + ' ' + Apellido) AS Usuario FROM Persona, Usuarios WHERE Usuarios.idUsuario = '"+nom +"' AND Persona.idPersona = Usuarios.idPersona");
                Label1.Text = Nom;
                if (val ==  "1")
                {
                    Response.Redirect("Inicio.aspx");
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