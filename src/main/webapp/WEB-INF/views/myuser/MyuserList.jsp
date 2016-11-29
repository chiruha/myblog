<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<script type="text/javascript">
 $(document).ready(function(){
	 $("#pdiv").on("click","a",function(e){
		e.preventDefault(); 
		ajax($(this).attr("href"));
	 });
	 
	 function ajax(pageNum){
		 //alert("pageNum : "+pageNum);
		$.ajax({
			url:"/mytest/Mulist.ajax",
			dataType:"json",
			type:"post",
			data:{
				pageNum:pageNum
			},
		success: function(data) {
			console.log("data : "+data);
			$("table tbody").empty();
			if(data.jarr.length==0){
				$("<tr></tr>").html("<td colspan='5'>검색된 자료가 없습니다</td>").appendTo("table tbody");			
			}else{
			 $("<tr></tr>").html(
					"<th>번호</th>"
					+"<th>아이디</th>"
					+"<th>비밀번호</th>"
					+"<th>이름</th>"
					+"<th>전화번호</th>"
			 ).appendTo("table tbody:last");
			 for(var i=0; i<data.jarr.length; i++){
				 $("<tr></tr>").html(
					"<td>"+data.jarr[i].muNum+"</td>"
					+"<td>"+data.jarr[i].muId+"</td>"
					+"<td>"+data.jarr[i].muPwd+"</td>"
					+"<td>"+data.jarr[i].muName+"</td>"
					+"<td>"+data.jarr[i].muPhone+"</td>").appendTo("table tbody:last");
			 }
			 
			 // paging
			 $("#pdiv").empty();
			//prev
				if(data.page.startPageNum>10){
					$("<a style='color:#2e5cb8'></a>").attr("href",data.page.startPageNum-1).addClass("paging")
					.html("prev&nbsp;").appendTo("#pdiv:last");
				}else{
					$("<span></span>").html("prev&nbsp;").appendTo("#pdiv:last");
				}
				//paging number
				for(var pageNum=data.page.startPageNum; pageNum<=data.page.endPageNum; pageNum++){
					
					
					if(pageNum==data.page.pageNum){								
						
						$("<a style='color:#1148e8'></a>").attr("href",pageNum).addClass("paging")
						.html(pageNum+"&nbsp;").appendTo("#pdiv:last");
					}else{
						$("<a style='color:#555'></a>").attr("href",pageNum).addClass("paging")
						.html(pageNum+"&nbsp;").appendTo("#pdiv:last");
					
					}
				}
				//next
				if(data.page.endPageNum<data.page.totalPageCount){
					$("<a style='color:#2e5cb8'></a>").attr("href",data.page.endPageNum+1).addClass("paging")
					.html("next&nbsp;").appendTo("#pdiv:last");
				}else{
					$("<span></span>").html("next&nbsp;").appendTo("#pdiv:last");
				}
			}
		
			}
		});
	 }
 });


</script>

<div class="row">
<div class="col-12">
	<h2 class="text-center">Myuser List</h2>

</div>
</div>




<div class="row">
<div class="col-12">
<table class="table">
<c:choose>
	<c:when test="${fn:length(mulist) > 0}">
			<tr>
			 <th>번호</th>
			 <th>아이디</th>
			 <th>비밀번호</th>
			 <th>이름</th>
			 <th>전화번호</th>
			</tr>
		
		<c:forEach var="dto" items="${mulist }" varStatus="aa">
			<tr id="ss${aa.index }">
			 <td>${dto.muNum }</td>
			 <td>${dto.muId }</td>
			 <td>${dto.muPwd }</td>
			 <td>${dto.muName }</td>
			 <td>${dto.muPhone }</td>
			</tr>
		</c:forEach>
	
	</c:when>
	<c:otherwise>
		<tr>
		 <th><h1>검색된 데이터가 없습니다</h1></th>
		</tr>
	</c:otherwise>
</c:choose>
</table>
</div>
</div>

<!-- paging -->
<div id="pdiv">
<c:choose>
 <c:when test="${pu.startPageNum>10 }">
	<a href="${pu.startPageNum-1 }"  class="paging">이전</a>
 </c:when>
 <c:otherwise>
	이전
 </c:otherwise>
</c:choose>

<c:forEach var="pageNum" begin="${pu.startPageNum }" end="${pu.endPageNum }"> 
 <c:choose>
 	<c:when test="${pageNum==pu.pageNum }">
 		<a href="${pageNum }"  class="paging">
 		 <span style="color: #164567">${pageNum }</span>
 		</a>
 	</c:when>
 	<c:otherwise>
 		<a href="${pageNum }"  class="paging">
 		 <span style="color: #555">${pageNum }</span>
 		</a> 	
 	</c:otherwise>
 </c:choose>

</c:forEach>


<c:choose>
 <c:when test="${pu.endPageNum<pu.totalPageCount }">
	<a href="${pu.endPageNum+1 }"  class="paging">다음</a>
 </c:when>
 <c:otherwise>
	다음
 </c:otherwise>
</c:choose>
</div>
