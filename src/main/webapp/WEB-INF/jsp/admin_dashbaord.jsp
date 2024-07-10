<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
        <meta name="description" content=""/>
        <meta name="author" content=""/>
        <title>Accelution - IMS</title>
        <link href="assets/css/pace.min.css" rel="stylesheet"/>
        <script src="assets/js/pace.min.js"></script>
        <!--favicon-->
        <link rel="icon" href="assets/img/logo/accelution.jpg" type="image/x-icon">
        <!-- Vector CSS -->
        <!--<link href="assets/plugins/vectormap/jquery-jvectormap-2.0.2.css" rel="stylesheet"/>-->
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
        <link href="assets/css/slimselect.css" rel="stylesheet"/>

        <style>
            .cards {
                transition: transform 0.5s ease;
            }

            .cards:hover {
                transform: scale(1.15);
                cursor: pointer;
            }

        </style>
    </head>
    <body class="bg-theme bg-theme1">



        <div id="wrapper">


            <div class="clearfix"></div>

            <div class="content-wrapper">
                <div class="container-fluid">
                    <%@include file="jspf/navbar.jspf" %>
                    <!--Start Dashboard Content-->
                    <div class="main" id="tableSection">
                        <div class="card mt-3">
                            <div class="card-content" >
                                <div class="row row-group m-0">

                                    <div class="col border-light" id="Quecrd">
                                        <div class="card-body cards">
                                            <h5 class="text-white mb-0" id="acknowledgment">0 <span class="float-right"><i class="feather ">
                                                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-clock"><circle cx="12" cy="12" r="10"></circle><polyline points="12 6 12 12 16 14"></polyline></svg>
                                                    </i></span></h5>
                                            <div class="progress my-3" style="height:3px;">
                                                <!--<div class="progress-bar" style="width:55%"></div>-->
                                            </div>
                                            <p class="mb-0 text-white small-font">Queue</p>
                                        </div>
                                    </div>
                                    <div class="col border-light" id="InProcrd">
                                        <div class="card-body cards">
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
                                    <div class="col border-light" id="Devpcrd">
                                        <div class="card-body cards">
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

                                    <div class="col border-light " id="Qacrd">
                                        <div class="card-body cards">
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
                                    <div class="col border-light" id="Complcrd">
                                        <div class="card-body cards">
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
                                    <div class="col border-light" id="Unsuccrd">
                                        <div class="card-body cards" style="padding: 0.5rem;">
                                            <h5 class="text-white mb-0" id="acknowledgment">0 <span class="float-right"><i class="feather ">
                                                        <i class="feather ">
                                                            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-x-octagon"><polygon points="7.86 2 16.14 2 22 7.86 22 16.14 16.14 22 7.86 22 2 16.14 2 7.86 7.86 2"></polygon><line x1="15" y1="9" x2="9" y2="15"></line><line x1="9" y1="9" x2="15" y2="15"></line></svg>
                                                        </i></i>
                                                </span>
                                            </h5>
                                            <div class="progress my-3" style="height:3px;">
                                                <!--<div class="progress-bar" style="width:55%"></div>-->
                                            </div>
                                            <p class="mb-0 text-white small-font">Closed</p>
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
                                                        <th>Issue</th>
                                                        <th>System</th>
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
                    <div class="" id="formSection" style="display: none;padding-top: 1rem;">
                        <div class="card" style="padding: 1em;">
                            <div class="card-deading">
                                <h3 style="text-align: center;">New Ticket</h3>
                            </div>
                            <div class="card-block p-b-0" >
                                <div class="row">
                                    <div class="col">
                                        <div class="form-group">
                                            <label for="username">Name<span class="text-danger">*</span></label>
                                            <input id="username" type="text" name="username" class="form-control" required autocomplete="off" disabled="">
                                        </div>
                                    </div>
                                    <div class="col">
                                        <div class="form-group">
                                            <label for="company">Company<span class="text-danger">*</span></label>
                                            <input id="company" type="text" name="company" class="form-control" required autocomplete="off" disabled="">
                                        </div>
                                    </div>
                                    <div class="col">
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col">
                                        <div class="form-group" style="padding-bottom: 2rem">
                                            <label for="assign" class="col-sm-4 col-form-label allFontByCustomerEdit">System</label>
                                            <select class="form-control-sm pull-right" id="company-select-systems">  </select>
                                        </div>
                                    </div>
                                    <div class="col">
                                        <div class="form-group" style="padding-bottom: 2rem">
                                            <label for="typeIssue" class="col-sm-4 col-form-label allFontByCustomerEdit">Issue Type</label>
                                            <select class="form-control-sm pull-right" id="typeIssue">  </select>
                                        </div>
                                    </div>
                                    <div class="col">
                                        <div class="form-group" style="padding-bottom: 2rem">
                                            <label for="prio" class="col-sm-4 col-form-label allFontByCustomerEdit"> Priority</label>
                                            <select class="form-control-sm pull-right ajax-select" id="prio">  </select>
                                        </div>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label for="issue">Issue<span class="text-danger">*</span></label>
                                    <input id="issue" type="text" name="issue" class="form-control" required autocomplete="off">
                                </div>

                                <label for="comment">Upload Your Comment & Attachments Here<span class="text-danger">*</span></label>
                                <div class="ttt" style="display: flex;flex-direction: row;">

                                    <div class="table-responsive">
                                        <table class="table table-hover table-bordered m-b-0" id="tbladdAtt" >
                                            <thead>
                                                <tr>
                                                    <th>Comment</th>
                                                    <th>Attachment</th>
                                                    <th style="width:1px;">Action</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <!-- Your table body content goes here -->
                                            </tbody>
                                        </table>
                                    </div>

                                </div>
                                <div class="row justify-content-end" style="padding: 2em;">
                                    <div class="row">
                                        <div class="text">
                                            <button id="addBtn" class="btn btn-sm waves-effect waves-light btn-danger">
                                                <i class="icon feather icon-plus"></i>Add Comment/Attachment
                                            </button>
                                        </div>
                                    </div>
                                </div>

                                <div class="card-footer d-flex justify-content-end">
                                    <button id="saveBtn" class="btn btn-sm waves-effect waves-light btn-primary" style="margin-right: 10px"><i class="icon feather icon-save"></i>Save</button>
                                    <button id="closeBtn" class="btn btn-sm btn-danger"><i class="icon feather icon-x-circle"></i>Close</button>                          
                                </div>
                            </div>
                        </div>
                    </div>

                </div><!--End content-wrapper-->
                <!--Start Back To Top Button-->
                <a href="javaScript:void();" class="back-to-top"><i class="fa fa-angle-double-up"></i> </a>
                <!--End Back To Top Button-->

                <!--Start footer-->
                <footer class="footer">
                    <div class="container">
                        <div class="text-center">
                            Copyright © 2024 Aceelution
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

            </div>



        </div>




        <!--        formSection-acknowledgment-pending
                <div class="" id="formSectionInprogress" style="display: none;padding-top: 1rem;">
                    <div class="card" style="width: 90%;padding: 1em;display: flex; justify-content: center; align-items: center; height: 100vh; margin: 0;">
                        <div class="card-block p-b-0">
                            <div class="row">
                                <div class="col">
                                    <div class="form-group">
                                        <label for="ref_number">Reference Number<span class="text-danger">*</span></label>
                                        <input id="ref_numberq" type="text" name="ref_number" class="form-control" required autocomplete="off" disabled="">
                                    </div>
                                </div>
                                <div class="col">
                                    <div class="form-group">
                                        <label for="ent_by">Ent By<span class="text-danger">*</span></label>
                                        <input id="ent_by" type="text" name="ent_by" class="form-control" required autocomplete="off" disabled="">
                                    </div>
                                </div>
        
                            </div>
                            <div class="row">
                                <div class="col">
                                    <div class="form-group">
                                        <label for="Issueq">Issue<span class="text-danger">*</span></label>
                                        <input id="Issuequ" type="text" name="Issueq" class="form-control" required autocomplete="off" disabled="">
                                    </div>
                                </div>
                                <div class="col">
                                    <div class="form-group">
                                        <label for="commentq">Comment<span class="text-danger">*</span></label>
                                        <textarea id="commentq" type="text" name="commentq" class="form-control" required autocomplete="off" disabled=""></textarea>
                                    </div>
                                </div>
        
        
                            </div>
                                                <div class="form-group" style="padding-bottom: 2rem">
                                                    <label for="acknow_status" class="col-sm-4 col-form-label allFontByCustomerEdit">Choose Next Action </label>
                                                    <div class="col-sm-6">
                                                        <select class="form-control-sm pull-right" id="statusque" style="width: 20rem;margin-right: 15rem;">
                                                            <option value="" disabled selected>Select Action</option>
                                                            <option value="devPen">Development Pending</option>
                                                            <option value="uns">Unsuccessful</option>
                                                        </select>
                                                    </div>
                                                </div>
                                                <div class="form-group" id="reason_section" style="display: none;">
                                                    <label for="reason">Reject Reason<span class="text-danger">*</span></label>
                                                    <textarea id="reason_textarea" name="reason" class="form-control" required></textarea>
                                                </div>
        
                            <div class="card-footer d-flex justify-content-end" style="background-color: white;">
                                <button id="saveBtnin" class="btn btn-sm waves-effect waves-light btn-primary" style="margin-right: 10px"><i class="icon feather icon-save"></i>Save</button>
                                <button id="closeBtnin" class="btn btn-sm btn-danger"><i class="icon feather icon-x-circle"></i>Close</button>
                            </div>
                        </div>
                    </div>
                </div>
        
        
        
                Acknowledged
                <div class="" id="formSectionFilePending" style="display: none;padding-top: 1rem;">
                    <div class="card" style="width: 80%;padding: 1em;">
                        <div class="card-block p-b-0">
                            <div class="card-header">
                                <ul class="list-unstyled card-option">
                                    <li><i class="feather icon-x cls-card"></i></li>
                                </ul>
                            </div>
                            <div class="row">
                                <div class="col">
                                    <div class="form-group">
                                        <label for="ref_number">Agreement Number / Vehicle Number<span class="text-danger">*</span></label>
                                        <input id="ref_numberp" type="text" name="ref_number" class="form-control" required autocomplete="off" disabled="">
                                    </div>
                                </div>
                                <div class="col">
                                    <div class="form-group">
                                        <label for="customer_name">Customer's Name<span class="text-danger">*</span></label>
                                        <input id="customer_namep" type="text" name="customer_name" class="form-control" required autocomplete="off" disabled="">
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col">
                                    <div class="form-group">
                                        <label for="customer_name">Product<span class="text-danger">*</span></label>
                                        <input id="productp" type="text" name="customer_name" class="form-control" required autocomplete="off" disabled="">
                                    </div>
                                </div>
                                <div class="col">
                                    <div class="form-group">
                                        <label for="amount">Amount<span class="text-danger">*</span></label>
                                        <input id="amountp" type="number" name="amount" class="form-control" required autocomplete="off" disabled="">
                                    </div>
                                </div>
                            </div>
        
        
        
                            <div class="card-footer d-flex justify-content-end" style="background-color: white;">
                                <button id="closeBtnfile" class="btn btn-sm btn-danger"><i class="icon feather icon-x-circle"></i>Close</button>
                            </div>
                        </div>
                    </div>
                </div>
        
        
                Exceptions
                <div class="" id="formSectionFileClearance" style="display: none;padding-top: 1rem;">
                    <div class="card" style="width: 80%;padding: 1em;">
                        <div class="card-block p-b-0">
                            <div class="card-header">
                                <ul class="list-unstyled card-option">
                                    <li><i class="feather icon-x cls-card"></i></li>
                                </ul>
                            </div>
                            <div class="row">
                                <div class="col">
                                    <div class="form-group">
                                        <label for="ref_number">Agreement Number / Vehicle Number<span class="text-danger">*</span></label>
                                        <input id="ref_numberc" type="text" name="ref_number" class="form-control" required autocomplete="off" disabled="">
                                    </div>
                                </div>
                                <div class="col">
                                    <div class="form-group">
                                        <label for="customer_name">Customer's Name<span class="text-danger">*</span></label>
                                        <input id="customer_namec" type="text" name="customer_name" class="form-control" required autocomplete="off" disabled="">
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col">
                                    <div class="form-group">
                                        <label for="customer_name">Product<span class="text-danger">*</span></label>
                                        <input id="productc" type="text" name="customer_name" class="form-control" required autocomplete="off" disabled="">
                                    </div>
                                </div>
                                <div class="col">
                                    <div class="form-group">
                                        <label for="amount">Amount<span class="text-danger">*</span></label>
                                        <input id="amountc" type="number" name="amount" class="form-control" required autocomplete="off" disabled="">
                                    </div>
                                </div>
                            </div>
        
                            <div class="row">
        
                                <div class="ttt" style="display: flex;flex-direction: row;">
                                    <div class="table-responsive">
                                        <table class="table table-hover table-bordered m-b-0" id="tbladdAtts" >
                                            <thead>
                                                <tr>
                                                    <th>Pending Files</th>
                                                    <th>Justification</th>
                                                    <th>Completion Date</th>
                                                    <th>Status</th>
                                                    <th>Modified By</th>
                                                    <th>Modified On</th>
        
                                                </tr>
                                            </thead>
        
                                            <tbody>
                                                 Your table body content goes here 
                                            </tbody>
                                        </table>
                                    </div>
        
                                </div>
        
                            </div>
        
        
        
                            <div class="card-footer d-flex justify-content-end" style="background-color: white;">
        
                                <button id="closeBtnclr" class="btn btn-sm btn-danger"><i class="icon feather icon-x-circle"></i>Close</button>
                            </div>
                        </div>
                    </div>
                </div>
        
                Undertaking Recommendation
                <div class="" id="formSectionRecommendation" style="display: none;padding-top: 1rem;">
                    <div class="card" style="width: 80%;padding: 1em;">
                        <div class="card-block p-b-0">
                            <div class="card-header">
                                <ul class="list-unstyled card-option">
                                    <li><i class="feather icon-x cls-card"></i></li>
                                </ul>
                            </div>
                            <div class="row">
                                <div class="col">
                                    <div class="form-group">
                                        <label for="ref_number">Agreement Number / Vehicle Number<span class="text-danger">*</span></label>
                                        <input id="ref_numberrec" type="text" name="ref_number" class="form-control" required autocomplete="off" disabled="">
                                    </div>
                                </div>
                                <div class="col">
                                    <div class="form-group">
                                        <label for="customer_name">Customer's Name<span class="text-danger">*</span></label>
                                        <input id="customer_namerec" type="text" name="customer_name" class="form-control" required autocomplete="off" disabled="">
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col">
                                    <div class="form-group">
                                        <label for="customer_name">Product<span class="text-danger">*</span></label>
                                        <input id="productrec" type="text" name="customer_name" class="form-control" required autocomplete="off" disabled="">
                                    </div>
                                </div>
                                <div class="col">
                                    <div class="form-group">
                                        <label for="amount">Amount<span class="text-danger">*</span></label>
                                        <input id="amountrec" type="number" name="amount" class="form-control" required autocomplete="off" disabled="">
                                    </div>
                                </div>
                            </div>
        
                            <div class="row">
        
                                <div class="ttt" style="display: flex;flex-direction: row;">
                                    <div class="table-responsive">
                                        <table class="table table-hover table-bordered m-b-0" id="tbladdAttsrec" >
                                            <thead>
                                                <tr>
                                                    <th>Pending Files</th>
                                                    <th>Justification</th>
                                                    <th>Completion Date</th>
                                                    <th>Status</th>
                                                    <th>Modified By</th>
                                                    <th>Modified On</th>
        
                                                </tr>
                                            </thead>
        
                                            <tbody>
                                                 Your table body content goes here 
                                            </tbody>
                                        </table>
                                    </div>
        
                                </div>
        
                            </div>
        
        
        
                            <div class="card-footer d-flex justify-content-end" style="background-color: white;">
                                <button id="closeBtnrec" class="btn btn-sm btn-danger"><i class="icon feather icon-x-circle"></i>Close</button>
                            </div>
                        </div>
                    </div>
                </div>
        
                Undertaking Approval Pending
                <div class="" id="formSectionApprovalPending" style="display: none;padding-top: 1rem;">
                    <div class="card" style="width: 80%;padding: 1em;">
                        <div class="card-block p-b-0">
                            <div class="card-header">
                                <ul class="list-unstyled card-option">
                                    <li><i class="feather icon-x cls-card"></i></li>
                                </ul>
                            </div>
                            <div class="row">
                                <div class="col">
                                    <div class="form-group">
                                        <label for="ref_number">Agreement Number / Vehicle Number<span class="text-danger">*</span></label>
                                        <input id="ref_numberu" type="text" name="ref_number" class="form-control" required autocomplete="off" disabled="">
                                    </div>
                                </div>
                                <div class="col">
                                    <div class="form-group">
                                        <label for="customer_name">Customer's Name<span class="text-danger">*</span></label>
                                        <input id="customer_nameu" type="text" name="customer_name" class="form-control" required autocomplete="off" disabled="">
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col">
                                    <div class="form-group">
                                        <label for="customer_name">Product<span class="text-danger">*</span></label>
                                        <input id="productu" type="text" name="customer_name" class="form-control" required autocomplete="off" disabled="">
                                    </div>
                                </div>
                                <div class="col">
                                    <div class="form-group">
                                        <label for="amount">Amount<span class="text-danger">*</span></label>
                                        <input id="amountu" type="number" name="amount" class="form-control" required autocomplete="off" disabled="">
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col">
                                    <div class="form-group">
                                        <label for="customer_name">Assigned To Approve<span class="text-danger">*</span></label>
                                        <input id="appund" type="text" name="customer_name" class="form-control" required autocomplete="off" disabled="">
                                    </div>
                                </div>
                                <div class="col">
        
                                </div>
                            </div>
        
                            <div class="row">
        
                                <div class="ttt" style="display: flex;flex-direction: row;">
                                    <div class="table-responsive">
                                        <table class="table table-hover table-bordered m-b-0" id="tbladdAttu" >
                                            <thead>
                                                <tr>
                                                    <th>Pending Files</th>
                                                    <th>Justification</th>
                                                    <th>Completion Date</th>
                                                    <th>Status</th>
                                                    <th>Modified By</th>
                                                    <th>Modified On</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                 Your table body content goes here 
                                            </tbody>
                                        </table>
                                    </div>
        
                                </div>
        
                            </div>
        
        
                            <div class="card-footer d-flex justify-content-end" style="background-color: white;">
                                <button id="closeBtnund" class="btn btn-sm btn-danger"><i class="icon feather icon-x-circle"></i>Close</button>
                            </div>
                        </div>
                    </div>
                </div>
        
        
                Payment Voucher Hand Over To Finance
                <div class="" id="formSectionPaymentVoucher" style="display: none;padding-top: 1rem;">
                    <div class="card" style="width: 80%;padding: 1em;">
                        <div class="card-block p-b-0">
                            <div class="row">
                                <div class="col">
                                    <div class="form-group">
                                        <label for="ref_number">Agreement Number / Vehicle Number<span class="text-danger">*</span></label>
                                        <input id="ref_numberpay" type="text" name="ref_number" class="form-control" required autocomplete="off" disabled="">
                                    </div>
                                </div>
                                <div class="col">
                                    <div class="form-group">
                                        <label for="customer_name">Customer's Name<span class="text-danger">*</span></label>
                                        <input id="customer_namepay" type="text" name="customer_name" class="form-control" required autocomplete="off" disabled="">
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col">
                                    <div class="form-group">
                                        <label for="customer_name">Product<span class="text-danger">*</span></label>
                                        <input id="productpay" type="text" name="customer_name" class="form-control" required autocomplete="off" disabled="">
                                    </div>
                                </div>
                                <div class="col">
                                    <div class="form-group">
                                        <label for="amount">Amount<span class="text-danger">*</span></label>
                                        <input id="amountpay" type="number" name="amount" class="form-control" required autocomplete="off" disabled="">
                                    </div>
                                </div>
                            </div>
        
        
        
                            <div class="card-footer d-flex justify-content-end" style="background-color: white;">
                                <button id="closeBtnpay" class="btn btn-sm btn-danger"><i class="icon feather icon-x-circle"></i>Close</button>
                            </div>
                        </div>
                    </div>
                </div>
                Payment Voucher Hand Over To Finance(Undertaking Approval)
                <div class="" id="formSectionPaymentVoucherUnder" style="display: none;padding-top: 1rem;">
                    <div class="card" style="width: 80%;padding: 1em;">
                        <div class="card-block p-b-0">
                            <div class="row">
                                <div class="col">
                                    <div class="form-group">
                                        <label for="ref_number">Agreement Number / Vehicle Number<span class="text-danger">*</span></label>
                                        <input id="ref_numberppun" type="text" name="ref_number" class="form-control" required autocomplete="off" disabled="">
                                    </div>
                                </div>
                                <div class="col">
                                    <div class="form-group">
                                        <label for="customer_name">Customer's Name<span class="text-danger">*</span></label>
                                        <input id="customer_nameppun" type="text" name="customer_name" class="form-control" required autocomplete="off" disabled="">
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col">
                                    <div class="form-group">
                                        <label for="customer_name">Product<span class="text-danger">*</span></label>
                                        <input id="productppun" type="text" name="customer_name" class="form-control" required autocomplete="off" disabled="">
                                    </div>
                                </div>
                                <div class="col">
                                    <div class="form-group">
                                        <label for="amount">Amount<span class="text-danger">*</span></label>
                                        <input id="amountppun" type="number" name="amount" class="form-control" required autocomplete="off" disabled="">
                                    </div>
                                </div>
                            </div>
                            <div class="row" id="approverRow" >
                                <div class="col">
                                    <div class="form-group">
                                        <label for="approver">Approved By<span class="text-danger">*</span></label>
                                        <input id="approvername" type="text" name="customer_name" class="form-control" required autocomplete="off" disabled="">
                                    </div>
                                </div>
                                <div class="col">
        
                                </div>
                            </div>
                            <div class="row">
        
                                <div class="ttt" style="display: flex;flex-direction: row;">
                                    <div class="table-responsive">
                                        <table class="table table-hover table-bordered m-b-0" id="tbladdAttpay" >
                                            <thead>
                                                <tr>
                                                    <th>Pending Files</th>
                                                    <th>Justification</th>
                                                    <th>Completion Date</th>
                                                    <th>Status</th>
                                                    <th>Modified By</th>
                                                    <th>Modified On</th>
                                                </tr>
                                            </thead>
        
                                            <tbody>
                                                 Your table body content goes here 
                                            </tbody>
                                        </table>
                                    </div>
        
                                </div>
        
                            </div>
        
        
                            <div class="card-footer d-flex justify-content-end" style="background-color: white;">
                                <button id="closeBtnppun" class="btn btn-sm btn-danger"><i class="icon feather icon-x-circle"></i>Close</button>
                            </div>
                        </div>
                    </div>
                </div>
        
                Completed
                <div class="" id="formSectionCompleted" style="display: none;padding-top: 1rem;">
                    <div class="card" style="width: 80%;padding: 1em;">
                        <div class="card-block p-b-0">
                            <div class="row">
                                <div class="col">
                                    <div class="form-group">
                                        <label for="ref_number">Agreement Number / Vehicle Number<span class="text-danger">*</span></label>
                                        <input id="ref_numbercom" type="text" name="ref_number" class="form-control" required autocomplete="off" disabled="">
                                    </div>
                                </div>
                                <div class="col">
                                    <div class="form-group">
                                        <label for="customer_name">Customer's Name<span class="text-danger">*</span></label>
                                        <input id="customer_namecom" type="text" name="customer_name" class="form-control" required autocomplete="off" disabled="">
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col">
                                    <div class="form-group">
                                        <label for="customer_name">Product<span class="text-danger">*</span></label>
                                        <input id="productcom" type="text" name="customer_name" class="form-control" required autocomplete="off" disabled="">
                                    </div>
                                </div>
                                <div class="col">
                                    <div class="form-group">
                                        <label for="amount">Amount<span class="text-danger">*</span></label>
                                        <input id="amountcom" type="number" name="amount" class="form-control" required autocomplete="off" disabled="">
                                    </div>
                                </div>
                            </div>
        
        
                            <div class="card-footer d-flex justify-content-end" style="background-color: white;">
                                <button id="saveBtncom" class="btn btn-sm waves-effect waves-light btn-primary" style="margin-right: 10px"><i class="icon feather icon-save"></i>Save</button>
                                <button id="closeBtncom" class="btn btn-sm btn-danger"><i class="icon feather icon-x-circle"></i>Close</button>
                            </div>
                        </div>
                    </div>
                </div>
                Completed Undertaking
                <div class="" id="formSectionCompletedUndertaking" style="display: none;padding-top: 1rem;">
                    <div class="card" style="width: 80%;padding: 1em;">
                        <div class="card-block p-b-0">
                            <div class="row">
                                <div class="col">
                                    <div class="form-group">
                                        <label for="ref_number">Agreement Number / Vehicle Number<span class="text-danger">*</span></label>
                                        <input id="ref_numbercomund" type="text" name="ref_number" class="form-control" required autocomplete="off" disabled="">
                                    </div>
                                </div>
                                <div class="col">
                                    <div class="form-group">
                                        <label for="customer_name">Customer's Name<span class="text-danger">*</span></label>
                                        <input id="customer_namecomund" type="text" name="customer_name" class="form-control" required autocomplete="off" disabled="">
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col">
                                    <div class="form-group">
                                        <label for="customer_name">Product<span class="text-danger">*</span></label>
                                        <input id="productcomund" type="text" name="customer_name" class="form-control" required autocomplete="off" disabled="">
                                    </div>
                                </div>
                                <div class="col">
                                    <div class="form-group">
                                        <label for="amount">Amount<span class="text-danger">*</span></label>
                                        <input id="amountcomund" type="number" name="amount" class="form-control" required autocomplete="off" disabled="">
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col">
                                    <div class="form-group">
                                        <label for="customer_name">Approved By<span class="text-danger">*</span></label>
                                        <input id="approvercomund" type="text" name="approver_name" class="form-control" required autocomplete="off" disabled="">
                                    </div>
                                </div>
                                <div class="col">
        
                                </div>
                            </div>
        
        
                            <div class="card-footer d-flex justify-content-end" style="background-color: white;">
                                <button id="saveBtncom" class="btn btn-sm waves-effect waves-light btn-primary" style="margin-right: 10px"><i class="icon feather icon-save"></i>Save</button>
                                <button id="closeBtncomun" class="btn btn-sm btn-danger"><i class="icon feather icon-x-circle"></i>Close</button>
                            </div>
                        </div>
                    </div>
                </div>
                Rejected
                <div class="" id="formSectionRejected" style="display: none;padding-top: 1rem;">
                    <div class="card" style="width: 80%;padding: 1em;">
                        <div class="card-block p-b-0">
                            <div class="row">
                                <div class="col">
                                    <div class="form-group">
                                        <label for="ref_number">Reference Number<span class="text-danger">*</span></label>
                                        <input id="ref_numberrej" type="text" name="ref_number" class="form-control" required autocomplete="off" disabled="">
                                    </div>
                                </div>
                                <div class="col">
                                    <div class="form-group">
                                        <label for="ent_by">Ent By<span class="text-danger">*</span></label>
                                        <input id="ent_byrej" type="text" name="ent_by" class="form-control" required autocomplete="off" disabled="">
                                    </div>
                                </div>
        
                            </div>
                            <div class="row">
                                <div class="col">
                                    <div class="form-group">
                                        <label for="issue">Issue<span class="text-danger">*</span></label>
                                        <input id="issue_typerej" type="text" name="customer_name" class="form-control" required autocomplete="off" disabled="">
                                    </div>
                                </div>
                                <div class="col">
                                    <div class="form-group">
                                        <label for="customer_name">Comment<span class="text-danger">*</span></label>
                                        <textarea id="commentrej" type="text" name="customer_name" class="form-control" required autocomplete="off" disabled=""></textarea>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col">
                                    <div class="form-group">
                                        <label for="customer_name">Rejected Reason<span class="text-danger">*</span></label>
                                        <textarea id="resonrej" type="text" name="customer_name" class="form-control" required autocomplete="off" disabled=""></textarea>
                                    </div>
                                </div>
        
                            </div>
        
        
                            <div class="card-footer d-flex justify-content-end" style="background-color: white;">
                                <button id="saveBtncom" class="btn btn-sm waves-effect waves-light btn-primary" style="margin-right: 10px"><i class="icon feather icon-save"></i>Save</button>
                                <button id="closeBtnrej" class="btn btn-sm btn-danger"><i class="icon feather icon-x-circle"></i>Close</button>
                            </div>
                        </div>
                    </div>
                </div>-->
        <%@include file="jspf/scripts.jspf" %>
        <script src="assets/js/jquery.min.js"></script>
        <script src="assets/js/popper.min.js"></script>
        <script src="assets/js/bootstrap.min.js"></script>
        <script src="assets/plugins/simplebar/js/simplebar.js"></script>
        <script src="assets/js/sidebar-menu.js"></script>
        <script src="assets/js/app-script.js"></script>
        <script src="assets/plugins/Chart.js/Chart.min.js"></script>
        <script src="assets/js/index.js"></script>
        <script  src="files/js/slimselect.js"></script>
        <script  src="files/js/datatables.min.js"></script>
        <script  src="files/js/sweetalert2.js"></script>
        <script  src="files/js/func.js"></script>
        <script  src="files/js/autoNumeric.js"></script>
        <script  src="files/js/dataTables.responsive.min.js"></script>
        <script  src="files/js/jquery.highlight.js"></script>
        <script  src="files/js/dataTables.searchHighlight.min.js"></script>

        <script>
            document.getElementById('addBtn').addEventListener('click', function () {
                // Get the table body
                var tableBody = document.querySelector('#tbladdAtt tbody');

                // Create a new row
                var newRow = tableBody.insertRow();

                // Create cells in the new row
                var commentCell = newRow.insertCell(0);
                var fileCell = newRow.insertCell(1);
                var actionCell = newRow.insertCell(2);

                // Create textarea for "Comment" in cell 1
                var commentInput = document.createElement('textarea');
                commentInput.name = 'comment';
                commentInput.classList.add('form-control');
                commentInput.required = true;
                commentInput.autocomplete = 'off';

                // Create input for "File Upload" in cell 2
                var fileInput = document.createElement('input');
                fileInput.type = 'file';
                fileInput.name = 'fileLink';
                fileInput.classList.add('form-control');
                fileInput.required = true;
                fileInput.autocomplete = 'off';

                // Append input elements to respective cells
                commentCell.appendChild(commentInput);
                fileCell.appendChild(fileInput);

                // Create a delete button in the action cell
                var deleteButton = document.createElement('button');
                deleteButton.classList.add('btn', 'btn-sm', 'btn-danger');
                deleteButton.textContent = 'Remove';
                deleteButton.name = 'dele';

                // Add a click event listener to the delete button
                deleteButton.addEventListener('click', function () {
                    // Remove the row when the delete button is clicked
                    tableBody.removeChild(newRow);
                });

                // Append the delete button to the action cell
                actionCell.appendChild(deleteButton);

                // Call the addAttachmentRow function with the input values
                addAttachmentRow(commentInput.value, fileInput.value);
            });


            function clearForms() {
                document.getElementById('issue').value = '';
                document.getElementById('company-select-systems').selectedIndex = 0;
                document.getElementById('typeIssue').selectedIndex = 0;
                document.getElementById('prio').selectedIndex = 0;

                let tableBody = document.querySelector('#tbladdAtt tbody');
                tableBody.innerHTML = '';
            }


            const formSection = document.getElementById('formSection');
            const tableSection = document.getElementById('tableSection');
            const closeBtn = document.getElementById('closeBtn');
            const closeBtnin = document.getElementById('closeBtnin');
            const closeBtnfile = document.getElementById('closeBtnfile');
            const closeBtnclr = document.getElementById('closeBtnclr');
            const closeBtnund = document.getElementById('closeBtnund');
            const closeBtnpay = document.getElementById('closeBtnpay');
            const closeBtnppun = document.getElementById('closeBtnppun');
            const closeBtncom = document.getElementById('closeBtncom');
            const closeBtncomun = document.getElementById('closeBtncomun');
            const closeBtnrej = document.getElementById('closeBtnrej');
            const closeBtnrec = document.getElementById('closeBtnrec');

            closeBtn.addEventListener('click', function () {
                formSection.style.display = 'none';
                tableSection.style.display = 'block';
            });
//            closeBtnin.addEventListener('click', function () {
//                formSectionInprogress.style.display = 'none';
//                tableSection.style.display = 'block';
//            });
//            closeBtnfile.addEventListener('click', function () {
//                formSectionFilePending.style.display = 'none';
//                tableSection.style.display = 'block';
//            });
//            closeBtnclr.addEventListener('click', function () {
//                formSectionFileClearance.style.display = 'none';
//                tableSection.style.display = 'block';
//            });
//            closeBtnund.addEventListener('click', function () {
//                formSectionApprovalPending.style.display = 'none';
//                tableSection.style.display = 'block';
//            });
//            closeBtnpay.addEventListener('click', function () {
//                formSectionPaymentVoucher.style.display = 'none';
//                tableSection.style.display = 'block';
//            });
//            closeBtnppun.addEventListener('click', function () {
//                formSectionPaymentVoucherUnder.style.display = 'none';
//                tableSection.style.display = 'block';
//            });
//            closeBtncom.addEventListener('click', function () {
//                formSectionCompleted.style.display = 'none';
//                tableSection.style.display = 'block';
//            });
//            closeBtncomun.addEventListener('click', function () {
//                formSectionCompletedUndertaking.style.display = 'none';
//                tableSection.style.display = 'block';
//            });
//            closeBtnrej.addEventListener('click', function () {
//                formSectionRejected.style.display = 'none';
//                tableSection.style.display = 'block';
//            });
//            closeBtnrec.addEventListener('click', function () {
//                formSectionRecommendation.style.display = 'none';
//                tableSection.style.display = 'block';
//            });



            $(document).ready(function () {
                // Show/hide tables based on active tab
                $('#myTab a').on('shown.bs.tab', function (e) {
                    var target = $(e.target).attr("href"); // activated tab
                    if (target === "#first") {
                        $('#table_card_first').show();
                        $('#table_card_second').hide();
                    } else if (target === "#second") {
                        $('#table_card_first').hide();
                        $('#table_card_second').show();
                    }
                });
            });

        </script>


        <script>
            var assign = new SlimSelect(
                    {select: '#company-select-systems',
                        placeholder: "Systems",
                        ajax: function (search, callback) {
                            fetch('company/company-select-systems', {
                                method: 'POST',
                                body: new URLSearchParams({search: search || ''})
                            }).then(res => res.json()).then((data) => {
                                callback(data);
                            });
                        },
                        allowDeselect: true,
                        deselectLabel: '<span class="red">✖</span>'
                    });
            var prio = new SlimSelect(
                    {select: '#prio',
                        placeholder: "Priority",
                        ajax: function (search, callback) {
                            fetch('issue/priority', {
                                method: 'POST',
                                body: new URLSearchParams({search: search || ''})
                            }).then(res => res.json()).then((data) => {
                                callback(data);
                            });
                        },
                        allowDeselect: true,
                        deselectLabel: '<span class="red">✖</span>'
                    });
            var typeIssue = new SlimSelect(
                    {select: '#typeIssue',
                        placeholder: "Issue Type",
                        ajax: function (search, callback) {
                            fetch('type/type-select', {
                                method: 'POST',
                                body: new URLSearchParams({search: search || ''})
                            }).then(res => res.json()).then((data) => {
                                callback(data);
                            });
                        },
                        allowDeselect: true,
                        deselectLabel: '<span class="red">✖</span>'
                    });


            $('#addFmrBtn').click(function () {
                $('#saveBtn').data('mode', 'save');
                $('#saveBtn').html('<i class="icon feather icon-save"></i>Save');
                clearForm();
                $('#username').val('<%=session.getAttribute("name")%>');
                $('#company').val('<%=session.getAttribute("company")%>');
                $('#tableSection').hide();
                $('#formSection').fadeIn();
            });

            $('.cls-card').click(function () {
                $('#formSection').hide();
                $('#tableSection').fadeIn();
            });
            function clearForm() {
                $('#formSection').find('input[type!=search]').val('');
                $('#formSection').find('input[type!=search]').val('');
                $('#formSection').find('select').each(function () {
                    if ($(this).data('select')) {
                        if ($(this).data('select').ajax) {
                            $(this).data('select').data.data = [];
                        }
                        $(this).data('select').set('');
                    }
                });
            }
        </script>


        <script>
            function validateForm() {
                let issue = document.getElementById('issue').value.trim();
                let system = document.getElementById('company-select-systems').value.trim();
                let type = document.getElementById('typeIssue').value.trim();
                let priority = document.getElementById('prio').value.trim();

                if (!issue) {
                    Swal.fire('Error!', 'Please fill in the Issue field', 'error');
                    return false;
                }

                if (!system) {
                    Swal.fire('Error!', 'Please select a System', 'error');
                    return false;
                }

                if (!type) {
                    Swal.fire('Error!', 'Please select an Issue Type', 'error');
                    return false;
                }

                if (!priority) {
                    Swal.fire('Error!', 'Please select a Priority', 'error');
                    return false;
                }

                let tableRows = document.querySelectorAll('#tbladdAtt tbody tr');
                let isValid = true;

                tableRows.forEach((row) => {
                    let comment = row.querySelector('textarea[name="comment"]').value.trim();
                    if (!comment) {
                        isValid = false;
                    }
                });

                if (!isValid) {
                    Swal.fire('Error!', 'Please add a comment for each entry in the table', 'error');
                }

                return isValid;
            }




            document.getElementById('saveBtn').addEventListener('click', function () {
                if (!validateForm()) {
                    return;
                }

                let saveBtn = document.getElementById('saveBtn');
                saveBtn.disabled = true;

                let mode = $('#saveBtn').data('mode');
                if (mode === 'save') {
                    let issue = document.getElementById('issue').value;
                    let system = document.getElementById('company-select-systems').value;
                    let type = document.getElementById('typeIssue').value;
                    let priority = document.getElementById('prio').value;

                    let tableRows = document.querySelectorAll('#tbladdAtt tbody tr');
                    let attachmentData = [];
                    let formData = new FormData();

                    tableRows.forEach((row, index) => {
                        let comment = row.querySelector('textarea[name="comment"]').value;
                        let path = "";

                        attachmentData.push({
                            comment: comment,
                            path: path
                        });
                    });

                    let desclist = JSON.stringify(attachmentData);
                    formData.append('desclist', desclist);
                    formData.append('issue', issue);
                    formData.append('system', system);
                    formData.append('type', type);
                    formData.append('priority', priority);

                    fetch('issue/save-issue', {
                        method: 'POST',
                        body: formData
                    }).then(response => {
                        if (!response.ok) {
                            throw new Error(response.statusText);
                        }
                        return response.json();
                    }).then(data => {
                        Swal.fire('Successful!', 'Ticket has been successfully saved', 'success');
                        clearForms();
                        $('#formSection').hide();
                        $('#tableSection').fadeIn();
                        $('#navTab').fadeIn();
                        dtable.ajax.reload();
                    }).catch(error => {
                        Swal.fire('Error!', 'Failed to save ticket details', 'error');
                    }).finally(() => {
                        saveBtn.disabled = false;
                    });
                } else if (mode === 'update') {
                    let heading = document.getElementById('heading').value;
                    let id = $('#saveBtn').data('id');
                    let deleteIds = handleAttachmentDeletion();
                    let tableRows = document.querySelectorAll('#tbladdAtt tbody tr');
                    let attachmentData = [];
                    let formData = {};
                    tableRows.forEach((row, index) => {
                        let fileNameInput = row.querySelector('input[name="fileName"]');
                        let fileLinkInput = row.querySelector('input[name="fileLink"]');
                        if (fileNameInput && fileLinkInput) {
                            let fileName = fileNameInput.value;
                            let fileLink = fileLinkInput.value;
                            attachmentData.push({
                                name: fileName,
                                link: fileLink

                            });
                        }
                    });
                    let desclist = JSON.stringify(attachmentData);
                    formData.desclist = desclist;
                    formData.id = id;
                    formData.heading = heading;
                    formData.deleteIds = JSON.stringify(deleted);
                    fetch('dhamma/update-attachment', {
                        method: 'POST',
                        body: new URLSearchParams(formData)
                    }).then(response => {
                        if (!response.ok) {
                            throw new Error(response.statusText);
                        } else {
                            Swal.fire('Successful!', 'Unit details updated successfully', 'success');
                            clearForms();
                            $('#formSection').hide();
                            $('#tableSection').fadeIn();
                            $('#navTab').fadeIn();
                            dtable.ajax.reload();
                        }
                        return response.json();
                    }).catch(error => {
                        console.error('Error updating unit details:', error);
                        Swal.fire('Error!', 'Failed to update Unit details', 'error');
                    });
                }



            }
            );


//            $('#saveBtn').click(function () {
//                return fetch('issue/save', {
//                    method: 'POST',
//                    body: new URLSearchParams({
//                        id: $('#saveBtn').data('id'),
//                        issue_type: document.getElementById('issue').value,
//                        priority: document.getElementById('prio').value,
//                        comment: document.getElementById('commentissue').value,
//                        assign: document.getElementById('assign').value,
//                        type: document.getElementById('typeIssue').value,
//                    })
//                }).then(response => {
//                    if (!response.ok) {
//                        throw new Error(response.statusText);
//                    } else {
//                        Swal.fire('Successful!', 'Issue has been successfully saved');
//                        clearForm();
//                        $('#formSection').hide();
//                        $('#tableSection').fadeIn();
//                        dtable.ajax.reload();
//                    }
//                    return response.json();
//                });
//            });

        </script>


        <!--Table Details-->
        <script>

            $('#Quecrd').click(function () {
                document.getElementById('tableCard').style.display = 'block';
                stage = 'queue';
                dtable.ajax.reload();
            });
            $('#InProcrd').click(function () {
                document.getElementById('tableCard').style.display = 'block';
                stage = 'inprogress';
                dtable.ajax.reload();
            });
            $('#Devpcrd').click(function () {
                document.getElementById('tableCard').style.display = 'block';
                stage = 'develop';
                dtable.ajax.reload();
            });
//            $('#Testpcrd').click(function () {
//                document.getElementById('tableCard').style.display = 'block';
//                stage = 'testing';
//                dtable.ajax.reload();
//            });
            $('#Qacrd').click(function () {
                document.getElementById('tableCard').style.display = 'block';
                stage = 'qa';
                dtable.ajax.reload();
            });
            $('#Complcrd').click(function () {
                document.getElementById('tableCard').style.display = 'block';
                stage = 'completed';
                dtable.ajax.reload();
            });
            $('#Unsuccrd').click(function () {
                document.getElementById('tableCard').style.display = 'block';
                stage = 'unsucces';
                dtable.ajax.reload();
            });



            let stage = 'queue';


            $.fn.dataTable.ext.errMode = 'none';
            var dtable = $('#issue_table').DataTable({
                "aLengthMenu": [[5, 10, 25, -1], [5, 10, 25, "All"]],
                "pageLength": 5,
                "ordering": true,
                "autoWidth": false,
                "processing": true,
                "serverSide": true,
                "order": [[0, "desc"]],
                "searchHighlight": true,
                "searchDelay": 350,
                "ajax": {
                    "url": "issue/issuetable-all",
                    "contentType": "application/json",
                    "type": "POST",
                    "data": function (d) {
                        d.data = stage;
                        return JSON.stringify(d);
                    },
                    error: function (xhr, error, code) {
                        console.log(xhr);
                        console.log(code);
                    }
                },
                "columns": [
                    {"data": "id", className: "text-right", "visible": false},
                    {"data": "ref_number"},
                    {"data": "issue"},
                    {"data": "system"},
                    {"data": "priority"},
                    {"data": "ent_on"},
                    {"data": "status"}
                ],
                "language": {
                    'loadingRecords': '&nbsp;',
                    'processing': '<div class="loader2"></div>'
                },
                "createdRow": function (row, data) {
                    let action_td = document.createElement('td');
                    $(action_td).addClass('text-center');

                    $(action_td).append('<a href="javascript:void(0)" id="update" class="editrec"><i class="icon feather icon-eye f-w-600 f-16 m-r-10 text-c-green"></i></a>');

                    $(row).append(action_td);
                    $(row).data('id', data['id']);
                    $(row).data('status', data['status']);

                    // Color the text and make it bold in the priority column based on its value
                    if (data['priority'] === 'Urgent') {
                        $('td', row).eq(3).css({
                            'color': 'red',
                            'font-weight': 'bold'
                        });
                    } else {
                        $('td', row).eq(3).css({
                            'color': '#e0da16',
                            'font-weight': 'bold'
                        });
                    }
                }
            });




        </script>


        <!--editrec-->
        <script>
            $(document).on('click', '.editrec', function () {
                let row = $(this).closest('tr');
                let status = row.data('status');
                if (status === 'Queue') {
                    loadDiv($('#tableSection'));
                    let id = $(this).parents('tr').data('id');
                    fetch('issue/details-all/' + id)
                            .then(resp => resp.json())
                            .then((resp) => {
                                let data = resp.data;
                                let d2 = data.d2;
                                let obj = data.obj;

                                $('#ref_numberq').val(obj.ref_number);
                                $('#Issuequ').val(obj.issue_type);
                                $('#commentq').val(obj.comment);
                                //                                $('#productack').val(d1.product_txt);
                                //                                console.log(d1.issue);
                                console.log(obj.issue_type);
                                $('#ent_by').val(d2.entered);
                                $('#saveBtnin').data('mode', 'update');
                                $('#saveBtnin').data('id', id);
                                $('#saveBtnin').html('<i class="icon feather icon-save"></i>Update');
                                $('#formSectionInprogress').fadeIn();
                                $('#tableSection').hide();
                                finishLoadDiv($('#tableSection'));
                            });
                } else if (status === 'Development Pending') {
                    loadDiv($('#tableSection'));
                    let id = $(this).parents('tr').data('id');
                    fetch('issue/details-file/' + id)
                            .then(resp => resp.json())
                            .then((resp) => {
                                let data = resp.data;
                                $('#ref_numberp').val(data.ref_number);
                                $('#customer_namep').val(data.customer_name);
                                $('#amountp').val(data.amount);
                                $('#productp').val(data.productTxt);
                                $('#saveBtnfile').data('mode', 'update-filepending');
                                $('#saveBtnfile').data('id', id);
                                $('#saveBtnfile').html('<i class="icon feather icon-save"></i>Update');
                                $('#formSectionFilePending').fadeIn();
                                $('#tableSection').hide();
                                finishLoadDiv($('#tableSection'));
                            });
                } else if (status === 'Exceptions') {
                    loadDiv($('#tableSection'));
                    let id = $(this).parents('tr').data('id');

                    // Fetch team and attachment details
                    fetch('issue/clearance-details/' + id)
                            .then(resp => resp.json())
                            .then((resp) => {
                                let data = resp.data;
                                let content = resp.data.content;
                                let product = resp.data.productData;

                                $('#ref_numberc').val(content.ref_number);
                                $('#customer_namec').val(content.customer_name);
                                $('#amountc').val(content.amount);
                                $('#productc').val(product.product_txt);
                                console.log(data.product_txt);
                                let attachments = resp.data.videos;

                                // Clear existing rows in the attachment table
                                $('#tbladdAtts tbody').empty();

                                // Populate the attachment table with fetched data
                                attachments.forEach((attachment) => {
                                    // Get the table body
                                    var tableBody = document.querySelector('#tbladdAtts tbody');

                                    // Create a new row
                                    var newRow = tableBody.insertRow();

                                    // Create cells in the new row
                                    var commentCell = newRow.insertCell(0);
                                    var justificationCell = newRow.insertCell(1);
                                    var dateCell = newRow.insertCell(2);
                                    var statusCell = newRow.insertCell(3);
                                    var modifiedByCell = newRow.insertCell(4);
                                    var modifiedOnCell = newRow.insertCell(5);


                                    // Set the text content of the cells with the fetched values
                                    commentCell.textContent = attachment.name;
                                    statusCell.textContent = attachment.status; // Assuming status is available in attachment object
                                    modifiedByCell.textContent = attachment.modby; // Assuming modifiedBy is available in attachment object
                                    modifiedOnCell.textContent = attachment.mod_on; // Assuming modifiedOn is available in attachment object
                                    justificationCell.textContent = attachment.justification; // Assuming modifiedOn is available in attachment object
                                    dateCell.textContent = attachment.date; // Assuming modifiedOn is available in attachment object


                                });


                                // Show the form section
                                $('#saveBtnclr').data('mode', 'update-fileclear');
                                $('#saveBtnclr').data('id', id);
                                $('#saveBtnclr').html('<i class="icon feather icon-save"></i>Update'); // Change button text to 'Update'
                                $('#formSectionFileClearance').fadeIn();
                                $('#tableSection').hide();
                                finishLoadDiv($('#tableSection'));

                            });
                } else if (status === 'Undertaking Recommendation') {
                    loadDiv($('#tableSection'));
                    let id = $(this).parents('tr').data('id');

                    // Fetch team and attachment details
                    fetch('issue/clearance-details/' + id)
                            .then(resp => resp.json())
                            .then((resp) => {
                                let data = resp.data;
                                let content = resp.data.content;
                                let product = resp.data.productData;

                                $('#ref_numberrec').val(content.ref_number);
                                $('#customer_namerec').val(content.customer_name);
                                $('#amountrec').val(content.amount);
                                $('#productrec').val(product.product_txt);
                                console.log(data.product_txt);
                                let attachments = resp.data.videos;

                                // Clear existing rows in the attachment table
                                $('#tbladdAttsrec tbody').empty();

                                // Populate the attachment table with fetched data
                                attachments.forEach((attachment) => {
                                    // Get the table body
                                    var tableBody = document.querySelector('#tbladdAttsrec tbody');

                                    // Create a new row
                                    var newRow = tableBody.insertRow();

                                    // Create cells in the new row
                                    var commentCell = newRow.insertCell(0);
                                    var justificationCell = newRow.insertCell(1);
                                    var dateCell = newRow.insertCell(2);
                                    var statusCell = newRow.insertCell(3);
                                    var modifiedByCell = newRow.insertCell(4);
                                    var modifiedOnCell = newRow.insertCell(5);


                                    // Set the text content of the cells with the fetched values
                                    commentCell.textContent = attachment.name;
                                    statusCell.textContent = attachment.status; // Assuming status is available in attachment object
                                    modifiedByCell.textContent = attachment.modby; // Assuming modifiedBy is available in attachment object
                                    modifiedOnCell.textContent = attachment.mod_on; // Assuming modifiedOn is available in attachment object
                                    justificationCell.textContent = attachment.justification; // Assuming modifiedOn is available in attachment object
                                    dateCell.textContent = attachment.date;

                                });


                                // Show the form section
                                $('#saveBtnrec').data('mode', 'update-Recommendation');
                                $('#saveBtnrec').data('id', id);
                                $('#saveBtnrec').html('<i class="icon feather icon-save"></i>Update'); // Change button text to 'Update'
                                $('#formSectionRecommendation').fadeIn();
                                $('#tableSection').hide();
                                finishLoadDiv($('#tableSection'));

                            });
                } else if (status === 'Undertaking Approval Pending') {
                    loadDiv($('#tableSection'));
                    let id = $(this).parents('tr').data('id');


                    fetch('issue/clearance-details/' + id)
                            .then(resp => resp.json())
                            .then((resp) => {
                                let data = resp.data;
                                let content = resp.data.content;
                                let product = resp.data.productData;
                                let approve = resp.data.approverData;

                                $('#ref_numberu').val(content.ref_number);
                                $('#customer_nameu').val(content.customer_name);
                                $('#amountu').val(content.amount);
                                $('#productu').val(product.product_txt);
                                $('#appund').val(approve.approvername);
                                let attachments = resp.data.videos;

                                // Clear existing rows in the attachment table
                                $('#tbladdAttu tbody').empty();

                                // Populate the attachment table with fetched data
                                attachments.forEach((attachment) => {
                                    // Get the table body
                                    var tableBody = document.querySelector('#tbladdAttu tbody');

                                    // Create a new row
                                    var newRow = tableBody.insertRow();

                                    // Create cells in the new row
                                    var commentCell = newRow.insertCell(0);
                                    var justificationCell = newRow.insertCell(1);
                                    var dateCell = newRow.insertCell(2);
                                    var statusCell = newRow.insertCell(3);
                                    var modifiedByCell = newRow.insertCell(4);
                                    var modifiedOnCell = newRow.insertCell(5);


                                    // Set the text content of the cells with the fetched values
                                    commentCell.textContent = attachment.name;
                                    statusCell.textContent = attachment.status; // Assuming status is available in attachment object
                                    modifiedByCell.textContent = attachment.modby; // Assuming modifiedBy is available in attachment object
                                    modifiedOnCell.textContent = attachment.mod_on; // Assuming modifiedOn is available in attachment object
                                    justificationCell.textContent = attachment.justification; // Assuming modifiedOn is available in attachment object
                                    dateCell.textContent = attachment.date;


                                });

                                // Show the form section
                                $('#saveBtnund').data('mode', 'update-undertaking');
                                $('#saveBtnund').data('id', id);
                                $('#saveBtnund').html('<i class="icon feather icon-save"></i>Update'); // Change button text to 'Update'
                                $('#formSectionApprovalPending').fadeIn();
                                $('#tableSection').hide();
                                finishLoadDiv($('#tableSection'));

                            });
                } else if (status === 'Payment Voucher Hand Over To Finance') {
                    loadDiv($('#tableSection'));
                    let id = $(this).parents('tr').data('id');
                    fetch('issue/clearance-details/' + id)
                            .then(resp => resp.json())
                            .then((resp) => {
                                let data = resp.data;
                                let content = resp.data.content;
                                let product = resp.data.productData;

                                $('#ref_numberpay').val(content.ref_number);
                                $('#customer_namepay').val(content.customer_name);
                                $('#amountpay').val(content.amount);
                                $('#productpay').val(product.product_txt);
                                $('#saveBtnpay').data('mode', 'update-payment');
                                $('#saveBtnpay').data('id', id);
                                $('#saveBtnpay').html('<i class="icon feather icon-save"></i>Update');
                                $('#formSectionPaymentVoucher').fadeIn();
                                $('#tableSection').hide();
                                finishLoadDiv($('#tableSection'));
                            });
                } else if (status === 'Payment Voucher Hand Over To Finance(Undertaking Approval)') {
                    loadDiv($('#tableSection'));
                    let id = $(this).parents('tr').data('id');
                    fetch('issue/clearance-details/' + id)
                            .then(resp => resp.json())
                            .then((resp) => {

                                let data = resp.data;
                                let content = resp.data.content;
                                let approve = resp.data.approverData;
                                let product = resp.data.productData;


                                $('#ref_numberppun').val(content.ref_number);
                                $('#customer_nameppun').val(content.customer_name);
                                $('#amountppun').val(content.amount);
                                $('#productppun').val(product.product_txt);
                                $('#approvername').val(approve.approvername);


                                let attachments = resp.data.videos;

                                // Clear existing rows in the attachment table
                                $('#tbladdAttpay tbody').empty();

                                // Populate the attachment table with fetched data
                                attachments.forEach((attachment) => {
                                    // Get the table body
                                    var tableBody = document.querySelector('#tbladdAttpay tbody');

                                    // Create a new row
                                    var newRow = tableBody.insertRow();

                                    // Create cells in the new row
                                    var commentCell = newRow.insertCell(0);
                                    var justificationCell = newRow.insertCell(1);
                                    var dateCell = newRow.insertCell(2);
                                    var statusCell = newRow.insertCell(3);
                                    var modifiedByCell = newRow.insertCell(4);
                                    var modifiedOnCell = newRow.insertCell(5);


                                    // Set the text content of the cells with the fetched values
                                    commentCell.textContent = attachment.name;
                                    statusCell.textContent = attachment.status; // Assuming status is available in attachment object
                                    modifiedByCell.textContent = attachment.modby; // Assuming modifiedBy is available in attachment object
                                    modifiedOnCell.textContent = attachment.mod_on; // Assuming modifiedOn is available in attachment object
                                    justificationCell.textContent = attachment.justification; // Assuming modifiedOn is available in attachment object
                                    dateCell.textContent = attachment.date; // Assuming modifiedOn is available in attachment object


                                });

                                $('#saveBtnppun').data('mode', 'update-payunder');
                                $('#saveBtnppun').data('id', id);
                                $('#saveBtnppun').html('<i class="icon feather icon-save"></i>Update');
                                $('#formSectionPaymentVoucherUnder').fadeIn();
                                $('#tableSection').hide();
                                finishLoadDiv($('#tableSection'));
                            });
                } else if (status === 'Completed') {
                    loadDiv($('#tableSection'));

                    let id = $(this).parents('tr').data('id');
                    fetch('issue/paymentv-details/' + id)
                            .then(resp => resp.json())
                            .then((resp) => {
                                let data = resp.data;
                                let d1 = data.d1;
                                let obj = data.obj;


                                $('#ref_numbercom').val(obj.ref_number);
                                $('#customer_namecom').val(obj.customer_name);
                                $('#amountcom').val(obj.amount);
                                $('#productcom').val(d1.product_txt);
                                $('#saveBtnpv').data('mode', 'update-completed');
                                $('#saveBtnpv').data('id', id);
                                $('#saveBtnpv').html('<i class="icon feather icon-save"></i>Update'); // Change button text to 'Update'
                                $('#formSectionCompleted').fadeIn();
                                $('#tableSection').hide();
                                finishLoadDiv($('#tableSection'));


                            })
                            .catch(error => {
                                // Handle fetch error
                                console.error('Error fetching payment details:', error);
                            });
                } else if (status === 'Completed(Undertaking Approval)') {
                    loadDiv($('#tableSection'));

                    let id = $(this).parents('tr').data('id');
                    fetch('issue/paymentv-details/' + id)
                            .then(resp => resp.json())
                            .then((resp) => {
                                let data = resp.data;
                                let d1 = data.d1;
                                let d2 = data.d2;
                                let obj = data.obj;


                                $('#ref_numbercomund').val(obj.ref_number);
                                $('#customer_namecomund').val(obj.customer_name);
                                $('#amountcomund').val(obj.amount);
                                $('#productcomund').val(d1.product_txt);
                                $('#approvercomund').val(d2.approvername);
                                $('#saveBtnpv').data('mode', 'update-completed');
                                $('#saveBtnpv').data('id', id);
                                $('#saveBtnpv').html('<i class="icon feather icon-save"></i>Update'); // Change button text to 'Update'
                                $('#formSectionCompletedUndertaking').fadeIn();
                                $('#tableSection').hide();
                                finishLoadDiv($('#tableSection'));


                            })
                            .catch(error => {
                                // Handle fetch error
                                console.error('Error fetching payment details:', error);
                            });
                } else if (status === 'Unsuccessful') {
                    loadDiv($('#tableSection'));


                    let id = $(this).parents('tr').data('id');
                    fetch('issue/details-all/' + id)
                            .then(resp => resp.json())
                            .then((resp) => {
                                let data = resp.data;
                                let d2 = data.d2;
                                let obj = data.obj;


                                $('#ref_numberrej').val(obj.ref_number);
                                $('#ent_byrej').val(d2.entered);
                                $('#issue_typerej').val(obj.issue_type);
                                $('#commentrej').val(obj.comment);
                                $('#resonrej').val(obj.reason);
                                $('#saveBtnpv').data('mode', 'update-completed');
                                $('#saveBtnpv').data('id', id);
                                $('#saveBtnpv').html('<i class="icon feather icon-save"></i>Update'); // Change button text to 'Update'
                                $('#formSectionRejected').fadeIn();
                                $('#tableSection').hide();
                                finishLoadDiv($('#tableSection'));


                            })
                            .catch(error => {
                                // Handle fetch error
                                console.error('Error fetching payment details:', error);
                            });
                }

            });
        </script>

        <!--        <script>
                    document.addEventListener("DOMContentLoaded", function () {
                        var ImsStatusSelect = document.getElementById("statusque");
                        var commentSection = document.getElementById("reason_section");

                        // Add event listener to the select element
                        ImsStatusSelect.addEventListener("change", function () {

                            // Check if the selected value is "reject"
                            if (this.value === "uns") {
                                // Show the comment section
                                commentSection.style.display = "block";
                            } else {
                                // Hide the comment section
                                commentSection.style.display = "none";
                            }
                        });

                    });

                    $('#saveBtnin').click(function () {
                        // Get the value of the facility status select element
                        var statusque = document.getElementById('statusque').value;

                        // Initialize request body
                        var requestBody = {
                            id: $('#saveBtnin').data('id'),
                            statusque: statusque,
                        };

                        // Check if the facility status is "reject"
                        if (statusque === "uns") {
                            // Include comment in the request body
                            requestBody.reason = document.getElementById('reason_textarea').value;
                        }

                        // Send the request
                        return fetch((($('#saveBtnin').data('mode') === 'save') ? 'issue/save' : 'issue/update-ack'), {
                            method: 'POST',
                            body: new URLSearchParams(requestBody)
                        }).then(response => {
                            if (!response.ok) {
                                throw new Error(response.statusText);
                            } else {
                                Swal.fire('Successfull!', 'FMR has been successfully saved');
                                clearForm();
                                $('#formSectionInprogress').hide();
                                $('#tableSection').fadeIn();
                                dtable.ajax.reload();
                            }
                            return response.json();
                        });
                    });
                </script>-->

    </body>
</html>
