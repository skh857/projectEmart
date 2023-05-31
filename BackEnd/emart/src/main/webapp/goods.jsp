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
        <img src="./img/위를향해.png" alt="" class="iOn">
        <img src="./img/위를향해2.png" alt="" class="iOff">
    </a>
    <div class="wrap">
        <div class="header">
            <div class="headerIn">
                <div class="logo">
                    <a href="./index.html">
                        <img src="../img/logo.png" alt="로고">
                    </a>
                </div> <!-- logo -->

                <ul class="gnb" onmouseover="on()" onmouseout="off()">
                    <li class="gnbMenu">
                        <div class="textWrap">
                            <a href="">상품</a>
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
                                <li><a href="">행사 상품</a></li>
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
                    <div class="firstLine">
                        <li>
                            <a href="../img/productimg1.png">
                                <img src="../img/productimg1.png" alt="행사상품이미지1">
                                <h3 class="eventItemName">동원]보성홍차<br>아이스티</h3>
                                <h4 class="eventItemPrice">2,200원</h4>
                            </a>
                        </li>
                        <li>
                            <a href="../img/productimg2.png">
                                <img src="../img/productimg2.png" alt="행사상품이미지2">
                                <h3 class="eventItemName">머거본]와사비향 쉐이크<br>아몬드180g</h3>
                                <h4 class="eventItemPrice">8,000원</h4>
                            </a>
                        </li>
                        <li>
                            <a href="../img/productimg3.png">
                                <img src="../img/productimg3.png" alt="행사상품이미지3">
                                <h3 class="eventItemName">로아커]초콜릿크리스피<br>스트라라치텔라50g</h3>
                                <h4 class="eventItemPrice">2,800원</h4>
                            </a>
                        </li>
                        <li>
                            <a href="../img/productimg4.png">
                                <img src="../img/productimg4.png" alt="행사상품이미지4">
                                <h3 class="eventItemName">아임이]두꺼비 플리퍼즈<br>오곡초코볼시리얼컵</h3>
                                <h4 class="eventItemPrice">3,600원</h4>
                            </a>
                    </div>
                    <div class="secondLine">
                        <li>
                            <a href="../img/productimg1.png">
                                <img src="../img/productimg1.png" alt="행사상품이미지1">
                                <h3 class="eventItemName">동원]보성홍차<br>아이스티</h3>
                                <h4 class="eventItemPrice">2,200원</h4>
                            </a>
                        </li>
                        <li>
                            <a href="../img/productimg2.png">
                                <img src="../img/productimg2.png" alt="행사상품이미지2">
                                <h3 class="eventItemName">머거본]와사비향 쉐이크<br>아몬드180g</h3>
                                <h4 class="eventItemPrice">8,000원</h4>
                            </a>
                        </li>
                        <li>
                            <a href="../img/productimg3.png">
                                <img src="../img/productimg3.png" alt="행사상품이미지3">
                                <h3 class="eventItemName">로아커]초콜릿크리스피<br>스트라라치텔라50g</h3>
                                <h4 class="eventItemPrice">2,800원</h4>
                            </a>
                        </li>
                        <li>
                            <a href="../img/productimg4.png">
                                <img src="../img/productimg4.png" alt="행사상품이미지4">
                                <h3 class="eventItemName">아임이]두꺼비 플리퍼즈<br>오곡초코볼시리얼컵</h3>
                                <h4 class="eventItemPrice">3,600원</h4>
                            </a>
                    </div>
                    <div class="thirdLine">
                        <li>
                            <a href="../img/productimg1.png">
                                <img src="../img/productimg1.png" alt="행사상품이미지1">
                                <h3 class="eventItemName">동원]보성홍차<br>아이스티</h3>
                                <h4 class="eventItemPrice">2,200원</h4>
                            </a>
                        </li>
                        <li>
                            <a href="../img/productimg2.png">
                                <img src="../img/productimg2.png" alt="행사상품이미지2">
                                <h3 class="eventItemName">머거본]와사비향 쉐이크<br>아몬드180g</h3>
                                <h4 class="eventItemPrice">8,000원</h4>
                            </a>
                        </li>
                        <li>
                            <a href="../img/productimg3.png">
                                <img src="../img/productimg3.png" alt="행사상품이미지3">
                                <h3 class="eventItemName">로아커]초콜릿크리스피<br>스트라라치텔라50g</h3>
                                <h4 class="eventItemPrice">2,800원</h4>
                            </a>
                        </li>
                        <li>
                            <a href="../img/productimg4.png">
                                <img src="../img/productimg4.png" alt="행사상품이미지4">
                                <h3 class="eventItemName">아임이]두꺼비 플리퍼즈<br>오곡초코볼시리얼컵</h3>
                                <h4 class="eventItemPrice">3,600원</h4>
                            </a>
                    </div>
                    <div class="fourthLine">
                        <li>
                            <a href="../img/productimg1.png">
                                <img src="../img/productimg1.png" alt="행사상품이미지1">
                                <h3 class="eventItemName">동원]보성홍차<br>아이스티</h3>
                                <h4 class="eventItemPrice">2,200원</h4>
                            </a>
                        </li>
                        <li>
                            <a href="../img/productimg2.png">
                                <img src="../img/productimg2.png" alt="행사상품이미지2">
                                <h3 class="eventItemName">머거본]와사비향 쉐이크<br>아몬드180g</h3>
                                <h4 class="eventItemPrice">8,000원</h4>
                            </a>
                        </li>
                        <li>
                            <a href="../img/productimg3.png">
                                <img src="../img/productimg3.png" alt="행사상품이미지3">
                                <h3 class="eventItemName">로아커]초콜릿크리스피<br>스트라라치텔라50g</h3>
                                <h4 class="eventItemPrice">2,800원</h4>
                            </a>
                        </li>
                        <li>
                            <a href="../img/productimg4.png">
                                <img src="../img/productimg4.png" alt="행사상품이미지4">
                                <h3 class="eventItemName">아임이]두꺼비 플리퍼즈<br>오곡초코볼시리얼컵</h3>
                                <h4 class="eventItemPrice">3,600원</h4>
                            </a>
                    </div>
                    <div class="fifthLine">
                        <li>
                            <a href="../img/productimg1.png">
                                <img src="../img/productimg1.png" alt="행사상품이미지1">
                                <h3 class="eventItemName">동원]보성홍차<br>아이스티</h3>
                                <h4 class="eventItemPrice">2,200원</h4>
                            </a>
                        </li>
                        <li>
                            <a href="../img/productimg2.png">
                                <img src="../img/productimg2.png" alt="행사상품이미지2">
                                <h3 class="eventItemName">머거본]와사비향 쉐이크<br>아몬드180g</h3>
                                <h4 class="eventItemPrice">8,000원</h4>
                            </a>
                        </li>
                        <li>
                            <a href="../img/productimg3.png">
                                <img src="../img/productimg3.png" alt="행사상품이미지3">
                                <h3 class="eventItemName">로아커]초콜릿크리스피<br>스트라라치텔라50g</h3>
                                <h4 class="eventItemPrice">2,800원</h4>
                            </a>
                        </li>
                        <li>
                            <a href="../img/productimg4.png">
                                <img src="../img/productimg4.png" alt="행사상품이미지4">
                                <h3 class="eventItemName">아임이]두꺼비 플리퍼즈<br>오곡초코볼시리얼컵</h3>
                                <h4 class="eventItemPrice">3,600원</h4>
                            </a>
                    </div>
                </ul>
            </div>
        </div>  <!-- goodsContainer -->

<%@include file="./footer.jsp" %>

    </div>  <!-- wrap -->
    <script src="<c:url value='/js/script.js'/>"></script>
</body>
</html>