using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Datos
{
    public class Procedimientos
    {
        private Conexion conexion = new Conexion();
        public string AgregarCarreras(string nombre, string codigo)
        {
            try
            {
               
                SqlCommand sql = new SqlCommand("SPAgregarCarreras", conexion.AbrirConexion());
                sql.CommandType = CommandType.StoredProcedure;
                sql.Parameters.AddWithValue("@NombreCarreras", nombre);
                sql.Parameters.AddWithValue("@CodigoCarreras", codigo);
              
                sql.ExecuteNonQuery();
                return "GUARDADO";
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.ToString());
                return "ERROR";
            }
        }
        public string login(string nombre, string codigo)
        {
            try
            {
                SqlParameter res;
                SqlCommand sql = new SqlCommand("LoginUsuario", conexion.AbrirConexion());
                sql.CommandType = CommandType.StoredProcedure;
                sql.Parameters.AddWithValue("@Name", nombre);
                sql.Parameters.AddWithValue("@Pass", codigo);
                res = sql.Parameters.AddWithValue("@Result", "");
                sql.Parameters["@Result"].Direction = ParameterDirection.Output;
                sql.ExecuteNonQuery();
                return res.Value.ToString(); ;
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.ToString());
                return "0";
            }
        }
        public string ActualizarPersona(int id,string cedula, string nombre, string apellido,string telefono,string correo, string direccion)
        {
            try
            {

                SqlCommand sql = new SqlCommand("SPActualizarPersona", conexion.AbrirConexion());
                sql.CommandType = CommandType.StoredProcedure;
                sql.Parameters.AddWithValue("@id", id);
                sql.Parameters.AddWithValue("@Nombre", nombre);
                sql.Parameters.AddWithValue("@Apellido", apellido);
                sql.Parameters.AddWithValue("@Cedula", cedula);
                sql.Parameters.AddWithValue("@Direccion", direccion);
                sql.Parameters.AddWithValue("@Correo", correo);
                sql.Parameters.AddWithValue("@Telefono", telefono);
                sql.ExecuteNonQuery();
                return "GUARDADO";
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.ToString());
                return "ERROR";
            }
        }

        public string ActualizarUsuario(int id, string nombre,string password)
        {
            try
            {

                SqlCommand sql = new SqlCommand("SPActualizarUsuario", conexion.AbrirConexion());
                sql.CommandType = CommandType.StoredProcedure;
               
                sql.Parameters.AddWithValue("@Nombre", nombre);
                sql.Parameters.AddWithValue("@Contra", password);
                sql.Parameters.AddWithValue("@idUsuario", id);
                sql.ExecuteNonQuery();
                return "GUARDADO";
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.ToString());
                return "ERROR";
            }
        }

        public string AgregarPersona(string Codigo, string cedula, string nombre, string apellido, string telefono, string correo, string direccion)
        {
            try
            {
                SqlParameter res;
                SqlCommand sql = new SqlCommand("SPAgregarPersona", conexion.AbrirConexion());
                sql.CommandType = CommandType.StoredProcedure;
                sql.Parameters.AddWithValue("@Nombre", nombre);
                sql.Parameters.AddWithValue("@Apellido", apellido);
                sql.Parameters.AddWithValue("@Codigo", Codigo);
                sql.Parameters.AddWithValue("@Cedula", cedula);
                sql.Parameters.AddWithValue("@Direccion", direccion);
                sql.Parameters.AddWithValue("@Correo", correo);
                sql.Parameters.AddWithValue("@Telefono", telefono);
                res = sql.Parameters.AddWithValue("@Result", "");
                sql.Parameters["@Result"].Direction = ParameterDirection.Output;
                sql.ExecuteNonQuery();
                return res.Value.ToString(); ;
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.ToString());
                return "0";
            }
        }
        public string AgregarUsuario(int id, string nombre, string password,int TipoUsuario)
        {
            try
            {

                SqlCommand sql = new SqlCommand("SPAgregarUsuarios", conexion.AbrirConexion());
                sql.CommandType = CommandType.StoredProcedure;
                sql.Parameters.AddWithValue("@Nombre", nombre);
                sql.Parameters.AddWithValue("@Contra", password);
                sql.Parameters.AddWithValue("@TipoUsuario", TipoUsuario);
                sql.Parameters.AddWithValue("@idPersona", id);
                sql.ExecuteNonQuery();
                return "GUARDADO";
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.ToString());
                return "ERROR";
            }
        }

    }
}
