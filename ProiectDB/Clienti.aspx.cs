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
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if(TextBox1.Text.Length==0 || TextBox2.Text.Length == 0 || TextBox3.Text.Length == 0 || TextBox4.Text.Length == 0 || TextBox5.Text.Length == 0 || TextBox6.Text.Length == 0)
            {
                return;
            }

            String leg = ConfigurationManager.ConnectionStrings["Proiect_DB6ConnectionString2"].ConnectionString;

            using (SqlConnection sql_1 = new SqlConnection(leg))
            {
                String query = "Insert into clienti(cnp,nume,prenume,telefon,judet,email) values (@cnp,@nume,@prenume,@telefon,@judet,@email)";
                using (SqlCommand cmd = new SqlCommand(query))
                {
                    cmd.Connection = sql_1;
                    cmd.Parameters.AddWithValue("@cnp", TextBox1.Text);
                    cmd.Parameters.AddWithValue("@nume", TextBox2.Text);
                    cmd.Parameters.AddWithValue("@prenume", TextBox3.Text);
                    cmd.Parameters.AddWithValue("@telefon", TextBox4.Text);
                    cmd.Parameters.AddWithValue("@judet", TextBox5.Text);
                    cmd.Parameters.AddWithValue("@email", TextBox6.Text);

                    sql_1.Open();
                    cmd.ExecuteNonQuery();
                    sql_1.Close();
                }
            }
            Clienti1.DataBind();
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            TextBox6.Text = "";

        }
        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }
    }
}