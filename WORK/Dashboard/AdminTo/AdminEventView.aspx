<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="AdminEventView.aspx.vb" Inherits="WORK.AdminEventView" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <link href="../../lib/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <link href="../../lib/font-awesome/css/all.css" rel="stylesheet" />
    <link href="../../lib/Themify/themify-icons.css" rel="stylesheet" />

    <title>EasyMan | Administrative Student View</title>
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
    </style>
</head>
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
    <form runat="server" id="form1">
        <div class="container">
            <div class="row">
                <div class="col">
                    <p style="font-size: 30px;">
                        <img src="../../lib/Assets/img/table_icons/administrator.png" />
                        EVENTS
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
                                <a class="navbar-brand" href="#" style="background-color: #2ec42d; padding: 1px 5px; border-radius: 4px;">
                                    <img src="../../lib/Assets/img/table_icons/group_add.png" />
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
                                        <asp:TextBox ID="searchtxt" class="form-control mr-sm-2" type="search" placeholder="search by name" runat="server"></asp:TextBox>

                                        <button class="btn btn-primary my-2 my-sm-0" runat="server" id="BtnSearch" type="button">Search</button>
                                    </div>
                                </div>
                            </nav>
                        </div>
                        <div class="card-body" style="height: 400px">
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
