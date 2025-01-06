@Override
protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    String search = req.getParameter("search");
    try {
        List<Pet> pets;
        if (search != null && !search.isEmpty()) {
            pets = petService.searchPets(search);
        } else {
            pets = petService.getAllPets();
        }
        req.setAttribute("pets", pets);
        req.getRequestDispatcher("/jsp/pets.jsp").forward(req, resp);
    } catch (SQLException e) {
        throw new ServletException(e);
    }
}
