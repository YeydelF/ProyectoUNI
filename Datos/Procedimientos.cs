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
        public string ModificarProveedores(int id, string nombre, string ruc, string ubicacion)
        {
            try
            {
                SqlParameter res;
                DataTable tab = new DataTable();
                SqlCommand sql = new SqlCommand("SPModificarProveedor", conexion.AbrirConexion());
                sql.CommandType = CommandType.StoredProcedure;
                sql.Parameters.AddWithValue("@idProveedor", id);
                sql.Parameters.AddWithValue("@Nombre", nombre);
                sql.Parameters.AddWithValue("@RUC", ruc);
                sql.Parameters.AddWithValue("@Ubicacion", ubicacion);
                res = sql.Parameters.AddWithValue("@res", "");
                sql.Parameters["@res"].Direction = ParameterDirection.Output;
                sql.ExecuteNonQuery();
                Console.WriteLine(res.Value.ToString());
                return res.Value.ToString();
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.ToString());
                return "ERROR";
            }

        }
        public void EliminarProveedores(int id)
        {
            try
            {
                SqlParameter res;
                DataTable tab = new DataTable();
                SqlCommand sql = new SqlCommand("SPEliminarProveedor", conexion.AbrirConexion());
                sql.CommandType = CommandType.StoredProcedure;
                sql.Parameters.AddWithValue("@idProveedor", id);
                sql.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.ToString());

            }

        }
        public string Factura()
        {
            string result = "";
            SqlDataReader leer;
            DataTable tabla = new DataTable();
            SqlCommand comando = new SqlCommand("SPNumeroFactura", conexion.AbrirConexion());

            tabla.Clear();
            comando.CommandType = CommandType.StoredProcedure;
            leer = comando.ExecuteReader();
            tabla.Load(leer);

            if (tabla.Rows.Count > 0)
            {
                result = Convert.ToString(tabla.Rows[0][0]);
            }
            Console.WriteLine(result);
            return result;

        }
    }
}
