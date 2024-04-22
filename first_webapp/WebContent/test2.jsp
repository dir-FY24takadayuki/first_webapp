<%@ page language="java" contentType="UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ja">
    <head>
        <meta charset="UTF-8">
        <title>JSPのテストよ</title>
    </head>
    <body>
    <%--変数の表示 --%>
    <%
        int a = 3;
        int b = 2;
        int c = a + b;
        %>
    <p>c = <%=c %></p>
    
    <%-- 条件分岐 --%>
    <% int d = 40;%>
    <% if (d >= 60){ %>
    <p>合格ですね！！おめでとうございます！！！</p>
    
    <% } else { %>
        <p>残念ながら、今回は赤点です、、、一緒に補修がんばりましょ！！</p>
        <%} %>>
        
     <%--繰り返し--%>
     <%  for(int i=0; i<10; i++){ %>
        <p>i=<%= i %></p>
        <%} %>
    </body>
</html>