<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>홈 - 이마트24</title>
    <link rel="stylesheet" href="./css/style_index.css">
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
                        <img src="./img/logo.png" alt="로고">
                    </a>
                </div> <!-- logo -->

                <ul class="gnb" onmouseover="on()" onmouseout="off()">
                    <li class="gnbMenu">
                        <div class="textWrap">
                            <a href="./goods.html">상품</a>
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
                                <li><a href="./goods.html">행사 상품</a></li>
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

        <div class="container bgcWhite">
            <div class="banner">
                <div class="mainBanner">
                    <img src="./img/mainbanner.png" alt="메인베너">
                </div>
                <div class="loginBox">
                    <div class="login">
                        <form action="">
                            <input type="text" class="id" placeholder="아이디를 입력하세요."><br>
                            <input type="password" class="pw" placeholder="비밀번호를 입력하세요."><br>
                            <button>로그인</button>
                            <button><a href="./join.html">회원가입</a></button>
                        </form>
                    </div>
                </div>
            </div> <!-- banner -->

            <div class="eventItem">
                <div class="titleWrap">
                    <div class="title">
                        <h1>3월 행사 상품</h1>
                        <p>
                            <a href="./goods.html"> <!-- 행사 상품 페이지 연결 -->
                                전체보기
                                <img src="./img/+.png" alt="+">
                            </a>
                        </p>
                    </div>
                    <ul class="categories">
                        <li class="category">
                            <a href="">
                                <h3>1+1</h3>
                            </a>
                        </li>
                        <li class="category">
                            <a href="">
                                <h3>2+1</h3>
                            </a>
                        </li>
                        <li class="category">
                            <a href="">
                                <h3>신상품</h3>
                            </a>
                        </li>
                    </ul>
                </div>

                <div class="eventItemImg">
                    <ul>
                        <li>
                            <a href="./img/productimg1.png">
                                <img src="./img/productimg1.png" alt="행사상품이미지1">
                                <h3 class="eventItemName">동원]보성홍차<br>아이스티</h3>
                                <h4 class="eventItemPrice">2,200원</h4>
                            </a>
                        </li>
                        <li>
                            <a href="./img/productimg2.png">
                                <img src="./img/productimg2.png" alt="행사상품이미지2">
                                <h3 class="eventItemName">머거본]와사비향 쉐이크<br>아몬드180g</h3>
                                <h4 class="eventItemPrice">8,000원</h4>
                            </a>
                        </li>
                        <li>
                            <a href="/img/productimg3.png">
                                <img src="./img/productimg3.png" alt="행사상품이미지3">
                                <h3 class="eventItemName">로아커]초콜릿크리스피<br>스트라라치텔라50g</h3>
                                <h4 class="eventItemPrice">2,800원</h4>
                            </a>
                        </li>
                        <li>
                            <a href="./img/productimg4.png">
                                <img src="./img/productimg4.png" alt="행사상품이미지4">
                                <h3 class="eventItemName">아임이]두꺼비 플리퍼즈<br>오곡초코볼시리얼컵</h3>
                                <h4 class="eventItemPrice">3,600원</h4>
                            </a>
                        </li>
                    </ul>
                </div>
            </div> <!-- eventItem -->

            <div class="customerBoard">
                <div class="noticeBoard">
                    <div class="title">
                        <p>공지사항</p>
                        <p>
                            전체보기
                            <img src="./img/+.png" alt="+">
                        </p>
                    </div>

                    <div class="table">
                        <ul>
                            <li>
                                <a href="">
                                    <span class="tableTitle">개인정보처리방침 개정 안내(2023.02.21)</span>
                                    <span class="tableDate">2023.02.14</span>
                                </a>
                            </li>
                            <li>
                                <a href="">
                                    <span class="tableTitle">기준일 설정 공고</span>
                                    <span class="tableDate">2022.12.16</span>
                                </a>
                            </li>
                            <li>
                                <a href="">
                                    <span class="tableTitle">개인정보처리방침 개정 안내(2022.09.13)</span>
                                    <span class="tableDate">2022.09.05</span>
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>

                <div class="reviewBoard">
                    <div class="title">
                        <p>커뮤니티</p>
                        <p>
                            전체보기
                            <img src="./img/+.png" alt="+">
                        </p>
                    </div>

                    <div class="table">
                        <ul>
                            <li>
                                <a href="">
                                    <span class="tableTitle">첫번째 커뮤니티</span>
                                    <span class="tableDate">2023.02.14</span>
                                </a>
                            </li>
                            <li>
                                <a href="">
                                    <span class="tableTitle">두번째 커뮤니티</span>
                                    <span class="tableDate">2022.12.16</span>
                                </a>
                            </li>
                            <li>
                                <a href="">
                                    <span class="tableTitle">세번째 커뮤니티</span>
                                    <span class="tableDate">2022.09.05</span>
                                </a>
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
                    <li><img src="./img/only1.png" alt="only 이미지1"></li>
                    <li><img src="./img/only2.png" alt="only 이미지2"></li>
                    <li><img src="./img/only3.png" alt="only 이미지3"></li>
                    <li></li><!--4/12추가-->
                </ul>
            </div> <!-- onlyEmart -->
            
            <div class="mapService">
                <div class="title">
                    <h1>매장찾기</h1>
                    <div class="searchItem">
                        <div class="searchBar">
                            <input type="text" class="searchTextBox">
                            <img src="./img/search.png" alt="찾기" class="searchIcon">
                        </div>

                        <ul class="tags">
                            <li class="tag"><img src="./img/24h.PNG" alt="24시간"></li>
                            <li class="tag"><img src="./img/parcel.PNG" alt="택배"></li>
                            <li class="tag"><img src="./img/atm.PNG" alt="ATM"></li>
                            <li class="tag"><img src="./img/wine.PNG" alt="와인"></li>
                            <li class="tag"><img src="./img/coffee.PNG" alt="커피"></li>
                        </ul>
                    </div>
                </div>
                <div class="mapImg">
                    <img src="./img/map.PNG" alt="지도"> <!-- 홈페이지대로 갈 건지 확인 -->
                </div>
            </div> <!-- mapService -->
            
            <div class="appService">
                <img src="./img/svc.PNG" alt="서비스 이미지">
            </div> <!-- appService -->
            
            <div class="emartStory">
                <div class="title">
                    <h2>이마트24<br>STORY</h2>
                    <h6>이마트24의 다양한 스토리를 확인해 보세요.</h6>
                    <ul class="magazinSns">
                        <li><img src="./img/youtubeGray.png" alt="유튭"></li>
                        <li><img src="./img/instaGray.png" alt="인스타"></li>
                        <li><img src="./img/faceBookGray.png" alt="페북"></li>
                        <li><img src="./img/tiktokGray.png" alt="틱톡"></li>
                    </ul>
                </div>

                <ul class="magazinImg">
                    <li><img src="./img/story1.png" alt="이미지1"></li>
                    <li><img src="./img/story2.png" alt="이미지2"></li>
                    <li><img src="./img/style3.png" alt="이미지3"></li>
                </ul>
            </div> <!-- emartStory -->
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
                    <div>패밀리사이트 +</div>
                </div> <!-- fnbWrap-->
                <div class="footerContentsWrap">
                    <div class="companyInfo">
                        <h3>(주)이마트24</h3>
                        <p>대표이사: 김장욱 / 사업자등록번호: 105-86-92454</p>
                        <p>서울특별시 성동구 성수동 2가 281-4 푸조비즈타워 / 고객센터: 02-6916-1500 / Fax: 02-6916-1430</p>
                        <p>COPYRIGHT (C) EMART24.ALL RIGHT RESERVED</p>
                    </div> <!-- companyInfo -->
                    <div class="snsWrap">
                        <ul>
                            <li><img src="./img/snsYutube.png" alt="유툽"></li>
                            <li><img src="./img/snsInsta.png" alt="인스타"></li>
                            <li><img src="./img/snsFacebook.png" alt="페북"></li>
                            <li class="tiktok"><img src="./img/snsTiktok.png" alt="틱톡"></li>
                        </ul>
                    </div> <!-- snsWrap -->
                </div> <!-- footerContentsWrap -->
            </div> <!-- footerIn -->
        </div> <!-- footer -->
    </div> <!-- wrap -->
    <script src="./js/script.js"></script>
</body>
</html>