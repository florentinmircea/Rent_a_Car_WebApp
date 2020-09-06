using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProiectDB
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }

        protected void Button_add_birou_Click(object sender, EventArgs e)
        {
            if (stradab.Text.Length == 0 || numarb.Text.Length == 0 || orasb.Text.Length == 0 || judetb.Text.Length == 0 || telefonb.Text.Length == 0)
            {
                return;
            }
            //System.Diagnostics.Debug.WriteLine("SomeText");
            String leg = ConfigurationManager.ConnectionStrings["Proiect_DB6ConnectionString2"].ConnectionString;

            using (SqlConnection sql_1 = new SqlConnection(leg))
            {
                String query = "Insert into birouri_inchirieri(strada,numarul,oras,judet,telefon) values (@strada,@numarul,@oras,@judet,@telefon)";
                using (SqlCommand cmd = new SqlCommand(query))
                {
                    cmd.Connection = sql_1;
                    cmd.Parameters.AddWithValue("@strada", stradab.Text);
                    cmd.Parameters.AddWithValue("@numarul", numarb.Text);
                    cmd.Parameters.AddWithValue("@oras", orasb.Text);
                    cmd.Parameters.AddWithValue("@judet", judetb.Text);
                    cmd.Parameters.AddWithValue("@telefon", telefonb.Text);
                    sql_1.Open();
                    cmd.ExecuteNonQuery();
                    sql_1.Close();
                }
            }
            Birouri1.DataBind();
            stradab.Text = "";
            numarb.Text = "";
            orasb.Text = "";
            judetb.Text = "";
            telefonb.Text = "";
        }
    }
}