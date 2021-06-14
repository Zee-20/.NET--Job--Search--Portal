using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace jobportalfyp
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void register_Click(object sender, EventArgs e)
        {
           
            Response.Redirect("Registeration.aspx");
        }

        protected void login_Click(object sender, EventArgs e)

        {

            if (txtUsername.Text == "" || txtPassword.Text == "")
            {
                Response.Write("<Script type=\"text/javascript\">alert('Fields cannot be empty');</script>");
            }

            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionStringConnectionString"].ConnectionString);
            con.Open();
            SqlCommand cmd = new SqlCommand("select count(*) from login where email = '" + txtUsername.Text
                + "' and con_password = '" + txtPassword.Text + "'", con);
            int count = Convert.ToInt32(cmd.ExecuteScalar().ToString());



            if (count > 0)
            {
                SqlCommand cmdType = new SqlCommand("select usertype from login where email = '" + txtUsername.Text + "'", con);
                string uType = cmdType.ExecuteScalar().ToString().Replace(" ", "");
                //Response.Redirect("Contact.aspx");
                Session["usertype"] = uType;
                Response.Redirect("Home.aspx");
            }
            else
            {
                Response.Write("<Script type=\"text/javascript\">alert('Incorrect ! Login Failed');</script>");

                //lblMessage.ForeColor = System.Drawing.Color.Red;
                //lblMessage.Text = "Login Failed!";
            }
            con.Close();




            //Response.Write("<script type=\"text/javascript\">alert('Login Successful.');</script>");
        }
    }
}