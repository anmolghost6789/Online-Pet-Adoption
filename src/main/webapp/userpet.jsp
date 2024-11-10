<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Pet Details</title>
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
        .form-group input[type="number"],
        .form-group textarea {
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
        .form-group .preview-img {
            margin-top: 10px;
            max-width: 100%;
            max-height: 300px;
            object-fit: cover;
            border: 1px solid #ddd;
        }
        .instructions {
            font-size: 1.1em;
            color: #555;
            margin-top: 20px;
        }
    </style>
</head>
<body>

    <div class="container">
        <h1>Add Your Pet</h1>

        <form action="addPet" method="post" enctype="multipart/form-data">
            <!-- Pet Name -->
            <div class="form-group">
                <label for="petName">Pet Name</label>
                <input type="text" id="petName" name="petName" required>
            </div>

            <!-- Pet Age -->
            <div class="form-group">
                <label for="petAge">Pet Age (in years)</label>
                <input type="number" id="petAge" name="petAge" min="0" required>
            </div>

            <!-- Pet Breed -->
            <div class="form-group">
                <label for="petBreed">Pet Breed</label>
                <input type="text" id="petBreed" name="petBreed" required>
            </div>

            <!-- Pet Description -->
            <div class="form-group">
                <label for="petDescription">Pet Description</label>
                <textarea id="petDescription" name="petDescription" rows="5" required></textarea>
            </div>

            <!-- Pet Photo Upload -->
            <div class="form-group">
                <label for="petPhoto">Upload Pet Photo</label>
                <input type="file" id="petPhoto" name="petPhoto" accept="image/*" required>
                <img id="imgPreview" class="preview-img" src="" alt="Image Preview" style="display:none;">
            </div>

            <!-- Submit Button -->
            <div class="form-group">
                <button type="submit">Add Pet</button>
            </div>
        </form>

        <div class="instructions">
            <p><strong>Note:</strong> Please provide accurate details about your pet. Photos should be clear and well-lit for better visibility. Accepted formats: .jpg, .jpeg, .png</p>
        </div>
    </div>

    <script>
        // Image preview functionality
        document.getElementById("petPhoto").addEventListener("change", function(event) {
            const file = event.target.files[0];
            const imgPreview = document.getElementById("imgPreview");

            if (file) {
                const reader = new FileReader();
                reader.onload = function(e) {
                    imgPreview.src = e.target.result;
                    imgPreview.style.display = "block";
                };
                reader.readAsDataURL(file);
            } else {
                imgPreview.style.display = "none";
            }
        });
    </script>

</body>
</html>
