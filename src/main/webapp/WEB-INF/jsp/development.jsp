<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="jspf/header.jspf" %>
    </head>
    <body>

        <main class="main" id="top">
            <div class="container-fluid" data-layout="container">
                <%@include file="jspf/sidebar.jspf" %>

                <div class="content">
                    <%@include file="jspf/navbar.jspf" %>

                    <div class="container-fluid">
                        <div class="main" id="tableSection">
                            <section class="tab-details" style="padding: 2rem 2rem;">
                                <div class="row">
                                    <div class="col-sm-12">
                                        <div class="card" id="tableCard">
                                            <div class="card-body" >
                                                <h5 id="main_name_tag">Ticket Management System - Development Pending</h5>
                                                <hr>

                                                <div id="table_card">
                                                    <table class="table table-bordered table-sm" id="issue_table" style="width: 100%; font-size: small">
                                                        <thead>
                                                            <tr>
                                                                <th style="display: none">ID</th>
                                                                <th>Reference Number</th>
                                                                <th>Issue</th>
                                                                <th>System</th>
                                                                <th>Module</th>
                                                                <th>Company</th>
                                                                <th>Priority</th>
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
                    <div class="" id="formSectionDevelopment" style="display: none; padding-top: 1rem;">
                        <div class="card" style="padding: 1em;">
                            <div class="card-header">
                                <h5>Ticket Management System - Development Pending</h5>
                            </div>
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
                                            <input id="company" type="text" name="company" class="form-control" required autocomplete="off" disabled="">
                                        </div>
                                    </div>
                                    <div class="col">
                                        <div class="form-group">
                                            <label for="ent_by">System<span class="text-danger">*</span></label>
                                            <input id="system" type="text" name="system" class="form-control" required autocomplete="off" disabled="">
                                        </div>
                                    </div>
                                    <div class="col">
                                        <div class="form-group">
                                            <label for="ent_by">Module<span class="text-danger">*</span></label>
                                            <input id="module" type="text" name="module" class="form-control" required autocomplete="off" disabled="">
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-6">
                                        <div class="form-group">
                                            <label for="Issueq">Issue<span class="text-danger">*</span></label>
                                            <textarea id="Issuequ"  name="Issueq" class="form-control" required autocomplete="off" disabled=""></textarea>
                                        </div>
                                    </div>
                                    <div class="col-3">
                                        <div class="form-group" style="padding-bottom: 2rem">
                                            <label for="acknow_status" class="col-form-label allFontByCustomerEdit">Choose Next Stage </label>
                                            <div class="selector">
                                                <select id="statusque">
                                                    <option value="" disabled selected>Select Stage</option>

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
                                <div class="row" style="padding-top: 1em;padding-bottom: 1em;">
                                    <div class="col-3">
                                        <label for="comment">Upload Your Attachments Here<span class="text-danger">*</span></label> 
                                    </div>
                                    <div class="col-9">
                                        <div class="row justify-content-end" >

                                            <div class="text">
                                                <button id="addBtnQ" class="btn btn-primary btn-sm ">
                                                    <i class="fas fa-plus"></i> Comment
                                                </button>
                                            </div>

                                        </div>
                                    </div>
                                </div>

                                <div id="addSection" >
                                    <div class="row ">
                                        <div class="col-12">
                                            <div class="table-responsive">
                                                <table class="table table-hover table-bordered m-b-0" id="tbladdAttQ">
                                                    <thead>
                                                        <tr>
                                                            <th>Comment</th>
                                                            <th >Attachment</th>
                                                            <th>Type</th>
                                                            <th style="width:1px;">Action</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <!-- Your table body content goes here -->
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                    </div>

                                </div>
                                <br>
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
        </main>
        <%@include file="jspf/footer.jspf" %>
        <%@include file="jspf/scripts.jspf" %>

        <script>
            document.getElementById('addBtnQ').addEventListener('click', function () {
                // Get the table body
                var tableBody = document.querySelector('#tbladdAttQ tbody');

                // Create a new row
                var newRow = tableBody.insertRow();

                // Create cells in the new row
                var commentCell = newRow.insertCell(0);
                var fileCell = newRow.insertCell(1);
                var typeCell = newRow.insertCell(2); // New cell for "Type"
                var actionCell = newRow.insertCell(3);

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

                // Create select for "Type" in cell 3
                var typeSelect = document.createElement('select');
                typeSelect.name = 'type';
                typeSelect.classList.add('form-control');
                typeSelect.required = true;

                var defaultOption = document.createElement('option');
                defaultOption.value = '';
                defaultOption.textContent = 'Select Type';
                defaultOption.disabled = true;
                defaultOption.selected = true;

                var externalOption = document.createElement('option');
                externalOption.value = 'External';
                externalOption.textContent = 'External';

                var internalOption = document.createElement('option');
                internalOption.value = 'Internal';
                internalOption.textContent = 'Internal';

                typeSelect.appendChild(defaultOption);
                typeSelect.appendChild(externalOption);
                typeSelect.appendChild(internalOption);

                // Append input elements to respective cells
                commentCell.appendChild(commentInput);
                fileCell.appendChild(fileInput);
                typeCell.appendChild(typeSelect);

                // Create a delete button in the action cell
                var deleteButton = document.createElement('button');
                deleteButton.classList.add('btn', 'btn-sm', 'btn-danger');
                deleteButton.name = 'dele';

                var icon = document.createElement('i');
                icon.classList.add('far', 'fa-window-minimize');

                deleteButton.appendChild(icon);

                // Add a click event listener to the delete button
                deleteButton.addEventListener('click', function () {
                    // Remove the row when the delete button is clicked
                    tableBody.removeChild(newRow);
                });

                // Append the delete button to the action cell
                actionCell.appendChild(deleteButton);

                // Call the addAttachmentRow function with the input values
//                addAttachmentRow(commentInput.value, fileInput.value);
            });





            const formSection = document.getElementById('formSection');
            const tableSection = document.getElementById('tableSection');
            const closeBtn = document.getElementById('closeBtn');
            const closeBtnin = document.getElementById('closeBtnin');

            closeBtnin.addEventListener('click', function () {
                formSectionDevelopment.style.display = 'none';
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


            }

        </script>


        <!--Table Details-->
        <script>
            new SlimSelect({
                select: '#statusque'
            })


            let stage = 'develop';


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
                    {"data": "module"},
                    {"data": "company"},
                    {"data": "priority"},
                    {"data": "status"}
                ],
                "language": {
                    'loadingRecords': '&nbsp;',
                    'processing': '<div class="loader2"></div>'
                },
                "createdRow": function (row, data) {
                    let action_td = document.createElement('td');
                    $(action_td).addClass('text-center');

                    $(action_td).append('<a href="javascript:void(0)" id="update" class="editrec"><i class="far fa-edit text-c-green"></i></a>');

                    $(row).append(action_td);
                    $(row).data('id', data['id']);
                    $(row).data('status', data['status']);

                    // Color the text and make it bold in the priority column based on its value
                    if (data['priority'] === 'Urgent') {
                        $('td', row).eq(5).css({
                            'color': 'red',
                            'font-weight': 'bold'
                        });
                    } else {
                        $('td', row).eq(5).css({
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
                if (status === 'Development Pending') {
                    loadDiv($('#tableSection'));
                    let id = $(this).parents('tr').data('id');
                    fetch('issue/details-all/' + id)
                            .then(resp => resp.json())
                            .then((resp) => {
                                let data = resp.data;
                                let d2 = data.d2;
                                let d3 = data.d3;
                                let d4 = data.d4;
                                let d5 = data.d5;
                                let obj = data.obj;

                                // Set the issue details
                                $('#ref_numberq').val(obj.ref_number);
                                $('#Issuequ').val(obj.issue);
                                $('#ent_by').val(d2.entered);
                                $('#company').val(d3.comname);
                                $('#system').val(d4.sysname);
                                $('#module').val(d5.modulename);
                                $('#saveBtnin').data('mode', 'update');
                                $('#saveBtnin').data('id', id);
                                $('#saveBtnin').html('<i class="icon feather icon-save"></i>Update');

                                // Fetch and display comments
                                displayComments(data.videos);

                                // Show the form section and hide the table section
                                $('#formSectionDevelopment').fadeIn();
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
                        // Determine the background color based on comment type
                        let bgColor = '';
                        if (comment.com_type === 'Internal') {
                            bgColor = 'background-color: #d4edda;'; // Light green
                        } else if (comment.com_type === 'External') {
                            bgColor = 'background-color: #fff3cd;'; // Light amber
                        }

                        let commentHTML =
                                '<div class="card mb-3" style="' + bgColor + '">' +
                                '<div class="card-body">' +
                                '<div class="row">' +
                                '<div class="col-4">' +
                                '<h6>Commented By: ' + comment.commenter + '</h6>' +
                                '<h6>Commented On: ' + comment.ent_on + '</h6>' +
                                '<h6>Comment Type: ' + comment.com_type + '</h6>' +
                                '</div>' +
                                '<div class="col-8">' +
                                '<p>Comment: ' + comment.comment + '</p>';

                        if (comment.path) {
                            commentHTML += '<p><a href="issue/path/attachment/' + comment.path + '" target="_blank">View Attachment</a></p>';
                        }

                        commentHTML +=
                                '</div>' +
                                '</div>' +
                                '</div>' +
                                '</div>';

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

                    let errorFound = false; // Flag to track if an error is found

                    tableRows.forEach((row, index) => {
                        if (errorFound)
                            return; // Exit the loop if an error was found

                        let comment = row.querySelector('textarea[name="comment"]').value;
                        if (!comment) {
                            Swal.fire('Error!', 'Comment must not be empty', 'error');
                            saveBtnin.disabled = false;
                            errorFound = true; // Set the flag to true
                            return;
                        }
                        let comtype = row.querySelector('select[name="type"]').value;
                        if (!comtype) {
                            Swal.fire('Error!', 'Comment Type must Be Selected', 'error');
                            saveBtnin.disabled = false;
                            errorFound = true; // Set the flag to true
                            return;
                        }

                        let fileInput = row.querySelector('input[name="fileLink"]');
                        let path = "";
                        if (fileInput && fileInput.files.length > 0) {
                            path = fileInput.files[0].name; // Get the file name
                            formData.append('fileLink' + index, fileInput.files[0]); // Append the file to formData
                        }

                        attachmentData.push({
                            comment: comment,
                            comtype: comtype,
                            path: path
                        });
                    });

                    if (errorFound) {
                        return; // Exit the main function if an error was found
                    }

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
                    if (assign !== null) {
                        formData.append('assign', assign);
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
                        $('#formSectionDevelopment').hide();
                        $('#tableSection').fadeIn();
                        clearForms();
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
