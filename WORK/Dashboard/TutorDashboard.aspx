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
        .con .col-lg-3{
            margin-bottom: 15px;
        }
    </style>
</head>
<body>
      <nav class="navbar navbar-dark sticky-top bg-dark flex-md-nowrap p-0 shadow">
        <a class="navbar-brand  col-md-3 col-lg-2 mr-0 px-3" style="font-size:20px;display:inline;" href="#">Easy<span style="color:#2c84f1;">Man</span></a>
        <button class="navbar-toggler position-absolute d-md-none collapsed" type="button" data-toggle="collapse" data-target="#sidebarMenu" aria-controls="sidebarMenu" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <input class="form-control form-control-dark bg-dark w-100" readonly="readonly" style="cursor: default;"  type="search" aria-label="Search"/>
        <ul class="navbar-nav px-3">
            <li class="nav-item text-nowrap">
                <a class="nav-link" href="#" style="color:#ddedf1;">Sign out</a>
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
                                <span data-feather="home"></span>
                                Dashboard <span class="sr-only">(current)</span>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">
                                <span data-feather="file"></span>
                                Orders
            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">
                                <span data-feather="shopping-cart"></span>
                                Products
            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">
                                <span data-feather="users"></span>
                                Customers
            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">
                                <span data-feather="bar-chart-2"></span>
                                Reports
            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">
                                <span data-feather="layers"></span>
                                Integrations
            </a>
                        </li>
                    </ul>

                    <h6 class="sidebar-heading d-flex justify-content-between align-items-center px-3 mt-4 mb-1 text-muted">
                        <span>Saved reports</span>
                        <a class="d-flex align-items-center text-muted" href="#" aria-label="Add a new report">
                            <span data-feather="plus-circle"></span>
                        </a>
                    </h6>
                    <ul class="nav flex-column mb-2">
                        <li class="nav-item">
                            <a class="nav-link" href="#">
                                <span data-feather="file-text"></span>
                                Current month
            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">
                                <span data-feather="file-text"></span>
                                Last quarter
            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">
                                <span data-feather="file-text"></span>
                                Social engagement
            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">
                                <span data-feather="file-text"></span>
                                Year-end sale
            </a>
                        </li>
                    </ul>
                </div>
            </nav>

            <main role="main" class="col-md-9 ml-sm-auto col-lg-10 px-md-4">
                <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
                    <h1 class="h2">Dashboard</h1>
                    <div class="btn-toolbar mb-2 mb-md-0">
                        <div class="btn-group mr-2">
                            <button type="button" class="btn btn-sm btn-outline-secondary">Share</button>
                            <button type="button" class="btn btn-sm btn-outline-secondary">Export</button>
                        </div>
                        <button type="button" class="btn btn-sm btn-outline-secondary dropdown-toggle">
                            <span data-feather="calendar"></span>
                            This week
         
                        </button>
                    </div>
                </div>
                <div class="container con">
                <div class="row" >
                    <div class="col-lg-3 col-sm-6">
                        <div class="card text-center">
                            <div class="card-header">
                                <p style="font-size:20px;margin:0;">STUDENTS</p>
                            </div>
                            <div class="card-body">
                                <h5 class="card-title">
                                    <img src="../lib/Assets/img/table_icons/administrator.png" /> 
                                </h5>
                                <p class="card-text">With supporting text below as a natural lead-in to additional content.</p>
                                <a href="#" class="btn btn-primary"><span class="ti-arrow-left"></span> View <span class="ti-arrow-right"> </span></a>
                            </div>              
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-6">
                        <div class="card text-center">
                            <div class="card-header">
                                <p style="font-size:20px;margin:0;">STUDENTS</p>
                            </div>
                            <div class="card-body">
                                <h5 class="card-title">
                                    <img src="../lib/Assets/img/table_icons/administrator.png" /> 
                                </h5>
                                <p class="card-text">With supporting text below as a natural lead-in to additional content.</p>
                                <a href="#" class="btn btn-primary"><span class="ti-arrow-left"></span> View <span class="ti-arrow-right"> </span></a>
                            </div>            
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-6">
                        <div class="card text-center">
                            <div class="card-header">
                                <p style="font-size:20px;margin:0;">STUDENTS</p>
                            </div>
                            <div class="card-body">
                                <h5 class="card-title">
                                    <img src="../lib/Assets/img/table_icons/administrator.png" /> 
                                </h5>
                                <p class="card-text">With supporting text below as a natural lead-in to additional content.</p>
                                <a href="#" class="btn btn-primary"><span class="ti-arrow-left"></span> View <span class="ti-arrow-right"> </span></a>
                            </div>            
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-6">
                        <div class="card text-center">
                            <div class="card-header">
                                <p style="font-size:20px;margin:0;">STUDENTS</p>
                            </div>
                            <div class="card-body">
                                <h5 class="card-title">
                                    <img src="../lib/Assets/img/table_icons/administrator.png" /> 
                                </h5>
                                <p class="card-text">With supporting text below as a natural lead-in to additional content.</p>
                                <a href="#" class="btn btn-primary"><span class="ti-arrow-left"></span> View <span class="ti-arrow-right"> </span></a>
                            </div>            
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-3 col-sm-6">
                        <div class="card text-center">
                            <div class="card-header">
                                <p style="font-size:20px;margin:0;">STUDENTS</p>
                            </div>
                            <div class="card-body">
                                <h5 class="card-title">
                                    <img src="../lib/Assets/img/table_icons/administrator.png" /> 
                                </h5>
                                <p class="card-text">With supporting text below as a natural lead-in to additional content.</p>
                                <a href="#" class="btn btn-primary"><span class="ti-arrow-left"></span> View <span class="ti-arrow-right"> </span></a>
                            </div>              
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-6">
                        <div class="card text-center">
                            <div class="card-header">
                                <p style="font-size:20px;margin:0;">STUDENTS</p>
                            </div>
                            <div class="card-body">
                                <h5 class="card-title">
                                    <img src="../lib/Assets/img/table_icons/administrator.png" /> 
                                </h5>
                                <p class="card-text">With supporting text below as a natural lead-in to additional content.</p>
                                <a href="#" class="btn btn-primary"><span class="ti-arrow-left"></span> View <span class="ti-arrow-right"> </span></a>
                            </div>            
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-6">
                        <div class="card text-center">
                            <div class="card-header">
                                <p style="font-size:20px;margin:0;">STUDENTS</p>
                            </div>
                            <div class="card-body">
                                <h5 class="card-title">
                                    <img src="../lib/Assets/img/table_icons/administrator.png" /> 
                                </h5>
                                <p class="card-text">With supporting text below as a natural lead-in to additional content.</p>
                                <a href="#" class="btn btn-primary"><span class="ti-arrow-left"></span> View <span class="ti-arrow-right"> </span></a>
                            </div>            
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-6">
                        <div class="card text-center">
                            <div class="card-header">
                                <p style="font-size:20px;margin:0;">STUDENTS</p>
                            </div>
                            <div class="card-body">
                                <h5 class="card-title">
                                    <img src="../lib/Assets/img/table_icons/administrator.png" /> 
                                </h5>
                                <p class="card-text">With supporting text below as a natural lead-in to additional content.</p>
                                <a href="#" class="btn btn-primary"><span class="ti-arrow-left"></span> View <span class="ti-arrow-right"> </span></a>
                            </div>            
                        </div>
                    </div>
                </div>
              </div>
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
</body>

</html>
