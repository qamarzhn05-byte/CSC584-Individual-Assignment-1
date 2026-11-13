<%-- 
    Document   : profile
    Created on : Nov 13, 2026, 12:40:10 PM
    Author     : User
--%>

<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta  name="viewport" content="width=device-width initial-scale=1">
        <title>My Profile</title>
        <link rel="stylesheet" href="css/style.css">
    </head>
    <body>
        <main class="card">
            <div class="avatar">${empty name ? '?' : name.substring(0,1).toUpperCase()}</div>
            <h1>${name}</h1>
            <p class="subtitle">${program}</p>
            
            <d1 class="details">
                <dt>Student ID</dt>
                <dd>${studentId}</dd>
                
                <dt>Program</dt>
                <dd>${program}</dd>
                
                <dt>Email</dt>
                <dd>${email}</dd>
                
                <dt>Hobbies</dt>
                <dd>
                    <% java.util.List<String> hobbies = (java.util.List<String>) request.getAttribute("hobbies");
                        if (hobbies == null || hobbies.isEmpty()) {%>
                        <span class="muted">Not provided</span>
                    <% } else {for (String h : hobbies) { %>
                        <span class="tag"><%= h %></span>
                    <% } } %>
                </dd>
                
                <dt>Self-Introduction</dt>
                <dd class="intro">${empty introduction ? 'Not provided' : introduction}</dd>
            </d1>
            
            <a class="btn" href="index.html">&larr; Edit / Submit Another</a>
        </main>
    </body>
</html>
