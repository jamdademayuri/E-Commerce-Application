<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="Delete_Account.aspx.cs" Inherits="E_Commerce_Application.Delete_Account" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DataList ID="DataList1" runat="server" OnItemCommand="DataList1_ItemCommand">
        <ItemTEmplate>
                            <div class="card" style="width: 18rem;">
          <img class="card-img-top" height="100" width="100" src='<%#Eval("acc_profile") %>' alt="Card image cap">
          <div class="card-body">
            <h5 class="card-title"><%#Eval("acc_user") %></h5>
            
          </div>
          <ul class="list-group list-group-flush">
            <li class="list-group-item"><b>Email ID: </b><%#Eval("acc_email") %></li>
            <li class="list-group-item"><b>Role: </b><%#Eval("acc_role") %></li>
           
          </ul>
          <div class="card-body">
              <asp:Button ID="Button1" class="btn btn-danger" runat="server" CommandName="Delete" CommandArgument='<%#Eval("id") %>' Text="Delete Account" /> 
          </div>
</div>
        </ItemTEmplate>
    </asp:DataList>

</asp:Content>
