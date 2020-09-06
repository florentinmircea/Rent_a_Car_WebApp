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
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text.Length == 0 || TextBox2.Text.Length == 0 || TextBox3.Text.Length == 0 || TextBox4.Text.Length == 0 || TextBox5.Text.Length == 0)
            {
                return;
            }
            //System.Diagnostics.Debug.WriteLine("SomeText");
            String leg = ConfigurationManager.ConnectionStrings["Proiect_DB6ConnectionString2"].ConnectionString;

            using (SqlConnection sql_1 = new SqlConnection(leg))
            {
                String query = "Insert into masini(locatiecurenta_id,tip_id,culoare,marca,model,descriere,data_cumparare,pret_zi) values (@locatiecurenta_id,@tip_id,@culoare,@marca,@model,@descriere,@data_cumparare,@pret_zi)";
                using (SqlCommand cmd = new SqlCommand(query))
                {
                    cmd.Connection = sql_1;
                    cmd.Parameters.AddWithValue("@locatiecurenta_id", DropDownList1.SelectedValue);
                    cmd.Parameters.AddWithValue("@tip_id", DropDownList1.SelectedValue);
                    cmd.Parameters.AddWithValue("@culoare", TextBox1.Text);
                    cmd.Parameters.AddWithValue("@marca", TextBox2.Text);
                    cmd.Parameters.AddWithValue("@model", TextBox3.Text);
                    cmd.Parameters.AddWithValue("@descriere", TextBox4.Text);
                    cmd.Parameters.AddWithValue("@data_cumparare", Calendar1.SelectedDate);
                    cmd.Parameters.AddWithValue("@pret_zi", TextBox5.Text);
                    sql_1.Open();
                    cmd.ExecuteNonQuery();
                    sql_1.Close();
                }
            }
            GridView3.DataBind();
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (TextBox6.Text.Length == 0 || TextBox7.Text.Length == 0)
            {
                return;
            }
            //System.Diagnostics.Debug.WriteLine("SomeText");
            String leg = ConfigurationManager.ConnectionStrings["Proiect_DB6ConnectionString2"].ConnectionString;

            using (SqlConnection sql_1 = new SqlConnection(leg))
            {
                String query = "Insert into tip_masina(tip_nume,tip_descriere) values (@tip_nume,@tip_descriere)";
                using (SqlCommand cmd = new SqlCommand(query))
                {
                    cmd.Connection = sql_1;
                    cmd.Parameters.AddWithValue("@tip_nume", TextBox6.Text);
                    cmd.Parameters.AddWithValue("@tip_descriere", TextBox7.Text);
                    sql_1.Open();
                    cmd.ExecuteNonQuery();
                    sql_1.Close();
                }
            }
            GridView4.DataBind();
            TextBox6.Text = "";
            TextBox7.Text = "";
        }
    }
}