<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%-- jsp용 주석 --%>
<%-- jstl로 변수 생성 --%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="num1" value="10"/>
<c:set var="num2" value="20"/>
<c:set var="res" value="${num1 + num2}"/>
<html>
<head>
    <title>JSTL 예제</title>
</head>
<body>
<p>${num1} + ${num2} = ${res}</p>
<hr>
<h2>if 태그</h2>
<c:set var="id" value="user"/>
<c:if test="${empty id}">
    <p>guest님 환영합니다.</p>
</c:if>
<c:if test="${!empty id}">
    <p>${id}님 환영합니다.</p>
</c:if>
<c:if test="${num1 > num2}">
    <p>num1이 큰 수입니다.</p>
</c:if>
<p>${num1 == num2}</p>
<p>${(num1 < num2) && (num2 > 0)}</p>
<hr>
<h2>choose 태그</h2>
<c:set var="sel" value="3"/>
<c:choose>
    <c:when test="${sel == 1}">
        <p>처음 뵙겠습니다.</p>
    </c:when>
    <c:when test="${sel > 1}">
        <p>반갑습니다.</p>
    </c:when>
    <c:otherwise>
        <p>안녕하세요.</p>
    </c:otherwise>
</c:choose>
<hr>
<h2>forEach 태그</h2>
<c:forEach var="cnt" begin="1" end="5" step="1">
    <font size="${cnt}">Hi~~</font><br>
</c:forEach>
<h2>간식들</h2>
<ul>
    <c:forEach var="food" items="${list}" varStatus="st">
        <c:if test="${st.count % 2 == 0}">
            <li>
                <span style="color: red">
                    ${st.index}-${st.count} : ${food}
                </span>
            </li>
        </c:if>
        <c:if test="${st.count % 2 != 0}">
            <li>${st.index}-${st.count} : ${food}</li>
        </c:if>
        <c:if test="${st.last}">
            <li><b>${st.index}-${st.count} : ${food}</b></li>
        </c:if>
    </c:forEach>
</ul>
</body>
</html>
