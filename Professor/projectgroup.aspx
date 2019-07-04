<%@ Page Title="" Language="C#" MasterPageFile="~/Professor/Faculty.master" AutoEventWireup="true" CodeFile="projectgroup.aspx.cs" Inherits="Professor_projectgroup" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>

    <div class="col-sm-10 ">
        <div style="background-color: ActiveBorder" class="col-md-sm-12">
            <h3 style="padding-left: 40%;"><u>Projects</u></h3>
        </div>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <asp:GridView ID="pgroup" runat="server" CellPadding="6" ForeColor="#333333" GridLines="Both" AutoGenerateColumns="False">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:TemplateField HeaderText="#">
                            <ItemTemplate>                                
                                <asp:Label ID="Label1" runat="server" Text='>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Defination id">
                           
                            <ItemTemplate>
                                <asp:Label ID="Label12" runat="server" Text='<%# Bind("def_id") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="definition name">
                            
                            <ItemTemplate>
                                <asp:Label ID="Label3" runat="server" Text='<%# Bind("def_name") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Member 1 roll no">
                       
                            <ItemTemplate>
                                <asp:Label ID="Label4" runat="server" Text='<%# Bind("member_1") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Member 2 roll no">
                       
                            <ItemTemplate>
                                <asp:Label ID="Label4" runat="server" Text='<%# Bind("member_2") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        
                        
                    </Columns>

                </asp:GridView>
            </ContentTemplate>
            <Triggers>
                <asp:AsyncPostBackTrigger ControlID="pgroup" EventName="RowCommand" />
            </Triggers>
        </asp:UpdatePanel>
    </div>
</asp:Content>

