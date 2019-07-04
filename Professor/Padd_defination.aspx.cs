using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Professor_Padd_defination : System.Web.UI.Page
{
    LogicLayer li = new LogicLayer();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["fname"] == null)
        {
            Response.Redirect("plogin.aspx");
        }
    }
    protected void pdef_add_Click(object sender, EventArgs e)
    {

        li.pdefname = padd_def.Text;
        li.pdefdesc = padd_desc.Text;

        li.add_def(li);
    }
}