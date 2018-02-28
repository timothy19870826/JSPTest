<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
	<c:set var="lastDate" value="${1}" scope="session"></c:set>
	<c:if test="${lastDate == 1}">
	<c:out value="${lastDate}"></c:out>
	</c:if>
	<c:out value="new Date()"></c:out>
	<c:set var="lastDate" value="${lastDate+1}" scope="session"></c:set>
	<c:choose>
		<c:when test="${lastDate > 5}">
			<c:out value="valu1 ${lastDate}"></c:out>
		</c:when>
		<c:otherwise>
			<c:out value="valu2 ${lastDate}"></c:out>
		</c:otherwise>
	</c:choose>
</body>
</html>