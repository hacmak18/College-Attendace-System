<%@ Page Title="" Language="C#" MasterPageFile="~/Student/student.master" AutoEventWireup="true" CodeFile="attendance.aspx.cs" Inherits="Student_attendace" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style>
        .margin {
            margin-top:0.4%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div>
    <div style="width:100%;margin-top:2%;padding-left:20%">
    <div runat="server">
    <b style="margin-left:2%"> <asp:Label ID="subject" runat="server" Text="Subject" BackColor="Transparent" CssClass="text-primary"/> </b>
    <b style="margin-left:2%"> <asp:Label ID="Attend" runat="server" Text="Attend" BackColor="Transparent" CssClass="text-primary"/> </b>
    <b style="margin-left:2%"> <asp:Label ID="Total" runat="server" Text="Total" BackColor="Transparent" CssClass="text-primary"/> </b>
    <b style="margin-left:2%"> <asp:Label ID="Percentage" runat="server" Text="Percentage" BackColor="Transparent" CssClass="text-primary"/> </b>
    </div>
    <div  runat="server" class="margin">
    <b style="margin-left:2%"> <asp:Label ID="Label1" runat="server" Text="DBMS" BackColor="Transparent" CssClass="text-primary"/> </b>
    <b style="margin-left:4%"> <asp:Label ID="Label2" runat="server"  BackColor="Transparent" CssClass="text-primary"/> </b>
    <b style="margin-left:5%"> <asp:Label ID="Label3" runat="server" BackColor="Transparent" CssClass="text-primary"/> </b>
    <b style="margin-left:4%"> <asp:Label ID="Label4" runat="server" BackColor="Transparent" CssClass="text-primary"/> </b>
    </div>
      <div  runat="server" class="margin">
    <b style="margin-left:2%"> <asp:Label ID="Label5" runat="server" Text="DAA" BackColor="Transparent" CssClass="text-primary"/> </b>
    <b style="margin-left:4.8%"> <asp:Label ID="Label6" runat="server"  BackColor="Transparent" CssClass="text-primary"/> </b>
    <b style="margin-left:5%"> <asp:Label ID="Label7" runat="server"  BackColor="Transparent" CssClass="text-primary"/> </b>
    <b style="margin-left:4%"> <asp:Label ID="Label8" runat="server"  BackColor="Transparent" CssClass="text-primary"/> </b>
    </div>
    <div  runat="server" class="margin">
    <b style="margin-left:2%"> <asp:Label ID="Label9" runat="server" Text="TAFL" BackColor="Transparent" CssClass="text-primary"/> </b>
    <b style="margin-left:4.5%"> <asp:Label ID="Label10" runat="server"  BackColor="Transparent" CssClass="text-primary"/> </b>
    <b style="margin-left:5%"> <asp:Label ID="Label11" runat="server"  BackColor="Transparent" CssClass="text-primary"/> </b>
    <b style="margin-left:4%"> <asp:Label ID="Label12" runat="server"  BackColor="Transparent" CssClass="text-primary"/> </b>
    </div>
    <div  runat="server" class="margin">
    <b style="margin-left:2%"> <asp:Label ID="Label13" runat="server" Text="AMP" BackColor="Transparent" CssClass="text-primary"/> </b>
    <b style="margin-left:4.8%"> <asp:Label ID="Label14" runat="server"  BackColor="Transparent" CssClass="text-primary"/> </b>
    <b style="margin-left:5%"> <asp:Label ID="Label15" runat="server"  BackColor="Transparent" CssClass="text-primary"/> </b>
    <b style="margin-left:4%"> <asp:Label ID="Label16" runat="server"  BackColor="Transparent" CssClass="text-primary"/> </b>
    </div>
    <div  runat="server" class="margin">
    <b style="margin-left:2%"> <asp:Label ID="Label17" runat="server" Text="CJT" BackColor="Transparent" CssClass="text-primary"/> </b>
    <b style="margin-left:5.1%"> <asp:Label ID="Label18" runat="server" BackColor="Transparent" CssClass="text-primary"/> </b>
    <b style="margin-left:5%"> <asp:Label ID="Label19" runat="server"  BackColor="Transparent" CssClass="text-primary"/> </b>
    <b style="margin-left:4%"> <asp:Label ID="Label20" runat="server"  BackColor="Transparent" CssClass="text-primary"/> </b>
    </div>
     <div  runat="server" class="margin">
    <b style="margin-left:2%"> <asp:Label ID="Label21" runat="server" Text="Total" BackColor="Transparent" CssClass="text-primary"/> </b>
    <b style="margin-left:4.7%"> <asp:Label ID="Label22" runat="server" BackColor="Transparent" CssClass="text-primary"/> </b>
    <b style="margin-left:4.7%"> <asp:Label ID="Label23" runat="server" BackColor="Transparent" CssClass="text-primary"/> </b>
    <b style="margin-left:3.7%"> <asp:Label ID="Label24" runat="server" BackColor="Transparent" CssClass="text-primary"/> </b>
    </div>
    </div>
        </div>
</asp:Content>

