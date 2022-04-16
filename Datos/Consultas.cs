using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Datos
{
    public class Consultas
    {
        Conexion conexion = new Conexion();

        public string CSimple(string sql)
        {
            string result = "";
            try
            {

                SqlCommand cm = new SqlCommand(sql, conexion.conexion);
                SqlDataAdapter DA = new SqlDataAdapter(cm);
                DataTable dt = new DataTable();
                DA.Fill(dt);
                if (dt.Rows.Count > 0)
                {
                    result = Convert.ToString(dt.Rows[0][0]);
                }
                return result;

            }
            catch (Exception ex)
            {
                return ex.ToString();
            }
        }

        public DataTable Consulta(string sql)
        {

            SqlDataReader leer;
            DataTable tabla = new DataTable();
            SqlCommand comando = new SqlCommand();

            tabla.Clear();
            comando.Connection = conexion.AbrirConexion();
            comando.CommandText = sql;
            comando.CommandType = CommandType.Text;
            leer = comando.ExecuteReader();
            tabla.Load(leer);
            return tabla;
        }
        public void Insertar(string sql)
        {
            SqlCommand comando = new SqlCommand();
            comando.Connection = conexion.AbrirConexion();
            comando.CommandText = sql;
            comando.CommandType = CommandType.Text;
            comando.ExecuteNonQuery();
        }
    }
}
