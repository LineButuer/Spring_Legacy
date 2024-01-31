<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>출력 페이지</title>
</head>
<body>
<h1>출력 페이지</h1>
<p>메시지 : ${msg}</p>
<h2>회원 정보</h2>
<p>ID : ${mem.id}</p>
<p>NAME : ${mem.name}</p>
<p>AGE : ${mem.age}</p>
</body>
<script>
    let message = '${msg}';
    alert(message);
</script>
</html>
