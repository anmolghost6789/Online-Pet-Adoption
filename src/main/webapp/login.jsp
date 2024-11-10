<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login - Pet Adoption Platform</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f4f7f6;
            color: #333;
            margin: 0;
            padding: 0;
        }
        .container {
            width: 100%;
            max-width: 400px;
            margin: 50px auto;
            background-color: #ffffff;
            padding: 30px;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
        }
        h2 {
            text-align: center;
            color: #007bff;
        }
        label {
            font-size: 1.1em;
            margin-bottom: 8px;
            display: inline-block;
        }
        input[type="text"],
        input[type="password"] {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border-radius: 5px;
            border: 1px solid #ccc;
            box-sizing: border-box;
        }
        input[type="submit"] {
            background-color: #007bff;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            width: 100%;
            font-size: 1.1em;
            cursor: pointer;
        }
        input[type="submit"]:hover {
            background-color: #0056b3;
        }
        .link-container {
            text-align: center;
            margin-top: 15px;
        }
        .link-container a {
            color: #007bff;
            text-decoration: none;
        }
        .link-container a:hover {
            text-decoration: underline;
        }
        .error-message {
            color: #ff4d4d;
            text-align: center;
            font-size: 1em;
        }
    </style>
</head>
<body>

    <div class="container">
        <h2>Login to Your Account</h2>
        
        <!-- Error message display (if any) -->
        <div class="error-message">
            <p>${errorMessage}</p>
        </div>

        <!-- Login Form -->
        <form action="login" method="post">
            <label for="username">Username:</label>
            <input type="text" id="username" name="username" required><br>

            <label for="password">Password:</label>
            <input type="password" id="password" name="password" required><br>

            <input type="submit" value="Login">
        </form>

        <div class="link-container">
            <p>Don't have an account?</p>
            <a href="register.jsp">Sign up here</a><br>
            <a href="forgot_password.jsp">Forgot your password?</a>
        </div>
    </div>

</body>
</html>
