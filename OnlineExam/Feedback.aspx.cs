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
    public partial class Feedback : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ToString());
        SqlCommand cmd;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Btnsub_Click(object sender, EventArgs e)
        {
            cn.Open();
            cmd = new SqlCommand("Insert into Feedback values('" + Txtname.Text + "','" + Txtemail.Text + "','" + Txtcomments.Text + "')", cn);
            cmd.ExecuteNonQuery();
            ClientScript.RegisterStartupScript(GetType(), "", "<script>alert('Feedback Saved Successfully ')</script>");
        }
    }
}
