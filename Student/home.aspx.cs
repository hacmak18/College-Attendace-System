using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;


public partial class Student_home : System.Web.UI.Page
{
    LogicLayer li = new LogicLayer();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["userid"] == null)
        {
            Response.Redirect("login.aspx");
        }
        li.attd = Session["userid"].ToString();
        DataTable dt = li.getname(li);
        string x= dt.Rows[0]["sname"].ToString();
        namel.Text = "Hi, " + x;
    }
}