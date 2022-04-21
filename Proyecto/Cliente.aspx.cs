using System;
using System.Collections;
using System.Web.UI;

namespace Proyecto
{
    public partial class Admin : System.Web.UI.Page
    {
        ArrayList arr = new ArrayList();
        Datos.Consultas c = new Datos.Consultas();
        Datos.Procedimientos p = new Datos.Procedimientos();

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
                string idP = arr[2].ToString();
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

        protected void Button1_Click(object sender, EventArgs e)
        {
            Guardar();
        }
        private void Guardar()
        {
            string nombre = Nombre.Value.ToString();
            string apellido = Apellido.Value.ToString();
            string correo = Correo.Value.ToString();
            string telefono = Telefono.Value.ToString();
            string usuario = Usuario.Value.ToString();
            string pass = Pass.Value.ToString();
            string pass2 = Pass2.Value.ToString();
            string direccion = Direccion.Value.ToString();
            string cedula = Cedula.Value.ToString();
            string codigo = Codigo.Value.ToString();
            if(pass != pass2)
            {
                Label2.Text = "Error las contraeñas no coiciden";
            }
            else
            {

                string res = p.AgregarPersona(codigo,cedula,nombre, apellido,telefono,correo,direccion);

                p.AgregarUsuario(Convert.ToInt32(res),usuario,pass,1);
                string msm = "Usuario Guardado";

                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('" + msm + "')", true);
                Response.Redirect("Admin.aspx");
            }
        }
    }
}