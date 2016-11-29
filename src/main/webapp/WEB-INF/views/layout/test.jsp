<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div class="text-center">
	<h1 class="text-center" data-tooltip-text="툴팁 테스트">Test page</h1>
</div>

<style type="text/css">
.layer {display:none; position:fixed; _position:absolute; top:0; left:0; width:100%; height:100%; z-index:100;}
.layer .bg {position:absolute; top:0; left:0; width:100%; height:100%; background:#000; opacity:.5; filter:alpha(opacity=50);}
.layer .pop-layer {display:block;}
.pop-layer {display:none; position: absolute; top: 50%; left: 50%; width: 410px; height:auto;  background-color:#fff; border: 5px solid #3571B5; z-index: 10;}	
.pop-layer .pop-container {padding: 20px 25px;}
.pop-layer p.ctxt {color: #666; line-height: 25px;}
.pop-layer .btn-r {width: 100%; margin:10px 0 20px; padding-top: 10px; border-top: 1px solid #DDD; text-align:right;}
a.cbtn {display:inline-block; height:25px; padding:0 14px 0; border:1px solid #304a8a; background-color:#3f5a9d; font-size:13px; color:#fff; line-height:25px;}	
a.cbtn:hover {border: 1px solid #091940; background-color:#1f326a; color:#fff;}
</style>

<script type="text/javascript">
	function layer_open(el){
		
		var temp = $('#' + el);		//레이어의 id를 temp변수에 저장
		var bg = temp.prev().hasClass('bg');	//dimmed 레이어를 감지하기 위한 boolean 변수
		console.log("el:"+el+", $el:"+temp+", bg:"+bg);
		
		if(bg){
			$('.layer').fadeIn();
		}else{
			temp.fadeIn();	//bg 클래스가 없으면 일반레이어로 실행한다.
		}

		// 화면의 중앙에 레이어를 띄운다.
		if (temp.outerHeight() < $(document).height() ) temp.css('margin-top', '-'+temp.outerHeight()/2+'px');
		else temp.css('top', '0px');
		if (temp.outerWidth() < $(document).width() ) temp.css('margin-left', '-'+temp.outerWidth()/2+'px');
		else temp.css('left', '0px');

		temp.find('.cbtn').click(function(e){
			if(bg){
				$('.layer').fadeOut();
			}else{
				temp.fadeOut();		//'닫기'버튼을 클릭하면 레이어가 사라진다.
			}
			e.preventDefault();
		});

		$('.layer .bg').click(function(e){
			$('.layer').fadeOut();
			e.preventDefault();
		});

	}				
</script>

<h5 data-tooltip-text="css 툴팁 테스트1 ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~">css 툴팁 테스트 1</h5>
<h5 data-tooltip-text="css 툴팁 테스트2 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@">css 툴팁 테스트 2</h5>
<a href="#" data-tooltip-text="a tag tooltip test1">a tag tooltip 1</a><br>
<a title="This is some information for our tooltip." class="tooltip01">CSS3 Tooltip01</a><br>
<input type="text" placeholder="input tooltipe test" title="create tooltip box test01" class="tooltip" ><br>
<div class="tooltip">w3 tooltip
	<span class="tooltiptext">Tooltip text</span>
</div>


<br>
<a href="#" class="btn-example" onclick="layer_open('layer1');return false;">layer popup</a>
<div id="layer1" class="pop-layer">
	<div class="pop-container">
		<div class="pop-conts">
			<!--content //-->
			<p class="ctxt mb20">Thank you.<br>
				Your registration was submitted successfully.<br>
				Selected invitees will be notified by e-mail on JANUARY 24th.<br><br>
				Hope to see you soon!
			</p>

			<div class="btn-r">
				<button class="cbtn" >Close</button>
			</div>
			<!--// content-->
		</div>
	</div>
</div>

<br>

<a href="#" class="btn-example" onclick="layer_open('layer2');return false;">dimmed layer popup</a>
<div class="layer">
	<div class="bg"></div>
	<div id="layer2" class="pop-layer">
		<div class="pop-container">
			<div class="pop-conts">
				<!--content //-->
				<p class="ctxt mb20">Thank you.<br>
					Your registration was submitted successfully.<br>
					Selected invitees will be notified by e-mail on JANUARY 24th.<br><br>
					Hope to see you soon!
				</p>

				<div class="btn-r">
					<a href="#" class="cbtn">Close</a>
				</div>
				<!--// content-->
			</div>
		</div>
	</div>
</div>

