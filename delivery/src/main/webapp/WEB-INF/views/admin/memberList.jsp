<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE HTML>
<!--
	Story by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)

	Note: Only needed for demo purposes. Delete for production sites.
-->
<html>
	<head>
		<title>Story by HTML5 UP</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="../resources/assets/css/main.css" />
		<noscript><link rel="stylesheet" href="../resources/assets/css/noscript.css" /></noscript>
	</head>
		<h4>#회원목록</h4>
		<div class="table-wrapper">
			<table class="alt">
				<thead>
					<tr>
						<th>#아이디</th>
						<th>#이름</th>
						<th>#권한?</th>
					</tr>
				</thead>
				<c:forEach items="${memberList }" var="member">
				<tbody>
					<tr>
						<td><c:out value="${member.id }" /></td>
						<td><c:out value="${member.m_name }" /></td>
<%-- 						<td><c:out value="${member.auth }" /></td> auth 안뜨는거 뜨게 만들기 --%>
					</tr>
				</tbody>
				</c:forEach>
				<tfoot>
					<tr>
						<td colspan="2"></td>
						<td>100.00</td>
					</tr>
				</tfoot>
			</table>
		</div>

										

		<!-- Scripts -->
			<script src="../resources/assets/js/jquery.min.js"></script>
			<script src="../resources/assets/js/jquery.scrollex.min.js"></script>
			<script src="../resources/assets/js/jquery.scrolly.min.js"></script>
			<script src="../resources/assets/js/browser.min.js"></script>
			<script src="../resources/assets/js/breakpoints.min.js"></script>
			<script src="../resources/assets/js/util.js"></script>
			<script src="../resources/assets/js/main.js"></script>

		<!-- Note: Only needed for demo purposes. Delete for production sites. -->
			<script src="../resources/assets/js/demo.js"></script>

	</body>
</html>
