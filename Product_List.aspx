<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Product_List.aspx.cs" Inherits="E_Commerce_Application.Product_List" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br /><br />
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="pid" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" PageSize="4" Width="950px">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:ImageField DataImageUrlField="pic" HeaderText="Image">
                <ControlStyle Height="100px" Width="100px" />
                <HeaderStyle HorizontalAlign="Center" />
                <ItemStyle HorizontalAlign="Center" />
            </asp:ImageField>
            <asp:BoundField DataField="pid" HeaderText="Prod ID" InsertVisible="False" ReadOnly="True" SortExpression="pid">
            <HeaderStyle HorizontalAlign="Center" />
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="pname" HeaderText="Product Name" SortExpression="pname">
            <HeaderStyle HorizontalAlign="Center" />
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="pcat" HeaderText="Prod Category" SortExpression="pcat">
            <HeaderStyle HorizontalAlign="Center" />
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="price" HeaderText="Prod Price" SortExpression="price">
            <HeaderStyle HorizontalAlign="Center" />
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="mdt" HeaderText="Date" SortExpression="mdt">
            <HeaderStyle HorizontalAlign="Center" />
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:CommandField HeaderText="Action" ShowDeleteButton="True" ShowEditButton="True">
            <ControlStyle BackColor="#33CCFF" BorderColor="#66CCFF" Height="30px" Width="100px" />
            <HeaderStyle HorizontalAlign="Center" />
            <ItemStyle HorizontalAlign="Center" />
            </asp:CommandField>
        </Columns>
        <EditRowStyle BackColor="#999999" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#E9E7E2" />
        <SortedAscendingHeaderStyle BackColor="#506C8C" />
        <SortedDescendingCellStyle BackColor="#FFFDF8" />
        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
</asp:GridView>
   
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:dbconn %>" DeleteCommand="DELETE FROM [product] WHERE [pid] = @original_pid AND (([pname] = @original_pname) OR ([pname] IS NULL AND @original_pname IS NULL)) AND (([pcat] = @original_pcat) OR ([pcat] IS NULL AND @original_pcat IS NULL)) AND (([price] = @original_price) OR ([price] IS NULL AND @original_price IS NULL)) AND (([pic] = @original_pic) OR ([pic] IS NULL AND @original_pic IS NULL)) AND (([mdt] = @original_mdt) OR ([mdt] IS NULL AND @original_mdt IS NULL))" InsertCommand="INSERT INTO [product] ([pname], [pcat], [price], [pic], [mdt]) VALUES (@pname, @pcat, @price, @pic, @mdt)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [product]" UpdateCommand="UPDATE [product] SET [pname] = @pname, [pcat] = @pcat, [price] = @price, [pic] = @pic, [mdt] = @mdt WHERE [pid] = @original_pid AND (([pname] = @original_pname) OR ([pname] IS NULL AND @original_pname IS NULL)) AND (([pcat] = @original_pcat) OR ([pcat] IS NULL AND @original_pcat IS NULL)) AND (([price] = @original_price) OR ([price] IS NULL AND @original_price IS NULL)) AND (([pic] = @original_pic) OR ([pic] IS NULL AND @original_pic IS NULL)) AND (([mdt] = @original_mdt) OR ([mdt] IS NULL AND @original_mdt IS NULL))">
    <DeleteParameters>
        <asp:Parameter Name="original_pid" Type="Int32" />
        <asp:Parameter Name="original_pname" Type="String" />
        <asp:Parameter Name="original_pcat" Type="String" />
        <asp:Parameter Name="original_price" Type="Decimal" />
        <asp:Parameter Name="original_pic" Type="String" />
        <asp:Parameter Name="original_mdt" Type="String" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="pname" Type="String" />
        <asp:Parameter Name="pcat" Type="String" />
        <asp:Parameter Name="price" Type="Decimal" />
        <asp:Parameter Name="pic" Type="String" />
        <asp:Parameter Name="mdt" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="pname" Type="String" />
        <asp:Parameter Name="pcat" Type="String" />
        <asp:Parameter Name="price" Type="Decimal" />
        <asp:Parameter Name="pic" Type="String" />
        <asp:Parameter Name="mdt" Type="String" />
        <asp:Parameter Name="original_pid" Type="Int32" />
        <asp:Parameter Name="original_pname" Type="String" />
        <asp:Parameter Name="original_pcat" Type="String" />
        <asp:Parameter Name="original_price" Type="Decimal" />
        <asp:Parameter Name="original_pic" Type="String" />
        <asp:Parameter Name="original_mdt" Type="String" />
    </UpdateParameters>
</asp:SqlDataSource>
   
</asp:Content>
