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
    public partial class Studlogin : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ToString());
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            cn.Open();
            SqlDataAdapter sda = new SqlDataAdapter("Select Count(*) From Studentlogin where Rollno='" + TextBox1.Text + "' and password ='" + TextBox2.Text + "'", cn);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            if (dt.Rows[0][0].ToString() == "1")
            {
                Session["user"] = TextBox1.Text;
                Response.Redirect("Stud1.aspx");
                cn.Close();
            }
            else
            {
                ClientScript.RegisterStartupScript(GetType(), "", "<script>alert('Please Enter valid Roll No. and Password ')</script>");
            }
        }
    }
}
