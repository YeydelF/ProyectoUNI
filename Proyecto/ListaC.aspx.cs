using System;
using System.Collections;
using System.Web.UI;
using Datos;
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
                   
                }
                string val = arr[1].ToString();
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
            Procedimientos p = new Procedimientos();//Este codigo debe de ir igual en todos los botones, solo cambia el nombre de los campos
            string cod = txtCodigo.Value.ToString();//este
            string nom = txtNombre.Value.ToString();// y este
            if (cod != "" && nom != "" )
            {
                p.AgregarCarreras(nom, cod);
            }
            else
            {
                string msm = "Error, uno de los campos están vacíos";
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('" + msm + "')", true);
            }
           
        }
    }
}