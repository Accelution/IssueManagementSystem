<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Accelution - IMS</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
        <link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
        <link rel="stylesheet" type="text/css" href="https://pixinvent.com/stack-responsive-bootstrap-4-admin-template/app-assets/css/bootstrap-extended.min.css">
        <link rel="stylesheet" type="text/css" href="https://pixinvent.com/stack-responsive-bootstrap-4-admin-template/app-assets/fonts/simple-line-icons/style.min.css">
        <link rel="stylesheet" type="text/css" href="https://pixinvent.com/stack-responsive-bootstrap-4-admin-template/app-assets/css/colors.min.css">
        <link rel="stylesheet" type="text/css" href="https://pixinvent.com/stack-responsive-bootstrap-4-admin-template/app-assets/css/bootstrap.min.css">
        <link href="https://fonts.googleapis.com/css?family=Montserrat&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
        <%@include file="jspf/header.jspf" %>
        <style>
            .cards {
                display: flex;
                align-items: center;
                justify-content: center;
                border-radius: 5px;
                transition: transform 0.2s;
            }
            .widget-visitor-card {
                padding: 10px;
                text-align: center;
            }
            .card-block-small,
            .card-block-large {
                display: flex;
                flex-direction: column;
                align-items: center;
                justify-content: center;
                height: 100%;
            }
            .card-block-small h4,
            .card-block-large h4 {
                margin: 0;
                font-size: 24px;
            }
            .card-block-small h6,
            .card-block-large h6 {
                margin: 0;
                font-size: 14px;
            }
            .feather {
                margin-top: 50px;
                transition: transform 0.2s; /* Smooth transition for hover effect */
            }

            .card-block-large .feather {
                width: 74px; /* Larger size for the large card block */
                height: 74px; /* Larger size for the large card block */
            }
            .placeholder {
                background-color: white;
                color: black;
            }

            hr {
                height: 2px; /* Set the height of the hr to 2 pixels */
                border: none; /* Remove the default border */
                background-color: black; /* Optional: Set the background color of the hr */
            }

            h6{
                margin-bottom: .5rem;
                font-family: inherit;
                font-weight: 500;
                line-height: 1.1;
                color: white;
                font-weight: 400;
                font-size: 1.2rem;
            }
            .cards .card-block-small {
                padding: 15px 20px;
            }
            .cards {
                position: relative;
                overflow: hidden;
                cursor: pointer;
                border-radius: 10px;
                box-shadow: 0 4px 6px rgba(0, 0, 0, 0.5);
                transition: transform 0.3s ease; /* Add a transition for the transform property */
                /*margin-left: 30px;*/

            }

            .cards:hover {
                transform: translateY(-5px); /* Move the card up slightly on hover */
            }

            .cards::before {
                content: '';
                position: absolute;
                top: 0;
                left: 0;
                width: 100%;
                height: 100%;
                transition: all 0.3s ease;
                opacity: 0;
                transform: translateY(100%);
                overflow: hidden;
                padding: 10px 0;
                background-color: rgba(255, 255, 255, 0.9); /* Add a background color for the "like" popup */
                border-radius: 10px; /* Match the border-radius of the card */
                box-shadow: 0 4px 6px rgba(0, 0, 0, 0.5); /* Match the box-shadow of the card */
            }

            .cards:hover::before {
                opacity: 1;
                transform: translateY(-100%); /* Move the "like" popup up */
            }


            .cards i {
                position: absolute;
                bottom: 10px;
                left: -20px;
                transition: all 0.3s ease;
                transform-origin: bottom left;
                transform: scale(3.5) ;
                opacity: 0.5; /* Set the opacity to 50% */
            }

            .cards:hover i {
                transform: rotate(15deg) scale(5);
                opacity: 0.5; /* Set the opacity to 100% on hover */
            }

            .card-registration .select-input.form-control[readonly]:not([disabled]) {
                font-size: 1rem;
                line-height: 2.15;
                padding-left: .75em;
                padding-right: .75em;
            }
            .card-registration .select-arrow {
                top: 13px;
            }
            .card{
                /*width: 90em;*/
                justify-content: center;
                margin: auto;

            }
            .pagetitle h3 {
                font-size: 28px;
                margin-bottom: 0;
                font-weight: 600;
                color: #31d422;
            }
        </style>
    </head>
    <body>


        <div class="main" id="tableSection">
            <%@include file="jspf/navbar.jspf" %>


            <section class="tab-details"style="padding: 2rem 2rem;">
                <div class="row">
                    <div class="col-sm-12">
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
                                                <th>Issue Type</th>
                                                <th>Description</th>
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




        <!--formSection-acknowledgment-pending-->
        <div class="" id="formSectionInprogress" style="display: none;padding-top: 1rem;">
            <div class="card" style="width: 80%;padding: 1em;">
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
                    <!--                    <div class="form-group" style="padding-bottom: 2rem">
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
                                        </div>-->

                    <div class="card-footer d-flex justify-content-end" style="background-color: white;">
                        <!--<button id="saveBtnin" class="btn btn-sm waves-effect waves-light btn-primary" style="margin-right: 10px"><i class="icon feather icon-save"></i>Save</button>-->
                        <button id="closeBtnin" class="btn btn-sm btn-danger"><i class="icon feather icon-x-circle"></i>Close</button>
                    </div>
                </div>
            </div>
        </div>


        <%@include file="jspf/scripts.jspf" %>
        <script type="text/javascript" src="files/js/slimselect.js"></script>
        <script type="text/javascript" src="files/js/datatables.min.js"></script>
        <script type="text/javascript" src="files/js/sweetalert2.js"></script>
        <script type="text/javascript" src="files/js/func.js"></script>
        <script type="text/javascript" src="files/js/autoNumeric.js"></script>
        <script type="text/javascript" src="files/js/dataTables.responsive.min.js"></script>
        <script type="text/javascript" src="files/js/jquery.highlight.js"></script>
        <script type="text/javascript" src="files/js/dataTables.searchHighlight.min.js"></script>

        <script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
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
                    {"data": "type"},
                    {"data": "issue_type"},
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

                    $(action_td).append('<a href="javascript:void(0)" id="update" class="editrec"><i class="icon feather icon-list f-w-600 f-16 m-r-10 text-c-green"></i></a>');

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
