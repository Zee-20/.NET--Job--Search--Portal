using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

namespace jobportalfyp
{
    public partial class Counter : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            this.countMe();

            DataSet tmpDs = new DataSet();
            tmpDs.ReadXml(Server.MapPath("~/counter.xml"));

            lblCounter.Text = tmpDs.Tables[0].Rows[0]["hits"].ToString();


            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionStringConnectionString"].ConnectionString);
            try
            {
                con.Open();
                string query = "select count(*) from register";
                SqlCommand cmd = new SqlCommand(query, con);
                int RecordCount = Convert.ToInt32(cmd.ExecuteScalar());
                
                Label1.Text = Convert.ToString(RecordCount);
            }
            catch (Exception ex)
            {
                Response.Write("Error: " + ex.ToString());
            }
        }

        private void countMe()
        {
            DataSet tmpDs = new DataSet();
            tmpDs.ReadXml(Server.MapPath("~/counter.xml"));

            int hits = Int32.Parse(tmpDs.Tables[0].Rows[0]["hits"].ToString());

            hits += 1;

            tmpDs.Tables[0].Rows[0]["hits"] = hits.ToString();

            tmpDs.WriteXml(Server.MapPath("~/counter.xml"));

        }




    }
}