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
    public partial class Addsubject : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ToString());
        SqlCommand cmd;
        int i;
        SqlDataReader ard;
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = Convert.ToString(Session["Admin"]);
            cn.Open();
            cmd = new SqlCommand("Select isnull(max(Sudid),0) From Addsub", cn);
            ard = cmd.ExecuteReader();
            if (ard.Read())
            {
                i = Convert.ToInt32(ard[0]);
                i++;
            }
            ard.Close();
            TxtSubid.Text = i.ToString();
            cn.Close();
        }


        protected void Btnsave_Click1(object sender, EventArgs e)
        {
            cn.Open();
            cmd = new SqlCommand("insert into Addsub values(" + TxtSubid.Text + ",'" + Txtname.Text + "','"+DropDownList1.Text+"')", cn);
            cmd.ExecuteNonQuery();
            ClientScript.RegisterStartupScript(GetType(), "", "<script>alert('Subject Added Successfully')</script>");
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
