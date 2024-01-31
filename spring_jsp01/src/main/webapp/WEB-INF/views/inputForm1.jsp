<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>입력양식</title>
</head>
<body>
    <h1>정보 입력</h1>
    <form action="inData" method="get">
        <input type="text" name="str"
            placeholder="문자열 입력"><br>
        <input type="number" name="num"
               placeholder="정수 입력"><br>
        <input type="submit" value="전송">
    </form>
</body>
</html>
