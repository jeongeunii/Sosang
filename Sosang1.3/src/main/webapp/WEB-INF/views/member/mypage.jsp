<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>마이 페이지</title>
    <link rel="stylesheet" href="../resources/css/mypageStyle.css">
   	<script type="text/javascript" src="../resources/js/jquery-3.4.1.js"></script>
   	<script type="text/javascript">
	window.onload=function(){
		
		var id = "<%=(String)session.getAttribute("id")%>"
		var cancelBtn=document.getElementById('cancel');
		
		cancelBtn.onclick=function(){
			alert("탈퇴하시겠습니까? 탈퇴 시 데이터가 영구 삭제됩니다.");
	
			window.location.href = 'deleteMember.do';
			}
		}
   	</script>
   
</head>
<body>


    <div id="wrapper">
       <h2>마이페이지 </h2>
       
       <table>
            <tr>
            <th>
            <button id="myInfo" onClick="location.href='myinfo.do'">
            <img src="../resources/images/file.png"><br>나의 정보 보기
            </button>
            </th>
            <th><button id="changeInfo" onClick="location.href='memberChangeInfoForm.do'">
            <img src="../resources/images/literature.png"><br>정보 수정 하기</button></th>
            <th rowspan="2"><button id="history" onClick="location.href='history.do'">
            <img src="../resources/images/scroll.png" style="width: 200px; height: 200px;"><br>검색 기록보기</button></th>
        </tr>
        <tr>
            <th><button type="button" id="cancel"><img src="../resources/images/exit.png" style="width: 100px;height: 100px;"><br>
            탈퇴하기</button></th>
            <th><button id="logout" onClick="location.href='logout.do'">
            <img src="../resources/images/exit (1).png"><br>로그아웃</button></th>
           
        </tr>
        </table>
    </div>


</body>
</html>