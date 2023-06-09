<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>회원가입</title>
    <link rel="stylesheet" href="<c:url value='/css/style_register.css'/>">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.0/jquery.min.js"></script>
</head>
<body>
    <div class="wrap">
        <div class="header">
            <div class="headerIn">
                <a href="/emart"><img src="<c:url value='/img/logo.png'/>" alt="로고"></a>
            </div>
        </div>  <!-- header -->
        
        <div class="container">
            <form action="<c:url value="/register/success"/>" method="post" onsubmit="return formCheck(this)">
                <ul class="register_content">
                    <li class="register_id">    <!-- 아이디 -->
                        <div class="rc_textWrap">
                            <label for="">아이디</label>
                        </div>
                        <div class="rc_inputWrap">
                            <input type="text" id="id" name="id" onblur="checkId()" placeholder="5~12자리의 아이디를 입력하세요.">
                            <button type="button" id="idOverlap" class="idOverlap" value="N" onclick="fn_idOverlap()">중복확인</button>
                        </div>
                    </li>
                    <li class="register_pw1">    <!-- 비밀번호 -->
                        <div class="rc_textWrap">
                            <label for="pw">비밀번호</label>
                        </div>
                        <div class="rc_inputWrap">
                            <input type="password" id="pw" name="pw" onblur="checkPw()" placeholder="8~12자리의 비밀번호를 입력하세요.(영문, 숫자, 특수문자 조합)">
                        </div>
                    </li>
                    <li class="register_pw2">    <!-- 비밀번호 재확인 -->
                        <div class="rc_textWrap">
                            <label for="check_pw">비밀번호 재확인</label>
                        </div>
                        <div class="rc_inputWrap">
                            <input type="password" id="check_pw" name="check_pw">
                        </div>
                    </li>
                    <li class="register_name">    <!-- 이름 -->
                        <div class="rc_textWrap">
                            <label for="name">이름</label>
                        </div>
                        <div class="rc_inputWrap">
                            <input type="text" id="name" name="name" onblur="checkName()" placeholder="이름을 입력하세요">
                        </div>
                    </li>
                    <li class="register_birth">
                        <div class="rc_textWrap">
                            <label for="birth">생년월일</label>
                        </div>
                        <div class="rc_inputWrap">
                            <input type="text" id="birth" name="birth" onblur="checkBirth()" placeholder="생년월일(ex: 20200101)">
                        </div>
                    </li>
                    <li class="register_tel">
                        <div class="rc_textWrap">
                            <label for="tel">휴대전화</label>
                        </div>
                        <div class="rc_inputWrap">
                            <input type="tel" id="tel" name="tel" onblur="checkTel()" placeholder="전화번호 입력(ex: 010-0000-0000)">
                        </div>
                    </li>
                    <li class="registerBtn">
                        <button class="user_register" type="submit">가입하기</button>
                    </li>
                </ul>   <!-- register_content -->
            </form>
        </div> <!-- container -->

        <div class="footer">
            <div class="footerIn">
                <div class="fnbWrap">
                    <ul>
                        <li>개인정보 처리방침</li>
                        <li>이용약관</li>
                        <li>고객센터</li>
                        <li>CSR경영</li>
                        <li>사이트맵</li>
                        <li>이마트24 소개</li>
                    </ul>
                </div> <!-- fnbWrap-->
                <div class="companyInfoWrap">
                    <h3>(주)이마트24</h3>
                    <p>COPYRIGHT (C) EMART24.ALL RIGHT RESERVED</p>
                </div> <!-- companyInfoWrap -->
            </div> <!-- footerIn -->
        </div> <!-- footer -->
    </div>  <!-- wrap -->
    
    
    <script src="<c:url value='/js/register.js'/>"></script>
    
    <script>
	    function fn_idOverlap() {
	    	$.ajax({
	    		url: "/emart/register/idOverlap",
	    	  	type: "post",
	    	  	dataType: "json",
	    	   	data: {"id":$("#id").val()},
	    	   	success: function(data) {
	    	    	if($("#id").val() == null || $("#id").val() == "") {
	    	    		alert("아이디를 입력하세요.");
	    	    	} else if(data == 0) {
	    	    		$("#idOverlap").attr("value", "Y");
	    	    		alert("사용 가능한 아이디입니다.");
	    	    	} else if(data == 1) {
	    	    		$("#idOverlap").attr("value", "N");
	    	    		alert("중복된 아이디입니다.");
	    	    	}
	    	  	}
	    	})
	    }
    </script>
</body>
</html>