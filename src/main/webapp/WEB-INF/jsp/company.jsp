<%--
    Document   : systems
    Created on : Aug 21, 2023, 3:24:58?PM
    Author     : cpm.999cc
--%>

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
                    <%@include file="jspf/navbar.jspf" %>

                    <div class="container-fluid">
                        <div class="row" id="tableSection">

                            <div class="card" >
                                <div class="card-header">
                                    <h4>Companies</h4>

                                </div>
                                <div class="card-block p-b-0">
                                    <div class="table-responsive">
                                        <table class="table table-hover table-bordered m-b-0" id="tblemp">
                                            <thead>
                                                <tr>
                                                    <th>Id</th>
                                                    <th>Company Name</th>
                                                    <th>Ent On</th>
                                                    <th>Ent By</th>
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
                                        <button id="addCompanyBtn" class="btn btn-sm waves-effect waves-light btn-danger"><i class="icon feather icon-plus"></i>Add Company</button>
                                    </div>
                                </div>

                            </div>

                        </div>
                        <div class="" id="formSection" style="display: none">
                            <div class="card" style="width: 80%;">
                                <div class="card-block p-b-0">
                                    <div class="card-header">
                                        <div class="card-header-right">
                                            <ul class="list-unstyled card-option">
                                                <li><i class="feather icon-x cls-card"></i></li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="card-body" style=" padding-bottom: 0px;" >
                                        <div class="row">
                                            <div class="col">

                                                <div class="form-group" style="padding-left: 10px;">
                                                    <label for="inputTime" >Company Name</label>
                                                    <input class="form-control" id="name">
                                                </div>
                                                <div class="form-group" style="padding-left: 10px;">
                                                    <label for="inputTime" >Company Email</label>
                                                    <input  class="form-control" id="email">
                                                </div>
                                                <div class="form-group" style="padding-left: 10px;">
                                                    <label for="inputTime" >Contact Number</label>
                                                    <input  class="form-control" id="contact">
                                                </div>
                                                <div class="form-group" style="padding-left: 10px;">
                                                    <label for="inputTime" >Contact Name</label>
                                                    <input  class="form-control" id="con_name">
                                                </div>
                                                <div class="form-group" style="padding-left: 10px;">
                                                    <label for="inputTime" >Contact Email</label>
                                                    <input  class="form-control" id="con_email">
                                                </div>

                                            </div>
                                            <div class="col" >
                                                <div class="pages"  id="pg">
                                                    <label for="name">Access Systems<span class="text-danger">*</span></label>
                                                    <div id="systems" >
                                                    </div>
                                                </div>


                                            </div>
                                            <div class="col" >

                                                <div class="form-group" style="padding-left: 10px;">
                                                    <label for="departments">Access Departments<span class="text-danger">*</span></label>
                                                    <div id="departments"></div>
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
                clearForms();
            });




            $.fn.dataTable.ext.errMode = 'none';

            var dtable = $('#tblemp').DataTable({
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
                    "url": "company/companys",
                    "type": "POST",
                    "contentType": "application/json",
                    "data": function (d) {
                        return JSON.stringify(d);
                    },
                    error: function (xhr, error, code) {
                        console.log(xhr);
                        console.log(code);
                    }
                },
                "columns": [
                    {"data": "id", "className": "text-right", "visible": false},
                    {"data": "name"},
                    {"data": "ent_on"},
                    {"data": "ent_by"},
                    {"data": "mod_on"},
                    {"data": "mod_by"},
                    {"data": "status"}
                ],
                "language": {
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
                    // Assuming setTableStatus is defined elsewhere
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




        </script>
        <script>

            $(document).on('click', '.editrec', function () {
                loadDiv($('#tableSection'));
                let id = $(this).parents('tr').data('id');
                fetch('company/details/' + id)
                        .then(resp => resp.json())
                        .then((data) => {
                            $('#name').val(data.name);
                            $('#email').val(data.email);
                            $('#contact').val(data.contact);
                            $('#con_name').val(data.con_name);
                            $('#con_email').val(data.con_email);
                            $('#saveBtn').data('mode', 'update'); // Set the mode to 'update'
                            $('#saveBtn').data('id', id);
                            $('#saveBtn').html('<i class="icon feather icon-save"></i>Update'); // Change button text to 'Update'
                            $('#formSection').fadeIn();
                            $('#tableSection').hide();
                            finishLoadDiv($('#tableSection'));

                            // Fetch systems data from server
                            fetch('system/attach-content')
                                    .then(response => response.json())
                                    .then(systemsData => {
                                        // Clear previous checkboxes if any
                                        $('#systems').empty();

                                        // Iterate over fetched data and create checkboxes
                                        systemsData.forEach(system => {
                                            // Create a checkbox element
                                            let checkbox = $('<input type="checkbox">')
                                                    .attr('id', 'system_' + system.id) // Set unique id for each checkbox
                                                    .attr('name', 'systems') // Set common name for checkboxes if needed
                                                    .val(system.id); // Set value of checkbox, e.g., system id

                                            // Check the checkbox if the system is part of the company systems
                                            if (data.systems.includes(system.id)) {
                                                checkbox.prop('checked', true);
                                            }

                                            // Create a label for the checkbox
                                            let label = $('<label>').text(system.system).prepend(checkbox);

                                            // Append the label (with checkbox) to the systems div
                                            $('#systems').append(label).append('<br>'); // Add a line break for better spacing
                                        });
                                    })
                                    .catch(error => {
                                        console.error('Error fetching systems:', error);
                                        // Handle error if needed
                                    });

                            // Fetch departments data from server
                            fetch('department/department-load')
                                    .then(response => response.json())
                                    .then(departmentsData => {
                                        // Clear previous checkboxes if any
                                        $('#departments').empty();

                                        // Iterate over fetched data and create checkboxes
                                        departmentsData.forEach(department => {
                                            // Create a checkbox element
                                            let checkbox = $('<input type="checkbox">')
                                                    .attr('id', 'department_' + department.id) // Set unique id for each checkbox
                                                    .attr('name', 'departments') // Set common name for checkboxes if needed
                                                    .val(department.id); // Set value of checkbox, e.g., department id

                                            // Check the checkbox if the department is part of the company departments
                                            if (data.departments.includes(department.id)) {
                                                checkbox.prop('checked', true);
                                            }

                                            // Create a label for the checkbox
                                            let label = $('<label>').text(department.department).prepend(checkbox);

                                            // Append the label (with checkbox) to the departments div
                                            $('#departments').append(label).append('<br>'); // Add a line break for better spacing
                                        });
                                    })
                                    .catch(error => {
                                        console.error('Error fetching departments:', error);
                                        // Handle error if needed
                                    });
                        });
            });

            function clearForms() {
                document.getElementById('name').value = '';
                document.getElementById('email').value = '';
                document.getElementById('contact').value = '';
                document.getElementById('con_name').value = '';
                document.getElementById('con_email').value = '';
                $('input[name="systems"]').prop('checked', false);
                $('input[name="departments"]').prop('checked', false);
            }


            document.getElementById('saveBtn').addEventListener('click', function () {
                let saveBtn = document.getElementById('saveBtn');
                if ($('#name').val().trim() === '') {
                    Swal.fire("Empty Name!", "Please Enter a Valid Name!", "warning");
                    return;
                }
                if ($('#email').val().trim() === '') {
                    Swal.fire("Empty Email!", "Please Enter a Valid Email!", "warning");
                    return;
                }
                if ($('#contact').val().trim() === '') {
                    Swal.fire("Empty Contact Number!", "Please Enter a Valid Contact Number!", "warning");
                    return;
                }
                if ($('#con_name').val().trim() === '') {
                    Swal.fire("Empty Contact Name!", "Please Enter a Valid Contact Name!", "warning");
                    return;
                }
                if ($('#con_email').val().trim() === '') {
                    Swal.fire("Empty Contact Email!", "Please Enter a Valid Contact Email!", "warning");
                    return;
                }

                let checkedSystems = [];
                $('input[name="systems"]:checked').each(function () {
                    checkedSystems.push($(this).val());
                });
                if (checkedSystems.length === 0) {
                    Swal.fire("No Systems Selected!", "Please Select at Least One System!", "warning");
                    return;
                }

                let checkedDepartments = [];
                $('input[name="departments"]:checked').each(function () {
                    checkedDepartments.push($(this).val());
                });
                if (checkedDepartments.length === 0) {
                    Swal.fire("No Departments Selected!", "Please Select at Least One Department!", "warning");
                    return;
                }

                // Disable the button to prevent multiple clicks
                saveBtn.disabled = true;
                let mode = $('#saveBtn').data('mode'); // Get the mode (save or update) from the button's data

                let fd = new FormData();
                let name = document.getElementById('name').value;
                fd.append('name', name);
                let email = document.getElementById('email').value;
                fd.append('email', email);
                let contact = document.getElementById('contact').value;
                fd.append('contact', contact);
                let con_name = document.getElementById('con_name').value;
                fd.append('con_name', con_name);
                let con_email = document.getElementById('con_email').value;
                fd.append('con_email', con_email);
                fd.append('checkedSystems', JSON.stringify(checkedSystems)); // Send the checked systems as JSON string
                fd.append('checkedDepartments', JSON.stringify(checkedDepartments)); // Send the checked departments as JSON string

                if (mode === 'save') {
                    // Handle the 'save' action
                    fetch('company/saves', {
                        method: 'POST',
                        body: fd
                    }).then(response => {
                        if (!response.ok) {
                            throw new Error(response.statusText);
                        }
                        return response.json();
                    }).then(data => {
                        Swal.fire('Successful!', 'Company has been successfully saved', 'success');
                        clearForms();
                        $('#formSection').hide();
                        $('#tableSection').fadeIn();
                        dtable.ajax.reload();
                    }).catch(error => {
                        console.error('Error:', error);
                        Swal.fire('Error', 'Failed to save form', 'error');
                    }).finally(() => {
                        saveBtn.disabled = false; // Re-enable the button after the request completes
                    });
                } else if (mode === 'update') {
                    // Handle the 'update' action
                    let id = $('#saveBtn').data('id');
                    let name = $('#name').val();
                    let email = $('#email').val();
                    let contact = $('#contact').val();
                    let con_name = $('#con_name').val();
                    let con_email = $('#con_email').val();

                    let formData = new FormData();
                    formData.append('id', id);
                    formData.append('name', name);
                    formData.append('email', email);
                    formData.append('contact', contact);
                    formData.append('con_name', con_name);
                    formData.append('con_email', con_email);
                    formData.append('checkedSystems', JSON.stringify(checkedSystems)); // Send the checked systems as JSON string
                    formData.append('checkedDepartments', JSON.stringify(checkedDepartments)); // Send the checked departments as JSON string

                    $.ajax({
                        url: 'company/updates', // Replace with the actual update endpoint
                        type: 'POST',
                        data: formData,
                        processData: false,
                        contentType: false, // Corrected from contentCompany
                        success: function (response) {
                            if (response.status === 200) {
                                Swal.fire('Successful!', 'Company details updated successfully', 'success');
                                clearForm();
                                $('#formSection').hide();
                                $('#tableSection').fadeIn();
                                dtable.ajax.reload();
                            } else {
                                Swal.fire('Successful!', 'Company details updated successfully', 'success');
                                clearForms();
                                $('#formSection').hide();
                                $('#tableSection').fadeIn();
                                dtable.ajax.reload();
                            }
                        },
                        error: function (xhr, status, error) {
                            console.log(xhr);
                            console.log(status);
                            console.log(error);
                            Swal.fire('Error!', 'Failed to update form details', 'error');
                        },
                        complete: function () {
                            saveBtn.disabled = false; // Re-enable the button after the request completes
                        }
                    });
                }

            });




            $(document).on('click', '.delrec', function () {
                let id = $(this).parents('tr').data('id');
                Swal.fire({
                    title: 'Are you sure?',
                    text: "This Company Will be Deleted!",
                    icon: 'warning',
                    showCancelButton: true,
                    confirmButtonColor: '#3085d6',
                    cancelButtonColor: '#d33',
                    confirmButtonText: 'Yes, Proceed!',
                    showLoaderOnConfirm: true,
                    preConfirm: () => {
                        return fetch('company/deactivate-company', {
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
                            Swal.fire('Successfull!', 'Company has been Deactivated !', 'success');
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
                    text: "Company Will be Activated!",
                    icon: 'warning',
                    showCancelButton: true,
                    confirmButtonColor: '#3085d6',
                    cancelButtonColor: '#d33',
                    confirmButtonText: 'Yes, Proceed!',
                    showLoaderOnConfirm: true,
                    preConfirm: () => {
                        return fetch('company/reactivate-company', {
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
                            Swal.fire('Successfull!', 'Company has been Activated !', 'success');
                            dtable.ajax.reload();
                            $('#formSection').hide();
                            $('#tableSection').fadeIn();
                        }
                    }
                });
            });
            $('#addCompanyBtn').click(function () {
                $('#saveBtn').data('mode', 'save');
                $('#saveBtn').html('<i class="icon feather icon-save"></i>Save');
                clearForm();
                $('#tableSection').hide();
                $('#formSection').fadeIn();

                // Fetch systems data from server
                fetch('system/attach-content')  // Replace 'system/attach-content' with your actual endpoint URL
                        .then(response => response.json())
                        .then(systemsData => {
                            // Clear previous checkboxes if any
                            $('#systems').empty();

                            // Iterate over fetched data and create checkboxes
                            systemsData.forEach(system => {
                                // Create a row for each system
                                let row = $('<div>').addClass('row mb-2');

                                // Create a column for checkbox
                                let checkboxCol = $('<div>').addClass('col-auto');
                                let checkbox = $('<input type="checkbox">')
                                        .attr('id', 'system_' + system.id)  // Set unique id for each checkbox
                                        .attr('name', 'systems')  // Set common name for checkboxes if needed
                                        .val(system.id);  // Set value of checkbox, e.g., system id
                                checkboxCol.append(checkbox);

                                // Create a column for system name
                                let systemCol = $('<div>').addClass('col');
                                let label = $('<label>').addClass('ml-2').text(system.system);
                                systemCol.append(label);

                                // Append checkbox and system name to the row
                                row.append(checkboxCol).append(systemCol);

                                // Append the row to the systems div
                                $('#systems').append(row);
                            });
                        })
                        .catch(error => {
                            console.error('Error fetching systems:', error);
                            // Handle error if needed
                        });

                // Fetch departments data from server
                fetch('department/department-load')  // Replace 'company/departments' with your actual endpoint URL
                        .then(response => response.json())
                        .then(departmentsData => {
                            // Clear previous checkboxes if any
                            $('#departments').empty();

                            // Iterate over fetched data and create checkboxes
                            departmentsData.forEach(department => {
                                // Create a row for each department
                                let row = $('<div>').addClass('row mb-2');

                                // Create a column for checkbox
                                let checkboxCol = $('<div>').addClass('col-auto');
                                let checkbox = $('<input type="checkbox">')
                                        .attr('id', 'department_' + department.id)  // Set unique id for each checkbox
                                        .attr('name', 'departments')  // Set common name for checkboxes if needed
                                        .val(department.id);  // Set value of checkbox, e.g., department id
                                checkboxCol.append(checkbox);

                                // Create a column for department name
                                let departmentCol = $('<div>').addClass('col');
                                let label = $('<label>').addClass('ml-2').text(department.department);
                                departmentCol.append(label);

                                // Append checkbox and department name to the row
                                row.append(checkboxCol).append(departmentCol);

                                // Append the row to the departments div
                                $('#departments').append(row);
                            });
                        })
                        .catch(error => {
                            console.error('Error fetching departments:', error);
                            // Handle error if needed
                        });
            });




            $('.cls-card').click(function () {
                $('#formSection').hide();
                $('#tableSection').fadeIn();
            });
            function clearForm() {
                $('#formSection').find('input[link!=search]').val('');
                $('#formSection').find('input[link!=search]').val('');
                $('#formSection').find('select').each(function () {
                    if ($(this).data('select')) {
                        if ($(this).data('select').ajax) {
                            $(this).data('select').data.data = [];
                        }
                        $(this).data('select').set('');
                    }
                });
            }









            $.fn.dataTable.Debounce = function (table) {
                var tableId = table.settings()[0].sTableId;
                $('.dataTables_filter input[aria-controls="' + tableId + '"]')
                        .unbind()
                        .bind('input', (delay(function (e) {
                            table.search($(this).val()).draw();
                            return;
                        }, 500)));
            };
            function delay(callback, ms) {
                var timer = 0;
                return function () {
                    var context = this, args = arguments;
                    clearTimeout(timer);
                    timer = setTimeout(function () {
                        callback.apply(context, args);
                    }, ms || 0);
                };
            }

            var debounce = new $.fn.dataTable.Debounce(dtable);

        </script>






    </body>
</html>