<!DOCTYPE html>
<html>
<head>
    <title>Payment</title>
    <script src="https://checkout.razorpay.com/v1/checkout.js"></script>
</head>
<body>
    <h1>Adopt ${petName}</h1>
    <p>Adoption Fee: ₹${amount}</p>

    <button id="payButton">Pay Now</button>

    <script>
        const options = {
            key: "your_razorpay_key_id",
            amount: "${amount}" * 100, // Amount in paise
            currency: "INR",
            name: "Pet Adoption Platform",
            description: "Adoption Fee for ${petName}",
            order_id: "${orderId}", // Razorpay Order ID
            handler: function (response) {
                alert("Payment successful! Payment ID: " + response.razorpay_payment_id);
                // Redirect to success page
                window.location.href = "paymentSuccess.jsp?paymentId=" + response.razorpay_payment_id;
            },
            prefill: {
                name: "Your Name",
                email: "email@example.com",
                contact: "9999999999"
            },
            theme: {
                color: "#007bff"
            }
        };

        const rzp = new Razorpay(options);

        document.getElementById('payButton').onclick = function (e) {
            rzp.open();
            e.preventDefault();
        };
    </script>
</body>
</html>
