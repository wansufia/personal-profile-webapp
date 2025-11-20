<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Your Profile</title>
    <link rel="stylesheet" href="profileStyle.css">
</head>

<body class="container">

    <!-- Header -->
    <div class="profile-header">
        <h1>Hi! I'm ${nickname} 🍓</h1>
    </div>

    <!-- Card Grid -->
    <div class="card-grid">

        <div class="card">
            <h3>👤 Personal Information</h3>
            <p><strong>Name:</strong> ${name}</p>
            <p><strong>Birthday:</strong> ${birthday}</p>
            <p><strong>Gender:</strong> ${gender}</p>
        </div>

        <div class="card">
            <h3>🎓 Academic Details</h3>
            <p><strong>Student ID:</strong> ${studentID}</p>
            <p><strong>Program:</strong> ${program}</p>
            <p><strong>Past Education:</strong> ${pastEdu}</p>
        </div>

        <div class="card">
            <h3>📞 Contact Info</h3>
            <p><strong>Email:</strong> ${email}</p>
            <p><strong>Phone:</strong> ${phone}</p>
        </div>

        <div class="card full-row intro-card">
            <h3>🍓 Fun Section</h3>
            <p><strong>Hobbies:</strong> ${hobbies}</p>
            <p><strong>Favorite:</strong> ${favorite}</p>
            <p><strong>Favorite Singer:</strong> ${favSinger}</p>
            <p><strong>Pet:</strong> ${pet}</p>
        </div>

        <div class="card full-row intro-card">
            <h3>💗 About Me</h3>
            <p>${intro}</p>
        </div>

    </div>

</body>
</html>
