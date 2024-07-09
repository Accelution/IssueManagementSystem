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
        <!--<link rel="icon" href="assets/images/favicon.ico" type="image/x-icon">-->
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
    </head>
    <body class="bg-theme bg-theme1">
        <div id="wrapper">


            <div class="clearfix"></div>

            <div class="content-wrapper">
                <div class="container-fluid">
                    <%@include file="jspf/navbar.jspf" %>
                    <!--Start Dashboard Content-->
                    <div class="main" id="tableSection">
                        <section class="tab-details"style="padding: 2rem 2rem;">
                            <div class="row">
                                <div class="col-sm-12">
                                    <div class="card" id="tableCard">
                                        <div class="card-body" >
                                            <h5 id="main_name_tag">Ticket Management System - Queue</h5>
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
                                    </div>

                                </div>
                            </div>
                        </section>
                    </div>
                </div>

                <!--formSection-acknowledgment-pending-->
                <div class="" id="formSectionInprogress" style="display: none;padding-top: 1rem;">
                    <div class="card" style="padding: 1em;">
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
                                <div class="col">
                                    <div class="form-group">
                                        <label for="ent_by">Company<span class="text-danger">*</span></label>
                                        <input id="ent_by" type="text" name="ent_by" class="form-control" required autocomplete="off" disabled="">
                                    </div>
                                </div>
                                <div class="col">
                                    <div class="form-group">
                                        <label for="ent_by">System<span class="text-danger">*</span></label>
                                        <input id="ent_by" type="text" name="ent_by" class="form-control" required autocomplete="off" disabled="">
                                    </div>
                                </div>

                            </div>
                            <div class="row">
                                <div class="col-6">
                                    <div class="form-group">
                                        <label for="Issueq">Issue<span class="text-danger">*</span></label>
                                        <input id="Issuequ" type="text" name="Issueq" class="form-control" required autocomplete="off" disabled="">
                                    </div>
                                </div>
                                <div class="col-3">
                                    <div class="form-group" style="padding-bottom: 2rem">
                                        <label for="acknow_status" class=" col-form-label allFontByCustomerEdit">Choose Next Stage </label>
                                        <div class="selec tor">
                                            <select id="statusque">
                                                <option value="" disabled selected>Select Stage</option>
                                                <option value="inp">In Progress</option>
                                                <option value="devPen">Development Pending</option>
                                                <option value="qa">QA Pending</option>
                                                <option value="com">Completed</option>
                                            </select>
                                        </div>
                                    </div> 
                                </div>
                                <div class="col-3">
                                    <div class="form-group" id="assign_section" style="display: none;">
                                        <label for="assign" class=" col-form-label allFontByCustomerEdit">Assign To</label>
                                        <select class="form-control-sm pull-right" id="assign">  </select>

                                    </div>   
                                </div>


                            </div>
                            <div class="row">
                                <div class="card">
                                    <div class="card-body" id="com_section">
                                        <!-- Comments will be dynamically inserted here -->
                                    </div>
                                </div>
                            </div>



                            <div class="card-footer d-flex justify-content-end">
                                <button id="saveBtnin" class="btn btn-sm waves-effect waves-light btn-primary" style="margin-right: 10px"><i class="icon feather icon-save"></i>Save</button>
                                <button id="closeBtnin" class="btn btn-sm btn-danger"><i class="icon feather icon-x-circle"></i>Close</button>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>
        <%@include file="jspf/scripts.jspf" %>
        <script src="assets/js/jquery.min.js"></script>
        <script src="assets/js/popper.min.js"></script>
        <script src="assets/js/bootstrap.min.js"></script>
        <script src="assets/plugins/simplebar/js/simplebar.js"></script>
        <script src="assets/js/sidebar-menu.js"></script>
        <!--<script src="assets/js/jquery.loading-indicator.js"></script>-->
        <script src="assets/js/app-script.js"></script>
        <script src="assets/plugins/Chart.js/Chart.min.js"></script>
        <script src="assets/js/index.js"></script>


        <script type="text/javascript" src="files/js/slimselect.js"></script>
        <script type="text/javascript" src="files/js/datatables.min.js"></script>
        <script type="text/javascript" src="files/js/sweetalert2.js"></script>
        <script type="text/javascript" src="files/js/func.js"></script>
        <script type="text/javascript" src="files/js/autoNumeric.js"></script>
        <script type="text/javascript" src="files/js/dataTables.responsive.min.js"></script>
        <script type="text/javascript" src="files/js/jquery.highlight.js"></script>
        <script type="text/javascript" src="files/js/dataTables.searchHighlight.min.js"></script>
        <script>






            const formSection = document.getElementById('formSection');
            const tableSection = document.getElementById('tableSection');
            const closeBtn = document.getElementById('closeBtn');
            const closeBtnin = document.getElementById('closeBtnin');

            closeBtnin.addEventListener('click', function () {
                formSectionInprogress.style.display = 'none';
                tableSection.style.display = 'block';
            });

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
                    {select: '#assign',
                        placeholder: "Assign To",
                        ajax: function (search, callback) {
                            fetch('issue/assignto', {
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










        <!--Table Details-->
        <script>
            new SlimSelect({
                select: '#statusque'
            })


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

                    $(action_td).append('<a href="javascript:void(0)" id="update" class="editrec"><i class="zmdi zmdi-edit f-w-600 f-16 m-r-10 text-c-green"></i></a>');

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
                                $('#Issuequ').val(obj.issue);

                                console.log(obj.issue_type);
                                $('#ent_by').val(d2.entered);
                                $('#saveBtnin').data('mode', 'update');
                                $('#saveBtnin').data('id', id);
                                $('#saveBtnin').html('<i class="icon feather icon-save"></i>Update');
                                $('#formSectionInprogress').fadeIn();
                                $('#tableSection').hide();
                                finishLoadDiv($('#tableSection'));
                            });
                }

            });
        </script>

        <script>
            document.addEventListener("DOMContentLoaded", function () {
                var ImsStatusSelect = document.getElementById("statusque");
                var commentSection = document.getElementById("assign_section");

                // Add event listener to the select element
                ImsStatusSelect.addEventListener("change", function () {

                    // Check if the selected value is "reject"
                    if (this.value === "inp") {
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
        </script>

    </body>
</html>
