<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<h1>menu</h1>
<ul>

<c:choose>
 	<c:when test="${empty sessionScope.logininfo }"> 
		<li><a href="<c:url value='login.do'/>"> Login </a></li>
		<li><a href="<c:url value='goMuinsert.do'/>"> Join </a></li>
 	</c:when>
 	<c:otherwise>
		<li><a href="<c:url value='logout.do'/>"> Logout </a></li>
 	</c:otherwise>
</c:choose>
  
  <li><a href="<c:url value='Mulist.do'/>"> User List </a></li>
  <li><a href="<c:url value='#'/>"> Board List </a></li>
  <li><a href="<c:url value='goReinsert.do'/>"> Board Write </a></li>
  <li><a href="<c:url value='test.do'/>"> Test </a></li>
  
</ul>


