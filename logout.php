<?php
    session_start();
    // Destroy session
    if(session_destroy()) {
        // Redirecting To Home Page
        header("location:http://localhost/example/login.php");
    }
?> 