// Function to confirm adoption
function adoptPet(petName) {
    if (confirm(`Are you sure you want to adopt ${petName}?`)) {
        alert(`${petName} has been adopted!`);
    }
}

// Example form validation
document.addEventListener("DOMContentLoaded", () => {
    const form = document.querySelector("#adoptionForm");
    if (form) {
        form.addEventListener("submit", (event) => {
            const petName = document.querySelector("#petName").value;
            if (!petName) {
                event.preventDefault();
                alert("Pet name is required!");
            }
        });
    }
});
