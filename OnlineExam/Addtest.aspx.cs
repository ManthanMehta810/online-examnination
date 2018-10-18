using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Xml.Linq;
using System.Data.SqlClient;

namespace OnlineExam
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ToString());
        SqlCommand cmd;
        SqlCommand cmd1;
        SqlDataReader ard;
      //  int id;
        int i;
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = Convert.ToString(Session["Admin"]);
            cn.Open();
            cmd = new SqlCommand("Select isnull(max(Testid),0) From Addtest",cn);
            ard= cmd.ExecuteReader();
            if(ard.Read())
            {
                i = Convert.ToInt32 (ard[0]);
                i++;
            }
            ard.Close();


           // cn.Open();
            cmd = new SqlCommand("select Subname from Addsub", cn);
             SqlDataReader dr;
           dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                Dsub.Items.Add("" + dr[0]);
            }
            dr.Close();
            cn.Close();
        }

        protected void Btnsave_Click(object sender, EventArgs e)
        {
            cn.Open();
            cmd1 = new SqlCommand("insert into Addtest values("+i+",'" + Txttestname.Text + "','" + Dsub .Text + "')", cn);
            cmd1.ExecuteNonQuery();
            cn.Close();
        }

        protected void Btncancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("Admin1.aspx");
        }

        protected void Btnlogout_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Response.Redirect("Adminlogin.aspx");
        }
        
    }
}
