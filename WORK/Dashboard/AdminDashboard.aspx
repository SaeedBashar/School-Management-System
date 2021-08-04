<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="AdminDashboard.aspx.vb" Inherits="WORK.AdminDashboard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <link href="../lib/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <link href="../lib/font-awesome/css/all.min.css" rel="stylesheet" />
    <link href="../lib/Themify/themify-icons.css" rel="stylesheet" />
    <link href="AdminAssets/dashboard.css" rel="stylesheet" />

    <title>EasyMan | Administrator Dashboard</title>
    <style>
        .bd-placeholder-img {
            font-size: 1.125rem;
            text-anchor: middle;
            -webkit-user-select: none;
            -moz-user-select: none;
            -ms-user-select: none;
            user-select: none;
        }

        @media (min-width: 768px) {
            .bd-placeholder-img-lg {
                font-size: 3.5rem;
            }
        }

        .con .col-lg-3 {
            margin-bottom: 15px;
        }

        footer-list-top {
            display: inline;
            width: 40%;
        }
        .mymedia a{
            margin: 5px 5px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <nav class="navbar navbar-dark sticky-top bg-dark flex-md-nowrap p-0 shadow">
            <a class="navbar-brand  col-md-3 col-lg-2 mr-0 px-3" style="font-size: 20px; display: inline;" href="#">Easy<span style="color: #2c84f1;">Man</span></a>

            <button class="navbar-toggler position-absolute d-md-none collapsed" type="button" data-toggle="collapse" data-target="#sidebarMenu" aria-controls="sidebarMenu" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <input class="form-control form-control-dark bg-dark w-100" readonly="readonly" style="cursor: default;" type="search" aria-label="Search" />
            <ul class="navbar-nav px-3">
                <li class="nav-item text-nowrap">
                    <a class="nav-link" href="#" style="color: #ddedf1;">Sign out</a>
                </li>
            </ul>
        </nav>

        <div class="container-fluid">
            <div class="row ">
                <nav id="sidebarMenu" class="col-md-3 col-lg-2 d-md-block bg-light sidebar collapse">
                    <div class="sidebar-sticky pt-3">
                        <ul class="nav flex-column">
                            <li class="nav-item" style="background-color: #2c84f1;">
                                <a class="nav-link active" href="#" style="color: white;">
                                    <span data-feather="home"></span>
                                    Dashboard <span class="sr-only">(current)</span>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="Adminto/AdminStudentView.aspx">
                                    <span class="ti-user"></span>
                                    Students
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="AdminTo/AdminTutorView.aspx">
                                    <span class="ti-user"></span>
                                    Tutors
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="AdminTo/AdminProgramView.aspx">
                                    <span class=" ti-bar-chart"></span>
                                    Programs
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="AdminTo/AdminCourseView.aspx">
                                    <span data-feather="file-text"></span>
                                    Courses
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="AdminTo/AdminHallView.aspx">
                                    <span class="ti-home"></span>
                                    Halls
                                </a>
                            </li>
                        </ul>

                        <h6 class="sidebar-heading d-flex justify-content-between align-items-center px-3 mt-4 mb-1 text-muted">
                            <span>INFORMATION</span>

                        </h6>
                        <ul class="nav flex-column mb-2">
                            <li class="nav-item">
                                <a class="nav-link" href="AdminTo/AdminAnnouncementView.aspx">
                                    <span data-feather="file-text"></span>
                                    Announcements
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="AdminTo/AdminEventView.aspx">
                                    <span data-feather="file-text"></span>
                                    Events
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="AdminTo/AdminGuardianView.aspx">
                                    <span data-feather="file-text"></span>
                                    Guardian
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="AdminTo/AdminStudentView.aspx">
                                    <span data-feather="file-text"></span>
                                    Fees Structure
                                </a>
                            </li>
                        </ul>
                    </div>
                </nav>

                <main role="main" class="col-md-9 ml-sm-auto col-lg-10 px-md-4">
                    <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
                        <h1 class="h2">Dashboard<br />
                            <span>(Administrator)</span></h1>
                        <div class="btn-toolbar mb-2 mb-md-0">
                            
                            <div class="dropdown">
                                <button class="btn btn-outline-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    <span data-feather="calendar"></span>
                                    This Week
                                </button>
                                <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                    <a class="dropdown-item" href="AdminTo/AdminAnnouncementView.aspx">Notice</a>
                                    <a class="dropdown-item" href="AdminTo/AdminEventView.aspx">Events</a>
                                    <a class="dropdown-item" href="AdminTo/AdminArea.aspx">Admin Area</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="container con">
                        <div class="row">
                            <div class="col-lg-3 col-sm-6">
                                <div class="card text-center">
                                    <div class="card-header">
                                        <p style="font-size: 20px; margin: 0;">STUDENTS</p>
                                    </div>
                                    <div class="card-body">
                                        <h5 class="card-title">
                                            <img src="../lib/Assets/img/table_icons/student2.png" width="30" height="30" />
                                        </h5>
                                        <p class="card-text">Current Student Users</p>
                                        <a href="AdminTo/AdminStudentView.aspx" class="btn btn-primary"><span class="ti-arrow-left"></span>View <span class="ti-arrow-right"></span></a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-3 col-sm-6">
                                <div class="card text-center">
                                    <div class="card-header">
                                        <p style="font-size: 20px; margin: 0;">TUTORS</p>
                                    </div>
                                    <div class="card-body">
                                        <h5 class="card-title">
                                            <img src="../lib/Assets/img/table_icons/administrator.png" />
                                        </h5>
                                        <p class="card-text">Current Tutor Users</p>
                                        <a href="AdminTo/AdminTutorView.aspx" class="btn btn-primary"><span class="ti-arrow-left"></span>View <span class="ti-arrow-right"></span></a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-3 col-sm-6">
                                <div class="card text-center">
                                    <div class="card-header">
                                        <p style="font-size: 20px; margin: 0;">PROGRAMS</p>
                                    </div>
                                    <div class="card-body">
                                        <h5 class="card-title">
                                            <img src="../lib/Assets/img/table_icons/chart_organisation.png" />
                                        </h5>
                                        <p class="card-text">Current programs offered</p>
                                        <a href="AdminTo/AdminProgramView.aspx" class="btn btn-primary"><span class="ti-arrow-left"></span>View <span class="ti-arrow-right"></span></a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-3 col-sm-6">
                                <div class="card text-center">
                                    <div class="card-header">
                                        <p style="font-size: 20px; margin: 0;">COURSES</p>
                                    </div>
                                    <div class="card-body">
                                        <h5 class="card-title">
                                            <img src="../lib/Assets/img/table_icons/books.png" />
                                        </h5>
                                        <p class="card-text">Courses within each program</p>
                                        <a href="AdminTo/AdminCourseView.aspx" class="btn btn-primary"><span class="ti-arrow-left"></span>View <span class="ti-arrow-right"></span></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-lg-3 col-sm-6">
                                <div class="card text-center">
                                    <div class="card-header">
                                        <p style="font-size: 20px; margin: 0;">HALLS</p>
                                    </div>
                                    <div class="card-body">
                                        <h5 class="card-title">
                                            <img src="../lib/Assets/img/table_icons/house2.png" height="33" width="33" />
                                        </h5>
                                        <p class="card-text">Halls information</p>
                                        <a href="AdminTo/AdminHallView.aspx" class="btn btn-primary"><span class="ti-arrow-left"></span>View <span class="ti-arrow-right"></span></a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-3 col-sm-6">
                                <div class="card text-center">
                                    <div class="card-header">
                                        <p style="font-size: 20px; margin: 0;">ANNOUNCEMENTS</p>
                                    </div>
                                    <div class="card-body">
                                        <h5 class="card-title" style="color: #26d93e">
                                            <img src="../lib/Assets/img/table_icons/announcement2.png" width="30" height="30" />
                                        </h5>
                                        <p class="card-text">Announcements to Users</p>
                                        <a href="AdminTo/AdminAnnouncementView.aspx" class="btn btn-primary"><span class="ti-arrow-left"></span>View <span class="ti-arrow-right"></span></a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-3 col-sm-6">
                                <div class="card text-center">
                                    <div class="card-header">
                                        <p style="font-size: 20px; margin: 0;">EVENTS</p>
                                    </div>
                                    <div class="card-body">
                                        <h5 class="card-title">
                                            <img src="../lib/Assets/img/table_icons/event.png" height="25" width="25" />
                                        </h5>
                                        <p class="card-text">Upcomig Events</p>
                                        <a href="AdminTo/AdminEventView.aspx" class="btn btn-primary"><span class="ti-arrow-left"></span>View <span class="ti-arrow-right"></span></a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-3 col-sm-6">
                                <div class="card text-center">
                                    <div class="card-header">
                                        <p style="font-size: 20px; margin: 0;">GUARDIAN</p>
                                    </div>
                                    <div class="card-body">
                                        <h5 class="card-title">
                                            <img src="../lib/Assets/img/table_icons/guardian.png" width="30" height="30" />
                                        </h5>
                                        <p class="card-text">Guardian Information</p>
                                        <a href="AdminTo/AdminGuardianView.aspx" class="btn btn-primary"><span class="ti-arrow-left"></span>View <span class="ti-arrow-right"></span></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-12 pb-4" style="border-bottom: 1px solid #b0abab;">
                                <p style="color: #332d2d; font-size: xx-large; text-align: center;">Current Fees Collection</p>
                                <asp:GridView ID="GridView1" runat="server" CssClass="table table-striped table-hover" Width="100%" AutoGenerateColumns="False" DataKeyNames="Student_id" DataSourceID="SqlDataSource1">
                                    <Columns>
                                        <asp:BoundField DataField="Student_id" HeaderText="Student Id" InsertVisible="False" ReadOnly="True" SortExpression="Student_id" />
                                        <asp:BoundField DataField="Fname" HeaderText="First Name" SortExpression="Fname" />
                                        <asp:BoundField DataField="Mname" HeaderText="Middle Name" SortExpression="Mname" />
                                        <asp:BoundField DataField="Lname" HeaderText="Last Name" SortExpression="Lname" />
                                        <asp:BoundField DataField="Total_fees" HeaderText="Total Fees" SortExpression="Total_fees" />
                                        <asp:BoundField DataField="Balance_fees" HeaderText="Balance Fees" SortExpression="Balance_fees" />
                                    </Columns>
                                    <HeaderStyle BackColor="#3399FF" />
                                </asp:GridView>
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=DESKTOP-VPRF4HJ\SQLEXPRESS;Initial Catalog=SchoolManagement;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [Student_id], [Fname], [Lname], [Mname], [Total_fees], [Balance_fees] FROM [STUDENTS]"></asp:SqlDataSource>
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

                                            <img src="../lib/Assets/collections/NewImage1.jpg" class="d-block w-100" style="width: 500px; height: 400px; margin: auto;" />
                                            <div class="carousel-caption d-none d-md-block">
                                                <h5>Education</h5>
                                                <p>Education moved to the virtual world with easy access to learning materials.</p>
                                            </div>
                                        </div>
                                        <div class="carousel-item">
                                            <img src="../lib/Assets/collections/NewImage3.jpg" class="d-block w-100" style="width: 500px; height: 400px; margin: auto;" />
                                            <div class="carousel-caption d-none d-md-block">
                                                <h5>Pupil</h5>
                                                <p>The future leaders good benefit a lot from the world of virtual education.</p>
                                            </div>
                                        </div>
                                        <div class="carousel-item">
                                            <img src="../lib/Assets/collections/NewImage8.jpg" class="d-block w-100" style="width: 500px; height: 400px; margin: auto;" />
                                            <div class="carousel-caption d-none d-md-block">
                                                <h5>Virtual Class</h5>
                                                <p>The world of virtual education is exciting.</p>
                                            </div>
                                        </div>
                                        <div class="carousel-item">
                                            <img src="../lib/Assets/collections/NewImage7.jpg" class="d-block w-100" style="width: 500px; height: 400px; margin: auto;" />
                                            <div class="carousel-caption d-none d-md-block">
                                                <h5>E-library</h5>
                                                <p>Imagine an education with e-libray.</p>
                                            </div>
                                        </div>
                                        <div class="carousel-item">
                                            <img src="../lib/Assets/collections/Newm.jpg" class="d-block w-100" style="width: 500px; height: 400px; margin: auto;" />
                                            <div class="carousel-caption d-none d-md-block">
                                                <h5>Virtuality</h5>
                                                <p>Get to the classroom without actually being in class.</p>
                                            </div>
                                        </div>
                                        <div class="carousel-item">
                                            <img src="../lib/Assets/collections/Newim.jpg" class="d-block w-100" style="width: 500px; height: 400px; margin: auto;" />
                                            <div class="carousel-caption d-none d-md-block">
                                                <h5>Easy Access</h5>
                                                <p>Have access to quality education from any where in the world.</p>
                                            </div>
                                        </div>
                                        <div class="carousel-item">
                                            <img src="../lib/Assets/collections/NewImage6.jpg" class="d-block w-100" style="width: 500px; height: 400px; margin: auto;" />
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
                    <footer style="background-color:#b0abab;" class="p-4">
                        <div class="container">
                            <div class="row">
                                <div class="col-sm-4">
                                    <ul class="footer-list-top">
                                        <li>
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
                                        <li>
                                            <h4 class="footer-list-header">The Gift Selection</h4>
                                        </li>


                                        <li><a href='#' class="generic-anchor footer-list-anchor">ANGEL FIGURINES</a></li>
                                        <li><a href='#' class="generic-anchor footer-list-anchor">HOME DECOR</a></li>
                                        <li><a href='#' class="generic-anchor footer-list-anchor">MUGS</a></li>
                                        <li><a href='#' class="generic-anchor footer-list-anchor">PET LOVER</a></li>
                                        <li><a href='#' class="generic-anchor footer-list-anchor" target="_blank">HANDBAGS & JEWELRY</a></li>
                                    </ul>
                                </div>
                                <div class="col-sm-4">
                                    <ul class="footer-list-top">
                                        <li id='help'>
                                            <h4 class="footer-list-header">SUPPORT</h4>
                                        </li>
                                        <li><a href='#' class="generic-anchor footer-list-anchor" itemprop="significantLink">CONTACT</a></li>
                                        <li><a href='#' class="generic-anchor footer-list-anchor" itemprop="significantLink">FAQ</a></li>
                                        <li id='find-a-store'><a href='#' class="generic-anchor footer-list-anchor" itemprop="significantLink">STORE LOCATOR</a></li>
                                        <li id='user-registration'><a href='#' class="generic-anchor footer-list-anchor" itemprop="significantLink">NEW USERS</a></li>
                                        <li id='order-tracking'><a href='#' itemprop="significantLink" class="generic-anchor footer-list-anchor">ORDER STATUS</a></li>
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
                        </div>

                    </footer>
                </main>

            </div>
        </div>

        <script src="../lib/SweetAlert.js">   </script>
        <script src="../lib/jquery/jquery.slim.min.js"></script>
        <script src="../lib/bootstrap/js/bootstrap.bundle.min.js"></script>
        <script src="../lib/bootstrap/js/feather-icons/feather.min.js"></script>
        <script src="AdminAssets/dashboard.js"></script>
        <script>
</script>
    </form>
</body>
</html>
