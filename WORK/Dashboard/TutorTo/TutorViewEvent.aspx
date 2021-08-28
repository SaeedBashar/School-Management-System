<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="TutorViewEvent.aspx.vb" Inherits="WORK.TutorViewEvent" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <link href="../../../lib/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <link href="../../../lib/font-awesome/css/all.css" rel="stylesheet" />
    <link href="../../../lib/Themify/themify-icons.css" rel="stylesheet" />    
    <link href="../../lib/bootstrap-sweetalert/sweetalert.min.css" rel="stylesheet" />
    <script src="../../lib/bootstrap-sweetalert/sweetalert.min.js"></script>

    <title></title>
    <style>
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
                            <a class="nav-link" href="AdminArea.aspx"><span class=" ti-settings"></span>Admin Area</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">Sign Out</a>
                        </li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Jump To
                            </a>
                            <div class="dropdown-menu dropdown-content" aria-labelledby="navbarDropdownMenuLink">

                                <a class="dropdown-item" href="Admin_students_view.aspx">
                                    <img src="../../../lib/Assets/img/table_icons/group_add.png" height="32" />
                                    Students</a>
                                <a class="dropdown-item" href="Admin_feescollection_view.aspx">
                                    <img src="../../../lib/Assets/img/table_icons/account_balances.png" height="32" />
                                    FeesCollection</a>
                                <a class="dropdown-item" href="Admin_branch_view.aspx">
                                    <img src="../../../lib/Assets/img/table_icons/card_bank.png" height="32" />
                                    Branch</a>
                                <a class="dropdown-item" href="Admin_teachers_view.aspx">
                                    <img src="../../../lib/Assets/img/table_icons/blackboard_drawing.png" height="32" />
                                    Teachers</a>
                                <a class="dropdown-item" href="Admin_subjects_view.aspx">
                                    <img src="../../../lib/Assets/img/table_icons/books.png" height="32" />
                                    Subjects</a>
                                <a class="dropdown-item" href="Admin_classes_view.aspx">
                                    <img src="../../../lib/Assets/img/table_icons/door_open.png" height="32" />
                                    Classes</a>
                                <a class="dropdown-item" href="Admin_streams_view.aspx">
                                    <img src="../../../lib/Assets/img/table_icons/chart_organisation.png" height="32" />
                                    Streams</a>
                                <a class="dropdown-item" href="Admin_hostels_view.aspx">
                                    <img src="../../../lib/Assets/img/table_icons/building.png" height="32" />
                                    Hostels</a>
                                <a class="dropdown-item" href="Admin_timetable_view.aspx">
                                    <img src="../../../../lib/Assets/img/table_icons/data_chooser.png" height="32" />
                                    TimeTable</a>
                                <a class="dropdown-item" href="Admin_events_view.aspx">
                                    <img src="../../../lib/Assets/img/table_icons/date_add.png" height="32" />
                                    Events</a>
                                <a class="dropdown-item" href="Admin_notices_view.aspx">
                                    <img src="../../../lib/Assets/img/table_icons/document_layout.png" height="32" />
                                    Notices/Announcements</a>
                                <a class="dropdown-item" href="Admin_examresults_view.aspx">
                                    <img src="../../../lib/Assets/img/table_icons/application_view_columns.png" height="32" />
                                    Exam Results</a>
                                <a class="dropdown-item" href="Admin_parents_view.aspx">
                                    <img src="../../../lib/Assets/img/table_icons/reseller_programm.png" height="32" />
                                    Parents</a>
                                <a class="dropdown-item" href="Admin_examcategories_view.aspx">
                                    <img src="../../../lib/Assets/img/table_icons/clipboard_empty.png" height="32" />
                                    ExamCategories</a>
                                <a class="dropdown-item" href="Admin_sessions_view.aspx">
                                    <img src="../../../lib/Assets/img/table_icons/check_box.png" height="32" />
                                    Sessions</a>
                                <a class="dropdown-item" href="Admi_studentcategories_view.aspx">
                                    <img src="../../../lib/Assets/img/table_icons/blackboard_steps.png" height="32" />
                                    StudentCategories</a>
                                <a class="dropdown-item" href="Admin_classattendance_view.aspx">
                                    <img src="../../../lib/Assets/img/table_icons/chart_down_color.png" height="32" />
                                    Class Attendance</a>
                                <a class="dropdown-item" href="Admin_schoolmoney_view.aspx">
                                    <img src="../../../lib/Assets/img/table_icons/coins_add.png" height="32" />
                                    Fees Structure</a>
                            </div>
                        </li>
                    </ul>

                </div>

            </div>
        </nav>
        
        <div class="container">
            <div class="row" style="border-bottom:1px solid #808080">
                <div class="col-10 pb-4 mt-4">
                    <h1>UPCOMING EVENTS</h1>
                </div>
                <div class="col-2 p-auto mt-4">
                   <div class="btn-group">
                       <asp:Button ID="editbtn" runat="server" CssClass="btn btn-sm btn-outline-secondary" Text="Edit" />
                       <asp:Button ID="savebtn" CssClass="btn btn-sm btn-outline-secondary" runat="server" Text="Save" />
                   </div>
                </div>
            </div>        
            <div class="row m-auto pb-5" style="border-bottom: 1px solid #808080;">
                <div class="col">
                    <h3 style="text-align:center;margin:10px auto;"> Information</h3>
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="table table-hover table-borderless" BorderWidth="0px" CellPadding="2" DataSourceID="SqlDataSource1" Width="100%">
                        <Columns>
                            <asp:BoundField DataField="title" HeaderText="Title" SortExpression="title" />
                            <asp:BoundField DataField="content" HeaderText="Content" SortExpression="content" />
                        </Columns>
                        <HeaderStyle BackColor="#3399FF" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=DESKTOP-VPRF4HJ\SQLEXPRESS;Initial Catalog=SchoolManagement;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [EventTable]"></asp:SqlDataSource>
                </div>
            </div>
             <div class="row">
                            <div class="col-12 mt-5 mb-5">
                                <div id="carouselExampleIndicators" class="carousel slide w-100" data-ride="carousel">
                                    <ol class="carousel-indicators">
                                        <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                                        <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                                        <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
                                        <li data-target="#carouselExampleIndicators" data-slide-to="3"></li>
                                        <li data-target="#carouselExampleIndicators" data-slide-to="4"></li>
                                        <li data-target="#carouselExampleIndicators" data-slide-to="5"></li>
                                        <li data-target="#carouselExampleIndicators" data-slide-to="6"></li>
                                    </ol>
                                    <div class="carousel-inner  ">
                                        <div class="carousel-item active">

                                            <img src="../../lib/Assets/collections/NewImage1.jpg" class="d-block w-100" style="width: 500px; height: 400px; margin: auto;" />
                                            <div class="carousel-caption d-none d-md-block">
                                                <h5>Education</h5>
                                                <p>Education moved to the virtual world with easy access to learning materials.</p>
                                            </div>
                                        </div>
                                        <div class="carousel-item">
                                            <img src="../../lib/Assets/collections/NewImage3.jpg" class="d-block w-100" style="width: 500px; height: 400px; margin: auto;" />
                                            <div class="carousel-caption d-none d-md-block">
                                                <h5>Pupil</h5>
                                                <p>The future leaders good benefit a lot from the world of virtual education.</p>
                                            </div>
                                        </div>
                                        <div class="carousel-item">
                                            <img src="../../lib/Assets/collections/NewImage8.jpg" class="d-block w-100" style="width: 500px; height: 400px; margin: auto;" />
                                            <div class="carousel-caption d-none d-md-block">
                                                <h5>Virtual Class</h5>
                                                <p>The world of virtual education is exciting.</p>
                                            </div>
                                        </div>
                                        <div class="carousel-item">
                                            <img src="../../lib/Assets/collections/NewImage7.jpg" class="d-block w-100" style="width: 500px; height: 400px; margin: auto;" />
                                            <div class="carousel-caption d-none d-md-block">
                                                <h5>E-library</h5>
                                                <p>Imagine an education with e-libray.</p>
                                            </div>
                                        </div>
                                        <div class="carousel-item">
                                            <img src="../../lib/Assets/collections/Newm.jpg" class="d-block w-100" style="width: 500px; height: 400px; margin: auto;" />
                                            <div class="carousel-caption d-none d-md-block">
                                                <h5>Virtuality</h5>
                                                <p>Get to the classroom without actually being in class.</p>
                                            </div>
                                        </div>
                                        <div class="carousel-item">
                                            <img src="../../lib/Assets/collections/Newim.jpg" class="d-block w-100" style="width: 500px; height: 400px; margin: auto;" />
                                            <div class="carousel-caption d-none d-md-block">
                                                <h5>Easy Access</h5>
                                                <p>Have access to quality education from any where in the world.</p>
                                            </div>
                                        </div>
                                        <div class="carousel-item">
                                            <img src="../../lib/Assets/collections/NewImage6.jpg" class="d-block w-100" style="width: 500px; height: 400px; margin: auto;" />
                                            <div class="carousel-caption d-none d-md-block">
                                                <h5>Easy Management</h5>
                                                <p>School Management got easy with online platforms.</p>
                                            </div>
                                        </div>
                                         
                                    </div>
                                    <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                                        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                        <span class="sr-only">Previous</span>
                                    </a>
                                    <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                                        <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                        <span class="sr-only">Next</span>
                                    </a>
                                </div>
                            </div>
                        </div>
        </div>
    </form>
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
                                    <p style="font-size: 20px; text-align: center;">You logged In as <a href="#" id="loguname" runat="server"><span id="bottomuname"></span></a><a href="#">(Log Out)</a></p>
                                </div>
                            </div>
                        </div>
                    </footer>
    <script src="../../../lib/bootstrap/js/jquery/jquery.slim.min.js"></script>
    <script src="../../../lib/bootstrap/js/bootstrap.bundle.min.js"></script>
</body>
</html>
