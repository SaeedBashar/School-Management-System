<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="AdminHallView.aspx.vb" Inherits="WORK.AdminHallView" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <link href="../../lib/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <link href="../../lib/font-awesome/css/all.css" rel="stylesheet" />
    <link href="../../lib/Themify/themify-icons.css" rel="stylesheet" />
    <link href="../../lib/bootstrap-sweetalert/sweetalert.min.css" rel="stylesheet" />
    <script src="../../lib/bootstrap-sweetalert/sweetalert.min.js"></script>

    <title>EasyMan | Administrative Hall View</title>
    <style>
        body {
            background-color: #dbd3d3;
        }
        .dropdown-content {
            max-height: 250px;
            overflow-y: auto;
        }

        .myMainNav li:hover {
            background-color:aquamarine;
        }
        .mySubNav li:hover {
            background-color:aquamarine;
        }
    </style>
</head>
<body>
    <form runat="server">
       <nav class="navbar navbar-expand-lg navbar-light bg-primary ">
        <div class="container-fluid">
            <a class="navbar-brand" href="#" style="color:white;">EasyMan</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNavDropdown">
                <ul class="navbar-nav myMainNav">
                    <li class="nav-item active">
                        <a class="nav-link" style="color:white;" href="../AdminDashboard.aspx">Home <span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" style="color:white;" href="AdminArea.aspx"><span class=" ti-settings"> </span>Admin Area</a>
                    </li>
                   <li class="nav-item">
                        <a class="nav-link" style="color:white;" href="../../SignIn.aspx">Sign Out</a>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" style="color:white;" href="#" id="navbarDropdownMenuLink" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Jump To
                        </a>
                        <div class="dropdown-menu dropdown-content" aria-labelledby="navbarDropdownMenuLink">
                            
                            <a class="dropdown-item" href="AdminStudentView.aspx">
                                <img src="../../lib/Assets/img/table_icons/group_add.png" height="32" />
                                Students</a>
                            <a class="dropdown-item" href="AdminTutorView.aspx">
                                <img src="../../lib/Assets/img/table_icons/blackboard_drawing.png" height="32" />
                                Teachers</a>
                            <a class="dropdown-item" href="AdminCourseView.aspx">
                                <img src="../../lib/Assets/img/table_icons/books.png" height="32" />
                                Courses</a>
                            <a class="dropdown-item" href="AdminProgramView.aspx">
                                <img src="../../lib/Assets/img/table_icons/door_open.png" height="32" />
                                Programs</a>
                            <a class="dropdown-item" href="AdminHallView.aspx">
                                <img src="../../lib/Assets/img/table_icons/building.png" height="32" />
                                Halls</a>
                            <a class="dropdown-item" href="AdminEventView.aspx">
                                <img src="../../lib/Assets/img/table_icons/date_add.png" height="32" />
                                Events</a>
                            <a class="dropdown-item" href="AdminAnnouncementView.aspx">
                                <img src="../../lib/Assets/img/table_icons/document_layout.png" height="32" />
                                Notices/Announcements</a>
                            <a class="dropdown-item" href="AdminGuardianView.aspx">
                                <img src="../../lib/Assets/img/table_icons/reseller_programm.png" height="32" />
                                Parents</a>
                        </div>
                    </li>
                </ul>
                
            </div>

        </div>
    </nav>

    <div class="container">
        <div class="row">
            <div class="col">        
                <p style="font-size:30px;">
                    <img src="../../lib/Assets/img/table_icons/building.png" />
                    HALLS
                </p>
            </div>
        </div>
    </div>
    <div class="container mt-5">
        <div class="row">
            <div class="col">
                <div class="card text-center">
                    <div class="card-header">
                        <nav class="navbar navbar-expand-lg navbar-light bg-light">
                            <a class="navbar-brand" href="AddUser/AdminAddHallView.aspx" style="background-color:#2ec42d;padding: 1px 5px;border-radius:4px;">
                                <span class=" ti-plus" style="color:blue;"></span>
                                Add New
                            </a>
                            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                                <span class="navbar-toggler-icon"></span>
                            </button>
                            <div class="collapse navbar-collapse mySubNav" id="navbarSupportedContent">
                                <ul class="navbar-nav mr-auto">
                                    <li class="nav-item active">
                                        <a class="nav-link" onclick="MyPrint()" href="#">Print Preview <span class="sr-only">(current)</span></a>
                                    </li>
                                   
                                </ul>
                               <div class="form-inline my-2 my-lg-0">
                                       <asp:TextBox ID="searchtxt" class="form-control mr-sm-2" OnTextChanged="searchtxt_TextChanged" type="search" placeholder="search by name" runat="server"></asp:TextBox>
                                    
                                    <button class="btn btn-primary my-2 my-sm-0" runat="server" id="BtnSearch"  onserverclick="BtnSearch_ServerClick" type="button">Search</button>
                                   </div>
                            </div>
                        </nav>
                    </div>
                    <div class="card-body" style="height:auto;">
                       <asp:GridView ID="GridView1" runat="server" AllowPaging="true" PageSize="4" AutoGenerateColumns="false" 
                            CssClass="table table-borderless table-hover" style="margin:auto;" DataKeyNames="house_id" >
                                  <Columns>
                                       <asp:BoundField DataField="house_id" HeaderText="Hall Id" SortExpression="House_id" InsertVisible="False" ReadOnly="True" />                       
                                       <asp:BoundField DataField="house_name" HeaderText="Hall Name" SortExpression="house_name" />
                                      <asp:BoundField DataField="House_master_id" HeaderText="House Master Id" SortExpression="house_master_id" />
                                     
                                      <asp:CommandField SelectText="Details" ShowSelectButton="True">
                                          <ControlStyle CssClass="btn btn-primary" />
                                     </asp:CommandField>
                                       <asp:CommandField SelectText="Delete" ShowDeleteButton="true">
                                          <ControlStyle CssClass="btn btn-danger" />
                                     </asp:CommandField>
                                  </Columns>
                                 <HeaderStyle BackColor="#3399FF" ForeColor="White"   />
                        </asp:GridView>
                    </div>
                    <div class="card-footer text-muted">
                        
                    </div>
                </div>
            </div>
        </div>
    </div>
    </form>
    <script src="../../lib/bootstrap/js/jquery/jquery.slim.min.js"></script>
    <script src="../../lib/bootstrap/js/bootstrap.bundle.min.js"></script>

     <script type="text/javascript">
        function MyPrint() {
            window.print();
        }
    </script>
</body>
</html>
