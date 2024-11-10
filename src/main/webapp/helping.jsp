<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Customer Support</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f9f9f9;
            margin: 0;
            padding: 0;
        }
        .container {
            width: 100%;
            max-width: 900px;
            margin: 40px auto;
            background-color: #ffffff;
            padding: 30px;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
        }
        h1 {
            color: #28a745;
            font-size: 2.5em;
            text-align: center;
            margin-bottom: 20px;
        }
        .form-group {
            margin-bottom: 20px;
        }
        .form-group label {
            font-size: 1.1em;
            font-weight: bold;
            display: block;
            margin-bottom: 10px;
        }
        .form-group input[type="text"],
        .form-group input[type="email"],
        .form-group textarea {
            width: 100%;
            padding: 10px;
            font-size: 1em;
            border-radius: 5px;
            border: 1px solid #ddd;
        }
        .form-group select {
            width: 100%;
            padding: 10px;
            font-size: 1em;
            border-radius: 5px;
            border: 1px solid #ddd;
        }
        .form-group input[type="file"] {
            font-size: 1em;
            margin-top: 10px;
        }
        .form-group button {
            background-color: #007bff;
            color: white;
            padding: 12px 20px;
            border: none;
            border-radius: 5px;
            font-size: 1.2em;
            cursor: pointer;
        }
        .form-group button:hover {
            background-color: #0056b3;
        }
        .instructions {
            font-size: 1.1em;
            color: #555;
            margin-top: 20px;
        }
        .faq-section {
            margin-top: 30px;
            background-color: #f0f0f0;
            padding: 20px;
            border-radius: 5px;
        }
        .faq-section h2 {
            font-size: 2em;
            color: #333;
        }
        .faq-section ul {
            list-style-type: none;
            padding-left: 0;
        }
        .faq-section li {
            padding: 10px;
            border-bottom: 1px solid #ddd;
        }
    </style>
</head>
<body>

    <div class="container">
        <h1>Customer Support</h1>

        <p>If you're experiencing any issues or have questions, please fill out the form below to contact our customer service team. We're here to help you!</p>

        <form action="contactSupport" method="post" enctype="multipart/form-data">
            <!-- Name -->
            <div class="form-group">
                <label for="name">Your Name</label>
                <input type="text" id="name" name="name" required>
            </div>

            <!-- Email -->
            <div class="form-group">
                <label for="email">Your Email</label>
                <input type="email" id="email" name="email" required>
            </div>

            <!-- Issue Type -->
            <div class="form-group">
                <label for="issueType">Issue Type</label>
                <select id="issueType" name="issueType" required>
                    <option value="technical">Technical Issue</option>
                    <option value="billing">Billing Issue</option>
                    <option value="general">General Inquiry</option>
                </select>
            </div>

            <!-- Message -->
            <div class="form-group">
                <label for="message">Describe your issue</label>
                <textarea id="message" name="message" rows="5" required></textarea>
            </div>

            <!-- File Upload (Optional) -->
            <div class="form-group">
                <label for="attachment">Attach a file (optional)</label>
                <input type="file" id="attachment" name="attachment" accept="image/*,application/pdf">
            </div>

            <!-- Submit Button -->
            <div class="form-group">
                <button type="submit">Submit</button>
            </div>
        </form>

        <div class="instructions">
            <p><strong>Instructions:</strong> Please provide a detailed description of the issue you're facing. If possible, attach any relevant screenshots or documents to help our support team resolve your issue faster.</p>
        </div>

        <!-- FAQ Section -->
        <div class="faq-section">
            <h2>Frequently Asked Questions</h2>
            <ul>
                <li><strong>Q:</strong> How do I reset my password?<br><strong>A:</strong> You can reset your password by clicking on the "Forgot Password" link on the login page. Follow the instructions sent to your email.</li>
                <li><strong>Q:</strong> I have been charged incorrectly. What should I do?<br><strong>A:</strong> Please contact us via this form and provide your billing details. Our team will investigate the issue and get back to you shortly.</li>
                <li><strong>Q:</strong> How can I update my account information?<br><strong>A:</strong> You can update your account information by logging into your profile and editing your details under the "Account Settings" section.</li>
            </ul>
        </div>

    </div>

</body>
</html>
