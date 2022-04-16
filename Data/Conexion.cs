using System;
using System.Collections.Generic;
using System.Text;
using System.Data.SqlClient;
namespace Data
{
    public class Conexion
    {
        //public SqlConnection conexion = new SqlConnection("Data Source = AARONPC; Initial Catalog = dbStore; Integrated Security = True");
        //public SqlConnection conexion = new SqlConnection("Data Source =" + server + "; Initial Catalog = dbStore; Integrated Security = True");
        // public SqlConnection conexion = new SqlConnection("Data Source = DEARCAT; Initial Catalog = dbStore; Integrated Security = True");


        public SqlConnection AbrirConexion()
        {
            if (conexion.State == ConnectionState.Closed)
                conexion.Open();
            return conexion;
        }

        public SqlConnection CerrarConexion()
        {
            if (conexion.State == ConnectionState.Open)
                conexion.Close();
            return conexion;
        }




    }
}
