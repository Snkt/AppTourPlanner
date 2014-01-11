<%-- 
    Document   : welcome
    Created on : 10 Jan, 2014, 2:32:58 PM
    Author     : sanket
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
                <script type="text/javascript" src="<%=request.getContextPath()%>/assets/notyPlugin/jquery-1.7.2.min.js"></script>
        <!--<script type="text/javascript" src="<%=request.getContextPath()%>/assets/notyPlugin/jquery.noty.packaged.min.js"></script>-->
        
<script type="text/javascript" src="<%=request.getContextPath()%>/assets/notyPlugin/jquery.noty.js"></script>
        <script type="text/javascript" src="<%=request.getContextPath()%>/assets/notyPlugin/top.js"></script>
        <script type="text/javascript" src="<%=request.getContextPath()%>/assets/notyPlugin/default.js"></script>
        <script type="text/javascript" src="<%=request.getContextPath()%>/assets/notyPlugin/inline.js"></script>
        
    </head>
    <body>
        <h1>Hello World! WEL COMEEE..</h1>
        <input type="button" value="btn" onclick="generateNoty()"/>
        
        <script >
            function generateNoty(){
                var n = noty({text: 'noty - a jquery notification library!'});
            }
        </script>
    </body>
</html>
