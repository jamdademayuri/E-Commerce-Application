<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="All_Products.aspx.cs" Inherits="E_Commerce_Application.All_Products" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <asp:Button ID="Button2" Class="btn btn-danger" runat="server" Text="Low to High" OnClick="Button2_Click" />
       <asp:Button ID="Button3" Class="btn btn-danger" runat="server" Text="Hign to Low" OnClick="Button3_Click" />

    
    <asp:DataList ID="DataList1" runat="server" style="margin-right: 0px" RepeatColumns="5" RepeatDirection="Horizontal" OnItemCommand="DataList1_ItemCommand">
    <ItemTemplate>
                <div class="card" style="width: 18rem;">
      <img class="card-img-top" height="100" width="100" src='<%#Eval("pic") %>' alt="Card image cap">
      <div class="card-body">
        <h5 class="card-title"><b>Product Name:</b><%#Eval("pname") %></h5>
        
      </div>
      <ul class="list-group list-group-flush">
        <li class="list-group-item"><b>Product Category:</b><%#Eval("pcat") %></li>
        <li class="list-group-item"><b>Product Price:</b><%#Eval("price") %></li>
           <li class="list-group-item"><b>Quantity:</b><asp:DropDownList Class="form-control" ID="DropDownList1" runat="server">
                      <asp:ListItem>1</asp:ListItem>
                <asp:ListItem>2</asp:ListItem>
                <asp:ListItem>3</asp:ListItem>
                <asp:ListItem>4</asp:ListItem>
                <asp:ListItem>5</asp:ListItem>
              </asp:DropDownList> </li>
  
      </ul>
      <div class="card-body">
          <asp:Button ID="Button1" class="btn btn-info" CommandName="AddToCart" CommandArgument='<%#Eval("pid") %>' runat="server" Text="ADD TO CART"/>     
      </div>
    </div>
    </ItemTemplate>
</asp:DataList>
    



</asp:Content>
