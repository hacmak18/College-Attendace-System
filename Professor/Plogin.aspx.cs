using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


public partial class Professor_Plogin : System.Web.UI.Page
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
        dt = li.plogin(li);
        if (dt.Rows.Count > 0)
        {
            Session["fname"] = username.Text;
            ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('login successful')</script>");
            Response.Redirect("phome.aspx");
        }
        else
        {
            ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Invalid Username and Password')</script>");
        }
}
    
}
