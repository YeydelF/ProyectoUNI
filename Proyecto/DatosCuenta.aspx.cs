using System;
using System.Collections;
using System.Data;

namespace Proyecto
{
    public partial class DatosCuenta : System.Web.UI.Page
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
                Mostrar(idP);

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

        private void Actualizar()
        {
            string cedula = txtCedula.Text.ToString();
            string nombre = txtNombre.Text.ToString();
            string apellido = txtApellido.Text.ToString();
            string telefono = txtTelefono.Text.ToString();
            string correo = txtCorreo.Text.ToString();
            string direccion = txtDireccion.Value.ToString();

            if (Request.Cookies["Valores"] != null)
            {
                string cok = Request.Cookies["Valores"].Value.ToString();
                string[] words = cok.Split('-');
                foreach (var word in words)
                {
                    arr.Add(word);

                }
                string val = arr[2].ToString();

                string resul = p.ActualizarPersona(Convert.ToInt32(val), cedula, nombre, apellido, telefono, correo, direccion);
                if (resul == "GUARDADO")
                {
                    Mostrar(val);

                }
            }



        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Actualizar();
        }
        private void Mostrar(string idP)
        {
            if (!Page.IsPostBack)
            {
                int id = Convert.ToInt32(idP);
                dt = c.Consulta("SELECT Cedula,Nombre,Apellido,Telefono,Correo, Direccion FROM Persona WHERE Persona.idPersona = '" + id + "'");
                txtCedula.Text = dt.Rows[0][0].ToString();
                txtNombre.Text = dt.Rows[0][1].ToString();
                txtApellido.Text = dt.Rows[0][2].ToString();
                txtTelefono.Text = dt.Rows[0][3].ToString();
                txtCorreo.Text = dt.Rows[0][4].ToString();
                txtDireccion.Value = dt.Rows[0][5].ToString();
            }

        }

    }
}
