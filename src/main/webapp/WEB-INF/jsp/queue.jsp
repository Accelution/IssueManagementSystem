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
                        <section class="tab-details" style="padding: 2rem 2rem;">
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

                <!--formSection-queue-->
                <div class="" id="formSectionQueue" style="display: none; padding-top: 1rem;">
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
                                        <label for="acknow_status" class="col-form-label allFontByCustomerEdit">Choose Next Stage </label>
                                        <div class="selector">
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
                                    <div class="form-group" id="assign_section">
                                        <label for="assign" class="col-form-label allFontByCustomerEdit">Assign To</label>
                                        <select class="form-control-sm pull-right" id="assign">  </select>
                                    </div>   
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-12">
                                    <div class="d-flex justify-content-end mb-2 ">
                                        <button id="toggleAddSection" class="btn btn-sm waves-effect waves-light btn-secondary">
                                            <i class="feather icon-plus"></i> Add Comment
                                        </button>
                                    </div>
                                </div>
                            </div>
                            <div id="addSection" style="display: none;">
                                <div class="row justify-content-end">
                                    <div class="col-12">
                                        <div class="table-responsive">
                                            <table class="table table-hover table-bordered m-b-0" id="tbladdAttQ">
                                                <thead>
                                                    <tr>
                                                        <th>Comment</th>
                                                        <th>Attachment</th>
                                                        <th style="width: 1px;">Action</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <!-- Your table body content goes here -->
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                                <div class="row justify-content-end" style="padding: 2em;">
                                    <div class="row">
                                        <div class="text">
                                            <button id="addBtnQ" class="btn btn-sm waves-effect waves-light btn-danger">
                                                <i class="icon feather icon-plus"></i>Add Comment/Attachment
                                            </button>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-12">
                                    <label for="com" class="col-form-label allFontByCustomerEdit">Comment Section</label>
                                    <div class="card" style="width: 100%;">
                                        <div class="card-body" id="com_section">
                                            <!-- Comments will be dynamically inserted here -->
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="card-footer d-flex justify-content-end">
                                <button id="saveBtnin" class="btn btn-sm waves-effect waves-light btn-primary" style="margin-right: 10px;">
                                    <i class="feather icon-save"></i>Save
                                </button>
                                <button id="closeBtnin" class="btn btn-sm btn-danger">
                                    <i class="feather icon-x-circle"></i>Close
                                </button>
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
            document.getElementById('addBtnQ').addEventListener('click', function () {
                // Get the table body
                var tableBody = document.querySelector('#tbladdAttQ tbody');

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





            const formSection = document.getElementById('formSection');
            const tableSection = document.getElementById('tableSection');
            const closeBtn = document.getElementById('closeBtn');
            const closeBtnin = document.getElementById('closeBtnin');

            closeBtnin.addEventListener('click', function () {
                formSectionQueue.style.display = 'none';
                tableSection.style.display = 'block';
                clearForms();
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
                clearForms();
                $('#tableSection').hide();
                $('#formSection').fadeIn();
            });
            $('.cls-card').click(function () {
                $('#formSection').hide();
                $('#tableSection').fadeIn();
            });


            function clearForms() {

                document.getElementById('statusque').selectedIndex = 0;
                document.getElementById('assign').selectedIndex = 0;

                // Clear table body for attachments
                let tableBody = document.querySelector('#tbladdAttQ tbody');
                tableBody.innerHTML = '';

                // Hide add comment section if it's visible
                document.getElementById('addSection').style.display = 'none';
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
            $(document).ready(function () {
                $('#toggleAddSection').click(function () {
                    $('#addSection').toggle();
                });

                // Additional JavaScript code for other functionalities can go here
            });
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

                                // Set the issue details
                                $('#ref_numberq').val(obj.ref_number);
                                $('#Issuequ').val(obj.issue);
                                $('#ent_by').val(d2.entered);
                                $('#saveBtnin').data('mode', 'update');
                                $('#saveBtnin').data('id', id);
                                $('#saveBtnin').html('<i class="icon feather icon-save"></i>Update');

                                // Fetch and display comments
                                displayComments(data.videos);

                                // Show the form section and hide the table section
                                $('#formSectionQueue').fadeIn();
                                $('#tableSection').hide();
                                finishLoadDiv($('#tableSection'));
                            });
                }
            });
            function displayComments(comments) {
                const comSection = $('#com_section');
                comSection.empty(); // Clear existing content

                if (comments && comments.length > 0) {
                    // Reverse the comments to show the latest one first
                    comments.reverse().forEach(comment => {
                        let commentHTML =
                                '<div class="row">' +
                                '<div class="col-4">' +
                                '<h6>Commented By: ' + comment.ent_by + '</h6>' +
                                '<h6>Commented On: ' + comment.ent_on + '</h6>' +
                                '</div>' +
                                '<div class="col-8">' +
                                '<p>Comment: ' + comment.comment + '</p>';

                        if (comment.path) {
                            commentHTML += '<p><a href="issue/path/attachment/' + comment.path + '" target="_blank">View Attachment</a></p>';
                        }

                        commentHTML +=
                                '</div>' +
                                '</div>' +
                                '<hr>';

                        comSection.append(commentHTML);
                    });
                } else {
                    comSection.html('<p>No comments available.</p>');
                }
            }





        </script>

        <script>
            document.getElementById('saveBtnin').addEventListener('click', function () {
                let saveBtnin = document.getElementById('saveBtnin');
                saveBtnin.disabled = true;

                let mode = $('#saveBtnin').data('mode');
                if (mode === 'update') {
                    let id = $('#saveBtnin').data('id');
                    let statusque = document.getElementById('statusque').value || null;
                    let assign = document.getElementById('assign').value || null;

                    let tableRows = document.querySelectorAll('#tbladdAttQ tbody tr');

                    // If the table is empty, perform the checks for statusque and assign
                    if (tableRows.length === 0) {
                        if (!statusque && !assign) {
                            Swal.fire('Error!', 'Please select "Status" and "Assign To"', 'error');
                            saveBtnin.disabled = false;
                            return;
                        }
                        if (!statusque) {
                            Swal.fire('Error!', 'Please select "Status"', 'error');
                            saveBtnin.disabled = false;
                            return;
                        }
                        if (!assign) {
                            Swal.fire('Error!', 'Please select "Assign To"', 'error');
                            saveBtnin.disabled = false;
                            return;
                        }
                    }

                    let attachmentData = [];
                    let formData = new FormData();

                    tableRows.forEach((row, index) => {
                        let comment = row.querySelector('textarea[name="comment"]').value;
                        if (!comment) {
                            Swal.fire('Error!', 'Comment must not be empty', 'error');
                            saveBtnin.disabled = false;
                            return;
                        }
                        let fileInput = row.querySelector('input[name="fileLink"]');
                        let files = fileInput.files;

                        let path = "";
                        if (files.length > 0) {
                            for (let i = 0; i < files.length; i++) {
                                let fileFieldName = `files[${index}]`;
                                formData.append(fileFieldName, files[i]);
                                path = files[i].name;
                            }
                        }

                        attachmentData.push({
                            comment: comment,
                            path: path
                        });
                    });

                    if (attachmentData.length > 0) {
                        let desclist = JSON.stringify(attachmentData);
                        formData.append('desclist', desclist);
                    } else {
                        formData.append('desclist', "[]");
                    }

                    formData.append('id', id);
                    if (statusque !== null) {
                        formData.append('statusque', statusque);
                    }

                    fetch('issue/update-queue', {
                        method: 'POST',
                        body: formData
                    }).then(response => {
                        if (!response.ok) {
                            throw new Error(response.statusText);
                        }
                        return response.json();
                    }).then(data => {
                        Swal.fire('Successful!', 'Issue has been successfully updated', 'success');
                        $('#formSectionQueue').hide();
                        $('#tableSection').fadeIn();
                        clearForms()
                        dtable.ajax.reload();
                    }).catch(error => {
                        Swal.fire('Error!', 'Failed to update issue details', 'error');
                    }).finally(() => {
                        saveBtnin.disabled = false;
                    });
                }
            });

        </script>

    </body>
</html>
