<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Add_Products.aspx.cs" Inherits="E_Commerce_Application.Add_Products" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
Add Products Title
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 <br /><br />
<h1 style="text-align:center;color:purple;padding:5px;border:2px solid purple;font-style:italic">Add Products</h1>
   
    <div style="width:30%;padding:40px;border:5px solid purple;position:relative;left:35%;">
  <div class="form-group">
    <label for="exampleInputEmail1">Product Name</label>
      <asp:TextBox ID="TextBox1" Class="form-control" runat="server" placeholder="Enter Product Name"></asp:TextBox>
  </div>
  
    <div class="form-group">
  <label for="exampleInputEmail1">Product Category</label>
        <asp:DropDownList Class="form-control" ID="DropDownList1" runat="server">
            <asp:ListItem>Electronics</asp:ListItem>
            <asp:ListItem>Foods</asp:ListItem>
            <asp:ListItem>Cloths</asp:ListItem>
            <asp:ListItem>Others</asp:ListItem>
        </asp:DropDownList>
</div>
  <div class="form-group">
  <label for="exampleInputEmail1">Product Price</label>
    <asp:TextBox ID="TextBox2" Class="form-control" runat="server" placeholder="Enter Product Price"></asp:TextBox>
</div>
  
    <div class="form-group">
  <label for="exampleInputEmail1">Product Pic</label>
        <asp:FileUpload Class="form-control" ID="FileUpload1" runat="server" />
</div>
        <asp:Button ID="Button1" Class="btn btn-info" runat="server" Text="ADD" OnClick="Button1_Click" />
  
 
        </div>
</asp:Content>
