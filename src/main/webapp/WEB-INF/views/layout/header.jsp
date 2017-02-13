<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
    
    
     <h1>header</h1>
     
     <c:if test="${not empty sessionScope.logininfo}">
     	<h4><a href="<c:url value='/mudetail.do/?muNum=${logininfo.muNum }' />"  onClick="alert('준비중입니다.'); return false;">${logininfo.muId}</a> 님 환영합니다</h4>
     </c:if>  