<%-- 
    Document   : tryjsp
    Created on : 11 Jan, 2025, 4:06:05 PM
    Author     : mahek
--%>



<%@page import="com.sun.mail.smtp.SMTPMessage"%>
<%@page import="javax.mail.Transport"%>
<%@page import="javax.mail.internet.InternetAddress"%>
<%@page import="javax.mail.Message"%>
<%@page import="javax.mail.internet.MimeMessage"%>
<%@page import="javax.mail.PasswordAuthentication"%>
<%@page import="javax.mail.Authenticator"%>
<%@page import="javax.mail.Session"%>
<%@page import="java.util.Properties"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    Integer flag = 0;
    if (application.getAttribute("counter") == null) {
        flag = 0;
    } else {
        flag =(Integer) application.getAttribute("counter");
    }
//Integer flag = (Integer) application.getAttribute("counter");

%>
<%
    if (request.getParameter("btn") != null) {
        final String otp = request.getParameter("o");
        final String subject = "OTP";
        final String to = request.getParameter("em");

        Properties pro = new Properties();
        pro.put("mail.smtp.host", "smtp.gmail.com");
        pro.put("mail.smtp.port", "587");
        pro.put("mail.smtp.auth", "true");
        pro.put("mail.smtp.starttls.enable", "true");

        Session se = Session.getDefaultInstance(pro, new Authenticator() {
            protected PasswordAuthentication getPasswordAuthentication() {

                return new PasswordAuthentication("maheksindhav3@gmail.com", "khuc vcbc mmqd jgkr");
            }

        });

        try {
            //COMPOSITE MAIL
            SMTPMessage sendmessage = new SMTPMessage(se);

            sendmessage.setFrom(new InternetAddress("maheksindhav3@gmail.com"));
            sendmessage.setRecipients(Message.RecipientType.TO, InternetAddress.parse(to));
            sendmessage.setSubject(subject);
            sendmessage.setText(otp);

            Transport.send(sendmessage);

            flag = 1;
            application.setAttribute("counter", flag);
            out.print(flag);
        } catch (Exception e) {
            out.println(e);

        }

    }


%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
              integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
        <link href="design.css" rel="stylesheet"/>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
                integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
        crossorigin="anonymous"></script>
        <title>JSP Page</title>
    </head>
    <body >

        <div class="card bg-transparent border-light"
             style=" background: linear-gradient(160deg,#89D8E3,#CD899E,#F9D3C0,#CFE0F8,#CD899E,#9B70A0,#101E42); height: auto; width: 390px; margin: 60px auto;">
            <div class="card-header h3  text-center  ">
                Fish Transportation
            </div>
            <div class="text-center h4 text-white">REGISTRATION FORM</div>


            <div class="card-body">
                <form class="row g-3 ">


                    <div  class=" formmain" >
                        <input type="text" class="form-control textbox" id="fullnm"  placeholder="">
                        <label  class="form-labeline">Enter Fullname</label>
                    </div>
                    <div  class=" formmain">
                        <input type="text" class="form-control textbox" id="refeid" placeholder="">
                        <label  class="form-labeline">Enter Username</label>
                    </div>
                    <div >
                        <select id="city" class="form-select" >
                            <option selected>---Choose City---</option>
                            <option>Porbandar</option>
                            <option>Surat</option>
                            <option>Navsari</option>
                        </select>
                    </div>
                    <div  class=" formmain" >
                        <input type="number" id="refeid" placeholder=""  class="form-control textbox">
                        <label  class="form-labeline">Enter MobileNo</label>
                    </div>
                    <div  class=" formmain">
                        <input type="email"  placeholder="" name="em" class="form-control textbox" >
                        <label  class="form-labeline" >Enter Email</label>
                    </div>
                    <input type="hidden" id="otp" name="o" value="<%= request.getParameter("otp")%>"/>
                    <div class="d-flex">
                        <div class="col-md-3 col-lg-3 col-sm-4 fs-4 fw-bold" id="captchavalue"   >
                            ssss

                        </div>
                        <div class=" formmain col-lg-9">
                            <input type="text" class="form-control textbox"  name="capt" placeholder="">
                            <label  class="form-labeline">Enter Captcha</label></div>
                    </div>

                    <div class="text-center">
                        <button type="submit" class="btn btn-info text-center text-white " name="btn"  >Generate OTP</button>
                    </div>
                    <%
                        if (flag == 1) {
                    %>
                    <div  id="checkotp"  >
                        <div class=" formmain">
                            <input type="number" class="form-control textbox"   placeholder="">
                            <label  class="form-labeline">Enter OTP</label>
                        </div>

                        <div class="text-center">
                            <button type="submit" class="btn btn-info text-center text-white " name="btncheck"  >Check OTP</button>
                        </div>
                    </div>
                    <% }%>
                    <div class="mb-3">
                        <a href="Loginform.jsp" class="text-decoration-none  mx-1 text-white">=>Login Form</a>
                    </div>

                </form>
                <div class="card-footer text-center  text-white">
                    @2025,Porbandar Gujarat 360575</br>Develop by:PMD
                </div> 
            </div>


        </div>

        <script type="text/javascript">
            var alpha = ['A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N',
                'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z', 'a', 'b', 'c', 'd', 'e', 'f',
                'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't',
                'u', 'v', 'w', 'x', 'y', 'z'];



            var a = alpha[Math.floor(Math.random() * alpha.length)];
            var b = alpha[Math.floor(Math.random() * alpha.length)];
            var c = alpha[Math.floor(Math.random() * alpha.length)];
            var d = alpha[Math.floor(Math.random() * alpha.length)];



            var sum = a + b + c + d;

            captchavalue.innerHTML = sum;


            var num = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9'];

            var a = num[Math.floor(Math.random() * num.length)];
            var b = num[Math.floor(Math.random() * num.length)];
            var c = num[Math.floor(Math.random() * num.length)];
            var d = num[Math.floor(Math.random() * num.length)];
            var e = num[Math.floor(Math.random() * num.length)];
            var f = num[Math.floor(Math.random() * num.length)];

            var s = a + b + c + d + e + f;

            document.getElementById("otp").value = s;

        </script>

    </body>
</html>

<script>

</script>