<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="StudentProfileView.aspx.vb" Inherits="WORK.StudentProfileView" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <link href="../../lib/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <link href="../../lib/font-awesome/css/all.min.css" rel="stylesheet" />
    <link href="../../lib/Themify/themify-icons.css" rel="stylesheet" />

    <title></title>
    <style>
        #profilepic {
            border: 1px solid #808080;
            padding: 13px;
            border-radius: 33px;
            font-size: 50px;
            color: white;
            background-color: #c6c4c4;
            border: 2px solid #0094ff;
        }
    </style>
</head>
<body style="background-color: #c6c4c4;">
    <nav class="navbar navbar-expand-lg navbar-light bg-primary ">
        <div class="container-fluid">
            <a class="navbar-brand" href="#" style="color: white;">EasyMan</a>
        </div>
    </nav>
    <form id="form1" runat="server">
        <div class="container p-5">
            <div class="row">
                <div class="col-12">
                    <div class="card w-100" style="border: 2px outset">
                        <div class="card-body" >
                            <div class="row">
                                <div class="col-lg-2 col-md-2 col-sm-3">
                                    <i class="fas fa-user" id="profilepic"></i>
                                    <br />
                                    <span>Student Profile</span>
                                </div>
                                <div class="col-lg-3 col-md-4 col-sm-4">
                                    <p id="cuser" runat="server" style="font-size: 30px; font-weight: 100">Bashar Saeed</p>
                                </div>
                                <div class=" col-sm-2" style="text-align: center; vertical-align: central;">
                                    <button runat="server" id="editbtn" onserverclick="editbtn_ServerClick" class="btn btn-primary mt-1">Edit</button>
                                    <button runat="server" id="savebtn" onserverclick="savebtn_ServerClick" class="btn btn-primary mt-1">Save</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row pt-2">
                <div class="col">
                    <div class="card">
                        <div class="card-body">
                            <div class="col">
                                <h3>User Details</h3>
                                
                                <label>Student Name :</label><asp:TextBox CssClass="form-control" runat="server" id="unametxt" type="text" Enabled="False"></asp:TextBox>
                                <label>Date Of Birth:</label><asp:TextBox CssClass="form-control" runat="server" id="dobtxt" type="datetime" Enabled="False"></asp:TextBox>
                                <label>Email:</label><asp:TextBox CssClass="form-control" runat="server" id="emailtxt" type="text" Enabled="False"></asp:TextBox>
                                <label>Student Id:</label><asp:TextBox CssClass="form-control" runat="server" id="stdidtxt" type="text" Enabled="False"></asp:TextBox>
                                <label>Guardian Name:</label><asp:TextBox CssClass="form-control" runat="server" id="gnametxt" type="text" Enabled="False"></asp:TextBox>
                                <label>Guardian Contact:</label><asp:TextBox CssClass="form-control" runat="server" id="gcontacttxt" type="text" Enabled="False"></asp:TextBox>
                            </div>
                        </div>
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
                                        <li><a href='#' class="generic-anchor footer-list-anchor" itemprop="significantLink"><i class="ti-location-pin"> </i>KNUST-KUMASI, ASHANTI REGION</a></li>
                                        <li><a href='#' class="generic-anchor footer-list-anchor" itemprop="significantLink"><i class="fas fa-phone"> </i>+233549115783/+233504802283</a></li>
                                        <li><a href='mailto:basharsaeed200@gmail.com' class="generic-anchor footer-list-anchor" itemprop="significantLink"><i class="ti-email"> </i>basharsaeed200@gmail.comm/a></li>
                                        <li><a href='../SignUp/StudentSignUp.aspx' class="generic-anchor footer-list-anchor" itemprop="significantLink"><i class=" ti-plus"> </i>NEW USERS</a></li>
                                        <li><a href='#' itemprop="significantLink" class="generic-anchor footer-list-anchor"><i class=" ti-stats-up"> </i>Status</a></li>
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
                                   <p style="font-size: 20px;text-align:center;">You logged In as <a href="#" id="loguname" runat="server" ></a><a href="#">(Log Out)</a></p>
                               </div>
                            </div>
                        </div>        
                    </footer>

    <script src="../../lib/SweetAlert.js">   </script>
    <script src="../../lib/jquery/jquery.slim.min.js"></script>
    <script src="../../lib/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="../../lib/bootstrap/js/feather-icons/feather.min.js"></script>
</body>
</html>
