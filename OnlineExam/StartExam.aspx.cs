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
    public partial class StartExam : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ToString());
        SqlCommand cmd;
        SqlDataReader dr;
        string sub_nm, test_nm,rno;
        int qno;

        protected void Page_Load(object sender, EventArgs e)
        {
            sub_nm = Session["subnm"].ToString();
            test_nm = Session["testnm"].ToString();
            rno = Session["user"].ToString();
            if (!IsPostBack)
            {
                txt_marks.Text = "0";
            }
                //qno = 1;
                //lbl_qno.Text = qno.ToString();
                //cn.Open();
                //cmd = new SqlCommand("select * from Addques where qno=" + qno + "", cn);
                //dr = cmd.ExecuteReader();
                //if (dr.Read())
                //{

                //    lbl_que.Text = dr[3].ToString();
                //    rdb_opt1.Text = dr[4].ToString();
                //    rdb_opt2.Text = dr[5].ToString();
                //    rdb_opt3.Text = dr[6].ToString();
                //    rdb_opt4.Text = dr[7].ToString();
                //    txt_ans.Text = dr[8].ToString();
                //}
                //else
                //{


                //}



                //cn.Close();
            //}
        }

        protected void btn_submit_Click(object sender, EventArgs e)
        {
          
            string studans="";
            if(rdb_opt1.Checked==true )
            {
                studans =rdb_opt1.Text;
            }
            else if(rdb_opt2.Checked==true )
            {
                studans =rdb_opt2.Text;
            }
           else if(rdb_opt3.Checked==true )
            {
                studans =rdb_opt3.Text;
            }
            else if(rdb_opt4.Checked==true )
            {
                studans =rdb_opt4.Text;
            }
            else
            {
                  ClientScript.RegisterStartupScript(GetType(), "", "<script>alert('plz select any option..')</script>");
            }


            cn.Open();
            cmd = new SqlCommand("insert into Exam values(" + rno + ",'" + lbl_que.Text + "','" + txt_ans.Text + "','" + studans + "')", cn);
            cmd.ExecuteNonQuery();
            ClientScript.RegisterStartupScript(GetType(), "", "<script>alert('Answer submitted Successfully ')</script>");
            cn.Close();
            if (txt_ans.Text == studans)
            {
                int marks =Convert.ToInt16(txt_marks.Text);
                marks = marks + 1;
                txt_marks.Text = marks.ToString();
            }
            else
            {

                int marks = Convert.ToInt16(txt_marks.Text);
                marks = marks + 0;
                txt_marks.Text = marks.ToString();
            
            }
            btn_submit.Enabled = false;

            rdb_opt1.Checked = false;
            rdb_opt2.Checked = false;
            rdb_opt3.Checked = false;
            rdb_opt4.Checked = false;
        }

        protected void btn_next_Click(object sender, EventArgs e)
        {
            btn_submit.Enabled = true;
        

                int qno;
                qno = Convert.ToInt16(txt_qno.Text);
                qno = qno + 1;
                txt_qno.Text = qno.ToString();
                               cn.Open();
                cmd = new SqlCommand("select * from Addques where qno=" + txt_qno.Text + " and Subname='" + sub_nm + "' and Testname='" + test_nm + "'", cn);
                dr = cmd.ExecuteReader();
                if (dr.Read())
                {

                    lbl_que.Text = dr[3].ToString();
                    rdb_opt1.Text = dr[4].ToString();
                    rdb_opt2.Text = dr[5].ToString();
                    rdb_opt3.Text = dr[6].ToString();
                    rdb_opt4.Text = dr[7].ToString();
                    txt_ans.Text = dr[8].ToString();

                    
                }
                else
                {
                   btn_next.Enabled = false;
                    btn_submit.Enabled = false;
                    btn_getresult.Visible = true;
                    txt_qno.Text = "";

       

            }
         
            cn.Close();



                   }

        protected void btn_start_Click(object sender, EventArgs e)
        {
                   txt_qno.Text = "1";
         
            cn.Open();
            cmd = new SqlCommand("select * from Addques where qno=" + txt_qno.Text + " and Subname='"+sub_nm +"' and Testname='"+test_nm +"'", cn);
            dr = cmd.ExecuteReader();
            if (dr.Read())
            {

                lbl_que.Text = dr[3].ToString();
                rdb_opt1.Text = dr[4].ToString();
                rdb_opt2.Text = dr[5].ToString();
                rdb_opt3.Text = dr[6].ToString();
                rdb_opt4.Text = dr[7].ToString();
                txt_ans.Text = dr[8].ToString();
            }
        
            cn.Close();
            btn_start.Enabled = false;
        }

        protected void btn_getresult_Click(object sender, EventArgs e)
        {
            ClientScript.RegisterStartupScript(GetType(), "", "<script>alert('You get "+txt_marks.Text +" Marks....')</script>");
            cn.Open();
            cmd = new SqlCommand("insert into Result values(" + rno + ",'" + sub_nm + "','" + test_nm + "'," + txt_marks.Text + ")", cn);
            cmd.ExecuteNonQuery();
            cn.Close();
            ClientScript.RegisterStartupScript(GetType(), "", "<script>alert('Exam Ended.. ')</script>");
            btn_getresult.Enabled = false;
            //Response.Redirect("Exam.aspx");
        }
    }
}
