<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script>
<c:choose>
	<c:when test="${SUC==true }">
		alert("회원가입이 완료되었습니다.");
		location.href="../06Session/Login.jsp";
	</c:when>
	<c:otherwise>
		alert("회원가입 실패");
		history.back();
	</c:otherwise>
</c:choose>
</script>