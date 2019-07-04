<%@ Page Title="" Language="C#" MasterPageFile="~/Professor/Faculty.master" AutoEventWireup="true" CodeFile="active_defination.aspx.cs" Inherits="Professor_active_defination" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="col-sm-10 " style="margin-bottom:50px">
        <div style="background-color:ActiveBorder" class="col-md-sm-12">
        <h3 style="padding-left:40%;"><b>Active defination</b></h3>  </div>
        <div style="margin-left:30%">
        <asp:GridView ID="defview" runat="server" CellPadding="10" ForeColor="#333333" GridLines="None" AlternatingRowStyle-BackColor="Black" AutoGenerateColumns="False">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:TemplateField HeaderText="Id">
                    <ItemTemplate>
                        <asp:Label ID="ctid" runat="server" Text='<%# Bind("pdef_id") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Title">
                    <ItemTemplate>
                        <asp:Label ID="ctname" runat="server" Text='<%# Bind("def_name") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Description">
                    <ItemTemplate>
                        <asp:Label ID="stname" runat="server" Text='<%# Bind("def_description") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                
            </Columns>
            
        </asp:GridView>
            </div>
        </div>
</asp:Content>

