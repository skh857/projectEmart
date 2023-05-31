<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>홈 - 이마트24</title>
    <link rel="stylesheet"  href="<c:url value='/css/style_basket.css'/>">
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
            <div class="basket">
                <div class="titleWrap">
                    <h1>장바구니</h1>
                    <h3>직접 담은 장바구니를 확인해보세요.</h3>
                </div>  <!-- titleWrap -->

                <table class="basketHeader">
                    <tr style="height: 50px; font-size: 20px;">
                        <th class="widthOne">상품 번호</th>
                        <th class="widthTwo">상품 이미지</th>
                        <th class="widthThree">상품 이름</th>
                        <th class="widthFour">상품 금액</th>
                        <th class="widthFive">구매 수량</th>
                        <th class="widthSix">구매 금액</th>
                    </tr>
                </table>
                <div class="basketMain" style="overflow-y:scroll; height:300px;">
                    <table>
                        <tr>
                            <th class="widthOne">1</th>
                            <th class="widthTwo"><img src="../img/productimg1.png" alt=""></th>
                            <th class="widthThree">상품 이름</th>
                            <th class="widthFour">상품 금액</th>
                            <th class="widthFive">구매 수량</th>
                            <th class="widthSix">구매 금액</th>  
                        </tr>
                        <tr>
                            <th class="widthOne">1</th>
                            <th class="widthTwo"><img src="../img/productimg2.png" alt=""></th>
                            <th class="widthThree">상품 이름</th>
                            <th class="widthFour">상품 금액</th>
                            <th class="widthFive">구매 수량</th>
                            <th class="widthSix">구매 금액</th>  
                        </tr>
                    </table>
                </div>
                <table class="basketFooter">
                    <tr style="height: 50px; font-size: 20px;">
                        <th class="bf1" align="right">합계&nbsp;&nbsp;</th>
                        <th class="bf2">수량</th>
                        <th class="bf3">가격</th>
                    </tr>
                </table>
            </div>
        </div> <!-- container -->

<%@include file="./footer.jsp" %>

    </div> <!-- wrap -->
    <script src="<c:url value='/js/script.js'/>"></script>
</body>
</html>