<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="profile" class="profile.bean.ProfileBean" scope="request"/>

<!DOCTYPE html>
<html>
<head>
    <title>Your Profile</title>
    <link rel="stylesheet" href="profileStyle.css">
</head>

<body class="container">

    <div class="profile-header">
        <h1>Hi! I'm ${profile.nickname}</h1>
    </div>

    <div class="card-grid">

        <div class="card">
            <h3>👤 Personal Information</h3>
            <p><strong>Name:</strong> ${profile.name}</p>
            <p><strong>Birthday:</strong> ${profile.birthday}</p>
            <p><strong>Gender:</strong> ${profile.gender}</p>
        </div>

        <div class="card">
            <h3>🎓 Academic Details</h3>
            <p><strong>Student ID:</strong> ${profile.studentID}</p>
            <p><strong>Program:</strong> ${profile.program}</p>
            <p><strong>Past Education:</strong> ${profile.pastEdu}</p>
        </div>

        <div class="card">
            <h3>📞 Contact Info</h3>
            <p><strong>Email:</strong> ${profile.email}</p>
            <p><strong>Phone:</strong> ${profile.phone}</p>
        </div>

        <div class="card full-row intro-card">
            <h3>🍓 Fun Section</h3>
            <p><strong>Hobbies:</strong> ${profile.hobbies}</p>
            <p><strong>Favorite:</strong> ${profile.favorite}</p>
            <p><strong>Favorite Singer:</strong> ${profile.favSinger}</p>
            <p><strong>Pet:</strong> ${profile.pet}</p>
        </div>

        <div class="card full-row intro-card">
            <h3>💗 About Me</h3>
            <p>${profile.intro}</p>
        </div>

    </div>
    
    <br><br>
    <a href="welcome.html" class="welcome-btn">Back to Welcome Page</a>
    <br>
    <a href="index.html" class="welcome-btn">Add Another Profile</a>

</body>
</html>
