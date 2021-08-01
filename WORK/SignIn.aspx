<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="SignIn.aspx.vb" Inherits="WORK.SignIn" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />

    <title>EasyMan | Sign In Page</title>
    <link href="lib/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <link href="lib/font-awesome/css/all.min.css" rel="stylesheet" />

</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-light bg-light ">
        <div class="container">
            <a class="navbar-brand" href="#">EasyMan</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNavDropdown">
                <ul class="navbar-nav">
                    <li class="nav-item active">
                        <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Features</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Pricing</a>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Dropdown link
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                            <a class="dropdown-item" href="#">Action</a>
                            <a class="dropdown-item" href="#">Another action</a>
                            <a class="dropdown-item" href="#">Something else here</a>
                        </div>
                    </li>
                </ul>
            </div>

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

    <script src="lib/SweetAlert.js">   </script>
    <script src="lib/jquery/jquery.slim.min.js"></script>
    <script src="lib/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script>
        function Myfunc() {
            swal('Hi', 'hello');
        }
        function SelectStatus() {

        }
    </script>
</body>
</html>

