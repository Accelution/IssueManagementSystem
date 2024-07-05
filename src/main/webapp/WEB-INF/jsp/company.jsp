<%--
    Document   : systems
    Created on : Aug 21, 2023, 3:24:58 PM
    Author     : cpm.999cc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8"/>
        <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
        <meta name="description" content=""/>
        <meta name="author" content=""/>
        <title>Accelution</title>
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

        <div id="wrapper">
            <div class="content-wrapper">
                <div class="container-fluid">
                    <%@include file="jspf/navbar.jspf" %>

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
                                                <input link="text" class="form-control" id="name">
                                            </div>
                                            <div class="form-group" style="padding-left: 10px;">
                                                <label for="inputTime" >Company Email</label>
                                                <input link="text" class="form-control" id="email">
                                            </div>
                                            <div class="form-group" style="padding-left: 10px;">
                                                <label for="inputTime" >Contact Number</label>
                                                <input link="text" class="form-control" id="contact">
                                            </div>
                                            <div class="form-group" style="padding-left: 10px;">
                                                <label for="inputTime" >Contact Name</label>
                                                <input link="text" class="form-control" id="con_name">
                                            </div>
                                            <div class="form-group" style="padding-left: 10px;">
                                                <label for="inputTime" >Contact Email</label>
                                                <input link="text" class="form-control" id="con_email">
                                            </div>

                                        </div>
                                        <div class="col" >
                                            <div class="pages"  id="pg">
                                                <label for="name">Access Systems<span class="text-danger">*</span></label>
                                                <div id="systems" >
                                                </div>
                                            </div>

                                        </div>

                                    </div>


                                    <div class="card-footer d-flex justify-content-end">
                                        <button id="saveBtn" class="btn btn-sm waves-effect waves-light btn-primary"><i class="icon feather icon-save"></i>Save</button>
                                    </div>


                                </div>
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
        <script type="text/javascript" src="files/js/slimselect.js"></script>
        <script type="text/javascript" src="files/js/datatables.min.js"></script>
        <script type="text/javascript" src="files/js/sweetalert2.js"></script>
        <script type="text/javascript" src="files/js/func.js"></script>
        <script type="text/javascript" src="files/js/autoNumeric.js"></script>
        <script type="text/javascript" src="files/js/dataTables.responsive.min.js"></script>
        <script type="text/javascript" src="files/js/jquery.highlight.js"></script>
        <script type="text/javascript" src="files/js/dataTables.searchHighlight.min.js"></script>

        <script>
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
                        $(action_td).append('<a href="javascript:void(0)" class="rerec"><i class="feather icon-refresh-cw f-w-600 f-16 text-c-blue"></i></a>');
                    } else {
                        $(action_td).append('<a href="javascript:void(0)" id="update" class="editrec"><i class="icon feather icon-edit f-w-600 f-16 m-r-10 text-c-green"></i></a><a href="javascript:void(0)" class="delrec"><i class="feather icon-trash-2 f-w-600 f-16 text-danger"></i></a>');
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
                        });
            });

            document.getElementById('saveBtn').addEventListener('click', function () {
                let saveBtn = document.getElementById('saveBtn');
                if ($('#name').val().trim() === '') {
                    Swal.fire("Empty Name!", "Please Enter a Valid Name!", "warning");
                    return;
                }

                // Disable the button to prevent multiple clicks
                saveBtn.disabled = true;
                let mode = $('#saveBtn').data('mode'); // Get the mode (save or update) from the button's data

                let checkedSystems = [];
                $('input[name="systems"]:checked').each(function () {
                    checkedSystems.push($(this).val());
                });
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
                        clearForm();
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
                                clearForm();
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