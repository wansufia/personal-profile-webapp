package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet("/ProfileServlet")
public class ProfileServlet extends HttpServlet {
    
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        request.setAttribute("name", request.getParameter("name"));
        request.setAttribute("nickname", request.getParameter("nickname"));
        request.setAttribute("birthday", request.getParameter("birthday"));
        request.setAttribute("gender", request.getParameter("gender"));
        request.setAttribute("studentID", request.getParameter("studentID"));
        request.setAttribute("program", request.getParameter("program"));
        request.setAttribute("email", request.getParameter("email"));
        request.setAttribute("phone", request.getParameter("phone"));
        request.setAttribute("hobbies", request.getParameter("hobbies"));
        request.setAttribute("favorite", request.getParameter("favorite"));
        request.setAttribute("favSinger", request.getParameter("favSinger"));
        request.setAttribute("pet", request.getParameter("pet"));
        request.setAttribute("intro", request.getParameter("intro"));
        request.setAttribute("pastEdu", request.getParameter("pastEdu"));

        request.getRequestDispatcher("displayProfile.jsp").forward(request, response);
    }
}
