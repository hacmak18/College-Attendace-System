using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Student_login : System.Web.UI.Page
{
    LogicLayer li = new LogicLayer();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void button_click(object sender,EventArgs e)
    {
        DataTable dt = new DataTable();

        li.username = username.Text;
        li.password = password.Text;
        dt = li.slogin(li);
        if (dt.Rows.Count > 0)
        {
            Session["userid"] = username.Text;
            Response.Redirect("home.aspx");
        }
        else
        {
            ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Invalid Username and Password')</script>");
        }
    }
}