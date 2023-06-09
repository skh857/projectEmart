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
    <link rel="stylesheet" href="<c:url value='/css/style_goods.css?b'/>">
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
                    <button type="button">검색</button>
                </div>
            </form>

            <div class="goods">
                <div class="categoryWrap">
                    <ul class="category">
                        <li>전체</li>
                        <li>1+1</li>
                        <li>2+1</li>
                        <li>세일</li>
                        <li>덤증정</li>
                    </ul>
                    <select class="dropLabel">
                        <option value="">최신순</option>
                    </select>
                </div>
                
	            <ul class="goodsItem"> 
	            	<%-- Java 코드를 통해 동적으로 상품 정보 생성 --%>
	               	<c:forEach var="goods" items="${goods}">
	                	<li class="goodsBox">
		                 	<img src='<c:url value="${goods.g_image}"/>' alt="행사상품이미지1"><br>
		                   	<span class="eventItemName">${goods.g_name}</span><br>
		                   	<span class="eventItemPrice">${goods.g_price}원</span><br><br>
		                   	<form action="<c:url value='/goods/add'/>" method="post">
		                   		<input type="hidden" name="g_image" value="${goods.g_image}">
		                   		<input type="hidden" name="g_name" value="${goods.g_name}">
		                   		<input type="hidden" name="g_price" value="${goods.g_price}">
		                   		<input type="hidden" name="g_no" value="${goods.g_no}">
		                   		<input type="hidden" name="id" value="${sessionScope.id}">
		                   		
		                   		<label>수량</label>
		                   		<input type="text" id="b_purchase_cnt" name="b_purchase_cnt" placeholder="수량을 입력하세요.">
		                   		<button type="submit">장바구니 담기</button>
		                   	</form>
	                 	</li>
	            	</c:forEach>
	          	</ul>
            </div>
        </div>   <!-- goodsContainer -->

        <%@include file="./footer.jsp" %>

    </div>  <!-- wrap -->
    
    <script src="<c:url value='/js/script.js'/>"></script>
    
</body>
</html>