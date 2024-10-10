<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>User Profile</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: skyblue; /* Sky blue background */
            display: flex;
            justify-content: center; /* Centers the content horizontally */
            align-items: center;     /* Centers the content vertically */
            height: 100vh;           /* Full viewport height */
            margin: 0;
        }

        /* Animation for the twinkling effect */
        @keyframes twinkle {
            0% { background-color: #ffcccb; }  /* Light red */
            25% { background-color: #ffd700; } /* Gold */
            50% { background-color: #add8e6; } /* Light blue */
            75% { background-color: #90ee90; } /* Light green */
            100% { background-color: #ffcccb; } /* Back to light red */
        }

        /* Twinkling text animation */
        @keyframes twinkle-text {
            0% { color: #ff6347; }   /* Tomato */
            25% { color: #ff4500; }  /* Orange Red */
            50% { color: #1e90ff; }  /* Dodger Blue */
            75% { color: #32cd32; }  /* Lime Green */
            100% { color: #ff6347; } /* Back to Tomato */
        }

        .profile-box {
            animation: twinkle 5s infinite; /* Twinkling animation for the box */
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            max-width: 400px;
            width: 100%;
            text-align: center;
        }

        .profile-box h2 {
            animation: twinkle-text 3s infinite; /* Twinkling text animation */
            font-size: 24px;
        }

        .profile-box p {
            animation: twinkle-text 3s infinite; /* Twinkling text animation */
            font-size: 18px;
            margin: 10px 0;
        }
    </style>
</head>
<body>
    <div class="profile-box">
        <h2>User Profile</h2>
        <p><strong>User ID:</strong> ${user.id}</p>
        <p><strong>Email:</strong> ${user.email}</p>
        <p><strong>Role:</strong> ${user.role}</p>
    </div>
</body>
</html>