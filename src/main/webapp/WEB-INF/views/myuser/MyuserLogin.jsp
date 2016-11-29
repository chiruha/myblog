<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<script type="text/javascript">
<!-- 로그인 유효성 검사 //-->
	 $(document).ready(function() {
		var fail="${loginFail}";
		//var fail='loginFail';  // 테스트용
		console.log('fail:'+fail);
		if(fail=='loginFail'){
			// 레이어 아이디 저장 변수
			var layerId=$('#loginlayer1');
			console.log('layerId h,w:'+layerId.outerHeight()+", "+layerId.outerWidth());			
			console.log('document h,w:'+$(document).outerHeight()+", "+$(document).outerWidth());			
			// 화면 중앙으로 css 맞추기
			if(layerId.outerHeight() < $(document).height()){
				layerId.css('margin-top','-'+layerId.outerHeight()/2+'px');
			}else{
				layerId.css('top','0px');
			}
			if(layerId.outerWidth() < $(document).width()){
				layerId.css('margin-left','-'+layerId.outerWidth()/2+'px');
			}else{
				layerId.css('left','0px');
			}
			// 레이어 띄우기
			layerId.fadeIn();
			
		}
		
		// 레이어 닫기
		$('.cbtn').click(function(e) {
			layerId.fadeOut();
		});
		
	
	});

	 
// 레이어 팝업으로 로그인 실패시 실패 창 띄우기 - 미완성

</script>

<div class="row">
 <div class="col-12">
 	<h2 class="text-center">Login</h2>
 </div>
</div>
<div class="row">
 <div class="col-2"></div>
 <div class="col-7">

	<form action="logincheck.do" method="post" class="form">
	
		<label for="muId">ID</label><input type="text" name="muId" id="muId" placeholder="아이디를 입력하세요"><br>
		<label for="muPwd">PWD</label><input type="password" name="muPwd" id="muPwd" placeholder="비밀번호를 입력하세요"><br>
		<br>
		<button class="button">login</button>

	</form>
</div>
</div>




<div id="loginlayer1" class="pop-layer">
	<div class="pop-container">
		<div class="pop-conts">
			<!--content //-->
			<p class="ctxt mb20 text-center">
			 아이디 및 비밀번호가 일치하지 않습니다
			</p>
			<div class="btn-r">
				<button class="cbtn">Close</button>
			</div>
			<!--// content-->
		</div>
	</div>
</div>

