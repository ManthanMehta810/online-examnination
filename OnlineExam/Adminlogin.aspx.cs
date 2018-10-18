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
    public partial class Adminlogin : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ToString());
        

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Btnlogin_Click(object sender, EventArgs e)
        {
            cn.Open();
            SqlDataAdapter sda = new SqlDataAdapter("Select Count(*) From Adminlogin where Username='" + TextBox1.Text + "' and Password ='" + TextBox2.Text + "'", cn);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            if(dt.Rows[0][0].ToString() == "1")
            {
                Session["Admin"] = TextBox1.Text;
                Response.Redirect("Admin1.aspx");
            }
            else
            {
                ClientScript.RegisterStartupScript(GetType(), "", "<script>alert('Please Enter valid Username and Password ')</script>");
            }
        }
    }
}
