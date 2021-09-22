<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="default.aspx.vb" Inherits="WORK._default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <meta charset="utf-8" />
    <meta content="width=device-width, initial-scale=1.0" name="viewport" />

    <title>EasyMan | School Management System</title>
    <meta content="" name="description" />
    <meta content="" name="keywords" />

    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Jost:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet" />

    <!-- Vendor CSS Files -->
    <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet" />
    <link href="assets/vendor/remixicon/remixicon.css" rel="stylesheet" />

    <!-- Template Main CSS File -->
    <link href="assets/css/style.css" rel="stylesheet" />

    <style>
        .dropdown-menu .text-white:hover {
            background: #31a9e1;
            color: #fff;
        }
    </style>
</head>

<body>

    <!-- ======= Header ======= -->
    <header id="header" class="fixed-top ">
        <div class="container d-flex align-items-center">
            <h1 class="logo mr-auto"><a href="#">EasyMan<br />
                <img src="EasyManLogoCrop.jpg"></a></h1>

            <a href="../SignIn.aspx" class="get-started-btn scrollto">Sign In</a>
            
            <div class="dropdown">
                <button class="get-started-btn scrollto btn  dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    Sign Up
                </button>
                <div class="dropdown-menu" style="background-color: #3D4D6A;border-radius:20px;border:3px solid #31A9E1" aria-labelledby="dropdownMenuButton">
                    <a class="dropdown-item text-white " href="../SignUp/AdminSignUp.aspx">Administrator</a>
                    <a class="dropdown-item text-white" href="../SignUp/TutorSignUp.aspx">Tutor</a>
                    <a class="dropdown-item text-white" href="../SignUp/StudentSignUp.aspx">Student</a>
                </div>
            </div>
        </div>
    </header>
    <!-- End Header -->

    <!-- ======= Hero Section ======= -->
    <section id="hero" class="d-flex align-items-center">

        <div class="container">
            <div class="row">
                <div class="col-lg-6 d-flex flex-column justify-content-center pt-4 pt-lg-0 order-2 order-lg-1" data-aos="fade-up" data-aos-delay="200">
                    <h1>Better Solutions For Managing School Activities</h1>
                    <h2>Welcome to the world of virtual education</h2>
                </div>
                <div class="col-lg-6 order-1 order-lg-2 hero-img" data-aos="zoom-in" data-aos-delay="200">
                    <img src="assets/img/hero-img.png" class="img-fluid animated" alt="" />
                </div>
            </div>
        </div>

    </section>
    <!-- End Hero -->

    <main id="main">


        <!-- ======= Why Us Section ======= -->
        <section id="why-us" class="why-us section-bg">
            <div class="container-fluid" data-aos="fade-up">

                <div class="row">

                    <div class="col-lg-7 d-flex flex-column justify-content-center align-items-stretch  order-2 order-lg-1">

                        <div class="content">
                            <h3><strong>What comes in your mind when you hear about Virtual Education</strong></h3>
                            <p>
                                A form of education which is outside the classroom or partially outside the classroom that is based on taking advantage of the telematic potential of the Internet to carry out formal or other types of education, by means of learning activities supported by virtual learning environments             
                            </p>
                        </div>

                        <div class="accordion-list">
                            <ul>
                                <li>
                                    <a data-toggle="collapse" class="collapse" href="#accordion-list-1"><span>01</span>Definition <i class="bx bx-chevron-down icon-show"></i><i class="bx bx-chevron-up icon-close"></i></a>
                                    <div id="accordion-list-1" class="collapse show" data-parent=".accordion-list">
                                        <p>
                                        It includes aspects of both online and e-learning but goes somewhat further. While it is largely web-centric it does not necessarily limit itself to learners outside a conventional classroom. It uses multimedia and, besides delivering content, also enables a high level of interaction among learners, content, teachers, peers and administration both synchronously and asynchronously.                  
                                    </div>
                                </li>

                                <li>
                                    <a data-toggle="collapse" href="#accordion-list-2" class="collapsed"><span>02</span>Definition <i class="bx bx-chevron-down icon-show"></i><i class="bx bx-chevron-up icon-close"></i></a>
                                    <div id="accordion-list-2" class="collapse" data-parent=".accordion-list">
                                        <p>
                                            This is instruction where both the instructor and student are separated by time or space, or both, and the course content is provided through university course management applications, multimedia resources, the Internet, videoconferencing, etc                   
                                        </p>
                                    </div>
                                </li>

                                <li>
                                    <a data-toggle="collapse" href="#accordion-list-3" class="collapsed"><span>03</span>Definition <i class="bx bx-chevron-down icon-show"></i><i class="bx bx-chevron-up icon-close"></i></a>
                                    <div id="accordion-list-3" class="collapse" data-parent=".accordion-list">
                                        <p>
                                            A distance education system that has the virtue to improve the learning process exclusively using new information and communication technologies.                   
                                        </p>
                                    </div>
                                </li>

                            </ul>
                        </div>

                    </div>

                    <div class="col-lg-5 align-items-stretch order-1 order-lg-2 img" style='background-image: url("assets/img/why-us.png");' data-aos="zoom-in" data-aos-delay="150">&nbsp;</div>
                </div>

            </div>
        </section>
        <!-- End Why Us Section -->

        <!-- ======= Cta Section ======= -->
        <section id="cta" class="cta">
            <div class="container" data-aos="zoom-in">

                <div class="row">
                    <div class="col-lg-9 text-center text-lg-left">
                    </div>
                    <div class="col-lg-3 cta-btn-container text-center">
                    </div>
                </div>

            </div>
        </section>
        <!-- End Cta Section -->


    </main><!-- End #main -->

    <!-- ======= Footer ======= -->
    <footer id="footer">

        <div class="footer-top">
            <div class="container">
                <div class="row">

                    <div class="col-lg-3 col-md-6 footer-links">
                        <h4>Want to know a lot about Us</h4>
                        <p>Reach to us on the following social media platforms</p>
                        <div class="social-links mt-3">
                            <a href="#" class="twitter"><i class="bx bxl-twitter"></i></a>
                            <a href="#" class="facebook"><i class="bx bxl-facebook"></i></a>
                            <a href="#" class="instagram"><i class="bx bxl-instagram"></i></a>
                            <a href="#" class="google-plus"><i class="bx bxl-skype"></i></a>
                            <a href="#" class="linkedin"><i class="bx bxl-linkedin"></i></a>
                        </div>
                    </div>

                </div>
            </div>
        </div>

        <div class="container footer-bottom clearfix">
            <div class="copyright">
                
            </div>
            <div class="credits">
                Designed by Bash
            </div>
        </div>
    </footer>
    <!-- End Footer -->

    <a href="#" class="back-to-top"><i class="ri-arrow-up-line"></i></a>
    <div id="preloader"></div>

    <script src="assets/vendor/jquery/jquery.min.js"></script>
    <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="assets/vendor/jquery.easing/jquery.easing.min.js"></script>
    <script src="assets/js/main.js"></script>

</body>

</html>
