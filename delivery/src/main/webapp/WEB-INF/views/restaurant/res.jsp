<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<title>Insert title here</title>
</head>
<body>
식당페이지 테스트 <br />
식당이름: ${menuList[0].m_name }<br />
<c:forEach items="${menuList }" var="menu">
메뉴이름:<c:out value="${menu.menu_name }" /> <br />
메뉴정보:<c:out value="${menu.menu_info }" /> <br />
가격:<c:out value="${menu.price }" /> <br />
</c:forEach>

</body>

</html>