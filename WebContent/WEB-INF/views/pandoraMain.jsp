<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>판도라 박스에 오신 것을 환영합니다</title>
<style type="text/css">
a {
	text-decoration: none;
	color: black;
}

a:hover {
	color: grey;
}

table.side {
	border-collapse: separate;
	border-spacing: 0;
	text-align: left;
	line-height: 1.5;
	border-top: 1px solid #ccc;
	border-left: 1px solid #ccc;
	margin: 20px 10px;
}
/* 
table.side th {
	width: 250px;
	padding: 10px;
	font-weight: bold;
	vertical-align: top;
	border-right: 1px solid #ccc;
	border-bottom: 1px solid #ccc;
	border-top: 1px solid #fff;
	border-left: 1px solid #fff;
	background: #eee;
} */

table.side td {
	width: 350px;
	padding: 10px;
	vertical-align: top;
	/* text-align: center; */
	border-right: 1px solid #ccc;
	border-bottom: 1px solid #ccc;
	font-size: 13px;
}

body {
	width: 950px;
}

#sidemenu {
	width: 250px;
	height: 400px;
	float: left;
	margin-left: 5px;
	margin-top: 0px;
	text-align: center;
	background-color: white;
}

#p1 {
	font-weight: lighter;
	font-size: 10px;
}

#loginbutton {
	height: 40px;
	width: 150px;
	background-color: #B4D0FC;
	float: none;
}

article {
	width: 650px;
	height: 730px;
	float: left;
	margin-left: 5px;
	margin-top: 10px;
	border-radius: 10px;
}
/* 
#sidemenu ul {
	list-style: none;
} */
</style>
</head>
<body>

	<div id="sidemenu">
		<c:set var="id" value="${sessionScope['id']}"></c:set>
		<table class="side">
			<c:if test="${empty id}">
				<tr>
					<td scope="row" align="center"><p id="p1">판도라 박스를 더 쉽고 안전하게 이용하세요</p>
					<a href="logonForm.lo">
						<button id="loginbutton">판도라 박스 로그인</button></a><br> 
						<a href="joinForm.lo">무료회원가입</a></td>
				</tr>
			</c:if>
			<c:if test="${!empty id}">
				<tr>
					<td scope="row" align="center"><p id="p1">판도라 박스를 더 쉽고 안전하게 이용하세요</p>
						<h3>${sessionScope['id']}님<br>반갑습니다</h3>
						보유포인트 : <a href="myChargeList.do">${member.mem_point}</a>
						<a href="logout.lo"><br><br>
						<button	id="loginbutton">로그아웃</button></a>
					</td>
				</tr>
				<tr>
					<td scope="row"><a href="myPage.do">　· 내 정보 관리</a></td>
				</tr>
				<tr>
					<td scope="row"><a href="chargeForm.do">　· 캐시충전</a></td>
				</tr>
			<c:if test="${member.mem_vip == 'n' }">
				<tr>
					<td scope="row"><a href="vipApplyForm.do">　· 판매자 신청</a></td>
				</tr>
			</c:if>
			</c:if>
			<c:if test="${member.mem_vip == 'y' }">
				<tr>
					<td scope="row"><a href="fileUploadForm.up">　· 파일 업로드</a></td>
				</tr>
			</c:if>
			<tr>
				<td scope="row" align="left">
					<a href="reqBoardList.do">　· 자료요청 게시판</a></td>
			</tr>
			<tr>
				<td scope="row" align="left">
					<a href="chargeForm.do" ><img alt="" src="images/eventBan.png" width="220px"></a></td>
			</tr>
			<tr>
				<td scope="row" align="left"><img alt="" src="images/counsel.gif" width="220px"></td>
			</tr>
		</table>

	</div>
	<article>
		
		<%-- 	<jsp:include page="../uploadfile/introList.jsp"></jsp:include>
		<a href="fileList.up">파일목록</a> --%>
	</article>
	<script type="text/javascript">
		function fetchPage(name) {
			fetch(name).then(function(response) {
				response.text().then(function(text) {
					document.querySelector('article').innerHTML = text;
				})
			});
		}
		if (location.hash) {
			fetchPage(location.hash.substr(2));
		} else {
			fetchPage('fileList.up');
		}

		function chk(file_num, id) {
			if (id == null || id == "") {
				alert("로그인이 필요한 서비스입니다");
				location.href = "logonForm.lo";
				return;
			}
			window.open("fileSelect.up?file_num=" + file_num + "&id=" + id, "",
					"width=800 height=800");
		}
	</script>



</body>
</html>