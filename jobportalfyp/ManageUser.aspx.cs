using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace jobportalfyp
{
    public partial class ManageUser : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionStringConnectionString"].ConnectionString);
        public static int id = 0;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SqlDataSource2_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }


        public string fetchData()
        {
            string htmlStr = "";
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionStringConnectionString"].ConnectionString);
            con.Open();
            string query = "select * from register";
            SqlCommand cmd = new SqlCommand(query, con);
            SqlDataReader reader = cmd.ExecuteReader();

            while (reader.Read())
            {
                int id = reader.GetInt32(0);
                string first_name = reader.GetString(1);
                string last_name = reader.GetString(2);
                string gender = reader.GetString(3);
                string email = reader.GetString(4);
                string password = reader.GetString(5);
                string con_password = reader.GetString(6);
                string country= reader.GetString(7);
                string city = reader.GetString(8);
                string file_upload = reader.GetString(10);
                string usertype = reader.GetString(11);
            
                htmlStr += "<tr><td>" + id + "</td><td>" + first_name + "</td><td>" + last_name + "</td><td>" + gender + "</td><td>" + email + "</td><td>" + password + "</td><td>" + con_password + "</td><td>" + country + "</td><td>" + city + "</td><td>" + file_upload + "</td><td>" + usertype + "</td></tr>";
            }
            con.Close();
            return htmlStr;
        }

        protected void btnSearchId_Click(object sender, EventArgs e)
        {
            SqlDataAdapter da = new SqlDataAdapter("select * from register where id= '" + idtxt.Text + "'", con);
            DataTable dt = new DataTable();
            da.Fill(dt);
            id = Convert.ToInt32(dt.Rows[0][0]);
            txtFirst.Text = dt.Rows[0][1].ToString();
            txtLast.Text = dt.Rows[0][2].ToString();
            GenderList.Text = dt.Rows[0][3].ToString();
            txtEmail.Text = dt.Rows[0][4].ToString();
            txtpass.Text = dt.Rows[0][5].ToString();
            txtconpass.Text = dt.Rows[0][6].ToString();
            txtcountry.Text = dt.Rows[0][7].ToString();
            txtcity.Text = dt.Rows[0][8].ToString();
            txtfile.Text = dt.Rows[0][10].ToString();
            UserList.Text = dt.Rows[0][11].ToString();
            
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            /*con.Open();
            string query = "update register set email ='" + txtEmail.Text + "',file_upload ='" + txtFile.Text + "',usertype ='" + ddlUType.Text + "'where first_name = '" + txtNameId + "'";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.ExecuteNonQuery();*/
            Response.Write("<script type=\"text/javascript\">alert('Records are updated.');</script>");
            //con.Close();
        }

        protected void btnReset_Click(object sender, EventArgs e)
        {
            
            txtFirst.Text = String.Empty;
            txtLast.Text = String.Empty;
            GenderList.Text = String.Empty;
            txtEmail.Text = String.Empty;
            txtpass.Text = String.Empty;
            txtconpass.Text = String.Empty;
            txtcountry.Text = String.Empty;
            txtcity.Text = String.Empty;
            txtfile.Text = String.Empty;
            UserList.Text = String.Empty;
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionStringConnectionString"].ConnectionString);
            try
            {
                con.Open();
                

                string query1 = "insert into login (first_name, last_name, gender, email, password, con_password, country, city, file_upload, usertype) values (@first_name, @last_name, @gender, @email, @password, @con_password, @country, @city, @file_upload, @usertype)";
                SqlCommand cmd1 = new SqlCommand(query1, con);
                //cmd1.Parameters.AddWithValue("@id", idtxt.Text);
                cmd1.Parameters.AddWithValue("@first_name", txtFirst.Text);
                cmd1.Parameters.AddWithValue("@last_name", txtLast.Text);
                cmd1.Parameters.AddWithValue("@gender", GenderList.Text);
                cmd1.Parameters.AddWithValue("@email", txtEmail.Text);
                cmd1.Parameters.AddWithValue("@password", txtpass.Text);
                cmd1.Parameters.AddWithValue("@con_password", txtconpass.Text);
                cmd1.Parameters.AddWithValue("@country", txtcountry.Text);
                cmd1.Parameters.AddWithValue("@city", txtcity.Text);
                cmd1.Parameters.AddWithValue("@file_upload", txtfile.Text);
                cmd1.Parameters.AddWithValue("@usertype", UserList.Text);

                
                cmd1.ExecuteNonQuery();
                Response.Write("<script type=\"text/javascript\">alert('Record Added Successfully');</script>");
                con.Close();
            }
            catch (Exception ex)
            {
                Response.Write("Error: " + ex.ToString());
            }
        }
    }
}
