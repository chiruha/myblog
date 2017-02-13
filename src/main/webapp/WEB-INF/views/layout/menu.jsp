<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<h1>menu</h1>
<ul>

<c:choose>
 	<c:when test="${empty sessionScope.logininfo }"> 
		<li><a href="<c:url value='/login.do'/>"> Login </a></li>
		<li><a href="<c:url value='/goMuinsert.do'/>"> Join </a></li>
 	</c:when>
 	<c:otherwise>
		<li><a href="<c:url value='/logout.do'/>"> Logout </a></li>
 	</c:otherwise>
</c:choose>
  
  <li><a href="<c:url value='/Mulist.do'/>"> User List </a></li>
  <li><a href="<c:url value='/RE/ReboardList.go'/>"> Board List </a></li>
  <li><a href="<c:url value='/RE/ReboardInsert.go'/>"> Board Write </a></li>
  <li><a href="<c:url value='/RE/GridList.go'/>" onClick="alert('준비중입니다.'); return false;" style="color:#D8D8D8"> Grid List </a></li>
  <li><a href="<c:url value='/RE/SmartEditor.go'/>" onClick="alert('준비중입니다.'); return false;" style="color:#D8D8D8"> SmartEditor Write </a></li>
  <li><a href="<c:url value='/test.do'/>"> Test </a></li>
  
</ul>


