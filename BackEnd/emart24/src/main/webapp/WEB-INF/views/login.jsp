<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>로그인</title>
    <link rel="stylesheet" href="<c:url value='/css/style_login.css' />"/>
</head>
<body>
	<div class="header">
     	<div class="headerIn">
         	<a href="/emart"><img src="<c:url value='/img/logo.png'/>" alt="로고"></a>
     	</div>
    </div>  <!-- header -->
    
    <form action="<c:url value='/login'/>" method="post" onsubmit="return formCheck(this);">
    	<h3 id="title">Login</h3>
        
		<!-- ${cookie.id.value}: 쿠키 중에서 이름이 id인 value를 가져온다 -->
        <input type="text" name="id" value="${cookie.id.value}" placeholder="아이디 입력" autofocus>
        <input type="password" name="pw" placeholder="비밀번호">
        <input type="hidden" name="toURL" value="${param.toURL}">
        <button>로그인</button>
        <div>
            <label><input type="checkbox" name="rememberId" ${empty cookie.id.value? "" : "checked" }> 아이디 기억</label> |
            <a href="/emart/register/add">회원가입</a>
        </div>
    </form>
    
    <script src="<c:url value='/js/login.js'/>"></script>
</body>
</html>