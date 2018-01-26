<%@ include file="../../include/main_include.jsp"%>

<%@page import="stream.ischool.dataObjects.UserProfileDO"%>

<% 
	
	if(isStudent())	
	{
		response.sendRedirect("student_performance.jsp");
	}else if(isTeacher())
	{
		response.sendRedirect("teacher_performance.jsp");
	}else if(isSupervisor())
	{
		response.sendRedirect("supervisor_performance.jsp");
	}else if(isHeadmaster())
	{
		response.sendRedirect("headmaster_performance.jsp");
	}
%>

