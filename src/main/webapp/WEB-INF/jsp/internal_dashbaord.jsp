<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8"/>
        <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
        <meta name="description" content=""/>
        <meta name="author" content=""/>
        <title>Dashtreme Admin - Free Dashboard for Bootstrap 4 by Codervent</title>
        <!-- loader-->
        <link href="assets/css/pace.min.css" rel="stylesheet"/>
        <script src="assets/js/pace.min.js"></script>
        <!--favicon-->
        <link rel="icon" href="assets/images/favicon.ico" type="image/x-icon">
        <!-- Vector CSS -->
        <link href="assets/plugins/vectormap/jquery-jvectormap-2.0.2.css" rel="stylesheet"/>
        <!-- simplebar CSS-->
        <link href="assets/plugins/simplebar/css/simplebar.css" rel="stylesheet"/>
        <!-- Bootstrap core CSS-->
        <link href="assets/css/bootstrap.min.css" rel="stylesheet"/>
        <!-- animate CSS-->
        <link href="assets/css/animate.css" rel="stylesheet" type="text/css"/>
        <!-- Icons CSS-->
        <link href="assets/css/icons.css" rel="stylesheet" type="text/css"/>
        <!-- Sidebar CSS-->
        <link href="assets/css/sidebar-menu.css" rel="stylesheet"/>
        <!-- Custom Style-->
        <link href="assets/css/app-style.css" rel="stylesheet"/>

    </head>

    <body class="bg-theme bg-theme1">

        <!-- Start wrapper-->
        <div id="wrapper">


            <div class="clearfix"></div>

            <div class="content-wrapper">
                <div class="container-fluid">
                    <%@include file="jspf/navbar.jspf" %>
                    <!--Start Dashboard Content-->

                    <div class="card mt-3">
                        <div class="card-content">
                            <div class="row row-group m-0">
                                <div class="col border-light">
                                    <div class="card-body">
                                        <h5 class="text-white mb-0" id="all">0 <span class="float-right"><i class="feather"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-align-center"><line x1="18" y1="10" x2="6" y2="10"></line><line x1="21" y1="6" x2="3" y2="6"></line><line x1="21" y1="14" x2="3" y2="14"></line><line x1="18" y1="18" x2="6" y2="18"></line></svg>
                                                </i></span></h5>
                                        <div class="progress my-3" style="height:3px;">
                                            <!--<div class="progress-bar" style="width:55%"></div>-->
                                        </div>
                                        <p class="mb-0 text-white small-font">All</p>
                                    </div>
                                </div>
                                <div class="col border-light">
                                    <div class="card-body">
                                        <h5 class="text-white mb-0" id="acknowledgment">0 <span class="float-right"><i class="feather ">
                                                    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-clock"><circle cx="12" cy="12" r="10"></circle><polyline points="12 6 12 12 16 14"></polyline></svg>
                                                </i></span></h5>
                                        <div class="progress my-3" style="height:3px;">
                                            <!--<div class="progress-bar" style="width:55%"></div>-->
                                        </div>
                                        <p class="mb-0 text-white small-font">Queue</p>
                                    </div>
                                </div>
                                <div class="col border-light">
                                    <div class="card-body">
                                        <h5 class="text-white mb-0" id="acknowledgment">0 <span class="float-right"><i class="feather ">
                                                    <i class="feather ">
                                                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-book-open"><path d="M2 3h6a4 4 0 0 1 4 4v14a3 3 0 0 0-3-3H2z"></path><path d="M22 3h-6a4 4 0 0 0-4 4v14a3 3 0 0 1 3-3h7z"></path></svg></i>
                                                </i>
                                            </span>
                                        </h5>
                                        <div class="progress my-3" style="height:3px;">
                                            <!--<div class="progress-bar" style="width:55%"></div>-->
                                        </div>
                                        <p class="mb-0 text-white small-font">In Progress</p>
                                    </div>
                                </div>
                                <div class="col border-light">
                                    <div class="card-body">
                                        <h5 class="text-white mb-0" id="acknowledgment">0 <span class="float-right"><i class="feather ">
                                                    <i class="feather ">
                                                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-file-text"><path d="M14 2H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V8z"></path><polyline points="14 2 14 8 20 8"></polyline><line x1="16" y1="13" x2="8" y2="13"></line><line x1="16" y1="17" x2="8" y2="17"></line><polyline points="10 9 9 9 8 9"></polyline></svg></i>
                                                </i>
                                            </span>
                                        </h5>
                                        <div class="progress my-3" style="height:3px;">
                                            <!--<div class="progress-bar" style="width:55%"></div>-->
                                        </div>
                                        <p class="mb-0 text-white small-font">Development Pending</p>
                                    </div>
                                </div>
                                <div class="col border-light">
                                    <div class="card-body">
                                        <h5 class="text-white mb-0" id="acknowledgment">0 <span class="float-right"><i class="feather ">
                                                    <i class="feather ">
                                                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-award"><circle cx="12" cy="8" r="7"></circle><polyline points="8.21 13.89 7 23 12 20 17 23 15.79 13.88"></polyline></svg>
                                                    </i></i>
                                            </span>
                                        </h5>
                                        <div class="progress my-3" style="height:3px;">
                                            <!--<div class="progress-bar" style="width:55%"></div>-->
                                        </div>
                                        <p class="mb-0 text-white small-font">Testing Pending</p>
                                    </div>
                                </div>
                                <div class="col border-light">
                                    <div class="card-body">
                                        <h5 class="text-white mb-0" id="acknowledgment">0 <span class="float-right"><i class="feather ">
                                                    <i class="feather ">
                                                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-check-square"><polyline points="9 11 12 14 22 4"></polyline><path d="M21 12v7a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V5a2 2 0 0 1 2-2h11"></path></svg>
                                                    </i></i>
                                            </span>
                                        </h5>
                                        <div class="progress my-3" style="height:3px;">
                                            <!--<div class="progress-bar" style="width:55%"></div>-->
                                        </div>
                                        <p class="mb-0 text-white small-font">QA Pending</p>
                                    </div>
                                </div>
                                <div class="col border-light">
                                    <div class="card-body">
                                        <h5 class="text-white mb-0" id="acknowledgment">0 <span class="float-right"><i class="feather ">
                                                    <i class="feather ">
                                                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-check-circle"><path d="M22 11.08V12a10 10 0 1 1-5.93-9.14"></path><polyline points="22 4 12 14.01 9 11.01"></polyline></svg>
                                                    </i></i>
                                            </span>
                                        </h5>
                                        <div class="progress my-3" style="height:3px;">
                                            <!--<div class="progress-bar" style="width:55%"></div>-->
                                        </div>
                                        <p class="mb-0 text-white small-font">Completed</p>
                                    </div>
                                </div>
                                <div class="col border-light">
                                    <div class="card-body" style="padding: 0.5rem;">
                                        <h5 class="text-white mb-0" id="acknowledgment">0 <span class="float-right"><i class="feather ">
                                                    <i class="feather ">
                                                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-x-octagon"><polygon points="7.86 2 16.14 2 22 7.86 22 16.14 16.14 22 7.86 22 2 16.14 2 7.86 7.86 2"></polygon><line x1="15" y1="9" x2="9" y2="15"></line><line x1="9" y1="9" x2="15" y2="15"></line></svg>
                                                    </i></i>
                                            </span>
                                        </h5>
                                        <div class="progress my-3" style="height:3px;">
                                            <!--<div class="progress-bar" style="width:55%"></div>-->
                                        </div>
                                        <p class="mb-0 text-white small-font">Unsuccessful</p>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>  



                    <div class="row">
                        <div class="col-12 col-lg-12">

                            <div class="card" id="tableCard">
                                <div class="card-body" >
                                    <h5 id="main_name_tag">Ticket Management System</h5>
                                    <hr>

                                    <div id="table_card">
                                        <table class="table table-bordered table-sm" id="issue_table" style="width: 100%; font-size: small">
                                            <thead>
                                                <tr>
                                                    <th style="display: none">ID</th>
                                                    <th>Reference Number</th>
                                                    <th>Issue Type</th>
                                                    <th>Description</th>
                                                    <th>Priority</th>
                                                    <th>ENT Date</th>
                                                    <th>Status</th>
                                                    <th>Action</th>
                                                </tr>
                                            </thead>
                                            <tbody></tbody>
                                        </table>
                                    </div>
                                </div>
                                <div class="card-footer">
                                    <div class="text-right">
                                        <button id="addFmrBtn" class="btn btn-sm waves-effect waves-light btn-danger"><i class="icon feather icon-plus"></i>Add Ticket</button>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div><!--End Row-->

                    <!--End Dashboard Content-->

                    <!--start overlay-->
                    <div class="overlay toggle-menu"></div>
                    <!--end overlay-->

                </div>
                <!-- End container-fluid-->

            </div><!--End content-wrapper-->
            <!--Start Back To Top Button-->
            <a href="javaScript:void();" class="back-to-top"><i class="fa fa-angle-double-up"></i> </a>
            <!--End Back To Top Button-->

            <!--Start footer-->
            <footer class="footer">
                <div class="container">
                    <div class="text-center">
                        Copyright ? 2024 Aceelution
                    </div>
                </div>
            </footer>
            <!--End footer-->

            <!--start color switcher-->
            <div class="right-sidebar">
                <div class="switcher-icon">
                    <i class="zmdi zmdi-settings zmdi-hc-spin"></i>
                </div>
                <div class="right-sidebar-content">

                    <p class="mb-0">Gaussion Texture</p>
                    <hr>

                    <ul class="switcher">
                        <li id="theme1"></li>
                        <li id="theme2"></li>
                        <li id="theme3"></li>
                        <li id="theme4"></li>
                        <li id="theme5"></li>
                        <li id="theme6"></li>
                    </ul>

                    <p class="mb-0">Gradient Background</p>
                    <hr>

                    <ul class="switcher">
                        <li id="theme7"></li>
                        <li id="theme8"></li>
                        <li id="theme9"></li>
                        <li id="theme10"></li>
                        <li id="theme11"></li>
                        <li id="theme12"></li>
                        <li id="theme13"></li>
                        <li id="theme14"></li>
                        <li id="theme15"></li>
                    </ul>

                </div>
            </div>
            <!--end color switcher-->

        </div><!--End wrapper-->

        <!-- Bootstrap core JavaScript-->
        <script src="assets/js/jquery.min.js"></script>
        <script src="assets/js/popper.min.js"></script>
        <script src="assets/js/bootstrap.min.js"></script>

        <!-- simplebar js -->
        <script src="assets/plugins/simplebar/js/simplebar.js"></script>
        <!-- sidebar-menu js -->
        <script src="assets/js/sidebar-menu.js"></script>
        <!-- loader scripts -->
        <script src="assets/js/jquery.loading-indicator.js"></script>
        <!-- Custom scripts -->
        <script src="assets/js/app-script.js"></script>
        <!-- Chart js -->

        <script src="assets/plugins/Chart.js/Chart.min.js"></script>

        <!-- Index js -->
        <script src="assets/js/index.js"></script>


    </body>
</html>
