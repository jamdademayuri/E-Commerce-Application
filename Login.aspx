<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="E_Commerce_Application.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous" >
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

</head>
<body>
    <form id="form1" runat="server">
        <br />
        <div style="padding:20px;border:5px solid green;width:25%;position:absolute;left:30%">
           
  <div class="form-group">
    <label for="exampleInputEmail1">Email address</label>
      <asp:TextBox ID="TextBox1" Class="form-control" runat="server" placeholder="Enter Email ID"></asp:TextBox>
  </div>
            <div class="form-group">
  <label for="exampleInputEmail1">Password</label>
    <asp:TextBox ID="TextBox2" Class="form-control" runat="server" placeholder="Enter Password" TextMode="Password"></asp:TextBox>
</div>
  
            <asp:Button ID="Button1" class="btn btn-success" style="width:100%" runat="server" Text="Login" OnClick="Button1_Click" /><br />
             <a href="#" data-toggle="modal" data-target="#exampleModal" style="background:none;color:green;border:none;position:relative;left:90px;top:10px;text-decoration:underline;outline:none;"> Create New Account</a>

        </div>

<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Sign Up Page</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
                <div>
                    <div class="form-group">
  <label for="exampleInputEmail1">UserName</label>
    <asp:TextBox ID="TextBox5" Class="form-control" runat="server" placeholder="Enter UserName"></asp:TextBox>
</div>
           
  <div class="form-group">
    <label for="exampleInputEmail1">Email ID</label>
      <asp:TextBox ID="TextBox3" Class="form-control" runat="server" placeholder="Enter Email ID"></asp:TextBox>
  </div>
            <div class="form-group">
  <label for="exampleInputEmail1">Password</label>
    <asp:TextBox ID="TextBox4" Class="form-control" runat="server" placeholder="Enter Password" TextMode="Password"></asp:TextBox>
</div>
                                <div class="form-group">
  <label for="exampleInputEmail1">Profile</label>
            <asp:FileUpload Class="form-control" ID="FileUpload1" runat="server" />
</div>
  
            <asp:Button ID="Button2" class="btn btn-success" style="width:100%" runat="server" Text="Sign Up" OnClick="Button2_Click" /><br />
            

        </div>
      </div>
     
    </div>
  </div>
</div>
    </form>
</body>
</html>
