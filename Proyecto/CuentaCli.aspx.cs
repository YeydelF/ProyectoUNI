using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Proyecto
{
    public partial class CuentaCli : System.Web.UI.Page
    {

        ArrayList arr = new ArrayList();
        Datos.Consultas c = new Datos.Consultas();
        Datos.Procedimientos p = new Datos.Procedimientos();
        DataTable dt = new DataTable();
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
               
                Mostrar(idP, nom);
            }
            else
            {
                Response.Redirect("Indice.aspx");
            }
        }

        private void Mostrar(string idP, string idU)
        {

            
            if (!Page.IsPostBack)
            {
                txtUser.Text = c.CSimple("SELECT nombreUsuario as Nombre From Usuarios WHERE idUsuario = '" + idU + "'");
                txtCorreo.Value = c.CSimple("SELECT correo as Correo From Persona WHERE idPersona = '" + idP + "'");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
           
            string cok = Request.Cookies["Valores"].Value.ToString();
            string[] words = cok.Split('-');
            foreach (var word in words)
            {
                arr.Add(word);

            }
            string val = arr[0].ToString();

           
            string pssa = c.CSimple("EXEC [dbo].[SPVerUsuario] @idUsuario = '" + val + "'");
            if (txtPassA.Value.ToString() != "")
            {
                string Nombre = txtUser.Text.ToString();
                if (txtPassA.Value.ToString() != pssa)
                {
                    Label2.Text = "Error, La contraseña actual es incorrecta";
                }
                else
                {
                    if (txtPassN.Value.ToString() != txtPassR.Value.ToString())
                    {
                        Label2.Text = "Error, Las contraseñas insertadas no coiciden";

                    }
                    else
                    {
                        string resul = p.ActualizarUsuario(Convert.ToInt32(val), Nombre, txtPassN.Value.ToString());
                        if (resul == "GUARDADO")
                        {
                            Response.Redirect("Indice.aspx");
                        }
                    }
                }
            }
            else
            {
                   string Nombre2 = txtUser.Text.ToString();
                    string resul = p.ActualizarUsuario(Convert.ToInt32(val), Nombre2, pssa);
                    if (resul == "GUARDADO")
                    {
                        Response.Redirect("Indice.aspx");
                    }
            }
            

        }
    }
}
