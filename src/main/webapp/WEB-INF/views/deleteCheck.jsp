<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="/resources/css/main.css">

</head>
<body>
<%@include file="component/header.jsp"%>
<%@include file="component/nav.jsp"%>
<form action="/board/delete" method="post" name="deleteForm">
    <input type="hidden" name="id" value="${board.id}" readonly>
    <input type="text" name="boardPass" id="board-pass"  placeholder="비밀번호 입력하세요"> <br>
    <input type="button" value="확인" onclick="deleteCkFn()">
</form>
<%@include file="component/footer.jsp"%>

</body>
<script>

    const deleteCkFn = () => {
        const passInput = document.getElementById("board-pass").value;
        const passDB = '${board.boardPass}';
        if (passInput == passDB) {
            document.deleteForm.submit();
        } else {
            alert("비밀번호가 일치하지 않습니다!!");
        }
    }
</script>
</html>