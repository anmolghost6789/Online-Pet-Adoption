<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Welcome to the Pet Adoption Platform</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f0f4f8;
            color: #333;
            margin: 0;
            padding: 0;
        }
        .container {
            width: 100%;
            max-width: 800px;
            margin: 50px auto;
            background-color: #ffffff;
            padding: 30px;
            text-align: center;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
        }
        h1 {
            color: #28a745;
            font-size: 2.5em;
            margin-bottom: 20px;
        }
        .quote {
            font-size: 1.5em;
            font-style: italic;
            color: #555;
            margin: 30px 0;
            border-left: 5px solid #28a745;
            padding-left: 20px;
        }
        .quote-author {
            margin-top: 10px;
            color: #555;
            font-size: 1.2em;
        }
        .btn {
            background-color: #007bff;
            color: white;
            padding: 15px 30px;
            border: none;
            border-radius: 5px;
            text-decoration: none;
            display: inline-block;
            margin: 20px 5px;
            font-size: 1.2em;
            cursor: pointer;
        }
        .btn:hover {
            background-color: #0056b3;
        }
        .quote-container {
            margin: 40px 0;
        }
    </style>
</head>
<body>

    <div class="container">
        <h1>Welcome to the Pet Adoption Platform!</h1>

        <div class="quote-container">
            <p class="quote">"The greatness of a nation and its moral progress can be judged by the way its animals are treated."</p>
            <p class="quote-author">— Mahatma Gandhi</p>
        </div>

        <p>We are thrilled to have you on board in our mission to provide loving homes for pets in need.</p>

        <div class="quote-container">
            <p class="quote">"Until one has loved an animal, a part of one's soul remains unawakened."</p>
            <p class="quote-author">— Anatole France</p>
        </div>

        <p>Your participation helps make a difference in the lives of these wonderful animals. Explore more below!</p>

        <a href="pets.jsp" class="btn">Browse Pets for Adoption</a>
        <a href="vote.jsp" class="btn">Cast Your Vote</a>
        <a href="about_us.jsp" class="btn">Learn More About Us</a>

        <p>If you need help or have any questions, please feel free to <a href="contact_us.jsp">contact us</a>.</p>
    </div>

</body>
</html>
