<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
 	function reDown(name)	{
 		if (true)	{
			alert("파일이 존재하지 않습니다.");
			return false;
		}
		else	{
			alert("다시 받기가 진행됩니다");
		/* window.open("fileTest/A02.png", '_blank'); */
 			window.open("fileSave/"+name, '_blank');
		}
	}
</script>

<!--	function down(file) {
		window.open("fileSelect.up?file_upload="+file,"", "width=200 height=300");
	} -->
</head>
<body>
	<%-- <form action="fileDown.up" name="frm" onsubmit="down('${fileup.file_upload }')"> --%>
	<form action="fileReDown.up" name="frm"
		onsubmit="return reDown('${fileup.file_upload })">
		<input type="hidden" name="mem_id" value="${sessionScope['id']}">
		<input type="hidden" name="file_num" value="${fileup.file_num }">
		<table border="1">
			<caption>파일 등록 정보</caption>
			<tr style="background-color: #BDBDBD;">
				<th colspan="6">${fileup.file_name }</th>
			</tr>
			<tr>
				<th>포인트</th>
				<td>${fileup.file_point }point</td>
				<th>용량</th>
				<td>${fileup.file_size/1000 }KB</td>
				<th>등록자</th>
				<td>${fileup.mem_id }</td>
			</tr>
			<tr>
				<th>파일/폴더명</th>
				<td colspan="5">${fileup.file_upload }</td>
			</tr>
			<tr>
				<td colspan="6" align="center">
				<input style="background-color: #4374D9; color: white; border: none;" type="submit" value="다시받기"></td>
				<!-- 				<td colspan="6" align="center"><a	href="fileTest/A02.png">
				<input type="submit" value="내려받기"></a></td> -->
			</tr>
			<tr>
				<th colspan="6"><img width="300" alt="파일 없음"
					src="fileSave/${fileup.file_shot }"></th>
			</tr>
			<tr>
				<th colspan="6"><pre>${fileup.file_desc }</pre></th>
			</tr>
			<tr>
				<td colspan="6" align="center">
				<input style="background-color: #4374D9; color: white; border: none;" type="submit" value="다시받기"></td>
			</tr>
		</table>
		<p>
	</form>
</body>
</html>