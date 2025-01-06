@Override
protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    HttpSession session = request.getSession(false);
    User user = (User) session.getAttribute("user");

    if (user == null || !"ADMIN".equals(user.getRole())) {
        response.sendRedirect("login.jsp");
        return;
    }

    List<Pet> pets = petService.getAllPets();
    request.setAttribute("pets", pets);
    request.getRequestDispatcher("/jsp/adminDashboard.jsp").forward(request, response);
}
