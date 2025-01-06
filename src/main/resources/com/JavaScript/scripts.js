// Confirm Adoption
function confirmAdoption(petName) {
    const confirmation = confirm(`Are you sure you want to adopt ${petName}?`);
    if (confirmation) {
        alert(`Congratulations! You've successfully adopted ${petName}.`);
    } else {
        alert(`Adoption cancelled.`);
    }
}

// Validate Forms
function validateForm(event) {
    const form = event.target;
    const name = form.querySelector('input[name="name"]').value;
    const email = form.querySelector('input[name="email"]').value;
    const message = form.querySelector('textarea[name="message"]').value;

    if (!name || !email || !message) {
        alert("All fields are required.");
        event.preventDefault();
        return false;
    }
    if (!email.includes("@")) {
        alert("Please enter a valid email address.");
        event.preventDefault();
        return false;
    }
    alert("Form submitted successfully!");
    return true;
}
