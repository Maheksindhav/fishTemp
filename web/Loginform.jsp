<%-- 
    Document   : Loginform
    Created on : 19 Dec, 2024, 10:19:01 PM
    Author     : mahek
--%>

<%@page import="java.util.List"%>
<%@page import="org.hibernate.Query"%>
<%@page import="org.hibernate.Session"%>
<%@page import="org.hibernate.SessionFactory"%>
<%@page import="org.hibernate.cfg.Configuration"%>
<%@page import="classes.registration"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
              integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
        <link href="design.css" rel="stylesheet"/>
        <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
                integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
        crossorigin="anonymous"></script>


        <title>JSP Page</title>
    <body >
        <div class="card bg-transparent border-light"
             style=" background: linear-gradient(160deg,#89D8E3,#CD899E,#F9D3C0,#CFE0F8,#CD899E,#9B70A0,#101E42); height: auto; width: 390px; margin: 60px auto;">
            <div class="card-header h3  text-center  ">
                Fish Transportation

            </div>
            <div class="text-center h4 text-white">LOGIN FORM</div>
            <form class="px-3 py-1">

                <div class="card-body">

                    <div class="formmain mb-3">
                        <input type="text" name="unm" placeholder=" " class="form-control textbox"/>
                        <label  class="form-labeline">Enter Username</label>
                    </div>
                    <!--<input type="hidden" name="cap1"  id="captchavalue" value=""/>-->
                    <div class="formmain mb-3"  style="padding: 0px !important;" >
                        <input type="password" name="pw" placeholder=" " class="form-control textbox"/>
                        <label  class="form-labeline">Enter Password</label>
                    </div>

                    <div class="d-flex row justify-content-around">
                        <div class="col-md-3 col-lg-3 col-sm-4 fs-4 fw-bold" id="captchavalue" >
                            ssss
                        </div><div class="col-md-7 col-lg-7 col-sm-8 p-0 formmain">
                            <input type="text" class="form-control textbox" placeholder="" name="cap2">
                            <label  class="form-labeline" >Enter Captcha</label></div>
                    </div>
                </div>
                <div class="my-2 text-center">
                    <button type="submit" class="btn btn-info text-center text-white "  name="btn"><i class='bx bxs-lock' ></i>LOGIN</button>
                </div>
                <div class="d-flex justify-content-between mb-3">
                    <a href="registration.jsp" class="text-decoration-none  mx-1  text-white">
                        <i class='bx bxs-user'></i>User Registration</a>
                    <a href="forgetpw.jsp" class="text-decoration-none  mx-1  text-white">Forget your Password</a>
                </div>
                <div class="card-footer text-center  text-white">
                    @2025,Porbandar Gujarat 360575</br>Develop by:PMD
                </div>
        </div>
    </form>

    <script type="text/javascript" src="generate.js" ></script>
</div>
</head>
</body>
</html>
<%
    if (request.getParameter("btn") != null) {
        try {
            String unm = request.getParameter("unm");
            String pw1 = request.getParameter("pw");
            String cap1 = request.getParameter("cap1");
//            String cap2 = request.getParameter("cap2");
//            out.println(cap1 + cap2);
            registration r = new registration();
            Configuration con = new Configuration().configure().addAnnotatedClass(registration.class);
            SessionFactory sf = con.buildSessionFactory();
            Session s = sf.openSession();
            Query o = s.createQuery("from registration where  username like'%" + unm + "%' ");
            List<registration> l = o.list();
            for (registration elem : l) {
                String usernm = elem.getUsername();
                String pw = elem.getPassword();
                if (unm.equals(usernm) && pw1.equals(pw)) {
                    out.println("done");
                    out.print(usernm + pw);
                } else {
                    out.println("incorrect");
                }

            }

        } catch (Exception e) {
            System.out.println(e);
        }
    }
%>