<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	table td	{
	font-size: 12px;
}
</style>
</head>
<body>
<h2>회원 목록</h2>
	<table>
		<tr>
			<th>아이디</th>
			<th>성명</th>
			<th>이메일</th>
			<th>현재 포인트</th>
			<th>누적 충전 금액(향후 구현)</th>
			<th>가입일</th>
			<th>정보 수정일</th>
			<th>판매자 여부</th>
		</tr>
		<c:forEach var="member" items="${list }">
			<tr>
				<td>${member.mem_id }</td>
				<td>${member.mem_name }</td>
				<td>${member.mem_email }</td>
				<td>${member.mem_point }</td>
				<td>아직 몰라</td>
				<td>${member.mem_reg_date }</td>
				<td>${member.mem_update_date }</td>
				<td>${member.mem_vip }</td>
			</tr>
		</c:forEach>
	</table>
	<a href="mainManager.ma">돌아가기</a>
</body>
</html>