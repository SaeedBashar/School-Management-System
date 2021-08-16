<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="AdminAddTutorView.aspx.vb" Inherits="WORK.AdminAddTutorView" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <link href="../../../lib/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <link href="../../../lib/font-awesome/css/all.min.css" rel="stylesheet" />
    <link href="../../../lib/Themify/themify-icons.css" rel="stylesheet" />
    <link href="../../../lib/bootstrap-sweetalert/sweetalert.min.css" rel="stylesheet" />
    <script src="../../../lib/bootstrap-sweetalert/sweetalert.min.js"></script>

    <title>EasyMan | Admin Add New Tutor</title>
</head>
<body style="background-color: #dbd3d3;">
    <nav class="navbar navbar-expand-lg navbar-light bg-dark MyNavCss">
        <div class="container-fluid">
            <a class="navbar-brand" href="#" style="color: #cbc0c0;">EasyMan</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNavDropdown">
                <ul class="navbar-nav">
                    <li class="nav-item active">
                        <a class="nav-link" href="#" style="color: #cbc0c0;">Home <span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#" style="color: #cbc0c0;">Features</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#" style="color: #cbc0c0;">Pricing</a>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" style="color: #cbc0c0;">Dropdown link
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
    <div class="card" style="width: 95%; margin: auto; border: 0;">
        <div class="card-body" style="background-color: #dbd3d3;">
            <div class="container" style="width: 95%;">
                <div class="row">
                    <div class="col" style="font-size: 30px; font-weight: 900; color: #1d86d1;">
                        <img src="../../../lib/Assets/img/table_icons/group_add.png" />
                        Add New Tutor
                    </div>
                </div>
                <div class="row">
                    <div class="col" style="font-size: 20px;">
                        Welcome to the world of virtual Education
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="card" style="width: 80%; margin: auto; margin-top: 30px;">
        <div class="card-body">
            <form id="form1" runat="server">
                <div class="container">
                    <div class="form-row">
                        <div class="col">
                            <label for="fnametxt">First Name</label>
                            <asp:TextBox runat="server" ID="fnametxt" type="text" CssClass="form-control" placeholder="First name"></asp:TextBox>
                        </div>
                        <div class="col">
                            <label for="mnametxt">Middle Name</label>
                            <asp:TextBox runat="server" ID="mnametxt" type="text" CssClass="form-control" placeholder="Middle name"></asp:TextBox>
                        </div>
                        <div class="col">
                            <label for="lnametxt">Last Name</label>
                            <asp:TextBox runat="server" ID="lnametxt" type="text" CssClass="form-control" placeholder="Last name"></asp:TextBox>
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="form-group col-md-6">
                            <label for="dobtxt">Date of Birth</label>
                            <asp:TextBox runat="server" ID="dobtxt" type="date" CssClass="form-control"></asp:TextBox>
                        </div>
                        <div class="form-group col-md-6  ">
                            <label for="gen">Gender</label>
                            <div id="gen" class="form-control">
                                <div class="form-check form-check-inline pl-4">
                                    <input class="form-check-input" runat="server" type="radio" name="gender" id="maleradio" value="Male"/>
                                    <label class="form-check-label" runat="server" for="maleradio">Male</label>
                                </div>
                                <div class="form-check form-check-inline pl-4">
                                    <input class="form-check-input" runat="server" type="radio" name="gender" id="femaleradio" value="Female"/>
                                    <label class="form-check-label" runat="server" for="femaleradio">Female</label>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="form-group col-md-6">
                            <label for="unametxt">User Name</label>
                            <asp:TextBox runat="server" ID="unametxt" type="text" CssClass="form-control" placeholder="User Name"></asp:TextBox>
                        </div>
                        <div class="form-group col-md-6">
                            <label for="pwordtxt">Password</label>
                            <asp:TextBox runat="server" ID="pwordtxt" type="password" CssClass="form-control" placeholder="Password"></asp:TextBox>
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="form-group col-md-7">
                            <label for="emailtxt">Email</label>
                            <asp:TextBox runat="server" ID="emailtxt" type="text" CssClass="form-control" placeholder="Email"></asp:TextBox>
                        </div>
                        <div class="form-group col-md-5">
                            <label for="contact">Contact</label>
                            <asp:TextBox runat="server" ID="contacttxt" type="text" CssClass="form-control" placeholder="Contact"></asp:TextBox>
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="col-md-4 offset-md-4">
                            <button type="button" runat="server" id="submitbtn" onserverclick="submitbtn_Click" class="btn btn-primary btn-block"><span class="ti-save"> </span>Save</button>

                        </div>
                    </div>

                </div>
            </form>
        </div>
    </div>

    <script src="../../../lib/SweetAlert.js">   </script>
    <script src="../../../lib/jquery/jquery.slim.min.js"></script>
    <script src="../../../lib/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script>

</script>
</body>
</html>
