using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Net.Mail;
public partial class Student_myproject : System.Web.UI.Page
{
    LogicLayer li = new LogicLayer();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["userid"] == null)
        {
            Response.Redirect("login.aspx");
        }
        li.unm = Session["userid"].ToString();
        DataTable dti = li.getuname(li);

        string r1 = dti.Rows[0]["roll_no"].ToString();
        li.get = r1;
        DataTable dt = li.team(li);

        string defname = dt.Rows[0]["def_name"].ToString();
        string roll1 = dt.Rows[0]["member_1"].ToString();
        string roll2 = dt.Rows[0]["member_2"].ToString();

        udef.Text = defname;
        m2.Text = roll2;
        m1.Text = roll1;
       
    }
}