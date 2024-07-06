<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="E_Commerce_Application.Cart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <br /><br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" GridLines="Horizontal" Width="953px" OnRowDeleting="GridView1_RowDeleting">
        <Columns>
            <asp:TemplateField HeaderText="P_Image">
                <ItemTemplate>
                    <asp:Image ID="Image1" Height="50" Width="50" ImageUrl='<%#Eval("pic") %>' runat="server" />
                </ItemTemplate>
                <HeaderStyle HorizontalAlign="Center" />
            </asp:TemplateField>

              <asp:TemplateField HeaderText="P_ID">
                <ItemTemplate>
                    <asp:Label ID="Label7" runat="server" Text='<%#Eval("pid") %>'></asp:Label>    
                </ItemTemplate>
                  <HeaderStyle HorizontalAlign="Center" />
            </asp:TemplateField>


            <asp:TemplateField HeaderText="P_Name">
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%#Eval("pname") %>'></asp:Label>    
                </ItemTemplate>
                <HeaderStyle HorizontalAlign="Center" />
            </asp:TemplateField>


                   <asp:TemplateField HeaderText="P_Category">
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%#Eval("pcat") %>'></asp:Label>    
                </ItemTemplate>
                       <HeaderStyle HorizontalAlign="Center" />
            </asp:TemplateField>

                <asp:TemplateField HeaderText="P_Price">
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%#Eval("perprice") %>'></asp:Label>    
                </ItemTemplate>
                    <HeaderStyle HorizontalAlign="Center" />
            </asp:TemplateField>

                <asp:TemplateField HeaderText="p_Quantity">
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%#Eval("qty") %>'></asp:Label>    
                </ItemTemplate>
                    <HeaderStyle HorizontalAlign="Center" />
            </asp:TemplateField>

                <asp:TemplateField HeaderText="Total_Price">
                <ItemTemplate>
                    <asp:Label ID="Label5" runat="server" Text='<%#Eval("price") %>'></asp:Label>    
                </ItemTemplate>
                    <HeaderStyle HorizontalAlign="Center" />
            </asp:TemplateField>

             <asp:TemplateField HeaderText="Date">
                <ItemTemplate>
                    <asp:Label ID="Label6" runat="server" Text='<%#Eval("dt") %>'></asp:Label>    
                </ItemTemplate>
                 <HeaderStyle HorizontalAlign="Center" />
            </asp:TemplateField>

            <asp:TemplateField HeaderText="Action">
                <ItemTemplate>
                    <div >
                        <i class="fa fa-trash" style="color:white;position:relative;left:35px;"></i> <asp:Button ID="Button1" runat="server" CommandName="Delete" Text="" style="height:30px;width:50px;background-color:red;border:2px solid red;border-radius:10px;cursor:pointer"></asp:Button>
                    </div>
                   
                </ItemTemplate>

            </asp:TemplateField>

        </Columns>
         
        <FooterStyle BackColor="White" ForeColor="#333333" />
        <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="White" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F7F7F7" />
        <SortedAscendingHeaderStyle BackColor="#487575" />
        <SortedDescendingCellStyle BackColor="#E5E5E5" />
        <SortedDescendingHeaderStyle BackColor="#275353" />
         
    </asp:GridView>


   <div style="background:white;border:2px double green;padding:10px;width:300px"><b>Grand Total:</b> 
       &nbsp;<asp:Label ID="Label8" runat="server"></asp:Label>&nbsp;RS.
    </div>
    <br />
    <div style="width:30%">
        Address<asp:TextBox ID="TextBox1" class="form-control" runat="server" placeholder="Enter Address..." TextMode="MultiLine"></asp:TextBox>
        <br />
         Contact No<asp:TextBox ID="TextBox2" class="form-control" runat="server" placeholder="Enter Contact No"></asp:TextBox>

    </div>

    

    <br />

   &emsp;&emsp;<a href="All_Products.aspx"><button type="button" class="btn btn-danger"><i class="fa fa-arrow-left" style="color:White;font-size:20px"></i> Continue Shopping</button></a>
            
     &emsp;&emsp;<asp:Button ID="Button2" Class="btn btn-success" runat="server" Text="Place Order" OnClick="Button2_Click" />
   
    
  

</asp:Content>
