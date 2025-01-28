<%-- 
    Document   : newjsp
    Created on : 20 Jan, 2025, 11:39:31 PM
    Author     : mahek
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script type="text/javascript">
            // Function to save the value of textbox to sessionStorage
            function saveValue() {
                var textboxValue = document.getElementById("textbox1").value;
                sessionStorage.setItem("textboxValue", textboxValue); // Store the value
            }
        </script>
    </head>
    <body>
        <label for="textbox1">Textbox 1 (Enter Value):</label>
        <input type="text" id="textbox1" oninput="saveValue()" />

        <br><br>

        <button onclick="window.location.href = 'newjsp1.jsp'">Go to Page 2</button> <!-- Button to navigate to page2.jsp -->

    </body>
</body>
</html>
