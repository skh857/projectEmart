<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="loginOutLink" value="${sessionScope.id == null ? '/login' : '/logout'}"/>
<c:set var="loginOut" value="${sessionScope.id == null ? '로그인' : '로그아웃'}"/>
<c:set var="textPrint" value="${sessionScope.id == null ? '' : '님 안녕하세요' }"/>
<c:set var="removeText" value="${sessionScope.id == null ? '' : '회원 탈퇴'}"/>

<link rel="stylesheet" href="<c:url value='/css/style_header.css' />"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.0/jquery.min.js"></script>

<div class="header">
	<div class="headerIn">
		<div class="logo">
			<a href="/emart">
            	<img src="<c:url value='/img/logo.png'/>" alt="로고">
            </a>
		</div> <!-- logo -->

		<ul class="gnb" onmouseover="on()" onmouseout="off()">
        	<li class="gnbMenu">
            	<div class="textWrap">
                	<a href="<c:url value='/goods'/>">상품</a>
                </div>
            </li>
            <li class="gnbMenu">
            	<div class="textWrap">
					<a href="<c:url value='/basket/list'/>">장바구니</a>
				</div>
            </li>
         	<li class="gnbMenu">
          		<div class="textWrap">
					<a href="<c:url value='/register/add'/>">회원가입</a>
				</div>
          	</li>
            <li class="gnbMenu">
           		<div class="textWrap">
					<a href="<c:url value='${loginOutLink}'/>">${loginOut}</a>
				</div>
          	</li>
          	<li class="gnbMenu">
             	<div class="textWrap">게시판</div>
            </li>
		</ul> <!-- gnb -->
		
		<div class="userInfo">
			<p>${sessionScope.id}${textPrint}</p>
			<form id="remForm">
				<input type="hidden" id="id" name="id" value="${sessionScope.id}">
				<button type="button" id="removeBtn">${removeText}</button>
			</form>
		</div>

      	<div class="headerHidden" onmouseover="on()" onmouseout="off()">
          	<ul class="gnbHidden">
            	<li class="gnbHiddenMenu">
                 	<ul class="lnb">
                     	<li>행사 상품</li>
                      	<li>차별화 상품</li>
                       	<li>Fresh Food</li>
                   	</ul>
              	</li>
              	<li class="gnbHiddenMenu">
                  	<ul class="lnb">
                      	<li></li>
                  	</ul>
               	</li>
              	<li class="gnbHiddenMenu">
                  	<ul class="lnb">
                      	<li></li>
                  	</ul>
               	</li>
              	<li class="gnbHiddenMenu">
                  	<ul class="lnb">
                      	<li></li>
                  	</ul>
               	</li>
             	<li class="gnbHiddenMenu">
                 	<ul class="lnb">
                   		<li>공지사항</li>
                     	<li>커뮤니티</li>
                 	</ul>
               	</li>
			</ul> <!-- gnb -->
		</div><!-- headerHidden -->
	</div> <!-- headerIn -->
</div> <!-- header -->

<script src="<c:url value='/js/header.js'/>"></script>

<!-- 계정 삭제 버튼 실행 함수 -->
<script>
	$(document).ready(function() {
		$("#removeBtn").on("click", function() {
		
			if(!confirm("정말로 삭제하시겠습니까?"))
				return;
			
			let form = $("#remForm");
			form.attr("action", "<c:url value='/remove'/>");
			form.attr("method", "post");
			
			form.submit();
		})
	})
</script>
