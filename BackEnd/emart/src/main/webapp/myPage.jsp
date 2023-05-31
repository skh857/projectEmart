<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>My page</title>
	<link rel="stylesheet"  href="<c:url value='/css/style_myPage.css'/>">
</head>
<body>
    <a href="" class="Scroll">
        <img src="../img/위를향해.png" alt="" class="iOn">
        <img src="../img/위를향해2.png" alt="" class="iOff">
    </a>
    <div class="wrap">
        <div class="header">
            <div class="headerIn">
                <div class="logo">
                    <a href="./index.jsp">
                        <img src="../img/logo.png" alt="로고">
                    </a>
                </div> <!-- logo -->

                <ul class="gnb" onmouseover="on()" onmouseout="off()">
                    <li class="gnbMenu">
                        <div class="textWrap">
                            <a href="./goods.jsp">상품</a>
                        </div>
                    </li>
                    <li class="gnbMenu">
                        <div class="textWrap">
                            <a href="">게시판</a>
                        </div>
                    </li>
                    <li class="gnbMenu">
                        <div class="textWrap">매장찾기</div>
                    </li>
                    <li class="gnbMenu">
                        <div class="textWrap">서비스</div>
                    </li>
                    <li class="gnbMenu">
                        <div class="textWrap">이벤트</div>
                    </li>
                </ul> <!-- gnb -->

                <div class="headerHidden" onmouseover="on()" onmouseout="off()">
                    <ul class="gnbHidden">
                        <li class="gnbHiddenMenu">
                            <ul class="lnb">
                                <li><a href="./goods.jsp">행사 상품</a></li>
                                <li>차별화 상품</li>
                                <li>Fresh Food</li>
                            </ul>
                        </li>
                        <li class="gnbHiddenMenu">
                            <ul class="lnb">
                                <li><a href="">공지사항</a></li>
                                <li><a href="">커뮤니티</a></li>
                            </ul>
                        </li>
                        <li class="gnbHiddenMenu">
                            <ul class="lnb">
                                <li>매장찾기</li>
                                <li>3D 매장 체험</li>
                            </ul>
                        </li>
                        <li class="gnbHiddenMenu">
                            <ul class="lnb">
                                <li>APP 서비스</li>
                                <li>생활 서비스</li>
                                <li>제휴 서비스</li>
                            </ul>
                        </li>
                        <li class="gnbHiddenMenu">
                            <ul class="lnb">
                                <li>진행중인 이벤트</li>
                                <li>종료된 이벤트</li>
                            </ul>
                        </li>
                    </ul> <!-- gnb -->
                </div><!-- headerHedden -->
            </div> <!-- headerIn -->
        </div> <!-- header -->
        <div class="container">        
            <div class="page-body">
                <div class="info">
                    <div class="user">
                        <div class="userThumb">
                            <a><img src="../img/userT.png" alt="유저 사진"></a>
                        </div>
                        <div class="userInfo">
                            <h2>ㅇㅇ님 오늘도 좋은하루 되세요</h2>
                            <ul>
                                <li>연락처 : 000-0000-0000</li>
                                <li>이메일 : email@gmail.com</li>
                                
                            </ul>
                        </div>
                    </div><!--user-->
                    <div class="order">
                        <dl>
                            <dt>주문금액</dt>
                            <dd><a href="">0개</a></dd>
                    </dl>
                        <dl>
                            <dt>적립금</dt>
                            <dd><a href="">0개</a></dd>
                    </dl>
                        <dl>
                            <dt>장바구니</dt>
                            <dd><a href="">0개</a></dd>
                    </dl>
                        <dl>
                            <dt>쿠폰</dt>
                            <dd><a href="">0개</a></dd>
                        </dl>                     
                    </div><!--order-->
                </div><!--info-->
                        
                <div class="user_data">
                <form action="">
                    <ul class="join_content">
                        <li class="join_id">    <!-- 아이디 -->
                            <div class="jc_textWrap">
                                <label for="user_id">아이디</label>
                            </div>
                            <div class="jc_inputWrap">
                                <input type="text" id="user_id" placeholder="">
                            </div>
                        </li>
                        <li class="join_pw1">    <!-- 비밀번호 -->
                            <div class="jc_textWrap">
                                <label for="user_pw1">비밀번호</label>
                            </div>
                            <div class="jc_inputWrap">
                                <input type="password" id="user_pw1" placeholder="비밀번호를 입력하세요.">
                            </div>
                        </li>
                        <li class="join_pw2">    <!-- 비밀번호 재확인 -->
                            <div class="jc_textWrap">
                                <label for="user_pw2">비밀번호 재확인</label>
                            </div>
                            <div class="jc_inputWrap">
                                <input type="password" id="user_pw2">
                            </div>
                        </li>
                        <li class="join_name">    <!-- 이름 -->
                            <div class="jc_textWrap">
                                <label for="user_name">이름</label>
                            </div>
                            <div class="jc_inputWrap">
                                <input type="text" id="user_name" placeholder="">
                            </div>
                        </li>
                        
                        <li class="join_tel">
                            <div class="jc_textWrap">
                                <label for="user_tel">휴대전화</label>
                            </div>
                            <div class="jc_inputWrap">
                                <input type="tel" id="user_tel" placeholder="">
                            </div>
                        </li>
                    </ul> <!-- join_content -->
                    <div class="Btn">
                        <button class="modifiedBtn" type="submit" onclick="checkAll()">수정하기</button>
                        <button class="backBtn" type="submit" onclick="checkAll()"><a href="./index.jsp">돌아가기</a></button>
                    </div>
                </from>
            </div> <!-- user_data -->
            </div><!--page-body-->
        </div><!--container-->

<%@include file="./footer.jsp" %>

    </div><!-- wrap -->
    <script src="<c:url value='/js/script.js'/>"></script>
</body>
</html>