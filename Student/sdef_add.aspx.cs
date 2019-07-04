using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Student_sdef_add : System.Web.UI.Page
{
    LogicLayer li = new LogicLayer();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["userid"] == null)
        {
            Response.Redirect("login.aspx");
        }
    }
    protected void sdef_add_click(object sender,EventArgs e)
    {
        li.unm = Session["userid"].ToString();
        DataTable dti = li.gettitle(li);
        string c=sadd_def.Text;
        int f = 0;
        foreach (DataRow row in dti.Rows)
        {
            foreach (var item in row.ItemArray) {
                if (item == sadd_def.Text)
                {
                   // ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('definition already exist')</script>");
                    f = 1;
                }
            }
            if(f==1)
            {
                ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('definition already exist')</script>");
            }
        }
  


        li.sdefname = sadd_def.Text;
        li.sdefdesc = sadd_desc.Text;

        li.sadd_def(li);
        
    }
}