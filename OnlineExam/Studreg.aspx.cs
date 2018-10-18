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
    public partial class Studreg : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ToString());
        SqlCommand cmd;
        SqlCommand cmd1;
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = Convert.ToString(Session["Admin"]);
        }

        protected void Btnsave_Click(object sender, EventArgs e)
        {
            cn.Open();
            cmd = new SqlCommand("insert into Studreg values('" + Txtname.Text + "','" + Txtaddress.Text + "','" + DropDownList1.Text + "','" + Txtemail.Text + "'," + Txtno.Text + ",'" + DropDownList2.Text + "','" + DropDownList3.Text + "'," + Txtrollno.Text + ",'" + Txtpass.Text + "')", cn);
            cmd1 = new SqlCommand("insert into Studentlogin values('"+Txtrollno.Text+"','"+Txtpass.Text+"')",cn);
            cmd.ExecuteNonQuery();
            cmd1.ExecuteNonQuery();
            ClientScript.RegisterStartupScript(GetType(), "", "<script>alert('Registration done')</script>");

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

        protected void Btncancel_Click1(object sender, EventArgs e)
        {
            Response.Redirect("Admin1.aspx");
        }
    }
}
