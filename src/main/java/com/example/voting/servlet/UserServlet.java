@WebServlet("/user")
public class UserServlet extends HttpServlet {
    private UserDAO userDAO = new UserDAO();

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
        String action = req.getParameter("action");

        if ("register".equals(action)) {
            String username = req.getParameter("username");
            String password = req.getParameter("password");
            String email = req.getParameter("email");
            User user = new User(0, username, password, email, "USER");
            try {
                boolean isRegistered = userDAO.registerUser(user);
                if (isRegistered) {
                    resp.sendRedirect("login.jsp?message=Registered successfully. Please log in.");
                } else {
                    resp.sendRedirect("register.jsp?error=Registration failed.");
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
        } else if ("login".equals(action)) {
            String username = req.getParameter("username");
            String password = req.getParameter("password");
            try {
                User user = userDAO.loginUser(username, password);
                if (user != null) {
                    req.getSession().setAttribute("user", user);
                    resp.sendRedirect("pets");
                } else {
                    resp.sendRedirect("login.jsp?error=Invalid credentials.");
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
}
