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
    public partial class Exam : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ToString());
        SqlCommand cmd,cmd1;
        protected void Page_Load(object sender, EventArgs e)
        {

            Label4.Text = Convert.ToString(Session["user"]);
            cn.Open();
            if (!IsPostBack)
            {

                cmd = new SqlCommand("select distinct(Subname) from Addsub", cn);

                SqlDataReader dr;

                dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    Dsub.Items.Add("" + dr[0]);
                }
                dr.Close();
            }
            cn.Close();
        }

      

        protected void Btnlogout_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Response.Redirect("Studlogin.aspx");
        }

        protected void btn_starttest_Click(object sender, EventArgs e)
        {
            Session["subnm"] = Dsub.Text;
            Session["testnm"] = Dtest.Text;
            Response.Redirect("StartExam.aspx");
        }

        protected void Dsub_SelectedIndexChanged(object sender, EventArgs e)
        {
            SqlDataReader dr1;
            cn.Open();
         
                cmd1 = new SqlCommand("select distinct(Testname) from Addtest where Subjectname='" + Dsub.Text + "'", cn);
                dr1 = cmd1.ExecuteReader();
                while (dr1.Read())
                {
                    Dtest.Items.Add("" + dr1[0]);
                }
                dr1.Close();
           
            cn.Close();
        }
    }
}
