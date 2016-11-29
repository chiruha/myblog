<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<div class="row">
 <div class="col-12">
 
<h2 class="text-center">Myuser Detail</h2>
<form action="Muupdate.do" method="post" class="form">
	<label for="muId">ID</label><input type="text" name="muId" id="muId"><br>
	<label for="muPwd">PWD</label><input type="password" name="muPwd" id="muPwd"><br>
	<label for="muName">NAME</label><input type="text" name="muName" id="muName"><br>
	<label for="muPhone">PHONE</label><input type="text" name="muPhone" id="muPhone"><br>
	<input type="hidden" name="muDel" id="muDel" value="N"><br>
		
	<button class="button">join</button>
</form>

</div>
</div>
