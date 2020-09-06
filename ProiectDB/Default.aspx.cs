using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProiectDB
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
          
        }

        protected void SqlDataSource2_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            DateTime dFrom=Calendar1.SelectedDate;
            DateTime dTo=Calendar2.SelectedDate;
            System.Diagnostics.Debug.WriteLine(dTo);
            TimeSpan TS = dTo - dFrom;
            int daysDiff = TS.Days;
            int price = 0;
            int p = 0;
            if(daysDiff<0)
            {
                return;
            }

            String leg = ConfigurationManager.ConnectionStrings["Proiect_DB6ConnectionString2"].ConnectionString;

            using (SqlConnection sql_1 = new SqlConnection(leg))
            {
                String query = "Insert into rezervari(client_id,locatie_preluare_id,locatie_returnare_id,masina_id,data_preluare,data_returnare,pret) values (@client_id,@locatie_preluare_id,@locatie_returnare_id,@masina_id,@data_preluare,@data_returnare,@pret)";
                using (SqlCommand cmd = new SqlCommand(query))
                {
                    cmd.Connection = sql_1;
                    cmd.Parameters.AddWithValue("@client_id", DropDownList1.SelectedValue);
                    cmd.Parameters.AddWithValue("@locatie_preluare_id", DropDownList2.SelectedValue);
                    cmd.Parameters.AddWithValue("@locatie_returnare_id", DropDownList3.SelectedValue);
                    cmd.Parameters.AddWithValue("@masina_id", DropDownMasini.SelectedValue);
                    cmd.Parameters.AddWithValue("@data_preluare", Calendar1.SelectedDate);
                    cmd.Parameters.AddWithValue("@data_returnare", Calendar2.SelectedDate);
                    p = int.Parse(DropDownList5.SelectedValue);
                    price = p * daysDiff;
                    if(price==0)
                    {
                        return;
                    }
                    cmd.Parameters.AddWithValue("@pret", price);

                    sql_1.Open();
                    cmd.ExecuteNonQuery();
                    sql_1.Close();
                }
            }
            GridView1.DataBind();
            Calendar1.SelectedDates.Clear();
            Calendar2.SelectedDates.Clear();
        }

        protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            String leg = ConfigurationManager.ConnectionStrings["Proiect_DB6ConnectionString2"].ConnectionString;

            using (SqlConnection sql_1 = new SqlConnection(leg))
            {
                String query = "delete from rezervari where rezervare_id=@rez";
                using (SqlCommand cmd = new SqlCommand(query))
                {
                    cmd.Connection = sql_1;
                    cmd.Parameters.AddWithValue("@rez", TextBox1.Text);

                    sql_1.Open();
                    cmd.ExecuteNonQuery();
                    sql_1.Close();
                }
            }
            TextBox1.Text = "";
            GridView1.DataBind();
        }
    }
}
