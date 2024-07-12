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

    </head>
    <body class="bg-theme bg-theme1">

        <div id="wrapper">
            <div class="content-wrapper">
                <div class="container-fluid">
                    <%@include file="jspf/navbar.jspf" %>

                    <div class="row" id="tableSection">

                        <div class="card" >
                            <div class="card-header">
                                <h4>Issue Types</h4>

                            </div>
                            <div class="card-block p-b-0">
                                <div class="table-responsive">
                                    <table class="table table-hover table-bordered m-b-0" id="tblemp">
                                        <thead>
                                            <tr>
                                                <th>Id</th>
                                                <th>Issue Type</th>                                             
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
                                    <button id="addTypeBtn" class="btn btn-sm waves-effect waves-light btn-danger"><i class="icon feather icon-plus"></i>Add Issue Types</button>
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
                                    <h5 class="card-title">Issue Types </h5><br><br>

                                    <div class="form-group">
                                        <label for="inputTime" >Type Name</label>
                                        <input  class="form-control" id="name">
                                    </div>


                                    <div class="card-footer d-flex justify-content-end">
                                        <button id="saveBtn" class="btn btn-sm waves-effect waves-light btn-primary" style="margin-right: 10px"><i class="icon feather icon-save"></i>Save</button>
                                        <button id="closeBtn" class="btn btn-sm btn-danger"><i class="icon feather icon-x-circle"></i>Close</button>                          
                                    </div>


                                </div>
                            </div>
                        </div>
                    </div></div>
                <footer class="footer">
                    <div class="container">
                        <div class="text-center">
                            Copyright © 2024 Aceelution
                        </div>
                    </div>
                </footer>
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
        <!--<script src="assets/js/jquery.loading-indicator.js"></script>-->
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
            const closeBtn = document.getElementById('closeBtn');
            closeBtn.addEventListener('click', function () {
                formSection.style.display = 'none';
                tableSection.style.display = 'block';
                clearForm()
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
                    "url": "type/types",
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
                        $(action_td).append('<a href="javascript:void(0)" class="rerec"><i class="zmdi zmdi-refresh-alt f-w-600 f-16 text-c-blue"></i></a>');
                    } else {
                        $(action_td).append('<a href="javascript:void(0)" style="padding-right: 15px;" class="editrec"><i class="zmdi zmdi-edit f-w-600 f-16 m-r-10 text-c-green"></i></a><a href="javascript:void(0)" class="delrec"><i class="zmdi zmdi-delete f-w-600 f-16 text-danger"></i></a>');
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
                fetch('type/details/' + id)
                        .then(resp => resp.json())
                        .then((data) => {

                            $('#name').val(data.name);
                            $('#saveBtn').data('mode', 'update'); // Set the mode to 'update'
                            $('#saveBtn').data('id', id);
                            $('#saveBtn').html('<i class="icon feather icon-save"></i>Update'); // Change button text to 'Update'
                            $('#formSection').fadeIn();
                            $('#tableSection').hide();
                            finishLoadDiv($('#tableSection'));
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

                if (mode === 'save') {
                    // Handle the 'save' action
                    let fd = new FormData();
                    let name = document.getElementById('name').value;
                    fd.append('name', name);

                    fetch('type/saves', {
                        method: 'POST',
                        body: fd
                    }).then(response => {
                        if (!response.ok) {
                            throw new Error(response.statusText);
                        }
                        return response.json();
                    }).then(data => {
                        Swal.fire('Successful!', 'Type has been successfully saved', 'success');
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

                    let formData = new FormData();
                    formData.append('id', id);
                    formData.append('name', name);

                    $.ajax({
                        url: 'type/updates', // Replace with the actual update endpoint
                        type: 'POST',
                        data: formData,
                        processData: false,
                        contentType: false,
                        success: function (response) {
                            if (response.status === 200) {
                                Swal.fire('Successful!', 'Type details updated successfully', 'success');
                                clearForm();
                                $('#formSection').hide();
                                $('#tableSection').fadeIn();
                                dtable.ajax.reload();
                            } else {
                                Swal.fire('Successful!', 'Type details updated successfully', 'success');
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
                    text: "This Type Will be Deleted!",
                    icon: 'warning',
                    showCancelButton: true,
                    confirmButtonColor: '#3085d6',
                    cancelButtonColor: '#d33',
                    confirmButtonText: 'Yes, Proceed!',
                    showLoaderOnConfirm: true,
                    preConfirm: () => {
                        return fetch('type/deactivate-type', {
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
                            Swal.fire('Successfull!', 'Type has been Deactivated !', 'success');
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
                    text: "Type Will be Activated!",
                    icon: 'warning',
                    showCancelButton: true,
                    confirmButtonColor: '#3085d6',
                    cancelButtonColor: '#d33',
                    confirmButtonText: 'Yes, Proceed!',
                    showLoaderOnConfirm: true,
                    preConfirm: () => {
                        return fetch('type/reactivate-type', {
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
                            Swal.fire('Successfull!', 'Type has been Activated !', 'success');
                            dtable.ajax.reload();
                            $('#formSection').hide();
                            $('#tableSection').fadeIn();
                        }
                    }
                });
            });
            $('#addTypeBtn').click(function () {
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
                document.getElementById('name').value = '';


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