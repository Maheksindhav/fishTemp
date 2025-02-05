<%-- 
    Document   : view registration
    Created on : 4 Feb, 2025, 3:59:47 PM
    Author     : mahek
--%>Aaaa

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
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
                integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
        crossorigin="anonymous"></script>
        <title>JSP Page</title>
    </head>
    <body>
        <h2 class="text-center mt-3 ">View User</h2>
        <div class="container-fluid " >
            <table class="table table-bordered  mt-3 table-sm table-striped border-dark table-hover"  align="center" >
                <tr  class="text-center table-dark text-white">
                    <th>RefId</th>
                    <th>FullName</th>
                    <th>UserName</th>
                    <th>City</th>
                    <th>MobileNo</th>
                    <th>Email</th>
                    <th>PassWord</th>   
                    <th></th>   

                </tr>
                <%
                    registration r = new registration();
                    Configuration con = new Configuration().configure().addAnnotatedClass(registration.class);
                    SessionFactory sf = con.buildSessionFactory();
                    Session s = sf.openSession();
    //                    Transaction t=s.beginTransaction();

                    Query o = s.createQuery("from registration");
                    List<registration> l = o.list();
                    for (registration elem : l) {
                        int id = elem.getRefid();
                        String fnm = elem.getFullnm();
                        String unm = elem.getUsername();
                        String city = elem.getCity();
                        String mno = elem.getMobileno();
                        String em = elem.getEmail();
                        String pw = elem.getPassword();
                %>
                <tr class="text-center">
                    <td><%=id%></td>
                    <td><%=fnm%></td>
                    <td><%=unm%></td>
                    <td><%=city%></td>
                    <td><%=mno%></td>
                    <td><%=em%></td>
                    <td><%=pw%></td>
                    <td><a href="#">View as User</a></td>
                </tr>
                <%}%>
            </table>
        </div>
    </body>
</html>
