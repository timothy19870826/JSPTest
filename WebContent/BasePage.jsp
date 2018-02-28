<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="rapid" uri="http://www.rapid-framework.org.cn/rapid" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<rapid:block name="head">head is here</rapid:block>
</head>
<body>
	<rapid:block name="content">content is here</rapid:block>
	<c:out value="${lastDate}" default="${new Date()})"></c:out>
	<c:set scope="session" target="lastDate" value="${new Date()}"></c:set>
</body>
</html>