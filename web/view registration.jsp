<%-- 
    Document   : view registration
    Created on : 4 Feb, 2025, 3:59:47 PM
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
        <title>JSP Page</title>
    </head>
    <body>
        <table border="1" align="center" style="margin-top: 12px;">
            <tr>
                <th>RefId</th>
                <th>FullName</th>
                <th>UserName</th>
                <th>City</th>
                <th>MobileNo</th>
                <th>Email</th>
                <th>PassWord</th>              
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
            <tr>
                <td><%=id%></td>
                <td><%=fnm%></td>
                <td><%=unm%></td>
                <td><%=city%></td>
                <td><%=mno%></td>
                <td><%=em%></td>
                <td><%=pw%></td>

            </tr>
            <%}%>
        </table>
    </body>
</html>
