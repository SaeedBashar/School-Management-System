<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="ViewSubmissions.aspx.vb" Inherits="WORK.ViewSubmissions" %>

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

    <title>EasyMan | Administrative Student View</title>
    <style>
        .dropdown-content {
            max-height: 400px;
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
    <form runat="server">
<body>
    <nav class="navbar navbar-expand-lg navbar-light bg-light ">
        <div class="container-fluid">
            <a class="navbar-brand" href="#">EasyMan</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNavDropdown">
                <ul class="navbar-nav myMainNav">
                    <li class="nav-item active">
                        <a class="nav-link" href="../AdminDashboard.aspx">Home <span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="AdminArea.aspx"><span class=" ti-settings"> </span>Admin Area</a>
                    </li>
                   <li class="nav-item">
                        <a class="nav-link" href="#">Sign Out</a>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Jump To
                        </a>
                        <div class="dropdown-menu dropdown-content" aria-labelledby="navbarDropdownMenuLink">
                            
                            <a class="dropdown-item" href="Admin_students_view.aspx">
                                <img src="../../lib/Assets/img/table_icons/group_add.png" height="32" />
                                Students</a>
                            <a class="dropdown-item" href="Admin_feescollection_view.aspx">
                                <img src="../../lib/Assets/img/table_icons/account_balances.png" height="32" />
                                FeesCollection</a>
                            <a class="dropdown-item" href="Admin_branch_view.aspx">
                                <img src="../../lib/Assets/img/table_icons/card_bank.png" height="32" />
                                Branch</a>
                            <a class="dropdown-item" href="Admin_teachers_view.aspx">
                                <img src="../../lib/Assets/img/table_icons/blackboard_drawing.png" height="32" />
                                Teachers</a>
                            <a class="dropdown-item" href="Admin_subjects_view.aspx">
                                <img src="../../lib/Assets/img/table_icons/books.png" height="32" />
                                Subjects</a>
                            <a class="dropdown-item" href="Admin_classes_view.aspx">
                                <img src="../../lib/Assets/img/table_icons/door_open.png" height="32" />
                                Classes</a>
                            <a class="dropdown-item" href="Admin_streams_view.aspx">
                                <img src="../../lib/Assets/img/table_icons/chart_organisation.png" height="32" />
                                Streams</a>
                            <a class="dropdown-item" href="Admin_hostels_view.aspx">
                                <img src="../../lib/Assets/img/table_icons/building.png" height="32" />
                                Hostels</a>
                            <a class="dropdown-item" href="Admin_timetable_view.aspx">
                                <img src="../../lib/Assets/img/table_icons/data_chooser.png" height="32" />
                                TimeTable</a>
                            <a class="dropdown-item" href="Admin_events_view.aspx">
                                <img src="../../lib/Assets/img/table_icons/date_add.png" height="32" />
                                Events</a>
                            <a class="dropdown-item" href="Admin_notices_view.aspx">
                                <img src="../../lib/Assets/img/table_icons/document_layout.png" height="32" />
                                Notices/Announcements</a>
                            <a class="dropdown-item" href="Admin_examresults_view.aspx">
                                <img src="../../lib/Assets/img/table_icons/application_view_columns.png" height="32" />
                                Exam Results</a>
                            <a class="dropdown-item" href="Admin_parents_view.aspx">
                                <img src="../../lib/Assets/img/table_icons/reseller_programm.png" height="32" />
                                Parents</a>
                            <a class="dropdown-item" href="Admin_examcategories_view.aspx">
                                <img src="../../lib/Assets/img/table_icons/clipboard_empty.png" height="32" />
                                ExamCategories</a>
                            <a class="dropdown-item" href="Admin_sessions_view.aspx">
                                <img src="../../lib/Assets/img/table_icons/check_box.png" height="32" />
                                Sessions</a>
                            <a class="dropdown-item" href="Admi_studentcategories_view.aspx">
                                <img src="../../lib/Assets/img/table_icons/blackboard_steps.png" height="32" />
                                StudentCategories</a>
                            <a class="dropdown-item" href="Admin_classattendance_view.aspx">
                                <img src="../../lib/Assets/img/table_icons/chart_down_color.png" height="32" />
                                Class Attendance</a>
                            <a class="dropdown-item" href="Admin_schoolmoney_view.aspx">
                                <img src="../../lib/Assets/img/table_icons/coins_add.png" height="32" />
                                Fees Structure</a>
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
                    <img src="../../lib/Assets/img/table_icons/administrator.png" />
                    Students Assignment Submissions
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
                                       <asp:TextBox ID="searchtxt" class="form-control mr-sm-2" OnTextChanged="searchtxt_TextChanged" type="search" placeholder="search by first name" runat="server"></asp:TextBox>
                                    
                                    <button class="btn btn-primary my-2 my-sm-0" runat="server" id="BtnSearch"  onserverclick="BtnSearch_ServerClick" type="button">Search</button>
                                   </div>
                            </div>
                        </nav>
                    </div>
                    <div class="card-body" style="height:auto;">
                       
                        <asp:GridView ID="GridView1" runat="server" AllowPaging="true" PageSize="4" AutoGenerateColumns="false" 
                            CssClass="table table-borderless table-hover" style="margin:auto;" DataKeyNames="FileId" >
                                  <Columns>
                                       <asp:BoundField DataField="FileId" HeaderText="File Id" SortExpression="FileId"/>                       
                                       <asp:BoundField DataField="Student_id" HeaderText="Student Id" SortExpression="Student_id"  />                       
                                       <asp:BoundField DataField="Fname" HeaderText="First Name" SortExpression="Fname" />
                                      <asp:BoundField DataField="Lname" HeaderText="Last Name" SortExpression="Lname" />
                                       <asp:BoundField DataField="sent_date" HeaderText="Submitted Date" SortExpression="sent_date" />
                                    
                                    
                                      <asp:CommandField SelectText="Download" ShowSelectButton="True">
                                          <ControlStyle CssClass="btn btn-primary" />
                                     </asp:CommandField>
                                       
                                  </Columns>
                                 <HeaderStyle BackColor="#3399FF" ForeColor="White"   />
                        </asp:GridView>
                       </div>
                    
            </div>
        </div>
      </div>
        
   </div>
    <footer style="background-color: #b0abab;" class="p-4">
                        <div class="container">
                            <div class="row">
                                <div class="col-sm-4">
                                    <ul class="footer-list-top">
                                        <li style="list-style-type: none;">
                                            <h4 class="footer-list-header">About EasyMan</h4>
                                        </li>
                                        <li><a href='#' class="generic-anchor footer-list-anchor" itemprop="significantLink">GET TO KNOW US</a></li>
                                        <li><a href='#' class="generic-anchor footer-list-anchor" itemprop="significantLink">PROMOS</a></li>
                                        <li><a href='#' class="generic-anchor footer-list-anchor" itemprop="significantLink">BECOME A Developer</a></li>

                                        <li><a href='#' itemprop="significantLink" class="generic-anchor footer-list-anchor">JOB OPENINGS</a></li>

                                        <li><a href='#' class="generic-anchor footer-list-anchor" itemprop="significantLink">EVENTS</a></li>
                                    </ul>
                                </div>
                                <div class="col-sm-4">
                                    <ul class="footer-list-top">
                                        <li style="list-style-type: none;">
                                            <h4 class="footer-list-header">ONLINE SERVICES</h4>
                                        </li>


                                        <li><a href='#' class="generic-anchor footer-list-anchor">ADMISSION PORTAL</a></li>
                                        <li><a href='#' class="generic-anchor footer-list-anchor">EDUCATION RESOURCES</a></li>
                                        <li><a href='#' class="generic-anchor footer-list-anchor">STUDENT MAIL</a></li>
                                        <li><a href='#' class="generic-anchor footer-list-anchor">HELP DESK</a></li>
                                        <li><a href='#' class="generic-anchor footer-list-anchor" target="_blank">WHAT DO YOU THINK</a></li>
                                    </ul>
                                </div>
                                <div class="col-sm-4">
                                    <ul class="footer-list-top">
                                        <li id='help' style="list-style-type: none;">
                                            <h4 class="footer-list-header">CONTACT US</h4>
                                        </li>
                                        <li><a href='#' class="generic-anchor footer-list-anchor" itemprop="significantLink"><i class="ti-location-pin"></i>KNUST-KUMASI, ASHANTI REGION</a></li>
                                        <li><a href='#' class="generic-anchor footer-list-anchor" itemprop="significantLink"><i class="fas fa-phone"></i>+233549115783/+233504802283</a></li>
                                        <li><a href='mailto:basharsaeed200@gmail.com' class="generic-anchor footer-list-anchor" itemprop="significantLink"><i class="ti-email"></i>basharsaeed200@gmail.comm/a></li>
                                        <li><a href='../SignUp/StudentSignUp.aspx' class="generic-anchor footer-list-anchor" itemprop="significantLink"><i class=" ti-plus"></i>NEW USERS</a></li>
                                        <li><a href='#' itemprop="significantLink" class="generic-anchor footer-list-anchor"><i class=" ti-stats-up"></i>Status</a></li>
                                    </ul>
                                </div>

                            </div>
                            <div class="row">
                                <div class="col-12">
                                    <div class="row  justify-content-center">
                                        <section class="footer-social-section flex-rw">
                                            <span class="footer-social-overlap footer-social-connect">CONNECT <span class="footer-social-small">with</span> US
                                            </span>
                                            <span class="footer-social-overlap footer-social-icons-wrapper mymedia">
                                                <a href="https://www.pinterest.com/" target="_blank" title="Pinterest" itemprop="significantLink"><i class=" ti-pinterest"></i></a>
                                                <a href="https://www.facebook.com/" class="generic-anchor" target="_blank" title="Facebook" itemprop="significantLink"><i class=" ti-facebook"></i></a>
                                                <a href="https://twitter.com/" class="generic-anchor" target="_blank" title="Twitter" itemprop="significantLink"><i class=" ti-twitter"></i></a>
                                                <a href="http://instagram.com/" class="generic-anchor" target="_blank" title="Instagram" itemprop="significantLink"><i class=" ti-instagram"></i></a>
                                                <a href="https://www.youtube.com/channel/" class="generic-anchor" target="_blank" title="Youtube" itemprop="significantLink"><i class=" ti-youtube"></i></a>
                                                <a href="https://plus.google.com/" class="generic-anchor" target="_blank" title="Google Plus" itemprop="significantLink"><i class="ti-google"></i></a>
                                            </span>
                                        </section>
                                    </div>
                                    <div class="row justify-content-center">
                                        <section class="footer-bottom-section flex-rw">
                                            <div class="footer-bottom-wrapper">
                                                <i class="fa fa-copyright" role="copyright"></i>2021 EasyMan in
                                        <address class="footer-address" role="company address">KNUST</address>
                                                <span class="footer-bottom-rights">- All Rights Reserved - </span>
                                            </div>
                                            <div class="footer-bottom-wrapper">
                                                <a href="#" class="generic-anchor" rel="nofollow">Terms</a> | <a href="#" class="generic-anchor" rel="nofollow">Privacy</a>
                                            </div>
                                        </section>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-12">
                                    <hr />
                                    <p style="font-size: 20px; text-align: center;">You logged In as <a href="TutorTo/TutorProfileView.aspx" id="loguname" runat="server" onserverclick="loguname_ServerClick"><span id="bottomuname"></span></a><a href="#">(Log Out)</a></p>
                                </div>
                            </div>
                        </div>
                    </footer>
    <script src="../../lib/bootstrap/js/jquery/jquery.slim.min.js"></script>
    <script src="../../lib/bootstrap/js/bootstrap.bundle.min.js"></script>
   
     <script type="text/javascript">
        function MyPrint() {
            window.print();
        }
    </script>
</body>
    </form>

</html>
