using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace jobportalfyp
{
    public partial class JobList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionStringConnectionString"].ConnectionString);

            con.Open();
            string id;
            SqlDataAdapter da = new SqlDataAdapter("select * from posts", con);
            DataTable dt = new DataTable();
            da.Fill(dt);

            id = dt.Rows[0][0].ToString();
            Label14.Text = dt.Rows[0][1].ToString();
            Label4.Text = dt.Rows[0][2].ToString();
            Label27.Text = dt.Rows[0][5].ToString();
            Label28.Text = dt.Rows[0][3].ToString();
            Label29.Text = dt.Rows[0][7].ToString();


            id = dt.Rows[1][0].ToString();
            Label15.Text = dt.Rows[1][1].ToString();
            Label1.Text = dt.Rows[1][2].ToString();
            Label26.Text = dt.Rows[1][5].ToString();
            Label13.Text = dt.Rows[1][3].ToString();
            Label30.Text = dt.Rows[1][7].ToString();
            con.Close();


            id = dt.Rows[2][0].ToString();
            Label16.Text = dt.Rows[2][1].ToString();
            Label2.Text = dt.Rows[2][2].ToString();
            Label25.Text = dt.Rows[2][5].ToString();
            Label12.Text = dt.Rows[2][3].ToString();
            Label31.Text = dt.Rows[2][7].ToString();
            con.Close();



            id = dt.Rows[3][0].ToString();
            Label17.Text = dt.Rows[3][1].ToString();
            Label3.Text = dt.Rows[3][2].ToString();
            Label24.Text = dt.Rows[3][5].ToString();
            Label11.Text = dt.Rows[3][3].ToString();
            Label32.Text = dt.Rows[3][7].ToString();
            con.Close();

            id = dt.Rows[4][0].ToString();
            Label18.Text = dt.Rows[4][1].ToString();
            Label5.Text = dt.Rows[4][2].ToString();
            Label23.Text = dt.Rows[4][5].ToString();
            Label10.Text = dt.Rows[4][3].ToString();
            Label33.Text = dt.Rows[4][7].ToString();
            con.Close();

            id = dt.Rows[5][0].ToString();
            Label19.Text = dt.Rows[5][1].ToString();
            Label6.Text = dt.Rows[5][2].ToString();
            Label22.Text = dt.Rows[5][5].ToString();
            Label9.Text = dt.Rows[5][3].ToString();
            Label34.Text = dt.Rows[5][7].ToString();
            con.Close();


            id = dt.Rows[6][0].ToString();
            Label20.Text = dt.Rows[6][1].ToString();
            Label7.Text = dt.Rows[6][2].ToString();
            Label21.Text = dt.Rows[6][5].ToString();
            Label8.Text = dt.Rows[6][3].ToString();
            Label35.Text = dt.Rows[6][7].ToString();
            con.Close();

          
        }


        protected void Filter_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionStringConnectionString"].ConnectionString);

            try
            {

                con.Open();
                string id;

                SqlDataAdapter da = new SqlDataAdapter("SELECT * FROM posts WHERE location = '" + DropDownList3.Text + "'", con);
             


                DataTable dt = new DataTable();
                da.Fill(dt);

                id = dt.Rows[0][0].ToString();
                Label14.Text = dt.Rows[0][1].ToString();
                Label4.Text = dt.Rows[0][2].ToString();
                Label27.Text = dt.Rows[0][5].ToString();
                Label28.Text = dt.Rows[0][3].ToString();
                Label29.Text = dt.Rows[0][7].ToString();


                id = dt.Rows[1][0].ToString();
                Label15.Text = dt.Rows[1][1].ToString();
                Label1.Text = dt.Rows[1][2].ToString();
                Label26.Text = dt.Rows[1][5].ToString();
                Label13.Text = dt.Rows[1][3].ToString();
                Label30.Text = dt.Rows[1][7].ToString();
                con.Close();


                id = dt.Rows[2][0].ToString();
                Label16.Text = dt.Rows[2][1].ToString();
                Label2.Text = dt.Rows[2][2].ToString();
                Label25.Text = dt.Rows[2][5].ToString();
                Label12.Text = dt.Rows[2][3].ToString();
                Label31.Text = dt.Rows[2][7].ToString();
                con.Close();



                id = dt.Rows[3][0].ToString();
                Label17.Text = dt.Rows[3][1].ToString();
                Label3.Text = dt.Rows[3][2].ToString();
                Label24.Text = dt.Rows[3][5].ToString();
                Label11.Text = dt.Rows[3][3].ToString();
                Label32.Text = dt.Rows[3][7].ToString();
                con.Close();

                id = dt.Rows[4][0].ToString();
                Label18.Text = dt.Rows[4][1].ToString();
                Label5.Text = dt.Rows[4][2].ToString();
                Label23.Text = dt.Rows[4][5].ToString();
                Label10.Text = dt.Rows[4][3].ToString();
                Label33.Text = dt.Rows[4][7].ToString();
                con.Close();

                id = dt.Rows[5][0].ToString();
                Label19.Text = dt.Rows[5][1].ToString();
                Label6.Text = dt.Rows[5][2].ToString();
                Label22.Text = dt.Rows[5][5].ToString();
                Label9.Text = dt.Rows[5][3].ToString();
                Label34.Text = dt.Rows[5][7].ToString();
                con.Close();


                id = dt.Rows[6][0].ToString();
                Label20.Text = dt.Rows[6][1].ToString();
                Label7.Text = dt.Rows[6][2].ToString();
                Label21.Text = dt.Rows[6][5].ToString();
                Label8.Text = dt.Rows[6][3].ToString();
                Label35.Text = dt.Rows[6][7].ToString();
                con.Close();
            }
            catch (Exception ex)
            {
                Response.Write("Error: " + ex.ToString());
            }


        }

        protected void Category_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionStringConnectionString"].ConnectionString);

            try
            {

                con.Open();
                string id;

                SqlDataAdapter da = new SqlDataAdapter("SELECT * FROM posts WHERE category = '" + DropDownList2.Text + "'", con);
             


                DataTable dt = new DataTable();
                da.Fill(dt);

                id = dt.Rows[0][0].ToString();
                Label14.Text = dt.Rows[0][1].ToString();
                Label4.Text = dt.Rows[0][2].ToString();
                Label27.Text = dt.Rows[0][5].ToString();
                Label28.Text = dt.Rows[0][3].ToString();
                Label29.Text = dt.Rows[0][7].ToString();


                id = dt.Rows[1][0].ToString();
                Label15.Text = dt.Rows[1][1].ToString();
                Label1.Text = dt.Rows[1][2].ToString();
                Label26.Text = dt.Rows[1][5].ToString();
                Label13.Text = dt.Rows[1][3].ToString();
                Label30.Text = dt.Rows[1][7].ToString();
                con.Close();


                id = dt.Rows[2][0].ToString();
                Label16.Text = dt.Rows[2][1].ToString();
                Label2.Text = dt.Rows[2][2].ToString();
                Label25.Text = dt.Rows[2][5].ToString();
                Label12.Text = dt.Rows[2][3].ToString();
                Label31.Text = dt.Rows[2][7].ToString();
                con.Close();



                id = dt.Rows[3][0].ToString();
                Label17.Text = dt.Rows[3][1].ToString();
                Label3.Text = dt.Rows[3][2].ToString();
                Label24.Text = dt.Rows[3][5].ToString();
                Label11.Text = dt.Rows[3][3].ToString();
                Label32.Text = dt.Rows[3][7].ToString();
                con.Close();

                id = dt.Rows[4][0].ToString();
                Label18.Text = dt.Rows[4][1].ToString();
                Label5.Text = dt.Rows[4][2].ToString();
                Label23.Text = dt.Rows[4][5].ToString();
                Label10.Text = dt.Rows[4][3].ToString();
                Label33.Text = dt.Rows[4][7].ToString();
                con.Close();

                id = dt.Rows[5][0].ToString();
                Label19.Text = dt.Rows[5][1].ToString();
                Label6.Text = dt.Rows[5][2].ToString();
                Label22.Text = dt.Rows[5][5].ToString();
                Label9.Text = dt.Rows[5][3].ToString();
                Label34.Text = dt.Rows[5][7].ToString();
                con.Close();


                id = dt.Rows[6][0].ToString();
                Label20.Text = dt.Rows[6][1].ToString();
                Label7.Text = dt.Rows[6][2].ToString();
                Label21.Text = dt.Rows[6][5].ToString();
                Label8.Text = dt.Rows[6][3].ToString();
                Label35.Text = dt.Rows[6][7].ToString();
                con.Close();
            }
            catch (Exception ex)
            {
                Response.Write("Error: " + ex.ToString());
            }

        }

        protected void Type_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionStringConnectionString"].ConnectionString);

            try
            {

                con.Open();
                string id;

                SqlDataAdapter da = new SqlDataAdapter("SELECT * FROM posts WHERE type = '" + DropDownList1.Text + "'", con);



                DataTable dt = new DataTable();
                da.Fill(dt);

                id = dt.Rows[0][0].ToString();
                Label14.Text = dt.Rows[0][1].ToString();
                Label4.Text = dt.Rows[0][2].ToString();
                Label27.Text = dt.Rows[0][5].ToString();
                Label28.Text = dt.Rows[0][3].ToString();
                Label29.Text = dt.Rows[0][7].ToString();


                id = dt.Rows[1][0].ToString();
                Label15.Text = dt.Rows[1][1].ToString();
                Label1.Text = dt.Rows[1][2].ToString();
                Label26.Text = dt.Rows[1][5].ToString();
                Label13.Text = dt.Rows[1][3].ToString();
                Label30.Text = dt.Rows[1][7].ToString();
                con.Close();


                id = dt.Rows[2][0].ToString();
                Label16.Text = dt.Rows[2][1].ToString();
                Label2.Text = dt.Rows[2][2].ToString();
                Label25.Text = dt.Rows[2][5].ToString();
                Label12.Text = dt.Rows[2][3].ToString();
                Label31.Text = dt.Rows[2][7].ToString();
                con.Close();



                id = dt.Rows[3][0].ToString();
                Label17.Text = dt.Rows[3][1].ToString();
                Label3.Text = dt.Rows[3][2].ToString();
                Label24.Text = dt.Rows[3][5].ToString();
                Label11.Text = dt.Rows[3][3].ToString();
                Label32.Text = dt.Rows[3][7].ToString();
                con.Close();

                id = dt.Rows[4][0].ToString();
                Label18.Text = dt.Rows[4][1].ToString();
                Label5.Text = dt.Rows[4][2].ToString();
                Label23.Text = dt.Rows[4][5].ToString();
                Label10.Text = dt.Rows[4][3].ToString();
                Label33.Text = dt.Rows[4][7].ToString();
                con.Close();

                id = dt.Rows[5][0].ToString();
                Label19.Text = dt.Rows[5][1].ToString();
                Label6.Text = dt.Rows[5][2].ToString();
                Label22.Text = dt.Rows[5][5].ToString();
                Label9.Text = dt.Rows[5][3].ToString();
                Label34.Text = dt.Rows[5][7].ToString();
                con.Close();


                id = dt.Rows[6][0].ToString();
                Label20.Text = dt.Rows[6][1].ToString();
                Label7.Text = dt.Rows[6][2].ToString();
                Label21.Text = dt.Rows[6][5].ToString();
                Label8.Text = dt.Rows[6][3].ToString();
                Label35.Text = dt.Rows[6][7].ToString();
                con.Close();
            }
            catch (Exception ex)
            {
                Response.Write("Error: " + ex.ToString());
            }

        }

        protected void Location_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionStringConnectionString"].ConnectionString);

            try
            {

                con.Open();
                string id;

                SqlDataAdapter da = new SqlDataAdapter("SELECT * FROM posts WHERE location = '" + DropDownList3.Text + "'", con);



                DataTable dt = new DataTable();
                da.Fill(dt);

                id = dt.Rows[0][0].ToString();
                Label14.Text = dt.Rows[0][1].ToString();
                Label4.Text = dt.Rows[0][2].ToString();
                Label27.Text = dt.Rows[0][5].ToString();
                Label28.Text = dt.Rows[0][3].ToString();
                Label29.Text = dt.Rows[0][7].ToString();


                id = dt.Rows[1][0].ToString();
                Label15.Text = dt.Rows[1][1].ToString();
                Label1.Text = dt.Rows[1][2].ToString();
                Label26.Text = dt.Rows[1][5].ToString();
                Label13.Text = dt.Rows[1][3].ToString();
                Label30.Text = dt.Rows[1][7].ToString();
                con.Close();


                id = dt.Rows[2][0].ToString();
                Label16.Text = dt.Rows[2][1].ToString();
                Label2.Text = dt.Rows[2][2].ToString();
                Label25.Text = dt.Rows[2][5].ToString();
                Label12.Text = dt.Rows[2][3].ToString();
                Label31.Text = dt.Rows[2][7].ToString();
                con.Close();



                id = dt.Rows[3][0].ToString();
                Label17.Text = dt.Rows[3][1].ToString();
                Label3.Text = dt.Rows[3][2].ToString();
                Label24.Text = dt.Rows[3][5].ToString();
                Label11.Text = dt.Rows[3][3].ToString();
                Label32.Text = dt.Rows[3][7].ToString();
                con.Close();

                id = dt.Rows[4][0].ToString();
                Label18.Text = dt.Rows[4][1].ToString();
                Label5.Text = dt.Rows[4][2].ToString();
                Label23.Text = dt.Rows[4][5].ToString();
                Label10.Text = dt.Rows[4][3].ToString();
                Label33.Text = dt.Rows[4][7].ToString();
                con.Close();

                id = dt.Rows[5][0].ToString();
                Label19.Text = dt.Rows[5][1].ToString();
                Label6.Text = dt.Rows[5][2].ToString();
                Label22.Text = dt.Rows[5][5].ToString();
                Label9.Text = dt.Rows[5][3].ToString();
                Label34.Text = dt.Rows[5][7].ToString();
                con.Close();


                id = dt.Rows[6][0].ToString();
                Label20.Text = dt.Rows[6][1].ToString();
                Label7.Text = dt.Rows[6][2].ToString();
                Label21.Text = dt.Rows[6][5].ToString();
                Label8.Text = dt.Rows[6][3].ToString();
                Label35.Text = dt.Rows[6][7].ToString();
                con.Close();
            }
            catch (Exception ex)
            {
                Response.Write("Error: " + ex.ToString());
            }

        }

        protected void Experince_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionStringConnectionString"].ConnectionString);

            try
            {

                con.Open();
                string id;

                SqlDataAdapter da = new SqlDataAdapter("SELECT * FROM posts WHERE experience = '" + DropDownList4.Text + "'", con);



                DataTable dt = new DataTable();
                da.Fill(dt);

                id = dt.Rows[0][0].ToString();
                Label14.Text = dt.Rows[0][1].ToString();
                Label4.Text = dt.Rows[0][2].ToString();
                Label27.Text = dt.Rows[0][5].ToString();
                Label28.Text = dt.Rows[0][3].ToString();
                Label29.Text = dt.Rows[0][7].ToString();


                id = dt.Rows[1][0].ToString();
                Label15.Text = dt.Rows[1][1].ToString();
                Label1.Text = dt.Rows[1][2].ToString();
                Label26.Text = dt.Rows[1][5].ToString();
                Label13.Text = dt.Rows[1][3].ToString();
                Label30.Text = dt.Rows[1][7].ToString();
                con.Close();


                id = dt.Rows[2][0].ToString();
                Label16.Text = dt.Rows[2][1].ToString();
                Label2.Text = dt.Rows[2][2].ToString();
                Label25.Text = dt.Rows[2][5].ToString();
                Label12.Text = dt.Rows[2][3].ToString();
                Label31.Text = dt.Rows[2][7].ToString();
                con.Close();



                id = dt.Rows[3][0].ToString();
                Label17.Text = dt.Rows[3][1].ToString();
                Label3.Text = dt.Rows[3][2].ToString();
                Label24.Text = dt.Rows[3][5].ToString();
                Label11.Text = dt.Rows[3][3].ToString();
                Label32.Text = dt.Rows[3][7].ToString();
                con.Close();

                id = dt.Rows[4][0].ToString();
                Label18.Text = dt.Rows[4][1].ToString();
                Label5.Text = dt.Rows[4][2].ToString();
                Label23.Text = dt.Rows[4][5].ToString();
                Label10.Text = dt.Rows[4][3].ToString();
                Label33.Text = dt.Rows[4][7].ToString();
                con.Close();

                id = dt.Rows[5][0].ToString();
                Label19.Text = dt.Rows[5][1].ToString();
                Label6.Text = dt.Rows[5][2].ToString();
                Label22.Text = dt.Rows[5][5].ToString();
                Label9.Text = dt.Rows[5][3].ToString();
                Label34.Text = dt.Rows[5][7].ToString();
                con.Close();


                id = dt.Rows[6][0].ToString();
                Label20.Text = dt.Rows[6][1].ToString();
                Label7.Text = dt.Rows[6][2].ToString();
                Label21.Text = dt.Rows[6][5].ToString();
                Label8.Text = dt.Rows[6][3].ToString();
                Label35.Text = dt.Rows[6][7].ToString();
                con.Close();
            }
            catch (Exception ex)
            {
                Response.Write("Error: " + ex.ToString());
            }

        }

        protected void Apply1_Click(object sender, EventArgs e)
        {
            Try.Text = Label14.Text;

             /*Response.Write("<script type=\"text/javascript\">alert('Thanks for applying. Email has been sent to you'+Label4.Text.ToString());</script>");
             Try.ForeColor = System.Drawing.Color.ForestGreen;
             Try.Text = Label4.Text;


             SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionStringConnectionString"].ConnectionString);

            try
            {

                con.Open();
                string id;

                SqlDataAdapter da = new SqlDataAdapter("SELECT * FROM posts WHERE category = '" + Label14.Text + "'", con);
               

                DataTable dt = new DataTable();
                da.Fill(dt);

                id = dt.Rows[0][0].ToString();
                Try.Text = dt.Rows[0][6].ToString();
                Try.Text = Label14.Text;
                con.Close();

            }
            catch (Exception ex)
            {
                Response.Write("Error: " + ex.ToString());
            }*/
        }
    }
}