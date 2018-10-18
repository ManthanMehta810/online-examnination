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
    public partial class Addquestion : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ToString());
        SqlCommand cmd;
        SqlCommand cmd1;
        SqlCommand cmd2;
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = Convert.ToString(Session["Admin"]);
            cn.Open();
            cmd =new SqlCommand("select distinct(Subname) from Addsub",cn);
           
            SqlDataReader dr;
       
            dr = cmd.ExecuteReader();
            while(dr.Read())
            {
                Dsub.Items.Add(""+dr[0]);

            }
            dr.Close();
          
            cn.Close();
        }

        public void clear()
        {

            txt_ans.Text = "";
            Txt1.Text = "";
            Txt2.Text = "";
            Txt3.Text = "";
            Txt4.Text = "";
            TxtQues.Text = "";
        }

        protected void Btnsave_Click(object sender, EventArgs e)
        {
            cn.Open();
            cmd2 = new SqlCommand("Insert into Addques values('" + Dsub.Text + "','" + Dtest.Text + "',"+txtqno.Text+",'" + TxtQues.Text + "','" + Txt1.Text + "','" + Txt2.Text + "','" + Txt3.Text + "','" + Txt4.Text + "','" + txt_ans.Text + "')", cn);
            cmd2.ExecuteNonQuery();
            ClientScript.RegisterStartupScript(GetType(), "", "<script>alert('Question Saved Successfully ')</script>");
            cn.Close();
            clear();

            int qno;
            qno = Convert.ToInt16(txtqno.Text);
            qno = qno + 1;
            txtqno.Text = qno.ToString();
        }

        protected void Btnlogout_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Response.Redirect("Adminlogin.aspx");
        }

        protected void Btncancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("Admin1.aspx");
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

        protected void Dtest_SelectedIndexChanged1(object sender, EventArgs e)
        {
            txtqno.Text = "1";

        }  
    }
}
