/**
 * @author F1
 */


$(function(){
	
	/*$("#idcheck").on("click", function(){
		var memId = $("#mem_id").val(); //입력한 회원 ID읽어오기
		if(memId==""){
			alert("회원 ID를 입력하세요");
			$("#mem_id").focus();
			return;
		}*/
		$.ajax({
			"url" : "/LikeCount.do",
			"method": "post",
			"data" : {"mem_id" : "<%=member.getMem_id()%>"},
			"dataType" : "json",
			"success" : function(cnt){
				$(".fa-heart").next().html(cnt);
			},
			"error" : function(xhr){
				alert("오류 : " + xhr.status);
			}
			
		})
		
	/*})*/
	
//	//저장버튼 클릭: form이 submit될 때
//	$("#memberForm").on('submit', function(){
//		var memId=$("#mem_id").val();
//		var idCheck = $("#idCheckResult").html().trim();
//		if(chkMemId!=memId|| idChk =="사용 가능 ID"){
//			alert("새로운 ID를 입력하세요");
//			$("#mem_id").focus();
//			return false;
//		}
//		return true;
//	})
	
	
})