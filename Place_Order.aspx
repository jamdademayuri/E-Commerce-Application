<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="Place_Order.aspx.cs" Inherits="E_Commerce_Application.Place_Order" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:Panel ID="Panel1" runat="server" Height="594px">
        <table style="width: 100%; height: 522px;">
            <tr>
                <td style="border-style: solid; width: 159px; height: 144px;">Order ID:<asp:Label ID="Label6" runat="server"></asp:Label>
                </td>
                <td style="border-style: solid; height: 144px;">
                    <br />
                    Email ID:<asp:Label ID="Label7" runat="server"></asp:Label>
                    <br />
                    <br />
                    <br />
                    Contact No:<asp:Label ID="Label8" runat="server"></asp:Label>
                    <br />
                </td>
            </tr>
            <tr>
                <td style="border-style: solid; width: 159px;">Seller Address:<br />
                    <br />
                    At post Tirt(Khurd) Taluka-Tuljapur
                    <br />
                    Dist osmanabad</td>
                <td style="border-style: solid">Buyer Address:<br />
                    <asp:Label ID="Label9" runat="server"></asp:Label>
                    <br />
                    <br />
                    <br />
                    <br />
                </td>
            </tr>
            <tr>
                <td colspan="2" style="width: 517px; height: 65px;">
                    <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Width="982px" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                       
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="pid" HeaderText="PID" InsertVisible="False" ReadOnly="True" SortExpression="pid">
                            <HeaderStyle HorizontalAlign="Center" />
                            <ItemStyle HorizontalAlign="Center" />
                            </asp:BoundField>
                            <asp:BoundField DataField="pname" HeaderText="Product Name" SortExpression="pname">
                            <HeaderStyle HorizontalAlign="Center" />
                            <ItemStyle HorizontalAlign="Center" />
                            </asp:BoundField>
                            <asp:BoundField DataField="pcat" HeaderText="Product Category" SortExpression="pcat">
                            <HeaderStyle HorizontalAlign="Center" />
                            <ItemStyle HorizontalAlign="Center" />
                            </asp:BoundField>
                            <asp:BoundField DataField="perprice" HeaderText="Per Price" SortExpression="perprice">
                            <HeaderStyle HorizontalAlign="Center" />
                            <ItemStyle HorizontalAlign="Center" />
                            </asp:BoundField>
                            <asp:BoundField DataField="qty" HeaderText="Quantity" SortExpression="qty">
                            <HeaderStyle HorizontalAlign="Center" />
                            <ItemStyle HorizontalAlign="Center" />
                            </asp:BoundField>
                            <asp:BoundField DataField="price" HeaderText="Total Price" SortExpression="price">
                            <HeaderStyle HorizontalAlign="Center" />
                            <ItemStyle HorizontalAlign="Center" />
                            </asp:BoundField>
                        </Columns>
                        <EditRowStyle BackColor="#7C6F57" />
                        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#E3EAEB" />
                        <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#F8FAFA" />
                        <SortedAscendingHeaderStyle BackColor="#246B61" />
                        <SortedDescendingCellStyle BackColor="#D4DFE1" />
                        <SortedDescendingHeaderStyle BackColor="#15524A" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbconn %>" SelectCommand="SELECT * FROM [placeorder] WHERE ([suser] = @suser)">
                        <SelectParameters>
                            <asp:SessionParameter Name="suser" SessionField="MyUser" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
                
            </tr>
            <tr>
                <td colspan="2" style="border-style: solid; height: 26px; width: 517px">Grand Total:<asp:Label ID="Label10" runat="server"></asp:Label>
                </td>
                
            </tr>
        </table>

    </asp:Panel>
</asp:Content>
