
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="bean.LoginDao"%>  
<jsp:useBean id="obj" class="bean.User"/>  

<jsp:setProperty property="*" name="obj"/> 

<%
    boolean status= LoginDao.validate(obj);
    if (status){
        session.setAttribute("session", "TRUE");
        session.setAttribute("user",obj);
        
%>
<jsp:forward page="userhome.jsp"></jsp:forward>
<%
} else {
session.setAttribute("invalidlogin","TRUE");
}
%>  
<jsp:forward page="home.html"/>

