<%@ Page Title="" Language="C#" MasterPageFile="~/Professor/Faculty.master" AutoEventWireup="true" CodeFile="students.aspx.cs" Inherits="Professor_students" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <div class="col-sm-10 ">
        <div style="background-color: ActiveBorder" class="col-md-sm-12">
            <h3 style="padding-left: 40%;"><u>Students</u></h3>
        </div>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <asp:GridView ID="gvstudent" runat="server" CellPadding="6" ForeColor="#333333" GridLines="None" AutoGenerateColumns="False">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:TemplateField HeaderText="#">
                            <ItemTemplate>                                >
                                <asp:Label ID="Label1" runat="server" Text='<%# Bind("sid") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Full Name">
                           
                            <ItemTemplate>
                                <asp:Label ID="Label12" runat="server" Text='<%# Bind("sname") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Userid">
                            
                            <ItemTemplate>
                                <asp:Label ID="Label3" runat="server" Text='<%# Bind("userid") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Rollno.">
                       
                            <ItemTemplate>
                                <asp:Label ID="Label4" runat="server" Text='<%# Bind("roll_no") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Email id">
                       
                            <ItemTemplate>
                                <asp:Label ID="Label5" runat="server" Text='<%# Bind("email") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Parent mail">
                    
                            <ItemTemplate>
                                <asp:Label ID="Label6" runat="server" Text='<%# Bind("Parent_email") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>

                </asp:GridView>
            </ContentTemplate>
            <Triggers>
                <asp:AsyncPostBackTrigger ControlID="gvstudent" EventName="RowCommand" />
            </Triggers>
        </asp:UpdatePanel>
    </div>
</asp:Content>

