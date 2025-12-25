package controller;

import profile.bean.ProfileBean;
import java.io.IOException;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;


@WebServlet("/ProfileServlet")
public class ProfileServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        ProfileBean p = new ProfileBean();

        p.setName(request.getParameter("name"));
        p.setNickname(request.getParameter("nickname"));
        p.setBirthday(request.getParameter("birthday"));
        p.setGender(request.getParameter("gender"));
        p.setStudentID(request.getParameter("studentID"));
        p.setProgram(request.getParameter("program"));
        p.setPastEdu(request.getParameter("pastEdu"));
        p.setEmail(request.getParameter("email"));
        p.setPhone(request.getParameter("phone"));
        p.setHobbies(request.getParameter("hobbies"));
        p.setFavorite(request.getParameter("favorite"));
        p.setFavSinger(request.getParameter("favSinger"));
        p.setPet(request.getParameter("pet"));
        p.setIntro(request.getParameter("intro"));

        try {
            Class.forName("org.apache.derby.jdbc.ClientDriver");
            try (Connection conn = DriverManager.getConnection(
                    "jdbc:derby://localhost:1527/student_profile",
                    "app",
                    "app"
            )) 
            {
                String sql = "INSERT INTO profile "
        + "(name, nickname, birthday, gender, studentID, program, pastEdu, email, phone, hobbies, favorite, favSinger, pet, intro) "
        + "VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
                PreparedStatement ps = conn.prepareStatement(sql);
                
                ps.setString(1, p.getName());
                ps.setString(2, p.getNickname());
                ps.setString(3, p.getBirthday());
                ps.setString(4, p.getGender());
                ps.setString(5, p.getStudentID());
                ps.setString(6, p.getProgram());
                ps.setString(7, p.getPastEdu());
                ps.setString(8, p.getEmail());
                ps.setString(9, p.getPhone());
                ps.setString(10, p.getHobbies());
                ps.setString(11, p.getFavorite());
                ps.setString(12, p.getFavSinger());
                ps.setString(13, p.getPet());
                ps.setString(14, p.getIntro());
                
                ps.executeUpdate();
            }

             request.setAttribute("profile", p);
            request.getRequestDispatcher("displayProfile.jsp")
                   .forward(request, response);

        } catch (IOException | ClassNotFoundException | SQLException | ServletException e) {
            response.setContentType("text/plain");
            response.getWriter().println("ERROR: " + e.getMessage());
        }
    }
}
