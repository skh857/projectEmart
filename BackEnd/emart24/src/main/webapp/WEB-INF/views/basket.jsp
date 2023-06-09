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
    <link rel="stylesheet" href="<c:url value='/css/style_basket.css?e'/>">
</head>
<body>
    <a href="" class="Scroll">
        <img src="<c:url value='/img/위를향해.png'/>" alt="TOP" class="iOn">
        <img src="<c:url value='/img/위를향해2.png'/>" alt="TOP" class="iOff">
    </a>
    <div class="wrap">
        
        <%@include file="./header.jsp" %>

        <div class="container">
            <div class="basket">
                <div class="titleWrap">
                    <h1>장바구니</h1>
                    <h3>직접 담은 장바구니를 확인해보세요.</h3>
                </div>  <!-- titleWrap -->

                <table class="basketHeader">
                    <tr>
                        <th class="widthOne">상품 이미지</th>
                        <th class="widthTwo">상품 이름</th>
                        <th class="widthThree">상품 금액</th>
                        <th class="widthFour">구매 수량</th>
                        <th class="widthFive">구매 금액</th>
                    </tr>
                </table>
                
                <div class="basketMain">
                    <table>
	                    <c:forEach var="basket" items="${baskets}">
	                        <tr>
	                            <th class="widthOne"><img src="<c:url value='${basket.b_image}'/>" alt=""></th>
	                            <th class="widthTwo">${basket.b_name}</th>
	                            <th class="widthThree">${basket.b_price}</th>
	                            <th class="widthFour">${basket.b_purchase_cnt}</th>
	                            <th class="widthFive">${basket.b_price * basket.b_purchase_cnt}</th>  
	                        </tr>
	                	</c:forEach>
                    </table>
                </div>
                
                <table class="basketFooter">
                    <tr style="height: 50px; font-size: 20px;">
                        <th class="bf1" align="right">합계&nbsp;&nbsp;</th>
                        <th class="bf2">${sumCnt}</th>
                        <th class="bf3">${sumPrice}</th>
                    </tr>
                </table>
            </div>
        </div> <!-- container -->

		<%@include file="./footer.jsp" %>

    </div> <!-- wrap -->
    <script src="<c:url value='/js/script.js'/>"></script>
</body>
</html>