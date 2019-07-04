using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Professor_projectgroup : System.Web.UI.Page
{
    LogicLayer li = new LogicLayer();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            fillgrid();
        }
    }
    void fillgrid()
    {
        pgroup.DataSource = li.view_group(li);
        pgroup.DataBind();

    }
}