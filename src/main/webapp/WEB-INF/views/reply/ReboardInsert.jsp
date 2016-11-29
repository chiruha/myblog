<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div class="row">
 <div class="col-12">
<h2 class="text-center">ReplyBoard Insert</h2> 
</div>
</div>


<div class="row">
 <div class="col-2"></div>
 <div class="col-7">
<form action="Reinsert.do" class="form">
<label>글쓴이</label>
<input type="text" value="" name="reWriter"> <br>
<label>글제목</label>
<input type="text" value="" name="reTitle"> <br>
<label>글내용</label><br>
<textarea rows="10" cols="50" name="reContent"></textarea><br><br>
<input type="submit" value="write" class="button">
<input type="reset" value="reset" class="button">
</form>

</div>
</div>