<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
<%!
	String msgFmt;
	int visitedCount;
	
	public void jspInit(){
		msgFmt = "visit count: %d";
		visitedCount = 0;
		System.out.println("JSP init.");
	}
	
	public void jspDestroy(){
		System.out.println("JSP destroy.");
	}
%>

<%@ include file="/Hello.jsp" %>

<% visitedCount++; %>
<h2>
<% if (visitedCount == 1){ %>
	You are the first visitor.
<%} else {%>
	<%=String.format(msgFmt, visitedCount) %>
<%} %>
</h2>
<p>
<%=new Date() %>
</p>
<jsp:include page="/IncludeAction.jsp"></jsp:include>
<jsp:useBean id="TestBean" class="com.bigcat.bean.TestBean"></jsp:useBean>
<p>
	Test bean name is <jsp:getProperty property="beanName" name="TestBean"/>
	<br>
	<jsp:setProperty property="beanName" name="TestBean" value="BigJavaBean"/>
	And now is <jsp:getProperty property="beanName" name="TestBean"/>
</p>

<jsp:element name="XmlElement">
<jsp:attribute name="ElementAttrib">Here is attribute</jsp:attribute>
<jsp:body>
Here is children.
<jsp:element name="ChildElement">
<jsp:body>
Here is first child.
</jsp:body>
</jsp:element>
</jsp:body>
</jsp:element>

<br>
<%
	out.println("RequestParameters:<br>");
	out.println("{<br>");
	Enumeration<String> enumeration = request.getParameterNames();
	while (enumeration != null && enumeration.hasMoreElements()){
		String name = enumeration.nextElement();
		out.println(String.format("%s:%s<br>", name, request.getParameter(name)));
	}
	out.println("}<br>");
%>
<%
	response.setIntHeader("Refresh", 5);
	out.println("<br>");
	out.println("ResponseAutoFresh:");
	out.println(new Date());
	out.println("<br>");
%>


</body>
</html>