<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <title>View Profiles</title>
    <link rel="stylesheet" href="profileStyle.css">
</head>

<body class="container">

    <h2 class="form-title">Student Profiles</h2>

    <!-- FILTER FORM -->
    <form method="get" class="form-rectangle" style="margin-bottom:30px;">
        <label>Filter by Programme:</label>
        <select name="program" class="filter-select">
            <option value="">-- All Programmes --</option>
            <option value="CDCS266">CDCS266</option>
            <option value="CDCS240">CDCS240</option>
            <option value="CDCS230">CDCS230</option>
        </select>
        <button type="submit" class="btn">Filter</button>
    </form>

    <!-- PROFILE TABLE -->
    <table border="1" width="100%" cellpadding="12" style="background:white; border-radius:15px;">
        <tr style="background:#f7c6d0;">
            <th>Student ID</th>
            <th>Name</th>
            <th>Programme</th>
            <th>Email</th>
            <th>Hobbies</th>
        </tr>

        <%
            String program = request.getParameter("program");

            Connection conn = null;
            PreparedStatement ps = null;
            ResultSet rs = null;

            try {
                Class.forName("org.apache.derby.jdbc.ClientDriver");

                conn = DriverManager.getConnection(
                    "jdbc:derby://localhost:1527/student_profile",
                    "app",
                    "app"
                );

                String sql;
                if (program == null || program.isEmpty()) {
                    sql = "SELECT * FROM profile";
                    ps = conn.prepareStatement(sql);
                } else {
                    sql = "SELECT * FROM profile WHERE program LIKE ?";
                    ps = conn.prepareStatement(sql);
                    ps.setString(1, "%" + program + "%");
                }

                rs = ps.executeQuery();

                while (rs.next()) {
        %>
        <tr>
            <td><%= rs.getString("studentID") %></td>
            <td><%= rs.getString("name") %></td>
            <td><%= rs.getString("program") %></td>
            <td><%= rs.getString("email") %></td>
            <td><%= rs.getString("hobbies") %></td>
        </tr>
        <%
                }
            } catch (Exception e) {
        %>
        <tr>
            <td colspan="5" style="color:red;"><%= e.getMessage() %></td>
        </tr>
        <%
            } finally {
                if (rs != null) rs.close();
                if (ps != null) ps.close();
                if (conn != null) conn.close();
            }
        %>
    </table>

    <br>
    <a href="welcome.html" class="welcome-btn">Back to Welcome Page</a>

</body>
</html>
