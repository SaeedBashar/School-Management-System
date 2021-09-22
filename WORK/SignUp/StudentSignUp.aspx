<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="StudentSignUp.aspx.vb" Inherits="WORK.StudentSignUp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <link href="../lib/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <link href="../lib/font-awesome/css/all.min.css" rel="stylesheet" />
    <link href="../lib/bootstrap-sweetalert/sweetalert.min.css" rel="stylesheet" />
    <script src="../lib/bootstrap-sweetalert/sweetalert.min.js"></script>

    <title>EasyMan | Students Sign Up</title>
    
</head>
<body style="background-color:#dbd3d3;" >
    <nav class="navbar navbar-expand-lg navbar-light" style="background-color:#50668d">
        <div class="container-fluid">
            <a class="navbar-brand" href="#" style="color:white;">EasyMan</a>
        </div>
    </nav>
    <div class="card " style="width: 95%; margin: auto; border: 0;">
        <div class="card-body" style="background-color: #dbd3d3;">
            <div class="container" style="width: 95%;">
                <div class="row">
                    <div class="col" style="font-size: 30px; font-weight: 900; color: #1d86d1;">
                       Student Sign Up
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
                                    <input runat="server" class="form-check-input" type="radio" name="gender" id="maleradio" value="Male"/>
                                    <label class="form-check-label" for="maleradio">Male</label>
                                </div>
                                <div class="form-check form-check-inline pl-4">
                                    <input class="form-check-input" runat="server" type="radio" name="gender" id="femaleradio" value="Female"/>
                                    <label class="form-check-label" for="femaleradio">Female</label>
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
                        <div class="form-group col-md-5">
                            <label for="emailtxt">Email</label>
                            <asp:TextBox runat="server" ID="emailtxt" type="text" CssClass="form-control" placeholder="Email"></asp:TextBox>
                        </div>
                        <div class="form-group col-md-4">
                            <label for="guardiantxt">Guardian Full Name</label>
                            <asp:TextBox runat="server" ID="guardiantxt" CssClass="form-control" placeholder="Guardian Name"></asp:TextBox>
                        </div>
                        <div class="form-group col-md-3">
                            <label for="guardiancontacttxt">Guardian Contact</label>
                            <asp:TextBox runat="server" ID="guardiancontacttxt" type="text" CssClass="form-control" placeholder="Phone"></asp:TextBox>
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="col-md-4 offset-md-4">
                            <button type="button" runat="server" id="submitbtn" onserverclick="submitbtn_Click" class="btn btn-primary btn-block">Sign Up</button>
                        </div>

                    </div>

                </div>
            </form>
        </div>
    </div>

    <script src="../lib/jquery/jquery.slim.min.js"></script>
    <script src="../lib/bootstrap/js/bootstrap.bundle.min.js"></script>
</body>
</html>
