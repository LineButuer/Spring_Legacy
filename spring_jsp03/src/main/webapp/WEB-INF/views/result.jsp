<%@ page import="java.util.Date" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%!
    //선언부(Declaration)
    public int add(int a, int b){
        return a + b;
    }
%>
<html>
<head>
    <title>계산 결과</title>
</head>
<body>
<h1>계산 결과</h1>
<p>${res.num1} ${res.op} ${res.num2}
    = ${res.result}</p>

<%
    //하나의 메소드라고 생각하고 코드를 작성.
    int a = 10;
    int b = 20;
    String str = "abcd";
    System.out.println("콘솔에 출력!");
    out.println("자바코드에서 출력함!");
    Date today = new Date();
%>
<p>여긴 HTML 영역</p>
<%
    //여기는 자바코드 영역
    a = 4000;
    int res = add(a, b);

    for(int i = 0; i < 5; i++){
%>
    <p>안녕하세요</p>
<%
    }
%>
<p><%=res%></p>
</body>
</html>
