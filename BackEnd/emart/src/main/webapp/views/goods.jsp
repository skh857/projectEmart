<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>행사상품</title>
    <link rel="stylesheet" href="<c:url value='/css/style_goods.css'/>">
</head>
<body>
    <a href="" class="Scroll">
        <img src="<c:url value='/img/위를향해.png'/>" alt="TOP" class="iOn">
        <img src="<c:url value='/img/위를향해2.png'/>" alt="TOP" class="iOff">
    </a>
    <div class="wrap">
        
        <%@include file="./header.jsp" %>

        <div class="goodsContainer bgcWhite">
            <div class="titleWrap">
                <h1>행사상품</h1>
                <h3>이마트24가 준비한 이달의 행사상품을 만나보세요.</h3>
            </div>  <!-- titleWrap -->

            <form action="">
                <div class="searchBar">
                    <input type="text" placeholder="상품명을 입력해주세요.">
                    <button type="submit">검색</button>
                </div>
            </form>

            <div class="goods">
                <div class="categoryWrap">
                    <ul class="category">
                        <li><a href="">전체</a></li>
                        <li><a href="">1+1</a></li>
                        <li><a href="">2+1</a></li>
                        <li><a href="">세일</a></li>
                        <li><a href="">덤증정</a></li>
                    </ul>
                    <select class="dropLabel">
                        <option value="">최신순</option>
                        <option value="">가격 낮은순</option>
                        <option value="">가격 높은순</option>
                        <option value="">인기순</option>
                    </select>
                </div>
                <ul class="goodsItem">
                 	<li>
                     	<form action="">
                         	<a href="<c:url value='/img/productimg1.png'/>">
                            	<img src="<c:url value='/img/productimg1.png'/>" alt="행사상품이미지1">
                               	<span class="eventItemName">동원]보성홍차<br>아이스티</span><br>
                               	<span class="eventItemPrice">2,200원</span><br>
                               	<button type="button">장바구니 담기</button>
                           	</a>
                     	</form>
                   	</li>
                </ul>
            </div>
        </div>  <!-- goodsContainer -->

        <%@include file="./footer.jsp" %>

    </div>  <!-- wrap -->
    <script src="<c:url value='/js/script.js'/>"></script>
</body>
</html>