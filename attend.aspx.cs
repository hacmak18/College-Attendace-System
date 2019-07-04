using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class attend : System.Web.UI.Page
{
    LogicLayer li = new LogicLayer();
    string att;
    protected void Page_Load(object sender, EventArgs e)
    {
        accessid.Focus();
    }

    protected void attvalue_TextChanged(object sender, EventArgs e)
    {
        li.cardno = accessid.Text;
        DataTable dt1 = li.saccid(li);
        string username = dt1.Rows[0]["userid"].ToString();
        li.satt = 1 + "";
        li.unme = username;
        li.attvalue = (string)Session[att];

        if (li.attvalue == "amp") {
          DataTable dt3 = li.checkamp(li);
          if (dt3.Rows[0]["checks"].ToString() == "1")
          {
              accessid.Text = null;
          }
          else
          {
              li.insatt(li);
          }
        }
        else if (li.attvalue == "dbms") 
        { 
            DataTable dt4 = li.checkdbms(li);
            if (dt4.Rows[0]["checks"].ToString() == "1")
            {
                accessid.Text = null;
            }
            else
            {
                li.insatt(li);
            }
        
        }
        else if (li.attvalue == "cjt")
        {
           DataTable dt5 = li.checkcjt(li);
           if (dt5.Rows[0]["checks"].ToString() == "1")
           {
               accessid.Text = null;
           }
           else
           {
               li.insatt(li);
           }
        }
        else if (li.attvalue == "daa") 
        {
            DataTable dt6 = li.checkdaa(li);
            if (dt6.Rows[0]["checks"].ToString() == "1")
            {
                accessid.Text = null;
            }
            else
            {
                li.insatt(li);
            }
        }
        else if (li.attvalue == "tafl")
        {
            DataTable dt7 = li.checktafl(li);
             if (dt7.Rows[0]["checks"].ToString() == "1")
             {
                 accessid.Text = null;
             }
             else
             {
                 li.insatt(li);
             }
        }

        //if( dt3.Rows[0]["checks"].ToString() =="1")
        //{
        //    accessid.Text = null;
        //}
        //else{
        //li.insatt(li);
        //    }
       accessid.Text = null;
    }
    protected void subselect_SelectedIndexChanged(object sender, EventArgs e)
    {
        li.subc = subselect.SelectedValue;
        li.reset(li);
        li.add(li);
        Session[att] = li.subc;
    }
}