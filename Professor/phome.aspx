<%@ Page Title="" Language="C#" MasterPageFile="~/Professor/Faculty.master" AutoEventWireup="true" CodeFile="phome.aspx.cs" Inherits="Professor_phome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="../bootstrap/login/phome.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
         <div class="page-content" style="margin-bottom: 15.8%;">

        <div class="market-updates" style="margin-top:1%">
            <div class="col-md-4 market-update-gd">
                <div class="market-update-block clr-block-1">
                    <div class="col-md-8 market-update-left">

                        <h2><a href="students.aspx" style="color: white">Manage Students</a></h2>

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

                        <h2><a href="padd_defination.aspx" style="color: white">Add defination</a></h2>

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

                        <h2><a href="add_student.aspx" style="color: white">Add student</a></h2>

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

                        <h2><a href="active_defination.aspx" style="color: white">Active defination</a></h2>

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

