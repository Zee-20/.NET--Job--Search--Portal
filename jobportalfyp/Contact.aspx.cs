using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace jobportalfyp
{
    public partial class Contact : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            

        }

        protected void submit_Click(object sender, EventArgs e)
        {
            SqlConnection con = new
                SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionStringConnectionString"].ConnectionString);

            if (message.Text == "" || fname.Text == "" || email.Text == "" || usertype.Text == "")
            {
                Response.Write("<Script type=\"text/javascript\">alert('Requied Fields cannot be left empty');</script>");
            }
            else
            {
                try

                {
                    con.Open();
                    string query = "INSERT INTO contact (message, fname, email, usertype) values (@message, @fname, @email, @usertype)";

                    SqlCommand cmd = new SqlCommand(query, con);
                    cmd.Parameters.AddWithValue("@message", message.Text);
                    cmd.Parameters.AddWithValue("@fname", fname.Text);
                    cmd.Parameters.AddWithValue("@email", email.Text);
                    cmd.Parameters.AddWithValue("@usertype", usertype.Text);

                    cmd.ExecuteNonQuery();


                    Response.Write("<script type=\"text/javascript\">alert('Your Feedback has been recorded!.');</script>");
                    Response.Redirect("Home.aspx");
                    con.Close();
                }
                catch (Exception ex)
                {
                    Response.Write("Error: " + ex.ToString());

                }
            }

        }
    }
}