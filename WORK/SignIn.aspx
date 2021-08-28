<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="SignIn.aspx.vb" Inherits="WORK.SignIn" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <link href="lib/bootstrap-sweetalert/sweetalert.min.css" rel="stylesheet" />
    <script src="lib/bootstrap-sweetalert/sweetalert.min.js"></script>
    
    <title>EasyMan | Sign In Page</title>
    <link href="lib/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <link href="lib/font-awesome/css/all.min.css" rel="stylesheet" />
    
</head>
<body >

    <nav class="navbar navbar-expand-lg navbar-light bg-primary ">
        <div class="container-fluid">
            <a class="navbar-brand" href="#" style="color: white;">EasyMan</a>
        </div>
    </nav>
    <div class="container">
        <div class="row">
            <div class="col-sm-12 col-md-8 col-lg-6 offset-md-2 offset-lg-3">
                <p style="font-size: 20px; color:#2388f6; font-weight: 600;">Easy<span style="color: white; background-color: #2388f6;">Man</span></p>
            </div>
        </div>
        <div class="row pb-3">
            <div class="col-sm-10 col-md-8 col-lg-6 offset-sm-2 offset-md-2 offset-lg-4">
                <p style="font-weight: bold; font-size: larger;">Sign in</p>
                <p class="text-info">Join the world of virtual education</p>
            </div>
        </div>
        <div class="row">
            <div class="col-8 offset-2">
                <form id="form1" runat="server">
                    <div class="row">
                        <div class="form-group col-sm-12 col-md-8 col-lg-6 offset-md-2 offset-lg-3">
                            <label>User Name</label>
                            <asp:TextBox ID="unametxt" runat="server" placeholder="username" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>
                    <div class="row">
                        <div class="form-group col-sm-12 col-md-8 col-lg-6 offset-md-2 offset-lg-3">
                            <label>Password</label>
                            <asp:TextBox ID="pwordtxt" type="password" runat="server" placeholder="password" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>
                    <div class="row">
                        <div class=" col-sm-12 col-md-8 col-lg-6 offset-md-2 offset-lg-3">
                            <label>Status</label>
                            <asp:DropDownList ID="Statuslist" CssClass="form-control" runat="server">
                                <asp:ListItem Value="1">Administrator</asp:ListItem>
                                <asp:ListItem Value="2">Tutor</asp:ListItem>
                                <asp:ListItem Value="3" Selected="True">Student</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-12 col-md-8 col-lg-6 offset-md-2 offset-lg-3">
                            <p style="margin-top: 5px;"><a href="PasswordReset.aspx">Forgot password?</a></p>
                            <button class="btn btn-primary form-control" type="button" runat="server" onserverclick="BtnSubmit_Click" style="border-radius: 15px;">
                                <span class="fas fa-sign-in-alt"> </span>
                                Sign In
                            </button>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-12 col-md-8 col-lg-6 offset-md-2 offset-lg-3 p-5" style="text-align: center;">
                            <span>New to EasyMan?</span>
                            <span class="dropdown">
                                <button class="btn dropdown-toggle" style="color:#1670dd;" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    Join Now
                                </button>
                                <span class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                    <p style="padding-left:25px;font-weight:700;">Sign Up As</p>
                                    <hr />
                                    <a class="dropdown-item" href="SignUp/StudentSignUp.aspx">Student</a>
                                    <a class="dropdown-item" href="SignUp/TutorSignUp.aspx">Tutor</a>
                                    <a class="dropdown-item" href="SignUp/AdminSignUp.aspx">Administrator</a>
                                </span>
                            </span>
                        </div>
                    </div>
            </div>
            </form>
        </div>
    </div>
    </div>

    
    <script src="lib/jquery/jquery.slim.min.js"></script>b
    <script src="lib/bootstrap/js/bootstrap.bundle.min.js"></script>
    
    <script>
        /*
        history.pushState(null, document.title, location.href);
        window.addEventListener('popstate', function (event) {
            history.pushState(null, document.title, location.href);
        });
        */
    </script>
</body>
</html>

