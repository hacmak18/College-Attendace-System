using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Student_select : System.Web.UI.Page
{
    LogicLayer li = new LogicLayer();
    protected void Page_Load(object sender, EventArgs e)
    {
        li.unm = Session["userid"].ToString();
        DataTable dti = li.sroll(li);

        string r=dti.Rows[0]["roll_no"].ToString();

        li.get = r;
        DataTable dt = li.team(li);

        if (dt.Rows.Count > 1)
        {
            ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Project already selected')</script>");
            plsubmit.Enabled = false;
            sdefid.Enabled = false;
            roll_no.Enabled = false;
            roll_no1.Enabled = false;
        }

    }
    protected void plsubmit_Click(object sender, EventArgs e)
    {


        li.sdefid = sdefid.Text;
        li.roll_no = roll_no.Text;
        li.roll_no1 = roll_no1.Text;

        li.sdef(li);
    }
}