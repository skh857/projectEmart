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
</head>
<body>
    <div class="wrap">
        <div class="header">
            <div class="headerIn">
                <a href="./index.html"><img src="<c:url value='/img/logo.png'/>" alt="로고"></a>
            </div>
        </div>  <!-- header -->
        
        <div class="container">
            <form action="">
                <ul class="register_content">
                    <li class="register_id">    <!-- 아이디 -->
                        <div class="jc_textWrap">
                            <label for="user_id">아이디</label>
                        </div>
                        <div class="jc_inputWrap">
                            <input type="text" id="user_id" placeholder="아이디를 입력하세요.">
                        </div>
                    </li>
                    <li class="register_pw1">    <!-- 비밀번호 -->
                        <div class="jc_textWrap">
                            <label for="user_pw1">비밀번호</label>
                        </div>
                        <div class="jc_inputWrap">
                            <input type="password" id="user_pw1" placeholder="비밀번호를 입력하세요.">
                        </div>
                    </li>
                    <li class="register_pw2">    <!-- 비밀번호 재확인 -->
                        <div class="jc_textWrap">
                            <label for="user_pw2">비밀번호 재확인</label>
                        </div>
                        <div class="jc_inputWrap">
                            <input type="password" id="user_pw2">
                        </div>
                    </li>
                    <li class="register_name">    <!-- 이름 -->
                        <div class="jc_textWrap">
                            <label for="user_name">이름</label>
                        </div>
                        <div class="jc_inputWrap">
                            <input type="text" id="user_name" placeholder="이름을 입력하세요">
                        </div>
                    </li>
                    <li class="register_birth">
                        <div class="jc_textWrap">
                            <label for="user_birth">생년월일</label>
                        </div>
                        <div class="jc_inputWrap">
                            <input type="text" id="user_birth" placeholder="년도(4자)">
                            <select name="" id="">
                                <option value selected>월</option>
                                <option value="01">1</option>
                                <option value="02">2</option>
                                <option value="03">3</option>
                                <option value="04">4</option>
                                <option value="05">5</option>
                                <option value="06">6</option>
                                <option value="07">7</option>
                                <option value="08">8</option>
                                <option value="09">9</option>
                                <option value="10">10</option>
                                <option value="11">11</option>
                                <option value="12">12</option>
                            </select>
                            <input type="text" placeholder="일">
                        </div>
                    </li>
                    <li class="register_gender">
                        <div class="jc_textWrap">
                            <label for="user_gender">성별</label>
                        </div>
                        <div class="jc_inputWrap">    
                            <select name="" id="">
                                <option value selected>성별</option>
                                <option value="M">남자</option>
                                <option value="F">여자</option>
                                <option value="U">선택안함</option>
                            </select>
                        </div>
                    </li>
                    <li class="register_tel">
                        <div class="jc_textWrap">
                            <label for="user_tel">휴대전화</label>
                        </div>
                        <div class="jc_inputWrap">
                            <input type="tel" id="user_tel" placeholder="전화번호 입력">
                            <button>인증번호 받기</button>
                        </div>
                    </li>
                    <li class="registerBtn">
                        <button class="user_register" type="submit" onclick="checkAll()">가입하기</button>
                    </li>
                </ul>   <!-- register_content -->
            </from>
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
    
    <script src="<c:url value='/js/script.js'/>"></script>
</body>
</html>