<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Error - Login Failed</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            color: #333;
            margin: 0;
            padding: 0;
        }
        .container {
            width: 100%;
            max-width: 600px;
            margin: 50px auto;
            background-color: #fff;
            padding: 20px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            text-align: center;
        }
        h1 {
            color: #ff4d4d;
        }
        p {
            font-size: 1.2em;
            color: #555;
        }
        .btn {
            display: inline-block;
            padding: 10px 20px;
            background-color: #007bff;
            color: white;
            text-decoration: none;
            border-radius: 5px;
            margin-top: 20px;
            font-size: 1.1em;
        }
        .btn:hover {
            background-color: #0056b3;
        }
        .error-message {
            margin-top: 30px;
            color: #d9534f;
            font-size: 1.1em;
            font-weight: bold;
        }
    </style>
</head>
<body>

    <div class="container">
        <h1>Login Failed</h1>
        <p>We're sorry, but we couldn't log you in. Please verify your username and password and try again.</p>
        
        <div class="error-message">
            <p>Ensure that:</p>
            <ul>
                <li>Your username is correct.</li>
                <li>Your password is correct (check for any typographical errors).</li>
                <li>Your account is active and not locked.</li>
            </ul>
        </div>

        <a href="login.jsp" class="btn">Back to Login</a>
    </div>

</body>
</html>
