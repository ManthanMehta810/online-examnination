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
    public partial class Changepassword : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ToString());
        SqlCommand cmd;
        SqlCommand cmd1;
        SqlCommand cmd2;
        String i;
        SqlDataReader dr;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Btnsave_Click(object sender, EventArgs e)
        {
            i = Convert.ToString(Session["user"]);
            cn.Open();
            cmd=new SqlCommand("Select password From Studreg where password ='" + Txtopassword.Text + "'", cn);
            dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                dr.Close();
                cmd2 = new SqlCommand("update Studreg set password='" + Txtnpassword.Text + "' where rollno=" + Convert.ToInt32(i) + "", cn);
                cmd1 = new SqlCommand("update Studentlogin set Password='" + Txtnpassword.Text + "' where Rollno=" + Convert.ToInt32(i) + "", cn);
                cmd2.ExecuteNonQuery();
                cmd1.ExecuteNonQuery();
                ClientScript.RegisterStartupScript(GetType(), "", "<script>alert('Password Changed Successfully ')</script>");

            }
            else
            {
                ClientScript.RegisterStartupScript(GetType(), "", "<script>alert('Please Enter valid old Password ')</script>");
            }
            cn.Close();
            
        }

        protected void Btncancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("stud1.aspx");
        }
    }
}
