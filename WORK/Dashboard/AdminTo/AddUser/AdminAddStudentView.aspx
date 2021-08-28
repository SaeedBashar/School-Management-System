<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="AdminAddStudentView.aspx.vb" Inherits="WORK.AdminAddStudentView" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <link href="../../../lib/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <link href="../../../lib/font-awesome/css/all.min.css" rel="stylesheet" />
    <link href="../../../lib/bootstrap-sweetalert/sweetalert.min.css" rel="stylesheet" />
    <script src="../../../lib/bootstrap-sweetalert/sweetalert.min.js"></script>

    <title>EasyMan | Administrative Student Add</title>
    
</head>
<body style="background-color:#dbd3d3;" >
    <nav class="navbar navbar-expand-lg navbar-light bg-primary MyNavCss">
        <div class="container-fluid">
            <a class="navbar-brand" href="#" style="color: #cbc0c0;">EasyMan</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNavDropdown">
                <ul class="navbar-nav myMainNav">
                    <li class="nav-item active">
                        <a class="nav-link" style="color:white;" href="../../AdminDashboard.aspx">Home <span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" style="color:white;" href="../AdminArea.aspx"><span class=" ti-settings"> </span>Admin Area</a>
                    </li>
                   <li class="nav-item">
                        <a class="nav-link" style="color:white;" href="../../../SignIn.aspx">Sign Out</a>
                    </li>
                    <li class="nav-item dropdown" >
                        <a class="nav-link dropdown-toggle" style="color:white;" href="#" id="navbarDropdownMenuLink" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Jump To
                        </a>
                        <div class="dropdown-menu dropdown-content" style="max-height: 250px; overflow-y:auto;" aria-labelledby="navbarDropdownMenuLink">
                            
                            <a class="dropdown-item" href="../AdminStudentView.aspx">
                                <img src="../../../lib/Assets/img/table_icons/group_add.png" height="32" />
                                Students</a>
                            <a class="dropdown-item" href="../AdminTutorView.aspx">
                                <img src="../../../lib/Assets/img/table_icons/blackboard_drawing.png" height="32" />
                                Teachers</a>
                            <a class="dropdown-item" href="../AdminCourseView.aspx">
                                <img src="../../../lib/Assets/img/table_icons/books.png" height="32" />
                                Courses</a>
                            <a class="dropdown-item" href="../AdminProgramView.aspx">
                                <img src="../../../lib/Assets/img/table_icons/door_open.png" height="32" />
                                Programs</a>
                            <a class="dropdown-item" href="../AdminHallView.aspx">
                                <img src="../../../lib/Assets/img/table_icons/building.png" height="32" />
                                Halls</a>
                            <a class="dropdown-item" href="../AdminEventView.aspx">
                                <img src="../../../lib/Assets/img/table_icons/date_add.png" height="32" />
                                Events</a>
                            <a class="dropdown-item" href="../AdminAnnouncementView.aspx">
                                <img src="../../../lib/Assets/img/table_icons/document_layout.png" height="32" />
                                Notices/Announcements</a>
                            <a class="dropdown-item" href="../AdminGuardianView.aspx">
                                <img src="../../../lib/Assets/img/table_icons/reseller_programm.png" height="32" />
                                Parents</a>
                        </div>
                    </li>
                </ul>
            </div>

        </div>
    </nav>
    <div class="card " style="width: 95%; margin: auto; border: 0;">
        <div class="card-body" style="background-color: #dbd3d3;">
            <div class="container" style="width: 95%;">
                <div class="row">
                    <div class="col" style="font-size: 30px; font-weight: 900; color: #1d86d1;">
                        <img src="../../../lib/Assets/img/table_icons/group_add.png" />
                        Add New Student
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
                            <button type="button" runat="server" id="submitbtn" onserverclick="submitbtn_Click" class="btn btn-primary btn-block"><span class="fas fa-save"></span> Save</button>
                        </div>

                    </div>

                </div>
            </form>
        </div>
    </div>

    
    <script src="../../../lib/jquery/jquery.slim.min.js"></script>
    <script src="../../../lib/bootstrap/js/bootstrap.bundle.min.js"></script>
   
     <script>
         
         </script>
</body>
</html>
