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
        </style>
    </head>
    <body>
        <section class="login-block">
            <form id="otpForm" method="post">
                <div class="auth-box card">
                    <div class="card-block">
                        <!-- Input field for OTP -->
                        <label for="otp">Enter OTP:</label>
                        <input type="text" id="otp" name="otp" required>

                        <!-- Submit button -->
                        <button type="submit">Submit OTP</button>
                    </div>
                </div>
            </form>
        </section>
        <%@include file="jspf/footer.jspf" %>
        <%@include file="jspf/scripts.jspf" %>
        <script>
            $(document).ready(function () {
                $('#otpForm').submit(function (event) {
                    // Prevent the default form submission
                    event.preventDefault();

                    // Get the OTP input value
                    var otp = $('#otp').val();

                    // Get the submit button and disable it
                    var $submitButton = $(this).find('button[type="submit"]');
                    $submitButton.prop('disabled', true).text('Submitting...');

                    // Construct the URL with the OTP as a query parameter
                    var url = 'reset-validate?code=' + encodeURIComponent(otp);

                    // Redirect to the URL
                    window.location.href = url;

                    // Optionally, re-enable the button if needed
                    // In most cases, this is not necessary as the page will be redirected.
                });
            });
        </script>

    </body>
</html>
