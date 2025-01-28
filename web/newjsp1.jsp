<%-- 
    Document   : newjsp1
    Created on : 20 Jan, 2025, 11:39:49 PM
    Author     : mahek
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script type="text/javascript">
            // Function to load the value from sessionStorage and set it in the textbox
            function loadValue() {
                var savedValue = sessionStorage.getItem("textboxValue"); // Retrieve the value
                if (savedValue) {
                    document.getElementById("textbox2").value = savedValue; // Set value to textbox2
                }
            }
        </script>
    </head>
    <body onload="loadValue()"> <!-- Call loadValue() on page load -->

        <label for="textbox2">Textbox 2 (Value from Page 1):</label>
        <input type="text" id="textbox2" readonly /> <!-- Display value here -->

    </body>
</html>
