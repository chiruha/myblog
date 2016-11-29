<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script type="text/javascript">
<!-- 유효성검사 //-->
$(document).ready(function(){
	// 글자수 (아이디/ 비번)
	// 비밀번호 특문 검사   -- 나중에 암호화 하기
	// 아이디 중복체크 -- ajax?
			
	// Regular Expression (정규식)
	var re_id = /^[a-z0-9_-]{3,16}$/; // 아이디 검사식
	var re_pw = /^[a-z0-9_-]{6,18}$/; // 비밀번호 검사식
	var re_mail = /^([\w\.-]+)@([a-z\d\.-]+)\.([a-z\.]{2,6})$/; // 이메일 검사식
	var re_url = /^(https?:\/\/)?([a-z\d\.-]+)\.([a-z\.]{2,6})([\/\w\.-]*)*\/?$/; // URL 검사식
	var re_tel = /^[0-9]{8,11}$/; // 전화번호 검사식
	
	
	$("input").on("focus", function() {
		var msg=$(this).attr("id");
		console.log(msg+", span : ");
		
	 	if(msg=="muId"){
			msg="영문 및 숫자 4~12문자";
		}else if(msg=="muPwd"){
			msg="영문 및 숫자를 섞어서 4~10문자"; 	
		}else if(msg="muName"){
			msg="본인의 이름을 입력해 주세요";
		}else if(msg=="muPhone"){
			msg="하이픈(-) 포함하여 입력해주세요";
		} 
		
		console.log("msg : "+msg);
		$('this span').html(msg).insertAfter(this).addClass('msgSpan');
		
	});

});



</script>


<div class="row">
 <div class="col-12">
	<h2 class="text-center" data-tooltip-text="회원가입">Myuser Insert</h2>
</div>
</div>

<div class="row">
 <div class="col-2"></div>
 <div class="col-7">
<form action="Muinsert.do" method="post" class="form">
	<label for="muId" >ID</label><input type="text" name="muId" id="muId" placeholder="아이디를 입력하세요"><br>
		<span class="inputmsg">영문, 숫자 포함 4~10문자 </span><br>
	<label for="muPwd">PWD</label><input type="password" name="muPwd" id="muPwd" placeholder="비밀번호를 입력하세요"><br>
		<span class="inputmsg">영문, 숫자, 특수문자 포함 5~13문자</span><br>
	<label for="muName">NAME</label><input type="text" name="muName" id="muName" placeholder="성함을 입력하세요"><br><br>
	<label for="muPhone">PHONE</label><input type="text" name="muPhone" id="muPhone" placeholder="전화벌호를 입력하세요"><br>
		<span class="inputmsg">하이픈(-) 포함하여 작성</span>
	<input type="hidden" name="muDel" id="muDel" value="N"><br><br>
		
	<button class="button">join</button>
</form>
 </div>

</div>
