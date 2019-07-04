using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Student_available_def : System.Web.UI.Page
{
    LogicLayer li = new LogicLayer();
    SqlConnection cn;
    SqlCommand cmd;
    SqlDataAdapter da;
    DataSet ds;
    DataTable dt;
    string s;
      
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["userid"] == null)
        {
            Response.Redirect("login.aspx");
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