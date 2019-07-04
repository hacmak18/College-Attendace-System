using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Net.Mail;

public partial class Student_attendace : System.Web.UI.Page
{
    LogicLayer li = new LogicLayer();
    string mail;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["userid"] == null)
        {
            Response.Redirect("login.aspx");
        }
        li.attd = Session["userid"].ToString();
        DataTable dti = li.getname(li);
        DataTable dt = li.attview(li);
        DataTable dt1 = li.attview1(li);
        DataTable dt2 = li.attview2(li);
        DataTable dt3 = li.attview3(li);
        DataTable dt4 = li.attview4(li);


       mail = dti.Rows[0]["parent_email"].ToString();

       int attend = Convert.ToInt32(dt.Rows[0]["attend"]);
       int total = Convert.ToInt32(dt.Rows[0]["total"]);
        float perc1=((float)(attend)/total)*100;

        Label2.Text = attend.ToString();
        Label3.Text = total.ToString();
        Label4.Text = perc1.ToString();

        int attend1 = Convert.ToInt32(dt1.Rows[0]["attend"]);
        int total1 = Convert.ToInt32(dt1.Rows[0]["total"]);
        float perc12= ((float)(attend1) / total1) * 100;

        Label14.Text = attend1.ToString();
        Label15.Text = total1.ToString();
        Label16.Text = perc12.ToString();

        int attend2 = Convert.ToInt32(dt2.Rows[0]["attend"]);
        int total2= Convert.ToInt32(dt2.Rows[0]["total"]);
        float perc13 = ((float)(attend2) / total2) * 100;

        Label6.Text = attend2.ToString();
        Label7.Text = total2.ToString();
        Label8.Text = perc13.ToString();

        int attend3 = Convert.ToInt32(dt3.Rows[0]["attend"]);
        int total3= Convert.ToInt32(dt3.Rows[0]["total"]);
        float perc14 = ((float)(attend3) / total3) * 100;

        Label10.Text = attend3.ToString();
        Label11.Text = total3.ToString();
        Label12.Text = perc14.ToString();

        int attend4 = Convert.ToInt32(dt4.Rows[0]["attend"]);
        int total4 = Convert.ToInt32(dt4.Rows[0]["total"]);
        float perc15 = ((float)(attend4) / total4) * 100;

        Label18.Text = attend4.ToString();
        Label19.Text = total4.ToString();
        Label20.Text = perc15.ToString();

        int A=attend+attend1+attend2+attend3+attend4;
        int T=total+total1+total2+total3+total4;
        float PT=((float)(A) / T) * 100;
        Label22.Text=(A).ToString();
        Label23.Text=(T).ToString();
        Label24.Text = PT.ToString();
    }
       protected string SendEmail(string toAddress, string subject, string body)
   {
     string result ="Message Sent Successfully..!!";
     string senderID = "SenderEmailID";// use sender’s email id here..
     const string senderPassword = "Password"; // sender password here…
     try
     {
       SmtpClient smtp = new SmtpClient
       {
         Host = "smtp.gmail.com", // smtp server address here…
         Port = 587,
         EnableSsl = true,
         DeliveryMethod = SmtpDeliveryMethod.Network,
         Credentials = new System.Net.NetworkCredential(senderID, senderPassword),
         Timeout = 30000,
       };
       MailMessage message = new MailMessage(senderID, toAddress, subject, body);
       smtp.Send(message);
     }
     catch (Exception ex)
     {
       result = "Error sending email.!!!";
     }
     return result;
   }

}