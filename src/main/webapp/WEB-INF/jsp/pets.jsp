<!DOCTYPE html>
<html>
<head>
    <title>Available Pets</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="../css/styles.css">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-dark bg-primary">
        <div class="container-fluid">
            <a class="navbar-brand" href="/">Pet Adoption</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item"><a class="nav-link" href="/">Home</a></li>
                    <li class="nav-item"><a class="nav-link" href="/pets">Available Pets</a></li>
                    <li class="nav-item"><a class="nav-link" href="/login">Login</a></li>
                </ul>
            </div>
        </div>
    </nav>

    <div class="container">
        <h1 class="mt-4 mb-4">Available Pets</h1>
        <div class="row g-4">
            <c:forEach var="pet" items="${pets}">
                <div class="col-lg-4 col-md-6">
                    <div class="card">
                        <img class="card-img-top" src="../images/sample-pet.jpg" alt="Pet">
                        <div class="card-body">
                            <h3>${pet.name}</h3>
                            <p><strong>Breed:</strong> ${pet.breed}</p>
                            <p><strong>Age:</strong> ${pet.age} years</p>
                            <p>${pet.description}</p>
                            <button class="btn btn-primary" onclick="adoptPet('${pet.name}')">Adopt</button>
                        </div>
                    </div>
                </div>
            </c:forEach>
        </div>
    </div>

    <footer class="bg-light text-center text-lg-start mt-4">
        <div class="text-center p-3 bg-primary text-white">
            © 2024 Pet Adoption Platform
        </div>
    </footer>
</body>
</html>
