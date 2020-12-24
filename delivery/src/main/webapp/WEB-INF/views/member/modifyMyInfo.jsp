<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@include file="../includes/header.jsp" %>

<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>


<form action="modifyMyInfo" method="post">
	<div class="form-group">
	  <fieldset>
	    <label class="control-label" for="readOnlyInput">#아이디</label>
	    <input name="id" class="form-control" id="readOnlyInput" type="text" value='<sec:authentication property="principal.memberVO.id"/>' readonly>
	  </fieldset>
	  <fieldset>
	    <label class="control-label" for="readOnlyInput">#이름</label>
	    <input name="m_name" maxlength="20" class="form-control" id="readOnlyInput" type="text" value='<sec:authentication property="principal.memberVO.m_name"/>'>
	  </fieldset>
	  <fieldset>
	    <label class="control-label" for="readOnlyInput">#Email address</label>
	    <input class="form-control" id="readOnlyInput" type="text" value="#">
	  </fieldset>
	  <fieldset>
	    <label class="control-label" for="readOnlyInput">#주소</label>
	    <input class="form-control" id="readOnlyInput" type="text" value="#">
	  </fieldset>
	  <fieldset>
	    <label class="control-label" for="readOnlyInput">#전화번호</label>
	    <input class="form-control" id="readOnlyInput" type="text" value="#">
	  </fieldset>
	  <button type="submit" class="btn btn-danger">수정하기</button>
	  <button type="button" id="myInfo" class="btn btn-info">#취소</button>
	  <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
	</div>

<script>

$("#myInfo").on("click", function(){ //목록보기 누르면 멤버리스트로 이동
	self.location="/member/myInfo";
});
	
</script>
</form>