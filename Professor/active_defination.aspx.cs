using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Professor_active_defination : System.Web.UI.Page
{
    LogicLayer li=new LogicLayer();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["fname"] == null)
        {
            Response.Redirect("plogin.aspx");
        }

        if (!IsPostBack)
        {
            fillgrid();
        }
    }

        void fillgrid()
     {
        defview.DataSource = li.defiview(li);
         defview.DataBind();
     }
  }
