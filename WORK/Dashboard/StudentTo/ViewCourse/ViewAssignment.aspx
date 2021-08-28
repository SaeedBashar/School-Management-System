<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="ViewAssignment.aspx.vb" Inherits="WORK.ViewAssignment"  %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <link href="../../../lib/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <link href="../../../lib/font-awesome/css/all.min.css" rel="stylesheet" />
    <link href="../../../lib/Themify/themify-icons.css" rel="stylesheet" />
    <link href="../../../lib/bootstrap-sweetalert/sweetalert.min.css" rel="stylesheet" />
    <script src="../../../lib/bootstrap-sweetalert/sweetalert.min.js"></script>

    <title></title>
</head>
<body style="background-color: #c6c4c4;">
    <form id="form1" runat="server" enctype="multipart/form-data">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="card w-100" style="border: 2px outset">
                        <div class="card-body" >
                            <div class="row">  
                                <div class="col">
                                    <p id="cid" runat="server" style="font-size: 30px; font-weight: 100;text-align:center"></p>
                                    <p id="cname" runat="server" style="font-size: 30px; font-weight: 100;text-align:center"></p>
                                    <p id="tname" runat="server" style="font-size: 30px; font-weight: 100;text-align:center"></p>
                                </div>              
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-12">
                    <div class="card w-100" style="border: 2px outset">
                        <div class="card-body" >
                            <div class="row">  
                                <div class="col">
                                    <div runat="server" id="tit" style="font-size: 20px;font-weight: bolder;"></div>
                                    <div runat="server" id="cont" style="font-size: 18px;padding-left: 15px;"></div>
                                </div>              
                            </div>
                            <div class="row">  
                                <div class="col-5">
                                    <div class="card" runat="server" id="Div1">
                                        <div class="card-header" runat="server" id="Div2">
                                            <!--
                                            <button runat="server"><span class="fas fa-file-import"></span></button>
                                            <button runat="server"><span class="fas fa-folder-plus"></span></button>
                                            <button runat="server"><span class="fas fa-download"></span></button>
                                            -->
                                            File Upload
                                        </div>
                                        <div class="card-body" runat="server" id="Div3">
                                            <asp:FileUpload runat="server" ID="fileup" AllowMultiple="false" accept=" *.pdf,*.docx" />
                                            <button runat="server" class="btn btn-primary mt-3 mb-3" id="btnSubmit" onserverclick="btnSubmit_ServerClick">Submit</button><br />
                                            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                                        </div>
                                    </div>                      
                                </div>
                                  <div class="col-sm-7">
                                    <div class="card" runat="server" id="Div4">
                                        <div class="card-header" runat="server" id="Div5" style="font-size: 20px; font-weight: bolder">
                                            Text Editor
                                            <button runat="server" class="btn btn-primary mt-3 mb-3" id="editsubbtn" onserverclick="editsubbtn_ServerClick">Submit</button>
                                        </div>
                                        <div class="card-body" runat="server" id="Div6">
                                            <asp:TextBox runat="server" ID="textEditor" TextMode="MultiLine" Width="100%" Rows="15"></asp:TextBox>
                                        </div>
                                    </div>                      
                                </div>
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
                                   <p style="font-size: 20px;text-align:center;">You logged In as <a href="../StudentProfileView.aspx" id="loguname" runat="server" ></a><a href="#">(Log Out)</a></p>
                               </div>
                            </div>
                        </div>        
                    </footer>


    <script src="../../../lib/jquery/jquery.slim.min.js"></script>
    <script src="../../../lib/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="../../../lib/bootstrap/js/feather-icons/feather.min.js"></script>

    <script type="text/javascript">
        
    </script>
</body>
</html>
