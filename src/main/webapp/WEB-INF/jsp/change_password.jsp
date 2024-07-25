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
                background-color: #42a5f5;
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
            input[type="password"] {
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
            <form id="changePasswordForm" method="post">
                <div class="auth-box card">
                    <div class="card-block">
                        <!-- First password input field -->
                        <label for="password1">Enter New Password:</label>
                        <input type="password" id="password1" name="password1" required>

                        <!-- Second password input field -->
                        <label for="password2">Confirm New Password:</label>
                        <input type="password" id="password2" name="password2" required>

                        <!-- Submit button -->
                        <button type="submit">Change Password</button>
                    </div>
                </div>
            </form>
        </section>
        <%@include file="jspf/footer.jspf" %>
        <%@include file="jspf/scripts.jspf" %>
        <script>
            $(document).ready(function () {
                $('#changePasswordForm').submit(function (event) {
                    // Prevent the default form submission
                    event.preventDefault();

                    // Get the password input values
                    var password1 = $('#password1').val();
                    var password2 = $('#password2').val();

                    // Check if passwords match
                    if (password1 !== password2) {
                        alert("Passwords do not match. Please try again.");
                        return;
                    }

                    // If passwords match, send the password via Fetch
                    var formData = new FormData();
                    formData.append('password', password2);

                    fetch('changepw', {
                        method: 'POST',
                        body: formData
                    })
                            .then(response => {
                                if (!response.ok) {
                                    throw new Error('Failed to change password');
                                }
                                // Display success message
                                alert('Password changed successfully');
                                // Redirect to home JSP
                                window.location.href = 'bvsAdmin-Login';
                            })
                            .catch(error => {
                                // Handle error response if needed
                                console.error('Error:', error);
                                // Display an error message to the user
                                alert('Failed to change password. Please try again.');
                            });
                });
            });
        </script>
    </body>
</html>
