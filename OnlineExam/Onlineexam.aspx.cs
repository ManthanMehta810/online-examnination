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
    public partial class Onlineexam : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ToString());
        SqlCommand cmd;
        SqlCommand cmd1;
        SqlCommand cmd2;
        SqlCommand cmd3;
        SqlCommand cmd4;
        protected void Page_Load(object sender, EventArgs e)
        {
            cn.Open();
            Label1.Text = Convert.ToString(Session["user"]);
            cmd = new SqlCommand("Select Question from Addques",cn);
            cmd1 = new SqlCommand("Select first from Addques", cn);
            cmd2 = new SqlCommand("Select second from Addques", cn);
            cmd3 = new SqlCommand("Select third from Addques", cn);
            cmd4 = new SqlCommand("Select fourth from Addques", cn);
            SqlDataReader dr;
            SqlDataReader dr1;
            SqlDataReader dr2;
            SqlDataReader dr3;
            SqlDataReader dr4;
            dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                Label3.Text = ("" + dr[0]);
            }
            dr.Close();
            dr1 = cmd1.ExecuteReader();
            if (dr1.Read())
            {
                RadioButton1.Text = ("" + dr1[0]);
            }
            dr1.Close();
            dr2 = cmd2.ExecuteReader();
            if (dr2.Read())
            {
                RadioButton2.Text = ("" + dr2[0]);
            }
            dr2.Close();
            dr3 = cmd3.ExecuteReader();
            if (dr3.Read())
            {
                RadioButton3.Text = ("" + dr3[0]);
            }
            dr3.Close();
            dr4 = cmd4.ExecuteReader();
            if (dr4.Read())
            {
                RadioButton4.Text = ("" + dr4[0]);
            }
            dr4.Close();
        }

        protected void Btnlogout_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Response.Redirect("Studlogin");
        }

        protected void RadioButton2_CheckedChanged(object sender, EventArgs e)
        {
           
        }
    }
}
