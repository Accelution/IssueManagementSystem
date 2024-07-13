<!DOCTYPE html>
<html lang="en-US" dir="ltr">
    <head>
        <%@include file="jspf/header.jspf" %>
        <meta http-equiv="content-type" content="text/html;charset=utf-8" />
        <link rel="stylesheet" href="/vendors/bootstrap/bootstrap.min.css">
        <link rel="stylesheet" href="/vendors/fontawesome/all.min.css">
        <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
        <style>
            .div-load {
                position: relative;
            }
            .div-loader {
                position: absolute;
                top: 50%;
                left: 50%;
                transform: translate(-50%, -50%);
                font-size: 2rem;
            }
        </style>
    </head>
    <body>
        <main class="main" id="top">
            <div class="container-fluid">
                <div class="row flex-center min-vh-100 py-6">
                    <div class="col-sm-8 col-md-6 col-lg-5 col-xl-4 col-xxl-3">
                        <div class="text-center">
                            <img src="img/logos/logo.png" alt="" width="250">
                        </div>
                        <div class="card">
                            <div class="card-body p-4 p-sm-5">
                                <div class="row flex-between-center mb-2">
                                    <div class="col-auto">
                                        <h5>Log in</h5>
                                    </div>
                                </div>
                                <form id="login-form">
                                    <div id="altarea"></div>
                                    <div class="mb-3">
                                        <input class="form-control" type="text" placeholder="Username" name="username" id="username">
                                    </div>
                                    <div class="mb-3">
                                        <input class="form-control" type="password" placeholder="Password" name="password" id="password">
                                    </div>
                                    <div class="row flex-between-center">
                                        <div class="col-auto">
                                            <div class="form-check mb-0">
                                                <input class="form-check-input" type="checkbox" id="basic-checkbox" checked="checked">
                                                <label class="form-check-label mb-0" for="basic-checkbox">Remember me</label>
                                            </div>
                                        </div>
                                        <div class="col-auto">
                                            <a class="fs--1" href="forgot-password.html">Forgot Password?</a>
                                        </div>
                                    </div>
                                    <div class="mb-3">
                                        <button class="btn btn-primary d-block w-100 mt-3" type="button" id="loginbtn">Log in</button>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </main>
        <script>
            function loadDiv(card) {
                var $this = $(card);
                $this.addClass("div-load");
                $this.append('<div class="div-loader"><i class="fas fa-spinner fa-spin"></i></div>');
            }

            function finishLoadDiv(card) {
                var $this = $(card);
                $this.children(".div-loader").remove();
                $this.removeClass("div-load");
            }

            $('#loginbtn').click(function () {
                if ($(this).text() !== 'Log in') {
                    return;
                }

                $('#altarea').html('');
                loadDiv($('.card-body'));

                $(this).html('<i class="fas fa-spinner fa-spin"></i>');

                $.post('login', {
                    username: $('#username').val(),
                    password: $('#password').val()
                }, function (data) {
                    if (data === "ok") {
                        window.location.href = 'index';
                    } else if (data === "locked") {
                        var alttemp = '<div class="alert alert-danger alert-dismissible">' +
                                '<button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>' +
                                '<strong></strong> Your Account is Locked! Please Contact IT Department' +
                                '</div>';
                        $('#altarea').append(alttemp);
                    } else {
                        var alttemp = '<div class="alert alert-danger alert-dismissible">' +
                                '<button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>' +
                                '<strong>Error!</strong> Invalid Username or Password' +
                                '</div>';
                        $('#altarea').append(alttemp);
                    }
                    $('#loginbtn').html('Log in');
                    finishLoadDiv($('.card-body'));
                }).fail(function () {
                    var alttemp = '<div class="alert alert-danger alert-dismissible">' +
                            '<button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>' +
                            '<strong>Error!</strong> Something Went Wrong!' +
                            '</div>';
                    $('#altarea').append(alttemp);
                    $('#loginbtn').html('Log in');
                    finishLoadDiv($('.card-body'));
                });
            });

            $('#password').on('keypress', function (e) {
                if (e.which === 13) {
                    $('#loginbtn').click();
                }
            });
        </script>
        <script src="/vendors/bootstrap/bootstrap.bundle.min.js"></script>
        <script src="/vendors/fontawesome/all.min.js"></script>
    </body>
</html>
