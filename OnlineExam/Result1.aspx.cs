using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using CrystalDecisions;
using System.Globalization;
namespace OnlineExam
{
    public partial class Result1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Home.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            CultureInfo.CreateSpecificCulture("en-US");
            int userid;
            userid = Convert.ToInt32(TextBox1.Text);
            resultrpt r = new resultrpt();
            CrystalReportViewer1.ReportSource = r;
            CrystalReportViewer1.SelectionFormula = "{Result.rno}=" + userid + "";
        }
    }
}
