
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
        <title>Accelution - TMS</title>
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
    </head>
    <body class="bg-theme bg-theme1">

        <div id="wrapper">
            <div class="content-wrapper">
                <div class="container-fluid">
                    <%@include file="jspf/navbar.jspf" %>


                    <div class="row" id="tableSection">


                        <div class="card">
                            <div class="card-header">
                                <h4>Users</h4>
                                <div class="card-header-right">
                                    <ul class="list-unstyled card-option">
                                        <li><i class="feather icon-maximize full-card"></i></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="card-block p-b-0">
                                <div class="table-responsive">
                                    <table class="table table-hover table-bordered m-b-0" id="tbll">
                                        <thead>
                                            <tr>
                                                <th>Id</th>
                                                <th>Username</th>
                                                <th>User</th>

                                                <th>Ent On</th>
                                                <th>Ent By</th>
                                                <th>User Type</th>
                                                <th>Company</th>
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
                                    <button id="addUserBtn" class="btn btn-sm waves-effect waves-light btn-danger"><i class="icon feather icon-plus"></i>Add User</button>
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



                                <div class="form-group">
                                    <label for="name">Name<span class="text-danger">*</span></label>
                                    <input id="name" type="text" name="name" class="form-control"  required autocomplete="off">
                                </div>

                                <div class="form-group">
                                    <label for="username">Username<span class="text-danger">*</span></label>
                                    <input id="username"  type="text" name="username" class="form-control" required autocomplete="off">
                                </div>
                                <div class="row">
                                    <div class="col">
                                        <div class="form-group">
                                            <label for="user_type">User Type<span class="text-danger">*</span></label>
                                            <select id="user_type" name="user_type" class="" required autocomplete="off">
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col">
                                        <div class="form-group">
                                            <label for="company">Company<span class="text-danger">*</span></label>
                                            <select id="company" name="company" class="" required autocomplete="off">
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col">
                                        <div class="form-group" style="padding-bottom: 2rem">
                                            <label for="company">Dashboard<span class="text-danger">*</span></label>
                                            <select class="form-control-sm pull-right" id="dashboard">  </select>
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
                    <footer class="footer">
                        <div class="container">
                            <div class="text-center">
                                Copyright © 2024 Aceelution
                            </div>
                        </div>
                    </footer>
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

            var typeIssue = new SlimSelect(
                    {select: '#dashboard',
                        placeholder: "Select Dashboard",
                        ajax: function (search, callback) {
                            fetch('admin/dashbaord-type', {
                                method: 'POST',
                                body: new URLSearchParams({search: search || ''})
                            }).then(res => res.json()).then((data) => {
                                callback(data);
                            });
                        },
                        allowDeselect: true,
                        deselectLabel: '<span class="red">✖</span>'
                    });
            var dptmnt = new SlimSelect({
                select: '#company',
                placeholder: "Company",
                ajax: function (search, callback) {
                    fetch('company/company-select', {
                        method: 'POST',
                        body: new URLSearchParams({search: search || ''})
                    }).then(res => res.json()).then((data) => {
                        callback(data);
                    });
                },
                allowDeselect: true,
                deselectLabel: '<span class="red">✖</span>'
            });


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
                    "url": "admin/users",
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
                    {"data": "username"},
                    {"data": "name"},

                    {"data": "ent_on"},
                    {"data": "ent_by"},
                    {"data": "usertype"},
                    {"data": "company"},
                    {"data": "mod_on"},
                    {"data": "mod_by"},
                    {"data": "status"}
                ], "language": {
                    'loadingRecords': '&nbsp;',
                    'processing': '<div class="loader2"></div>'
                }, "createdRow": function (row, data) {
                    let action_td = document.createElement('td');
                    $(action_td).addClass('text-center');
                    if (data['status'] === 'deactivate') {
                        $(action_td).append('<a href="javascript:void(0)" class="rerec"><i class="zmdi zmdi-refresh-alt f-w-600 f-16 text-c-blue"></i></a>');
                    } else {
                        $(action_td).append('<a href="javascript:void(0)" style="padding-right: 15px;" class="editrec"><i class="zmdi zmdi-edit f-w-600 f-16 m-r-10 text-c-green"></i></a><a href="javascript:void(0)" class="delrec"><i class="zmdi zmdi-delete f-w-600 f-16 text-danger"></i></a>');
                    }
                    $(row).append(action_td);

                    setTableStatus($(row).find('td').eq(8));
                    $(row).data('id', data['id']);
                }
            });

            function setTableStatus(td) {
                var htmlContent = $(td).html();
                if (htmlContent && htmlContent.trim().startsWith('active')) {
                    $(td).html('<label class="label label-success" style="white-space: nowrap">Active</label>');
                } else if (htmlContent === 'deactivate') {
                    $(td).html('<label class="label label-danger" style="white-space: nowrap">Deactivate</label>');
                }
            }


            $('#addUserBtn').click(function () {
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
                document.getElementById('username').value = '';
                document.getElementById('user_type').selectedIndex = 0;
                document.getElementById('company').selectedIndex = 0;
                document.getElementById('dashboard').selectedIndex = 0;

            }

            var user_type = new SlimSelect({
                select: '#user_type',
                placeholder: "Select a Usertype",
                searchHighlight: true,

                ajax: function (search, callback) {
                    fetch('admin/search-user-types', {
                        method: 'POST',
                        body: new URLSearchParams({search: search || ''})
                    }).then(res => res.json()).then((data) => {
                        callback(data);
                    });
                },
                allowDeselect: true,
                deselectLabel: '<span class="red">✖</span>'
            });
            $('#user_type').data('select', user_type);

            $(document).on('click', '.editrec', function () {
                loadDiv($('#tableSection'));
                let id = $(this).parents('tr').data('id');
                fetch('admin/user/' + id).then(resp => resp.json())
                        .then((data) => {
                            clearForm();
                            $('#name').val(data.name);
                            $('#username').val(data.username);
                            if (data.userType) {
                                user_type.setData([{value: data.userType.id, text: data.userTypeName}]);
                                user_type.set(data.userType.id);
                            }
                            $('#saveBtn').data('mode', 'update');
                            $('#saveBtn').html('<i class="icon feather icon-save"></i>Update');
                            $('#saveBtn').data('id', id);
                            $('#formSection').fadeIn();
                            $('#tableSection').hide();

                            finishLoadDiv($('#tableSection'));
                        });
            });

            $('#saveBtn').click(function () {
                if ($('#name').val().trim() === '') {
                    Swal.fire("Empty Name!", "Please Enter a Valid Name!", "warning");
                    return;
                }
                if ($('#username').val().trim() === '') {
                    Swal.fire("Empty Username!", "Please Enter a Valid Username!", "warning");
                    return;
                }
                if ($('#user_type').val() === null) {
                    Swal.fire("UserType not Selected!", "Please Select a UserType!", "warning");
                    return;
                }
                if ($('#company').val() === null) {
                    Swal.fire("Company not Selected!", "Please Select a Company!", "warning");
                    return;
                }
                if ($('#dashboard').val() === null) {
                    Swal.fire("Dashboard not Selected!", "Please Select a Dashboard!", "warning");
                    return;
                }


                let mode = $('#saveBtn').data('mode');

                const formData = new FormData();
                if (mode === 'update') {
                    formData.append('id', $('#saveBtn').data('id'));
                }
                formData.append('name', $('#name').val().trim());
                formData.append('username', $('#username').val().trim());
                formData.append('usertype', $('#user_type').val());
                formData.append('company', $('#company').val());
                formData.append('dashboard', $('#dashboard').val());

                Swal.fire({
                    title: 'Are you sure?',
                    text: "User Will be " + (mode === 'update' ? 'Updated' : 'Saved') + " !",
                    icon: 'warning',
                    showCancelButton: true,
                    confirmButtonColor: '#3085d6',
                    cancelButtonColor: '#d33',
                    confirmButtonText: 'Yes, Continue!',
                    showLoaderOnConfirm: true,
                    searchHighlight: true,
                    preConfirm: () => {
                        return fetch('admin/' + $('#saveBtn').data('mode') + '-user', {
                            method: 'POST',
                            body: formData
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
                            Swal.fire('Successfull!', 'User has been updated.', 'success');
                            clearForm()
                            dtable.ajax.reload();
                            $('#formSection').hide();
                            $('#tableSection').fadeIn();
                        }
                    }
                });
            });

            $(document).on('click', '.delrec', function () {
                let id = $(this).parents('tr').data('id');
                console.log(id);
                Swal.fire({
                    title: 'Are you sure?',
                    text: "This User Will be Deleted!",
                    icon: 'warning',
                    showCancelButton: true,
                    confirmButtonColor: '#3085d6',
                    cancelButtonColor: '#d33',
                    confirmButtonText: 'Yes, Proceed!',
                    showLoaderOnConfirm: true,
                    preConfirm: () => {
                        return fetch('admin/deactivate-user', {
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
                            Swal.fire('Successfull!', 'User has been Deactivated !', 'success');
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
                    text: "This User Will be Activated!",
                    icon: 'warning',
                    showCancelButton: true,
                    confirmButtonColor: '#3085d6',
                    cancelButtonColor: '#d33',
                    confirmButtonText: 'Yes, Proceed!',
                    showLoaderOnConfirm: true,
                    preConfirm: () => {
                        return fetch('admin/reactivate-user', {
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
                            Swal.fire('Successfull!', 'User has been Activated !', 'success');
                            dtable.ajax.reload();
                            $('#formSection').hide();
                            $('#tableSection').fadeIn();
                        }
                    }
                });
            });

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