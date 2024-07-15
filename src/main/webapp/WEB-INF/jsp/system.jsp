

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
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
                    <%@include file="jspf/navbar.jspf" %>

                    <div class="container-fluid">
                        <div class="row" id="tableSection">

                            <div class="card" >

                                <div class="card-block p-b-0">

                                    <div class="table-responsive">
                                        <table class="table table-hover table-bordered m-b-0" id="tbll">
                                            <thead>
                                                <tr>

                                                    <th>Id</th>
                                                    <th>System Name</th>
                                                    <th>Entered On</th>
                                                    <th>Entered By</th>
                                                    <th>Mod On</th>
                                                    <th>Mod By</th>
                                                    <th style="width:1px;">Status</th>
                                                    <th style="width:1px;">Action</th>
                                                </tr>
                                            </thead>
                                            <tbody>

                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                                <div class="card-footer">
                                    <div class="text-right">
                                        <button id="addSystemBtn" class="btn btn-sm waves-effect waves-light btn-danger"><i class="icon feather icon-plus"></i>Add System</button>
                                    </div>
                                </div>
                            </div>

                        </div>
                        <div class="" id="formSection" style="display: none">
                            <div class="card">
                                <div class="card-block p-b-0" style="padding:2em">

                                    <div class="row">
                                        <div class="form-group">
                                            <label for="system">Please Add Your System Name Here<span class="text-danger">*</span></label>
                                            <input id="system" type="text" name="system" class="form-control"  required autocomplete="off">
                                        </div>
                                    </div>
                                    <br>
                                    <div class="col">
                                        <div class="card" >
                                            <div class="ttt" >
                                                <div class="table-responsive">
                                                    <table class="table table-hover table-bordered m-b-0" id="tbladdAtt" >
                                                        <thead>
                                                            <tr>
                                                                <th>Module Name</th>
                                                                <th style="width:1px;">Action</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            <!-- Your table body content goes here -->
                                                        </tbody>
                                                    </table>
                                                </div>

                                            </div>
                                            <div class="card-footer">
                                                <div class="text-right">
                                                    <button id="addBtn" class="btn btn-sm waves-effect waves-light btn-primary"><i class="icon feather icon-plus"></i>Add Module</button>
                                                </div>
                                            </div>
                                        </div>


                                    </div>

                                    <div class="card-footer d-flex justify-content-end">
                                        <button id="saveBtn" class="btn btn-sm waves-effect waves-light btn-success" style="margin-right: 10px"><i class="icon feather icon-save"></i>Save</button>
                                        <button id="closeBtn" class="btn btn-sm btn-danger"><i class="icon feather icon-x-circle"></i>Close</button>                          
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
            const closeBtn = document.getElementById('closeBtn');
            closeBtn.addEventListener('click', function () {
                formSection.style.display = 'none';
                tableSection.style.display = 'block';
                clearForms()
            });


            // Function to handle the "Add Attachment" button click
            document.getElementById('addBtn').addEventListener('click', function () {
                // Get the table body
                var tableBody = document.querySelector('#tbladdAtt tbody');

                // Create a new row
                var newRow = tableBody.insertRow();

                // Create cells in the new row
                var systemNameCell = newRow.insertCell(0);
                var actionCell = newRow.insertCell(1);

                // Create input for "File Name" in cell 1
                var systemNameInput = document.createElement('input');
                systemNameInput.type = 'text';
                systemNameInput.name = 'systemName';
                systemNameInput.classList.add('form-control');
                systemNameInput.required = true;
                systemNameInput.autocomplete = 'off';


                // Append input elements to respective cells
                systemNameCell.appendChild(systemNameInput);

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
                addAttachmentRow(systemNameInput.value);
            });

            function clearForms() {
                // Clear System Members Name input
                document.getElementById('system').value = '';

                // Clear table rows
                var tableBody = document.querySelector('#tbladdAtt tbody');
                tableBody.innerHTML = '';
            }
            $(document).ready(function () {
                // Add click event handler to both close buttons
                $('#closeButton2').click(function () {
                    $('#formSection').hide();
                    $('#tableSection').fadeIn();
                    clearForms();

                });
            });
        </script>

        <script>



            $.fn.dataTable.ext.errMode = 'none';
            var dtable = $('#tbll').DataTable({
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
                    "url": "system/system-content",
                    "contentType": "application/json",
                    "type": "POST",
                    "data": function (d) {
                        return JSON.stringify(d);
                    },
                    error: function (xhr, error, code) {
                        console.log(xhr);
                        console.log(code);
                    }
                },
                "columns": [
                    {"data": "id", className: "text-right", "visible": false},
                    {"data": "system"},
                    {"data": "ent_on"},
                    {"data": "ent_by"},
                    {"data": "mod_on"},
                    {"data": "mod_by"},
                    {"data": "status"}
                ], "language": {
                    'loadingRecords': '&nbsp;',
                    'processing': '<div class="loader2"></div>'
                },
                "createdRow": function (row, data) {
                    let action_td = document.createElement('td');
                    $(action_td).addClass('text-center');
                    if (data['status'] === 'deactivate') {
                        $(action_td).append('<a href="javascript:void(0)" class="rerec"><i class="fas fa-check  text-success"></i></a>');
                    } else {
                        $(action_td).append('<a href="javascript:void(0)" style="padding-right: 15px;" class="editrec"><i class="far fa-edit text-c-green"></i></a><a href="javascript:void(0)" class="delrec"><i class="far fa-trash-alt f-w-600 f-16 text-danger"></i></a>');
                    }

                    $(row).append(action_td);
                    setTableStatus($(row).find('td').eq(5));
                    $(row).data('id', data['id']);
                }
            });
            function setTableStatus(td) {
                if ($(td).html().trim().startsWith('active')) {
                    $(td).html('<label class="label label-success" style="white-space: nowrap">Active</label>');
                } else if ($(td).html() === 'deactivate') {
                    $(td).html('<label class="label label-danger" style="white-space: nowrap">Deactivated</label>');
                }
            }

            $(document).on('click', '.delrec', function () {
                let id = $(this).parents('tr').data('id');
                Swal.fire({
                    title: 'Are you sure?',
                    text: "This System Members Will be Deleted!",
                    icon: 'warning',
                    showCancelButton: true,
                    confirmButtonColor: '#3085d6',
                    cancelButtonColor: '#d33',
                    confirmButtonText: 'Yes, Proceed!',
                    showLoaderOnConfirm: true,
                    preConfirm: () => {
                        return fetch('system/deactivate-content', {
                            method: 'POST',
                            body: new URLSearchParams({
                                id: id
                            })
                        }).then(response => {
                            if (!response.ok) {
                                throw new Error(response.statusText);
                            }
                            return response.json();
                        }).catch(error => {
                            Swal.showValidationMessage('Request failed:' + error);
                        });
                    },
                    allowOutsideClick: () => !Swal.isLoading()

                }).then((result) => {
                    if (result.value) {
                        if (result.value.status !== 200) {
                            Swal.fire('Error!', result.value.msg, 'error');
                        } else {
                            Swal.fire('Successfull!', 'System Members has been Deactivated !', 'success');
                            dtable.ajax.reload();
                            $('#formSection').hide();
                            $('#tableSection').fadeIn();
                        }
                    }
                });
            });
            $(document).on('click', '.rerec', function () {
                let id = $(this).parents('tr').data('id');
                Swal.fire({
                    title: 'Are you sure?',
                    text: "System Members Will be Activated!",
                    icon: 'warning',
                    showCancelButton: true,
                    confirmButtonColor: '#3085d6',
                    cancelButtonColor: '#d33',
                    confirmButtonText: 'Yes, Proceed!',
                    showLoaderOnConfirm: true,
                    preConfirm: () => {
                        return fetch('system/reactivate-content', {
                            method: 'POST',
                            body: new URLSearchParams({
                                id: id
                            })
                        }).then(response => {
                            if (!response.ok) {
                                throw new Error(response.statusText);
                            }
                            return response.json();
                        }).catch(error => {
                            Swal.showValidationMessage('Request failed:' + error);
                        });
                    },
                    allowOutsideClick: () => !Swal.isLoading()

                }).then((result) => {
                    if (result.value) {
                        if (result.value.status !== 200) {
                            Swal.fire('Error!', result.value.msg, 'error');
                        } else {
                            Swal.fire('Successfull!', 'System Members has been Activated !', 'success');
                            dtable.ajax.reload();
                            $('#formSection').hide();
                            $('#tableSection').fadeIn();
                        }
                    }
                });
            });
            $('#addSystemBtn').click(function () {
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
            function clearForm() {
                $('#formSection').find('input[type!=search]').val('');
                $('#formSection').find('textarea').val('');
                $('#formSection').find('select').each(function () {
                    if ($(this).data('select')) {
                        if ($(this).data('select').ajax) {
                            $(this).data('select').data.data = [];
                        }
                        $(this).data('select').set('');
                    }
                });
            }

            var deleted = [];

            function clearForms() {
                // Clear System Members Name input
                deleted = [];
                document.getElementById('system').value = '';

                // Clear table rows
                var tableBody = document.querySelector('#tbladdAtt tbody');
                tableBody.innerHTML = '';
            }
            $(document).on('click', '.editrec', function () {
                loadDiv($('#tableSection'));
                let id = $(this).parents('tr').data('id');

                // Fetch system and attachment details
                fetch('system/content-details/' + id)
                        .then(resp => resp.json())
                        .then((resp) => {
                            let content = resp.data.content;
                            $('#system').val(content.system);
                            let attachments = resp.data.videos;


                            // Clear existing rows in the attachment table
                            $('#tbladdAtt tbody').empty();

                            // Populate the attachment table with fetched data
                            attachments.forEach((attachment) => {
                                // Get the table body
                                var tableBody = document.querySelector('#tbladdAtt tbody');

                                // Create a new row
                                var newRow = tableBody.insertRow();

                                // Create cells in the new row
                                var systemNameCell = newRow.insertCell(0);
                                var actionCell = newRow.insertCell(1);

                                // Set the text content of the cells with the fetched values
                                systemNameCell.textContent = attachment.name;

                                // Create a delete button in the action cell
                                var deleteButton = document.createElement('button');
                                deleteButton.classList.add('btn', 'btn-sm', 'btn-danger');
                                deleteButton.textContent = 'Remove';

                                // Add a click event listener to the delete button
                                let videoId = attachment.id;
                                deleteButton.addEventListener('click', function () {

                                    deleted.push(videoId + "");

                                    // Remove the row when the delete button is clicked
                                    tableBody.removeChild(newRow);
                                });

                                // Append the delete button to the action cell
                                actionCell.appendChild(deleteButton);
                            });

                            // Show the form section
                            $('#saveBtn').data('mode', 'update');
                            $('#saveBtn').data('id', id);
                            $('#saveBtn').html('<i class="icon feather icon-save"></i>Update');
                            $('#formSection').fadeIn();
                            $('#tableSection').hide();
                            finishLoadDiv($('#tableSection'));

                        });
            });



            function handleAttachmentDeletion() {
                let deleteIds = [];

                $('#tbladdAtt').on('click', '.btn-danger', function () {
                    let deleteRowId = $(this).closest('tr').attr('id');
                    deleteIds.push(deleteRowId);
                    $(this).closest('tr').remove();
                });

                return deleteIds;
            }

            document.getElementById('saveBtn').addEventListener('click', function () {

                if ($('#system').val().trim() === '') {
                    Swal.fire("Empty System!", "Please Enter a Valid System!", "warning");
                    return;
                }

                let mode = $('#saveBtn').data('mode');
                if (mode === 'save') {



                    let system = document.getElementById('system').value;

                    let tableRows = document.querySelectorAll('#tbladdAtt tbody tr');
                    if (tableRows.length === 0) {
                        Swal.fire('Error!', 'System must have at least one Module', 'error');
                        return;
                    }
                    let attachmentData = [];
                    let formData = {};

                    let i = 1;
                    tableRows.forEach((row, index) => {
                        let systemNameInput = row.querySelector('input[name="systemName"]');
                        if (!systemNameInput || systemNameInput.value.trim() === '') {
                            Swal.fire('Error!', 'Module must not be empty', 'error');
                            // Handle the error condition if needed
                            return;
                        }
                        let systemNameValue = systemNameInput.value; // Get the value from the input field
                        attachmentData.push({
                            name: systemNameValue // Push the value to your attachmentData array
                        });
                    });
                    let desclist = JSON.stringify(attachmentData);

                    formData.desclist = desclist;
                    formData.system = system;



                    fetch('system/save-attachment', {
                        method: 'POST',
                        body: new URLSearchParams(formData)
                    }).then(response => {
                        if (!response.ok) {
                            throw new Error(response.statusText);
                        } else {
                            Swal.fire('Successful!', 'System has been successfully saved', 'success');
                            clearForms();
                            $('#formSection').hide();
                            $('#tableSection').fadeIn();
                            $('#navTab').fadeIn();
                            dtable.ajax.reload();
                            clearForms();
                        }
                        return response.json();
                    });
                } else if (mode === 'update') {
                    let system = document.getElementById('system').value;
                    let id = $('#saveBtn').data('id');

                    let deleteIds = handleAttachmentDeletion();
                    let tableRows = document.querySelectorAll('#tbladdAtt tbody tr');
                    let attachmentData = [];

                    let formData = {};

                    tableRows.forEach((row, index) => {
                        let systemNameInput = row.querySelector('input[name="systemName"]');
                        if (!systemNameInput || systemNameInput.value.trim() === '') {
                            Swal.fire('Error!', 'Module must not be empty', 'error');
                            // Handle the error condition if needed
                            return;
                        }
                        let systemNameValue = systemNameInput.value; // Get the value from the input field
                        attachmentData.push({
                            name: systemNameValue // Push the value to your attachmentData array
                        });
                    });

                    let desclist = JSON.stringify(attachmentData);

                    formData.desclist = desclist;
                    formData.id = id;
                    formData.system = system;
                    formData.deleteIds = JSON.stringify(deleted);

                    fetch('system/update-attachment', {
                        method: 'POST',
                        body: new URLSearchParams(formData)
                    }).then(response => {
                        if (!response.ok) {
                            throw new Error(response.statusText);
                        } else {
                            Swal.fire('Successful!', 'System details updated successfully', 'success');
                            clearForms();
                            $('#formSection').hide();
                            $('#tableSection').fadeIn();
                            $('#navTab').fadeIn();
                            dtable.ajax.reload();
                        }
                        return response.json();
                    }).catch(error => {
                        console.error('Error updating unit details:', error);
                        Swal.fire('Error!', 'Failed to update System Members details', 'error');
                    });
                }



            });

        </script>
    </body>
</html>


