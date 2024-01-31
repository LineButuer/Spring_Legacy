<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>시작</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
<h1>첫 페이지</h1>
<div>
    <a href="inputForm">[입력화면]</a><br>
    <a href="joinForm">[회원가입]</a><br>
    <a href="output">[출력화면]</a><br>
    <a href="output2">[출력화면2]</a><br>
</div>
<div>
    <p>첫번째 데이터 : ${data}</p>
    <p>두번째 데이터 : ${number + 50}</p>
</div>
<img src="images/cake.jpg" width="500">

<%
    //이 영역을 스크립트릿(Scriptlet)이라고 함.
    //순수 자바 코드를 작성할 수 있는 영역.
    //자바코드용 주석
    int a = 100;
    int b = 200;
    int c = a + b;
    System.out.println(a + " + " + b + " = " + c);
%>
<p><%=a%>+<%=b%>=<%=c%></p>
</body>
</html>
