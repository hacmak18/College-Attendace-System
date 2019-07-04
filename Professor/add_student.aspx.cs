using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Professor_add_student : System.Web.UI.Page
{
    LogicLayer li = new LogicLayer();
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }
    protected void plsubmit_Click(object sender, EventArgs e)
    {
        li.fullname = fullname.Text;
        li.userid= userid.Text;
        li.email = email.Text;
        li.rollno = roll_no.Text;
        li.upassword = password.Text;
        li.parentmail = parentmail.Text;
        li.card_no = cardno.Text;

        li.Reg_User(li);
    }
}