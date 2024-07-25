<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <%@include file="jspf/header.jspf" %>
        <style>
            @media only screen and (max-width: 768px) {
                /* Adjust styles for smaller screens */
                .para {
                    padding-left: 1em;
                    padding-right: 1em;
                }
                .container-s {
                    padding-left: 1em;
                }
            }
            /* General styles */
            body {
                font-family: Arial, sans-serif;
                margin: 0;
                padding: 0;
                display: flex;
                justify-content: center;
                align-items: center;
                height: 100vh;

            }
            .login-block {
                width: 100%;
                max-width: 400px;
                background: #ffffff;
                border-radius: 8px;
                box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
                overflow: hidden;
                padding: 20px;
                margin: 20px;
            }
            .auth-box {
                background-color: #ffffff;
                border-radius: 8px;
                padding: 20px;
                box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            }
            .card-block {
                text-align: center;
            }
            h4 {
                margin: 0 0 20px;
                color: #333333;
            }
            label {
                display: block;
                margin-bottom: 10px;
                font-weight: bold;
                color: #555555;
            }
            input[type="text"] {
                width: calc(100% - 22px);
                padding: 10px;
                margin-bottom: 20px;
                border: 1px solid #cccccc;
                border-radius: 4px;
                box-sizing: border-box;
            }
            button {
                width: 100%;
                padding: 10px;
                background-color: #42a5f5;
                border: none;
                border-radius: 4px;
                color: white;
                font-size: 16px;
                cursor: pointer;
                transition: background-color 0.3s ease;
            }
            button:hover {
                background-color: #1e88e5;
            }
            .card-block {
                text-align: center;
            }
        </style>
    </head>
    <body>
        <section class="login-block">
            <form id="forgotPasswordForm" method="post">
                <div class="auth-box card">
                    <div class="card-block">
                        <div id="altarea">
                            <!-- Alternative content -->
                        </div>
                        <h4>Forgot Password</h4>
                        <label for="username">Enter your username:</label>
                        <input type="text" id="username" name="username" required>
                        <button type="submit">Submit</button>
                    </div>
                </div>
            </form>
        </section>
        <%@include file="jspf/footer.jspf" %>
        <%@include file="jspf/scripts.jspf" %>
        <script>
            $(document).ready(function () {
                $('#forgotPasswordForm').submit(function (event) {
                    // Prevent the default form submission
                    event.preventDefault();

                    // Get the username input value
                    var username = $('#username').val();

                    // Disable the submit button and change its text
                    var $submitButton = $(this).find('button[type="submit"]');
                    $submitButton.prop('disabled', true).text('Submitting...');

                    // Construct the URL with the username as a query parameter
                    var url = 'reset?username=' + encodeURIComponent(username);

                    // Use AJAX to handle the request
                    $.ajax({
                        url: url,
                        method: 'GET',
                        success: function (response) {
                            // Handle success response if needed
                            console.log('Request successful');
                            window.location.href = url; // Redirect or handle success
                        },
                        error: function (xhr, status, error) {
                            // Handle error response if needed
                            console.error('Request failed: ', status, error);
                            // Re-enable the button and reset text if needed
                            $submitButton.prop('disabled', false).text('Submit');
                        },
                        complete: function () {
                            // Ensure the button is re-enabled if needed
                            // Comment out if you don't want to re-enable after request completes
                            // $submitButton.prop('disabled', false).text('Submit');
                        }
                    });
                });
            });
        </script>


    </body>
</html>
