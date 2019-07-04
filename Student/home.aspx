<%@ Page Title="" Language="C#" MasterPageFile="~/Student/student.master" AutoEventWireup="true" CodeFile="home.aspx.cs" Inherits="Student_home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="../bootstrap/login/phome.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="page-content" style="margin-bottom: 15.8%;">
        <asp:Label runat="server" ID="namel" CssClass="form-control" BackColor="Transparent" BorderColor="Transparent" style="margin-left:1%" Width="10%"/>
        <div class="market-updates" style="margin-top:1%">
            <div class="col-md-4 market-update-gd">
                <div class="market-update-block clr-block-1">
                    <div class="col-md-8 market-update-left">

                        <h2><a href="attendance.aspx" style="color: white">Attendance</a></h2>

                    </div>
                    <div class="col-md-4 market-update-right">
                        <i class="fa fa-file-text-o"></i>
                    </div>
                    <div class="clearfix"></div>
                </div>
            </div>
            <div class="col-md-4 market-update-gd">
                <div class="market-update-block clr-block-2">
                    <div class="col-md-8 market-update-left">

                        <h2><a href="available_def.aspx" style="color: white">Available defination</a></h2>

                    </div>
                    <div class="col-md-4 market-update-right">
                        <i class="fa fa-eye"></i>
                    </div>
                    <div class="clearfix"></div>
                </div>
            </div>
            <div class="col-md-4 market-update-gd" style="margin-top: 4%">
                <div class="market-update-block clr-block-3">
                    <div class="col-md-8 market-update-left">

                        <h2><a href="select.aspx" style="color: white">Select definition</a></h2>

                    </div>
                    <div class="col-md-4 market-update-right">
                        <i class="fa fa-envelope-o"></i>
                    </div>
                    <div class="clearfix"></div>
                </div>
            </div>

            <div class="col-md-4 market-update-gd" style="margin-top: 4%">
                <div class="market-update-block clr-block-4">
                    <div class="col-md-8 market-update-left">

                        <h2><a href="sdef_add.aspx" style="color: white">Add Defination</a></h2>

                    </div>
                    <div class="col-md-4 market-update-right">
                        <i class="fa fa-file-text-o"></i>
                    </div>
                    <div class="clearfix"></div>
                </div>
            </div>

            <div class="clearfix"></div>
        </div>

    </div>
</asp:Content>

