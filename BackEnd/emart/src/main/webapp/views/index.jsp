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
    <link rel="stylesheet" href="<c:url value='/css/style_index.css'/>">
</head>
<body>
    <a href="" class="Scroll">
        <img src="<c:url value='/img/위를향해.png'/>" alt="TOP" class="iOn">
        <img src="<c:url value='/img/위를향해2.png'/>" alt="TOP" class="iOff">
    </a>
    <div class="wrap">
        
        <%@include file="./header.jsp" %>

        <div class="container bgcWhite">
            <div class="banner">
                <div class="mainBanner">
                    <img src="<c:url value='/img/mainbanner.png'/>" alt="메인베너">
                </div>
                <div class="loginBox">
                    <div class="login">
                        <form action="">
                            <input type="text" class="id" placeholder="아이디를 입력하세요."><br>
                            <input type="password" class="pw" placeholder="비밀번호를 입력하세요."><br>
                            <button type="submit">로그인</button>
                            <button type="button">회원가입</button>
                        </form>
                    </div>
                </div>
            </div> <!-- banner -->

            <div class="eventItem">
                <div class="titleWrap">
                    <div class="title">
                        <h1>3월 행사 상품</h1>
                        <br>
                        <p>
                            <a href="./goods.html"> <!-- 행사 상품 페이지 연결 -->
                                전체보기
                                <img src="<c:url value='/img/+.png'/>" alt="+">
                            </a>
                        </p>
                        <br>
                    </div>
                    <ul class="categories">
                        <li class="category">
                            <p>1+1</p><br>
                        </li>
                        <li class="category">
                            <p>2+1</p><br>
                        </li>
                        <li class="category">
                           	<p>신상품</p>
                        </li>
                    </ul>
                </div>

                <div class="eventItemImg">
                    <ul>
                        <li>
                            <a href="<c:url value='/img/productimg1.png'/>">
                                <img src="<c:url value='/img/productimg1.png'/>" alt="행사상품이미지1"> <br>
                                <span class="eventItemName">동원]보성홍차<br>아이스티</span>
                                <span class="eventItemPrice">2,200원</span>
                            </a>
                        </li>
                        <li>
                            <a href="<c:url value='/img/productimg2.png'/>">
                                <img src="<c:url value='/img/productimg2.png'/>" alt="행사상품이미지2"> <br>
                                <span class="eventItemName">머거본]와사비향 쉐이크<br>아몬드180g</span>
                                <span class="eventItemPrice">8,000원</span>
                            </a>
                        </li>
                        <li>
                            <a href="<c:url value='/img/productimg3.png'/>">
                                <img src="<c:url value='/img/productimg3.png'/>" alt="행사상품이미지3"> <br>
                                <span class="eventItemName">로아커]초콜릿크리스피<br>스트라라치텔라50g</span>
                                <span class="eventItemPrice">2,800원</span>
                            </a>
                        </li>
                        <li>
                            <a href="<c:url value='/img/productimg4.png'/>">
                                <img src="<c:url value='/img/productimg4.png'/>" alt="행사상품이미지4"> <br>
                                <span class="eventItemName">아임이]두꺼비 플리퍼즈<br>오곡초코볼시리얼컵</span>
                                <span class="eventItemPrice">3,600원</span>
                            </a>
                        </li>
                    </ul>
                </div>
            </div> <!-- eventItem -->

            <div class="customerBoard">
                <div class="noticeBoard">
                    <div class="title">
                        <p><b>공지사항</b></p>
                        <p>
                            전체보기
                            <img src="<c:url value='/img/+.png'/>" alt="+">
                        </p>
                    </div>

                    <div class="table">
                        <ul>
                            <li>
                                <p>
                                    <span class="tableTitle">개인정보처리방침 개정 안내(2023.02.21)</span>
                                    <span class="tableDate">2023.02.14</span>
                                </p>
                            </li>
                            <li>
                                <p>
                                    <span class="tableTitle">기준일 설정 공고</span>
                                    <span class="tableDate">2022.12.16</span>
                                </p>
                            </li>
                            <li>
                                <p>
                                    <span class="tableTitle">개인정보처리방침 개정 안내(2022.09.13)</span>
                                    <span class="tableDate">2022.09.05</span>
                                </p>
                            </li>
                        </ul>
                    </div>
                </div>

                <div class="reviewBoard">
                    <div class="title">
                        <p><b>커뮤니티</b></p>
                        <p>
                            전체보기
                            <img src="<c:url value='/img/+.png'/>" alt="+">
                        </p>
                    </div>

                    <div class="table">
                        <ul>
                            <li>
                                <p>
                                    <span>첫번째 커뮤니티</span>
                                    <span>2023.02.14</span>
                                </p>
                            </li>
                            <li>
                                <p>
                                    <span>두번째 커뮤니티</span>
                                    <span>2022.12.16</span>
                                </p>
                            </li>
                            <li>
                                <p>
                                    <span>세번째 커뮤니티</span>
                                    <span>2022.09.05</span>
                                </p>
                            </li>
                        </ul>
                    </div>
                </div>
            </div> <!-- customerBoard -->

            <div class="onlyEmart">
                <div class="title">
                    <h1>ONLY 이마트24</h1>
                    <h2>이마트24에서만 있는 차별화 상품을 만나보세요.</h2>
                </div>

                <ul class="onlyEmartImg">
                    <li><img src="<c:url value='/img/only1.png'/>" alt="only 이미지1"></li>
                    <li><img src="<c:url value='/img/only2.png'/>" alt="only 이미지2"></li>
                    <li><img src="<c:url value='/img/only3.png'/>" alt="only 이미지3"></li>
                </ul>
            </div> <!-- onlyEmart -->
            
            <div class="mapService">
                <div class="title">
                    <h1>매장찾기</h1>
                    <div class="searchItem">
                        <div class="searchBar">
                            <input type="text" class="searchTextBox">
                            <img src="<c:url value='/img/search.png'/>" alt="찾기" class="searchIcon">
                        </div>

                        <ul class="tags">
                            <li class="tag"><img src="<c:url value='/img/24h.PNG'/>" alt="24시간"></li>
                            <li class="tag"><img src="<c:url value='/img/parcel.PNG'/>" alt="택배"></li>
                            <li class="tag"><img src="<c:url value='/img/atm.PNG'/>" alt="ATM"></li>
                            <li class="tag"><img src="<c:url value='/img/wine.PNG'/>" alt="와인"></li>
                            <li class="tag"><img src="<c:url value='/img/coffee.PNG'/>" alt="커피"></li>
                        </ul>
                    </div>
                </div>
                <div class="mapImg">
                    <img src="<c:url value='/img/map.PNG'/>" alt="지도">
                </div>
            </div> <!-- mapService -->
            
            <div class="appService">
                <img src="<c:url value='/img/svc.PNG'/>" alt="서비스 이미지">
            </div> <!-- appService -->
            
            <div class="emartStory">
                <div class="title">
                    <h2>이마트24<br>STORY</h2>
                    <h6>이마트24의 다양한 스토리를 확인해 보세요.</h6>
                    <ul class="magazinSns">
                        <li><img src="<c:url value='/img/youtubeGray.png'/>" alt="유튭"></li>
                        <li><img src="<c:url value='/img/instaGray.png'/>" alt="인스타"></li>
                        <li><img src="<c:url value='/img/faceBookGray.png'/>" alt="페북"></li>
                        <li><img src="<c:url value='/img/tiktokGray.png'/>" alt="틱톡"></li>
                    </ul>
                </div>

                <ul class="magazinImg">
                    <li><img src="<c:url value='/img/story1.png'/>" alt="이미지1"></li>
                    <li><img src="<c:url value='/img/story2.png'/>" alt="이미지2"></li>
                    <li><img src="<c:url value='/img/style3.png'/>" alt="이미지3"></li>
                </ul>
            </div> <!-- emartStory -->
        </div> <!-- container -->

        <%@include file="./footer.jsp" %>
        
    </div> <!-- wrap -->
    <script src="<c:url value='/js/script.js'/>"></script>
</body>
</html>