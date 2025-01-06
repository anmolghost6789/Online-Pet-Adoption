@WebServlet("/adminAnalytics")
public class AdminAnalyticsServlet extends HttpServlet {
    private AnalyticsService analyticsService = new AnalyticsService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int totalPets = analyticsService.getTotalPets();
        int totalAdoptions = analyticsService.getTotalAdoptions();
        int activeUsers = analyticsService.getActiveUsers();

        request.setAttribute("totalPets", totalPets);
        request.setAttribute("totalAdoptions", totalAdoptions);
        request.setAttribute("activeUsers", activeUsers);

        request.getRequestDispatcher("/jsp/adminAnalytics.jsp").forward(request, response);
    }
}
