<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="ja">
    <head>
        <meta charset="UTF-8">
        <title>JSTLのテスト</title>
    </head>
    <body>
    <!-- 変数の表示 -->
        <c:set var="a" value="2" />
        <c:set var="b" value="3" />
        <c:set var="c" value="${a + b}" />
        <p>c = <c:out value="${c}" /></p>
        
     <!-- 条件分岐 -->
     <c:set var="d" value="80"/>  
     <c:if test="${d >= 60}">
     <p>合格です！</p>  
     </c:if>
     
     <c:set var = "e" value="40" />
     <c:choose>
        <c:when test="${e>=80}">
            <p>合格よ！</p>
        </c:when>
        <c:when test="${e>=60 }">
            <p>今回は補習受けなくていいけど次はしっかり勉強してこいや。</p>
        </c:when>
        <c:otherwise>
            <p>赤点だ。ばーか。補講でろよ。</p>
        </c:otherwise>
     </c:choose>
     
     <!-- 繰り返し 変数に値を入れるとき、値は””でくくったものを入れる-->
     <c:forEach var="i" begin="0" end="9" step="1">
     <p><c:out value="${i}"/></p>
     </c:forEach>
     
     <!-- 拡張フォーーーー文 -->>
     <c:set var="nums" value="10,20,30,40,50" />
     <c:forEach var="num" items="${nums}">
            <p><c:out value="${num}" /></p>
     </c:forEach>
     
    </body>
</html>