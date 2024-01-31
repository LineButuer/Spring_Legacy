<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="now" value="<%=new Date()%>"/>
<fmt:setLocale value="en_US" scope="session"/>
<h3>full :
  <fmt:formatDate value="${now}" type="date"
    dateStyle="full" timeZone="America/Los_Angeles"/>
</h3>
<h3>long :
  <fmt:formatDate value="${now}" type="date"
                  dateStyle="long"/>
</h3>
<h3>medium :
  <fmt:formatDate value="${now}" type="date"
                  dateStyle="medium"/>
</h3>
<h3>short :
  <fmt:formatDate value="${now}" type="date"
                  dateStyle="short"/>
</h3>
<hr>
<h3>full :
  <fmt:formatDate value="${now}" type="time"
                  timeStyle="full"/>
</h3>
<h3>long :
  <fmt:formatDate value="${now}" type="time"
                  timeStyle="long"/>
</h3>
<h3>medium :
  <fmt:formatDate value="${now}" type="time"
                  timeStyle="medium"/>
</h3>
<h3>short :
  <fmt:formatDate value="${now}" type="time"
                  timeStyle="short"/>
</h3>
<hr>
<h3>
  <fmt:formatDate value="${now}" type="date"
        pattern="yyyy년 MM월 dd일 (E)"/>
  <fmt:formatDate value="${now}" type="time"
        pattern="[a] HH:mm:ss"/>
</h3>
<%--
<%
  Date now = new Date();
  SimpleDateFormat sdf =
          new SimpleDateFormat("yyyy-MM-dd (E)");
  String nowDate = sdf.format(now);

  out.print("<h3>"+nowDate+"</h3>");
  //out 객체 : 브라우저에 출력하는 객체.
%>
--%>
<hr>
<h2>숫자 형식 지정</h2>
<fmt:formatNumber value="123456789"
                  groupingUsed="true"/><br>
<fmt:formatNumber value="3.141592"
                  pattern="#.##"/><br>
<fmt:formatNumber value="1.5"
                  pattern="#.000"/><br>
<fmt:formatNumber value="0.45" type="percent"/><br>

<fmt:formatNumber value="1000000000"
                  type="currency"/><br>

