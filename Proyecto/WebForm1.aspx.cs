using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;
using System.Data;
using System.Data.SqlClient;

namespace Proyecto
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        DataTable dt = new DataTable();
        protected void Page_Load(object sender, EventArgs e)
        {
            //GetData();
           // grid();
            //Tabla();
            //int numrows = dt.Rows.Count;
            //int numcells = 3;
            //string dato = "";
            //for (int j = 0; j < numrows; j++)
            //{
            //    TableRow r = new TableRow();
            //    for (int i = 0; i < numcells; i++)
            //    {
            //        TableCell c = new TableCell();
            //        dato = dt.Rows[j][i].ToString();
            //        c.Controls.Add(new LiteralControl(" " + dato));
            //        r.Cells.Add(c);
            //    }
            //    Table1.Rows.Add(r);
            //}
          
        }
        private void Tabla()
        {
            dt.Columns.Add("Id");
            dt.Columns.Add("Nombre");
            dt.Columns.Add("Cargo");

            DataRow row = dt.NewRow();
            row["Id"] = 1;
            row["Nombre"] = "Andres";
            row["Cargo"] = "Developer";
            dt.Rows.Add(row);

            row = dt.NewRow();
            row["Id"] = 2;
            row["Nombre"] = "Federico";
            row["Cargo"] = "PM";
            dt.Rows.Add(row);

            row = dt.NewRow();
            row["Id"] = 3;
            row["Nombre"] = "Leonardo";
            row["Cargo"] = "Developer";
            dt.Rows.Add(row);



        }

        private void grid()
        {

            DataTable dt2 = new DataTable();
            dt2.Columns.Add("Id");
            dt2.Columns.Add("Nombre");
            dt2.Columns.Add("Cargo");

            DataRow row = dt2.NewRow();
            row["Id"] = 1;
            row["Nombre"] = "Andres";
            row["Cargo"] = "Developer";
            dt2.Rows.Add(row);

            row = dt2.NewRow();
            row["Id"] = 2;
            row["Nombre"] = "Federico";
            row["Cargo"] = "PM";
            dt2.Rows.Add(row);

            row = dt2.NewRow();
            row["Id"] = 3;
            row["Nombre"] = "Leonardo";
            row["Cargo"] = "Developer";
            dt2.Rows.Add(row);

            this.GridView1.DataSource = dt;
            this.GridView1.DataBind();
        }

        protected void GridView1_RowDeleted(object sender, GridViewDeletedEventArgs e)
        {
            int id = Convert.ToInt32(GridView1.DataKeys[e.AffectedRows].Value);

            string cs = "data source = .; database = BDUNI; Integrated Security = True";
            SqlConnection con = new SqlConnection(cs);
            SqlCommand cmd = new SqlCommand("SPEliminarCarrera",con);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;

            cmd.Parameters.AddWithValue("@ID", id);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
           // GetData();
        }
        private void GetData()
        {
            string cs = "data source = .; database = BDUNI; Integrated Security = True";
            SqlConnection con = new SqlConnection(cs);
            SqlCommand cmd = new SqlCommand("SELECT * FROM Carreras", con);

            con.Open();
            GridView1.DataSource = cmd.ExecuteReader();
            GridView1.DataBind();
            con.Close();
        }
    }

}