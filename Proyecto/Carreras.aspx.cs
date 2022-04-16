using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Datos;
namespace Proyecto
{
    public partial class Carreras : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            
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