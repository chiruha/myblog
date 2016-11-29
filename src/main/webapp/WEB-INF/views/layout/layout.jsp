<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- tiles 를 사용하 위한 태그 불러오기 -->
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Test</title>
<link rel="stylesheet" type="text/css" href="<c:url value='/resources/css/myblogCss.css'/>">
<script type="text/javascript" src="/mytest/resources/js/jquery-3.1.1.js"></script>
</head>
<body>
<div id="wrap">

	<!-- 실제 주소가 아닌 주소를 가지고 있는 tiles의 attributem를 가져온다 -->
	<div id="headerDiv">
		<tiles:insertAttribute name="header"/>
	</div>
	<div id="contentDiv">
		<div id="menuDiv">
			<tiles:insertAttribute name="menu"/>
		</div>
		<div id="bodyDiv">
		<div class="outer">
		<div class="inner">
			<tiles:insertAttribute name="body"/>		
		</div>
		</div>
		</div>
	</div>
	<div id="footerDiv">
		<tiles:insertAttribute name="footer"/>	
	</div>

</div>

</body>
</html>