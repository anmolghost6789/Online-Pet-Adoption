package com.onlinepetadoption.servlet;

import com.razorpay.Order;
import com.razorpay.RazorpayClient;
import org.json.JSONObject;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/payment")
public class PaymentServlet extends HttpServlet {
    private static final String RAZORPAY_KEY_ID = "your_razorpay_key_id";
    private static final String RAZORPAY_SECRET_KEY = "your_razorpay_secret_key";

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String petName = request.getParameter("petName");
        String amount = request.getParameter("amount"); // Amount in INR
        
        try {
            RazorpayClient razorpay = new RazorpayClient(RAZORPAY_KEY_ID, RAZORPAY_SECRET_KEY);

            JSONObject orderRequest = new JSONObject();
            orderRequest.put("amount", Integer.parseInt(amount) * 100); // Amount in paise
            orderRequest.put("currency", "INR");
            orderRequest.put("receipt", "txn_12345");

            Order order = razorpay.orders.create(orderRequest);

            // Pass order details to the JSP
            request.setAttribute("orderId", order.get("id"));
            request.setAttribute("amount", amount);
            request.setAttribute("petName", petName);
            request.getRequestDispatcher("/jsp/payment.jsp").forward(request, response);

        } catch (Exception e) {
            e.printStackTrace();
            response.getWriter().write("Error creating payment: " + e.getMessage());
        }
    }
}
