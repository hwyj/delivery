<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@include file="../includes/header.jsp" %>

      <!-- Tables
      ================================================== -->
      <div class="bs-docs-section">
        <div class="row">
          <div class="col-lg-12">
            <div class="page-header">
              <h1 id="tables">#회원목록</h1>
            </div>
 
 <div class="btn-group" role="group" aria-label="Button group with nested dropdown">
  <button type="button" class="btn btn-info">#권한</button>
  <div class="btn-group" role="group">
    <button id="btnGroupDrop3" type="button" class="btn btn-info dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"></button>
    <div class="dropdown-menu" aria-labelledby="btnGroupDrop3">
      <a class="dropdown-item" href="/admin/memberList?auth=ROLE_MEMBER">일반회원</a>
      <a class="dropdown-item" href="/admin/memberList?auth=ROLE_RES">매장</a>
      <a class="dropdown-item" href="/admin/memberList?auth=ROLE_ADMIN">관리자</a>
    </div>
  </div>
</div>
 
 
              <table class="table table-hover">
                <thead>
                  <tr>
                    <th scope="col">#아이디</th>
                    <th scope="col">#이름</th>
                    <th scope="col">#주소</th>
                    <th scope="col">#이메일</th>
                    <th scope="col">#전화번호</th>
                    <th scope="col">#권한</th>
                  </tr>
                </thead>
                <c:forEach items="${memberList }" var="member">
                <tbody>
                  <tr class="table-active">
                    <th scope="row"><a href="/admin/memberInfo?id=${member.id }"><c:out value="${member.id }" /></a></th>
                    <td><c:out value="${member.m_name }" /></td>
                    <td><c:out value="#주소" /></td>
                    <td><c:out value="#이메일" /></td>
                    <td><c:out value="#010-1234-5678" /></td>
                    <td id="authT"><c:out value="${auth }" /></td>
                  </tr> 
                  </c:forEach>                     
                </tbody>
              </table>
          
          </div>
        </div>
      </div>


      <!-- Dialogs
      ================================================== -->
      <div class="bs-docs-section">
        <div class="row">
          <div class="col-lg-12">
            <div class="page-header">
              <h1 id="dialogs">Dialogs</h1>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-lg-6">
            <h2>Modals</h2>
            <div class="bs-component">
              <div class="modal">
                <div class="modal-dialog" role="document">
                  <div class="modal-content">
                    <div class="modal-header">
                      <h5 class="modal-title">Modal title</h5>
                      <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                      </button>
                    </div>
                    <div class="modal-body">
                      <p>Modal body text goes here.</p>
                    </div>
                    <div class="modal-footer">
                      <button type="button" class="btn btn-primary">Save changes</button>
                      <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>

      <div id="source-modal" class="modal fade" tabindex="-1">
        <div class="modal-dialog modal-lg">
          <div class="modal-content">
            <div class="modal-header">
              <h4 class="modal-title">Source Code</h4>
              <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
            </div>
            <div class="modal-body">
              <pre contenteditable></pre>
            </div>
          </div>
        </div>
      </div>
      
      
<script>   
//안되는거 고치기!
  $(document).ready(function(){ 
	  var auth='<c:out value="${auth}"/>';
	  if(auth == "ROLE_MEMBER"){
		  $("#authT").html("일반회원");		 
	  }else if(auth == "ROLE_RES"){
		  $("#authT").html("매장");
	  }else{
		  $("#authT").html("관리자");
	  }
	  	  
  });  
  
</script>
  
<%@include file="../includes/footer.jsp" %>
