<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script>
<c:choose>
	<c:when test="${SUC==true }">
		alert("정보수정이 완료되었습니다.");
		location.href="../06Session/Login.jsp";
	</c:when>
	<c:otherwise>
		alert("정보수정 실패");
		history.back();
	</c:otherwise>
</c:choose>
</script>