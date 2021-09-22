<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="TutorDashboard.aspx.vb" Inherits="WORK.TutorDashboard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <link href="../lib/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <link href="../lib/font-awesome/css/all.min.css" rel="stylesheet" />
    <link href="../lib/Themify/themify-icons.css" rel="stylesheet" />
    <link href="AdminAssets/dashboard.css" rel="stylesheet" />
    <link href="../lib/bootstrap-sweetalert/sweetalert.min.css" rel="stylesheet" />
    <script src="../lib/bootstrap-sweetalert/sweetalert.min.js"></script>

    <title></title>
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
    </style>
</head>
<body>
    <form runat="server" id="form1">
        <nav class="navbar navbar-dark sticky-top bg-dark flex-md-nowrap p-0 shadow">
            <a class="navbar-brand  col-md-3 col-lg-2 mr-0 px-3" style="font-size: 20px; display: inline;" href="#">Easy<span style="color: #2c84f1;">Man</span></a>
            <button class="navbar-toggler position-absolute d-md-none collapsed" type="button" data-toggle="collapse" data-target="#sidebarMenu" aria-controls="sidebarMenu" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <ul class="navbar-nav px-3">
                <li class="nav-item text-nowrap">
                    <p id="wlcome" runat="server" style="font-size: 20px; color: white;">Welcome, </p>
                </li>
            </ul>
        </nav>
        <div class="container-fluid">
            <div class="row">
                <nav id="sidebarMenu" class="col-md-3 col-lg-2 d-md-block bg-light sidebar collapse">
                    <div class="sidebar-sticky pt-3">
                        <ul class="nav flex-column">
                            <li class="nav-item">
                                <a class="nav-link active" href="#">
                                    <span class="ti-dashboard"></span>
                                    Dashboard <span class="sr-only">(current)</span>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#" data-toggle="modal" data-target="#staticBackdrop">
                                    <span data-feather="file"></span>
                                    Add Assignments
            </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="TutorTo/ViewSubmissions.aspx">
                                    <span data-feather="file"></span>
                                    View Submissios
            </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="TutorTo/TutorViewAnnouncement.aspx">
                                    <span data-feather="file"></span>
                                    Announcements
            </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="TutorTo/TutorViewEvent.aspx">
                                    <span data-feather="layers"></span>
                                    Upcoming Events
            </a>
                            </li>
                            
                        </ul>

                       
                    </div>
                </nav>

                <main role="main" class="col-md-9 ml-sm-auto col-lg-10 px-md-4">
                    <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
                        <h1 class="h2">Dashboard<br />
                            (Tutors)</h1>
                        <div class="btn-toolbar mb-2 mb-md-0">

                            <div class="dropdown">
                                <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    User Account
                                </button>
                                <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                    <a class="dropdown-item" href="#"><span class="ti-dashboard"></span>Dashboard</a>
                                    <a class="dropdown-item" runat="server" id="toprofile" onserverclick="toprofile_ServerClick"><span class="ti-user"></span>Profile</a>
                                    <a class="dropdown-item" href="#grade"><span class="ti-calendar"></span>Grades</a>
                                    <a class="dropdown-item" href="#"><span class="fas fa-comment"></span>Messages</a>
                                    <a class="dropdown-item" href="#"><span class="fas fa-palette"></span>Preferences</a>
                                    <a class="dropdown-item" runat="server" id="signout" onserverclick="signout_ServerClick" href="#"><span class=" ti-save-alt"></span>Log Out</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="container con">
                        <div class="row">
                            <div class="col-lg-3 col-sm-6">
                                <div class="card text-center">
                                    <div class="card-header">
                                        <p style="font-size: 20px; margin: 0;">ADD ASSIGNMENT</p>
                                    </div>
                                    <div class="card-body">
                                        <h5 class="card-title">
                                            <img src="../lib/Assets/img/table_icons/clipboard_empty.png" />
                                        </h5>
                                        <p class="card-text">Click the button below to add an assignment for your students</p>
                                        <!-- Button trigger modal -->
                                        <a href="#" runat="server" id="engview" class="btn btn-primary" data-toggle="modal" data-target="#staticBackdrop"><span class="ti-arrow-left"></span>View<span class="ti-arrow-right"></span></a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-3 col-sm-6">
                                <div class="card text-center">
                                    <div class="card-header">
                                        <p style="font-size: 20px; margin: 0;">VIEW SUBMISSION</p>
                                    </div>
                                    <div class="card-body">
                                        <h5 class="card-title">
                                            
                                            <img src="../lib/Assets/img/table_icons/books.png" />
                                        </h5>
                                        <p class="card-text">View the list of students who have submitted their assignment</p>
                                        <a href="#" runat="server" id="cmathview" onserverclick="cmathview_ServerClick" class="btn btn-primary"><span class="ti-arrow-left"></span>View <span class="ti-arrow-right"></span></a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-3 col-sm-6">
                                <div class="card text-center">
                                    <div class="card-header">
                                        <p style="font-size: 20px; margin: 0;">ANNOUNCEMENTS</p>
                                    </div>
                                    <div class="card-body">
                                        <h5 class="card-title">
                                            <img src="../lib/Assets/img/table_icons/announcement2.png" width="30" height="30" />
                                        </h5>
                                        <p class="card-text">View currently updated announcements</p>
                                        
                                        <a href="#" runat="server" onserverclick="annouceview_ServerClick" id="annouceview" class="btn btn-primary"><span class="ti-arrow-left"></span>View <span class="ti-arrow-right"></span></a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-3 col-sm-6">
                                <div class="card text-center">
                                    <div class="card-header">
                                        <p style="font-size: 20px; margin: 0;">UPCOMING EVENTS</p>
                                    </div>
                                    <div class="card-body">
                                        <h5 class="card-title">
                                            <img src="../lib/Assets/img/table_icons/administrator.png" />
                                        </h5>
                                        <p class="card-text">View the upcoming events of the school</p>
                                        <a href="#" runat="server" id="eventeview" onserverclick="eventeview_ServerClick" class="btn btn-primary"><span class="ti-arrow-left"></span>View <span class="ti-arrow-right"></span></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="row">
                            <div class="col">
                                <div class="card">
                                    <div runat="server" class="card-header" id="grade" style="font-size: 20px; color: #564f4f; text-align: center;">
                                        MARKS IN 
                                    </div>
                                    <div class="card-body">

                                        <asp:GridView ID="GridView1" runat="server" Width="80%" Style="margin: auto;" BorderStyle="None" CssClass="table table-striped table-borderless">
                                            <HeaderStyle BackColor="#3399FF" BorderStyle="None" />
                                            <RowStyle BorderStyle="None" />
                                        </asp:GridView>


                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row pt-3">
                            <div class="col">
                                <asp:Calendar ID="Calendar1" runat="server" Width="100%" FirstDayOfWeek="Sunday">
                                    <TodayDayStyle BackColor="#3399FF" ForeColor="White" />
                                </asp:Calendar>
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
                                    <p style="font-size: 20px; text-align: center;">You logged In as <a href="#" id="loguname" runat="server" onserverclick="toprofile_ServerClick"><span id="bottomuname"></span></a><a id="blogout" runat="server" onserverclick="signout_ServerClick" href="#">(Log Out)</a></p>
                                </div>
                            </div>
                        </div>
                    </footer>

                </main>


            </div>
            
            <!-- Assignment Modal -->
            <div class="modal fade" id="staticBackdrop" data-backdrop="static" data-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="staticBackdropLabel">Add Assignment</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body">
                            <div>
                                <div class="form-group">
                                    <label for="recipient-name" class="col-form-label">Title:</label>
                                    <input type="text" runat="server" id="queHead" class="form-control"/>
                                </div>
                                <div class="form-group">
                                    <label for="message-text" class="col-form-label">Question:</label>
                                    <textarea runat="server" id="queBody" class="form-control" rows="10"></textarea>
                                </div>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary"  data-dismiss="modal">Cancel</button>
                            <button runat="server" id="submitQue" type="button" class="btn btn-primary" onserverclick="submitQue_ServerClick" data-dismiss="modal">Submit</button>
                        </div>
                    </div>
                </div>
            </div>

            
        </div>
    </form>





    <script src="../../lib/jquery/jquery.slim.min.js"></script>
    <script src="../../lib/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="../../lib/bootstrap/js/feather-icons/feather.min.js"></script>
    <script src="AdminAssets/dashboard.js"></script>
    <script>

</script>
</body>

</html>
