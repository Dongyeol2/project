<%@ page contentType="text/html; charset=utf-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<link type="text/css" rel="stylesheet"
	href="${pageContext.request.contextPath}/css/table.css">

<style>
#userlist{
	width:40%;
	float:left;
}

#studyroomlist{
	width:50%;
	margin-left:30px;
	float: left;
}
</style>
<title>adminpage.jsp(관리자 페이지)</title>  


<h4>
	사용자 목록 로그인 정보 : ${login.username} <a
		href="${pageContext.request.contextPath}/logout.do">로그아웃</a> <a
		href="${pageContext.request.contextPath}/index.jsp">Home</a>

</h4>
<div>
<div id="userlist">
<h5>회 원 검 색</h5>
<form action="${pageContext.request.contextPath}/admin/usersearch.do"
	method="post">
	<table>
		<tr>
			<td><select name="searchCondition">
					<option value="username">이름</option>
					<option value="email">이메일</option>
					<option value="userid">아이디</option>
			</select> <input type="text" name="searchKeyword"> <input
				type="submit" value="검색" /></td>
		</tr>
	</table>
</form>
<table class="tablea">
	<tr>
		<th>userid</th>
		<th>username</th>
		<th>email</th>
		<th>address</th>
		<th>phone</th>
	</tr>


	<form name="f" method="get"
		action="${pageContext.request.contextPath}/user/add.do">

		<!-- 사용자 리스트를 클라이언트에게 보여주기 위하여 출력. -->
		<c:forEach var="user" items="${users}">
			<tr>
				<td>${user.userid}</td>
				<td><a
					href="${pageContext.request.contextPath}/user/view.do?userid=${user.userid}">
						${user.username} </a></td>
				<td>${user.email}</td>
				<td>${user.address}</td>
				<td>${user.phone}</td>

			</tr>
		</c:forEach>
	</form>
</table>
<table>
	<tr>
		<td><input type="submit" value="사용자 추가" /></td>
	</tr>
</table>
</div>

<!---------------------------------- studyroomlist --------------------------------------------->

<div id="studyroomlist">
<h5>스 터 디 룸 검 색</h5>
<form action="${pageContext.request.contextPath}/admin/studyroomsearch.do"
	method="post">
	<table>
		<tr>
			<td><select name="searchCondition">
					<option value="studytitle">방제목</option>
					<option value="managerid">방장이름</option>
					<option value="content">내용</option>
			</select> <input type="text" name="searchKeyword"> <input
				type="submit" value="검색" /></td>
		</tr>
	</table>
</form>
<table class="tablea">
	<tr>
		<th>studyno</th>
		<th>studytitle</th>
		<th>subjectcode</th>
		<th>membercnt</th>
		<!-- <th>locationcode</th> -->
		<th>managerid</th>
		<th>regdate</th>
		<th>state</th>
		<th>content</th>
		<th>viewcnt</th>
	</tr>


	<form name="f" method="get"
		action="${pageContext.request.contextPath}/admin/search.do">

		<!-- 사용자 리스트를 클라이언트에게 보여주기 위하여 출력. -->
		<c:forEach var="room" items="${rooms}">
			<tr>
				<td>${room.studyno}</td>
				<td><%-- <a
					href="${pageContext.request.contextPath}/user/view.do?userid=${room.studyno}">
						${room.studytitle} </a> --%>
						${room.studytitle}</td>
				<td>${room.subjectcode}</td>
				<td>${room.membercnt}</td>
				<%-- <td>${room.locationcode}</td> --%>
				<td>${room.managerid}</td>
				<td>${room.regdate}</td>
				<td>${room.state}</td>
				<td>${room.content}</td>
				<td>${room.viewcnt}</td>

			</tr>
		</c:forEach>
		
	</form>
</table>
<table>
	<tr>
		<td><input type="submit" value="방 추가" /></td>
	</tr>
</table>
</div>
</div>
