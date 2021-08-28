<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="AdminViewHallView.aspx.vb" Inherits="WORK.AdminViewHallView" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <link href="../../../lib/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <link href="../../../lib/font-awesome/css/all.css" rel="stylesheet" />
    <link href="../../../lib/Themify/themify-icons.css" rel="stylesheet" />

    <title></title>
     <style>
         body {
             background-color: #dbd3d3;
         }
        .dropdown-content {
            max-height: 400px;
            overflow-y: auto;
        }

        .myMainNav li:hover {
            background-color: aquamarine;
        }

        .mySubNav li:hover {
            background-color: aquamarine;
        }
        .auto-style1 {
            height: 26px;
        }
        .auto-style2 {
            height: 26px;
            width: 484px;
        }
        .auto-style3 {
            width: 484px;
        }
        .table input[type=text] {
            border:0.5px inset;
            background-color:#c6bfbf;
            color: black;
        }
        .table input[type=text]:hover {
            border: 3px solid aquamarine;
        }
        .form-group {
            border-bottom: 1px solid #808080;
        }
        
        .form-group:hover {
            background-color: #c6bfbf;
        }
     </style>
</head>
<body>
    <form id="form1" runat="server">
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
        
        <div class="container">
            <div class="row" style="border-bottom:1px solid #808080">
                <div class="col-10 pb-4 mt-4">
                    <h1>Hall Information</h1>
                </div>
                <div class="col-2 p-auto mt-4">
                   <div class="btn-group">
                       <asp:Button ID="editbtn" runat="server" CssClass="btn btn-sm btn-outline-secondary" Text="Edit" />
                       <asp:Button ID="savebtn" CssClass="btn btn-sm btn-outline-secondary" runat="server" Text="Save" />
                   </div>
                </div>
            </div>
            <div class="row form-group p-3">
                <div class="col-6">
                    <asp:Label ID="Label1" runat="server" Text="Label">Hall Id</asp:Label>
                </div>
                <div class="col-6">
                    <asp:TextBox ID="hid" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
             </div>
            <div class="row form-group p-3">
                <div class="col-6">
                    <asp:Label ID="Label2" runat="server" Text="Label">Hall Name</asp:Label>
                </div>
                <div class="col-6">
                    <asp:TextBox ID="hname" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
            </div>
            <div class="row form-group p-3">
                <div class="col-6">
                    <asp:Label ID="Label3" runat="server" Text="Label">Hall Master Id</asp:Label>
                </div>
                <div class="col-6">
                    <asp:TextBox ID="hmid" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
            </div>
            <div class="row form-group p-3">
                <div class="col-6">
                    <asp:Label ID="Label4" runat="server" Text="Label">Number of Halls</asp:Label>
                </div>
                <div class="col-6">
                    <asp:TextBox ID="numh" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
            </div>
            <div class="row m-auto pb-5" style="border-bottom: 1px solid #808080;">
                <div class="col">
                    <h3 style="text-align:center;margin:10px auto;">Halls Information Table</h3>
                    <asp:GridView ID="GridView1" runat="server" CssClass="table table-hover  table-borderless m-auto"  style="border-radius:10px;" Width="80%">
                        <HeaderStyle BackColor="#3399FF" Font-Bold="True" ForeColor="White" />
                    </asp:GridView>
                </div>
            </div>
        </div>
    </form>>
     <script src="../../../lib/bootstrap/js/jquery/jquery.slim.min.js"></script>
    <script src="../../../lib/bootstrap/js/bootstrap.bundle.min.js"></script>

</body>
</html>
