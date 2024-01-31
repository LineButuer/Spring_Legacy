<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>초간단 계산기</title>
</head>
<body>
<h1>계산기</h1>
<form action="calProc">
    <p>Num 1 :
        <input type="number" name="num1" value="0">
    </p>
    <p>Num 2 :
        <input type="number" name="num2" value="0">
    </p>
    <p>
        <button type="button">+</button>
        <button type="button">-</button>
        <button type="button">*</button>
        <button type="button">/</button>
        <button type="button">%</button>
    </p>
    <input type="hidden" name="op" id="op">
    <p>
        <input type="submit" value="전송">
    </p>
</form>
<c:import url="today.jsp"/>
</body>
<script>
    const btns = document.getElementsByTagName("button");
    console.log(btns);
    const opInput = document.getElementById("op");
    //각 버튼 처리
    btns[0].addEventListener("click", function () {
        opInput.value = "+";
    });
    btns[1].addEventListener("click", function () {
        opInput.value = "-";
    });
    btns[2].addEventListener("click", function () {
        opInput.value = "*";
    });
    btns[3].addEventListener("click", function () {
        opInput.value = "/";
    });
    btns[4].addEventListener("click", function () {
        opInput.value = "%";
    });
</script>
</html>
