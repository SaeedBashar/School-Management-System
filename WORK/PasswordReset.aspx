<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="PasswordReset.aspx.vb" Inherits="WORK.PasswordReset" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <link href="lib/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <link href="lib/font-awesome/css/all.css" rel="stylesheet" />

    <title>EasyMan | Password Reset Page</title>
    <style>
        .MyCon {
                min-width:450px;
                max-width: 450px;
                margin: auto;
                height:auto;
                
                margin-top: 2%;
                border-radius: 6px;
            }
        h3 {
            border-bottom: 1px solid #1b1717;
            font-size: 30px;
            padding: 10px 0;
            width:80%;
            margin: auto;
            margin-top: 5%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <h3>Enter the following to reset your password</h3>
        <div class="container MyCon">
            <div class="row">
                <div class="col" style="background-color:#2388f6;color:white;padding:5px;">
                    Enter your username and email address below. A 10 digit code will be sent
                    to you to reset your password
                </div>
            </div>
            <div class="row">
                <div class="col">
                    <div class="row">
                        <div class="col">
                          <label style="margin-top:20px;">User Name</label><br />
                          <asp:TextBox CssClass="form-control" runat="server" ID="uname" style="width:90%" type="text" name="uname" placeholder="Username"></asp:TextBox><br />
                        </div>
                    </div>
                    <div class="row">
                        <div class="col">
                          <label style="margin-top:5px;">Email</label><br />
                          <asp:TextBox CssClass="form-control" runat="server" ID="email" style="width:90%; margin-bottom:8px;" type="text" name="email" placeholder="Email"></asp:TextBox><br />
                        </div>
                    </div>
                    <div class="row">
                        <div class="col">
                            <button runat="server" id="signupbtn" type="button" onclick="AlertFunc()" class="btn btn-primary" style="width:40%;margin-left:30%;margin-bottom:8px">Submit</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
    <script>
        function AlertFunc() {
            swal('Notice', 'A digit code has been sent to your email');
        }
    </script>

    <script src="lib/SweetAlert.js"></script>
    <script src="lib/jquery/jquery.slim.min.js"></script>
    <script src="lib/bootstrap/js/bootstrap.bundle.min.js"></script>
</body>
</html>
