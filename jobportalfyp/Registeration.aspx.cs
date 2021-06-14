using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

using System.IO;
using System.Security.Cryptography;
using System.Text;

namespace jobportalfyp
{
    public partial class Registeration : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        private string Encrypt(string clearText)
        {
            string EncryptionKey = "MAKV2SPBNI99212";
            byte[] clearBytes = Encoding.Unicode.GetBytes(clearText);
            using (Aes encryptor = Aes.Create())
            {
                Rfc2898DeriveBytes pdb = new Rfc2898DeriveBytes(EncryptionKey, new byte[] { 0x49, 0x76, 0x61, 0x6e, 0x20, 0x4d, 0x65, 0x64, 0x76,
                    0x65,0x64, 0x65, 0x76 });
                encryptor.Key = pdb.GetBytes(32);
                encryptor.IV = pdb.GetBytes(16);
                using (MemoryStream ms = new MemoryStream())
                {
                    using (CryptoStream cs = new CryptoStream(ms, encryptor.CreateEncryptor(), CryptoStreamMode.Write))
                    {
                        cs.Write(clearBytes, 0, clearBytes.Length);
                        //cs.Close();
                    }
                    clearText = Convert.ToBase64String(ms.ToArray());
                }
            }
            return clearText;
        }


        private string Decrypt(string cipherText)
        {
            string EncryptionKey = "MAKV2SPBNI99212";
            byte[] cipherBytes = Convert.FromBase64String(cipherText);
            using (Aes encryptor = Aes.Create())
            {
                Rfc2898DeriveBytes pdb = new Rfc2898DeriveBytes(EncryptionKey, new byte[] { 0x49, 0x76, 0x61, 0x6e, 0x20, 0x4d, 0x65, 0x64,
                    0x76, 0x65, 0x64, 0x65, 0x76 });
                encryptor.Key = pdb.GetBytes(32);
                encryptor.IV = pdb.GetBytes(16);
                using (MemoryStream ms = new MemoryStream())
                {
                    using (CryptoStream cs = new CryptoStream(ms, encryptor.CreateDecryptor(), CryptoStreamMode.Write))
                    {
                        cs.Write(cipherBytes, 0, cipherBytes.Length);
                        //cs.Close();
                    }
                    cipherText = Encoding.Unicode.GetString(ms.ToArray());
                }
            }
            return cipherText;
        }



        protected void register_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionStringConnectionString"].ConnectionString);
            try
            {
                con.Open();
                string query = "select count(*) from Register where email ='" + txtEmail.Text + "'";
                SqlCommand cmd = new SqlCommand(query, con);
                int check = Convert.ToInt32(cmd.ExecuteScalar().ToString());
                if (check > 0)
                {
                    Response.Write("<script type=\"text/javascript\">alert('Email already exist.');</script>");

                }
                else
                if (txtlname.Text == "" || txtfname.Text == "" || txtEmail.Text == "" || txtPassword.Text == "" || txtRePass.Text == "" || usertype.Text == "")
                {
                    Response.Write("<Script type=\"text/javascript\">alert('Requied Fields cannot be left empty');</script>");
                }
                else
                {
                    string file_name = file_upload.FileName.ToString() + "";
                    file_upload.PostedFile.SaveAs(Server.MapPath("~/upload/") + file_name);

                    string query1 = "insert into Register (first_name, last_name, gender, email, password, con_password, country, city, message, file_upload, usertype) values (@fname,@lname, @gender, @email, @pword, @repass, @country, @city, @message, '" + file_name + "', @usertype)";
                    SqlCommand cmd1 = new SqlCommand(query1, con);
                    cmd1.Parameters.AddWithValue("@fname", txtfname.Text);
                    cmd1.Parameters.AddWithValue("@lname", txtlname.Text);
                    cmd1.Parameters.AddWithValue("@gender", rdbGender.Text);
                    cmd1.Parameters.AddWithValue("@email", txtEmail.Text);
                    cmd1.Parameters.AddWithValue("@pword", Encrypt(txtPassword.Text.Trim()));
                    cmd1.Parameters.AddWithValue("@repass", txtRePass.Text);
                    cmd1.Parameters.AddWithValue("@country", ddlCountry.Text);
                    cmd1.Parameters.AddWithValue("@city", ddlCity.Text);
                    cmd1.Parameters.AddWithValue("@message", ddlMessage.Text);
                    cmd1.Parameters.AddWithValue("@usertype", usertype.Text);

                    cmd1.ExecuteNonQuery();
                    Response.Write("<script type=\"text/javascript\">alert('Registration Successful.');</script>");
                    Response.Redirect("Login.aspx");
                }
                con.Close();
            }
            catch (Exception ex)
            {
                Response.Write("Error: " + ex.ToString());
            }





            /*SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionStringConnectionString"].ConnectionString);
            try
            {
                con.Open();
                Stream fs = file.PostedFile.InputStream;
                BinaryReader br = new BinaryReader(fs);
                byte[] content = br.ReadBytes((Int32)fs.Length);

                string query1 = "insert into register (fname, lname, gender, email, password, repassword, country, city, message, file) values (@fname, @lname, @gender, @email, @password, @repassword, @country, @city, @message, @file)";
                SqlCommand cmd1 = new SqlCommand(query1, con);
                cmd1.Parameters.AddWithValue("@fname", fname.Text);
                cmd1.Parameters.AddWithValue("@lname", lname.Text);
                cmd1.Parameters.AddWithValue("@gender", gender.Text);
                cmd1.Parameters.AddWithValue("@email", email.Text);
                cmd1.Parameters.AddWithValue("@password", password.Text);
                cmd1.Parameters.AddWithValue("@repassword", repassword.Text);
                cmd1.Parameters.AddWithValue("@country", country.Text);
                cmd1.Parameters.AddWithValue("@city", city.Text);
                cmd1.Parameters.AddWithValue("@message", message.Text);
                cmd1.Parameters.AddWithValue("@file", content);
                cmd1.ExecuteNonQuery();
                Label1.ForeColor = System.Drawing.Color.ForestGreen;
                Label1.Text = "Added Successfully";
                con.Close();
            }
            catch (Exception ex)
            {
                Response.Write("Error: " + ex.ToString());
            }*/
        }
    }
}