<!DOCTYPE html>
<html lang="en-US" dir="ltr">
    <head>
        <%@include file="jspf/header.jspf" %>
        <style>
            .card {
                height: 100%;
                display: flex;
                flex-direction: column;
                justify-content: space-between;
                border: 1px solid #ccc;
                border-radius: 5px;
                box-shadow: 0 0 10px rgba(0,0,0,0.1);
            }

            .card-container .col {
                padding: 0;
            }

            .card-body {
                height: 100%;
                display: flex;
                flex-direction: column;
                padding: 1rem;
            }

            .text {
                display: flex;
                align-items: center;
                justify-content: space-between;
            }


            .small-font {
                font-size: 12px; /* Adjust font size as needed */
                font-weight: 600;
            }
            .card-footer {
                display: flex;
                justify-content: flex-end;
                padding: 1rem;
            }
            .text-right {
                margin-left: auto;
            }
            .card-col {
                margin: 0 5px; /* Adjust the margin as needed */
            }
        </style>
    </head>

    <body>

        <main class="main" id="top">
            <div class="container-fluid" data-layout="container">
                <%@include file="jspf/sidebar.jspf" %>

                <div class="content">


                    <div class="container-fluid">
                        <%@include file="jspf/navbar.jspf" %>
                        <div class="main" id="tableSection">

                            <div class="row row-group m-0 card-container justify-content-between" style="padding-bottom:2em">
                                <div class="col card-col">
                                    <div class="card" id="Quecrd">
                                        <div class="card-body">
                                            <h6 class="text mb-0" id="acknowledgment">0 <span class="float-right"><i class="feather">
                                                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-clock"><circle cx="12" cy="12" r="10"></circle><polyline points="12 6 12 12 16 14"></polyline></svg>
                                                    </i></span></h6>
                                            <div class="progress my-2" style="height:1px;"></div>
                                            <p class="mb-0 text small-font">Queue</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="col card-col">
                                    <div class="card" id="Appcrd">
                                        <div class="card-body">
                                            <h6 class="text mb-0" id="acknowledgment">0 <span class="float-right"><i class="feather">
                                                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-key"><path d="M21 2l-2 2m-7.61 7.61a5.5 5.5 0 1 1-7.778 7.778 5.5 5.5 0 0 1 7.777-7.777zm0 0L15.5 7.5m0 0l3 3L22 7l-3-3m-3.5 3.5L19 4"></path></svg>
                                                    </i></span></h6>
                                            <div class="progress my-2" style="height:1px;"></div>
                                            <p class="mb-0 text small-font">Approval Pending</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="col card-col">
                                    <div class="card" id="InProcrd">
                                        <div class="card-body">
                                            <h6 class="text mb-0" id="acknowledgment">0 <span class="float-right"><i class="feather">
                                                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-book-open"><path d="M2 3h6a4 4 0 0 1 4 4v14a3 3 0 0 0-3-3H2z"></path><path d="M22 3h-6a4 4 0 0 0-4 4v14a3 3 0 0 1 3-3h7z"></path></svg>
                                                    </i></span></h6>
                                            <div class="progress my-2" style="height:1px;"></div>
                                            <p class="mb-0 text small-font">In Progress</p>
                                        </div>
                                    </div>
                                </div>

                                <div class="col card-col">
                                    <div class="card" id="Devpcrd">
                                        <div class="card-body">
                                            <h6 class="text mb-0" id="acknowledgment">0 <span class="float-right"><i class="feather">
                                                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-file-text"><path d="M14 2H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V8z"></path><polyline points="14 2 14 8 20 8"></polyline><line x1="16" y1="13" x2="8" y2="13"></line><line x1="16" y1="17" x2="8" y2="17"></line><polyline points="10 9 9 9 8 9"></polyline></svg>
                                                    </i></span></h6>
                                            <div class="progress my-2" style="height:1px;"></div>
                                            <p class="mb-0 text small-font">Development Pending</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="col card-col">
                                    <div class="card" id="Qacrd">
                                        <div class="card-body">
                                            <h6 class="text mb-0" id="acknowledgment">0 <span class="float-right"><i class="feather">
                                                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-check-square"><polyline points="9 11 12 14 22 4"></polyline><path d="M21 12v7a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V5a2 2 0 0 1 2-2h11"></path></svg>
                                                    </i></span></h6>
                                            <div class="progress my-2" style="height:1px;"></div>
                                            <p class="mb-0 text small-font">QA Pending</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="col card-col">
                                    <div class="card" id="Complcrd">
                                        <div class="card-body">
                                            <h6 class="text mb-0" id="acknowledgment">0 <span class="float-right"><i class="feather">
                                                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-check-circle"><path d="M22 11.08V12a10 10 0 1 1-5.93-9.14"></path><polyline points="22 4 12 14.01 9 11.01"></polyline></svg>
                                                    </i></span></h6>
                                            <div class="progress my-2" style="height:1px;"></div>
                                            <p class="mb-0 text small-font">Completed</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="col card-col">
                                    <div class="card" id="Unsuccrd">
                                        <div class="card-body">
                                            <h6 class="text mb-0" id="acknowledgment">0 <span class="float-right"><i class="feather">
                                                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-x-octagon"><polygon points="7.86 2 16.14 2 22 7.86 22 16.14 16.14 22 7.86 22 2 16.14 2 7.86 7.86 2"></polygon><line x1="15" y1="9" x2="9" y2="15"></line><line x1="9" y1="9" x2="15" y2="15"></line></svg>
                                                    </i></span></h6>
                                            <div class="progress my-2" style="height:1px;"></div>
                                            <p class="mb-0 text small-font">Closed</p>
                                        </div>
                                    </div>
                                </div>
                            </div>


                            <div class="row">
                                <div class="col-12 col-lg-12">
                                    <div class="card" id="tableCard">
                                        <div class="card-body">
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
                                                <button id="addFmrBtn" class="btn btn-sm waves-effect waves-light btn-danger">
                                                    <i class="icon feather icon-plus"></i>Add Ticket
                                                </button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

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
                                                <label for="module" class="col-sm-4 col-form-label allFontByCustomerEdit">Module</label>
                                                <select class="form-control-sm pull-right" id="module-select-systems">  </select>
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
                                        <textarea id="issue"  name="issue" class="form-control" required autocomplete="off"></textarea>
                                    </div>
                                    <div class="row" style="padding-top: 1em;padding-bottom: 1em;">
                                        <div class="col-3">
                                            <label for="comment">Upload Your Attachments Here<span class="text-danger">*</span></label> 
                                        </div>
                                        <div class="col-9">
                                            <div class="row justify-content-end" >

                                                <div class="text">
                                                    <button id="addBtn" class="btn btn-primary btn-sm ">
                                                        <i class="fas fa-plus"></i> Comment
                                                    </button>
                                                </div>

                                            </div>
                                        </div>
                                    </div>

                                    <div class="ttt" >

                                        <div class="table-responsive">
                                            <table class="table table-hover table-bordered m-b-0" id="tbladdAtt" >
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


                                    <div class="card-footer d-flex justify-content-end">
                                        <button id="saveBtn" class="btn btn-sm waves-effect waves-light btn-primary" style="margin-right: 10px"><i class="icon feather icon-save"></i>Save</button>
                                        <button id="closeBtn" class="btn btn-sm btn-danger"><i class="icon feather icon-x-circle"></i>Close</button>                          
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="" id="formSectionView" style="display: none; padding-top: 1rem;">
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
                                                <input id="companyname" type="text" name="company" class="form-control" required autocomplete="off" disabled="">
                                            </div>
                                        </div>
                                        <div class="col">
                                            <div class="form-group">
                                                <label for="ent_by">System<span class="text-danger">*</span></label>
                                                <input id="systemname" type="text" name="system" class="form-control" required autocomplete="off" disabled="">
                                            </div>
                                        </div>
                                        <div class="col">
                                            <div class="form-group">
                                                <label for="ent_by">Module<span class="text-danger">*</span></label>
                                                <input id="modulename" type="text" name="module" class="form-control" required autocomplete="off" disabled="">
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
                                    </div>

                                    <br>
                                    <div class="row" style="padding-bottom: 2em;">
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
                                        <button id="closeBtnin" class="btn btn-sm btn-danger">
                                            <i class="feather icon-x-circle"></i>Close
                                        </button>                                    
                                    </div>

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
            document.getElementById('addBtn').addEventListener('click', function () {
                // Get the table body
                var tableBody = document.querySelector('#tbladdAtt tbody');

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
            const formSectionView = document.getElementById('formSectionView');
            const tableSection = document.getElementById('tableSection');
            const closeBtn = document.getElementById('closeBtn');
            const closeBtnin = document.getElementById('closeBtnin');


            closeBtn.addEventListener('click', function () {
                formSection.style.display = 'none';
                formSectionView.style.display = 'none';
                tableSection.style.display = 'block';
                clearForms();
            });
            closeBtnin.addEventListener('click', function () {
                formSection.style.display = 'none';
                formSectionView.style.display = 'none';
                tableSection.style.display = 'block';
                clearForms();
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
                        deselectLabel: '<span class="red">?</span>'
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
                        deselectLabel: '<span class="red">?</span>'
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
                        deselectLabel: '<span class="red">?</span>'
                    });
            var module = new SlimSelect({
                select: '#module-select-systems',
                placeholder: "Module",
                ajax: function (search, callback) {
                    fetch('company/module-select-systems', {
                        method: 'POST',
                        body: new URLSearchParams({
                            search: search || '',
                            systems: document.querySelector('#company-select-systems').value // Get the selected system value
                        })
                    }).then(res => res.json()).then((data) => {
                        callback(data);
                    });
                },
                allowDeselect: true,
                deselectLabel: '<span class="red">?</span>'
            });

// Ensure module dropdown is cleared when system is changed
            document.querySelector('#company-select-systems').addEventListener('change', function () {
                module.setData([]);
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
                let module = document.getElementById('module-select-systems').value.trim();
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
                if (!module) {
                    Swal.fire('Error!', 'Please select a Module', 'error');
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
                    let comtype = row.querySelector('select[name="type"]').value;
                    if (!comtype) {
                        isValid = false;
                    }
                });

                if (!isValid) {
                    Swal.fire('Error!', 'Please add a comment & Select Comment Type for each entry in the table', 'error');
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
                    let module = document.getElementById('module-select-systems').value;
                    let type = document.getElementById('typeIssue').value;
                    let priority = document.getElementById('prio').value;

                    let tableRows = document.querySelectorAll('#tbladdAtt tbody tr');
                    let attachmentData = [];
                    let formData = new FormData();

                    tableRows.forEach((row, index) => {
                        let comment = row.querySelector('textarea[name="comment"]').value;
                        let comtype = row.querySelector('select[name="type"]').value;

                        // Get the file input element
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

                    let desclist = JSON.stringify(attachmentData);
                    formData.append('desclist', desclist);
                    formData.append('issue', issue);
                    formData.append('system', system);
                    formData.append('module', module);
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
                }
            });



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
            $('#Appcrd').click(function () {
                document.getElementById('tableCard').style.display = 'block';
                stage = 'approve';
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

                    $(action_td).append('<a href="javascript:void(0)" id="update" class="editrec"><i class="fa fa-eye text-info"></i></a>');

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
                                '<hr>';

                        comSection.append(commentHTML);
                    });
                } else {
                    comSection.html('<p>No comments available.</p>');
                }
            }
            $(document).on('click', '.editrec', function () {
                let row = $(this).closest('tr');
                let status = row.data('status');
                let id = row.data('id');

                loadDiv($('#tableSection'));

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
                            $('#companyname').val(d3.comname);
                            $('#systemname').val(d4.sysname);
                            $('#modulename').val(d5.modulename);
                            $('#saveBtnin').data('mode', 'update');
                            $('#saveBtnin').data('id', id);
                            $('#saveBtnin').html('<i class="icon feather icon-save"></i>Update');

                            // Fetch and display comments
                            displayComments(data.videos);

                            $('#formSectionView').fadeIn();
                            $('#tableSection').hide();
                        })
                        .catch(error => {
                            console.error('Error fetching issue details:', error);
                            // Optionally, display an error message to the user
                        })
                        .finally(() => {
                            finishLoadDiv($('#tableSection'));
                        });
            });

        </script>
    </body>



</html>