<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="User_List.aspx.cs" Inherits="E_Commerce_Application.User_List" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br /><br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical" Height="183px" Width="645px" OnRowDeleting="GridView1_RowDeleting">
        <AlternatingRowStyle BackColor="#DCDCDC" />
        <Columns>
            <asp:TemplateField HeaderText="Profile">
                <ItemTemplate>
                    <asp:Image Height="100" Width="100" ImageUrl='<%#Eval("acc_profile") %>' ID="Image1" runat="server" />
                </ItemTemplate>
            </asp:TemplateField>

             <asp:TemplateField HeaderText="ID">
     <ItemTemplate>
         <asp:Label ID="Label1" runat="server" Text='<%#Eval("id") %>'></asp:Label>
     </ItemTemplate>
 </asp:TemplateField>

       <asp:TemplateField HeaderText="UserName">
    <ItemTemplate>
        <asp:Label ID="Label2" runat="server" Text='<%#Eval("acc_user") %>'></asp:Label>
    </ItemTemplate>
</asp:TemplateField>

        <asp:TemplateField HeaderText="Email">
    <ItemTemplate>
        <asp:Label ID="Label3" runat="server" Text='<%#Eval("acc_email") %>'></asp:Label>
    </ItemTemplate>
</asp:TemplateField>

     <asp:TemplateField HeaderText="Role">
    <ItemTemplate>
        <asp:Label ID="Label4" runat="server" Text='<%#Eval("acc_role") %>'></asp:Label>
    </ItemTemplate>
</asp:TemplateField>
            <asp:TemplateField HeaderText="Action">
                <ItemTemplate>
                    <asp:Button ID="Button1" Class="btn btn-danger" CommandName="Delete"  runat="server" Text="Delete" />
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
        <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
        <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
        <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#0000A9" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#000065" />
    </asp:GridView>
</asp:Content>
