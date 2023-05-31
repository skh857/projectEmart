<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<style>
.header{
    background-color: rgb(255, 255, 255);
    width: 100%;
    height: 118px;
    position : fixed;
    top : 0;
    left : 0;
}

.headerIn{
    display: flex;
    width: 1200px;
    height: 118px;
    margin-left: auto;
    margin-right: auto;
}

.headerIn .logo{
    margin-left: 50px;    
    margin-right: 50px;
    margin-top: 48px;
}

.headerIn .logo img{
    width: 113px;
    height: 22px;
}

.header .gnb{
    display: flex;
    width: 800px;
    align-items: center;
}

.titleEvent{
    display: none;
}

.gnb .gnbMenu{
    width: 140px;
    justify-content: space-between;
    margin: 0px 20px;
    text-align: center;
}

.headerIn .headerHidden{
    position: absolute;
    top: 118px;
    background-color: rgba(255, 209, 124, 0.9);
    height: 130px;
    width: 1200px;
    margin-left: auto;
    margin-right: auto;
}

.headerHidden ul li{
    line-height: 35px;
}

.headerHidden .gnbHidden{
    display: flex;
    justify-content: space-between;
    width: 760px;
    margin-top: 10px;
    margin-left: 230px;
}

.gnbHidden .gnbHiddenMenu{
    width: 118px;
    text-align: center;
}
</style>

<div class="header">
	<div class="headerIn">
		<div class="logo">
			<a href="./index.html">
            	<img src="<c:url value='/img/logo.png'/>" alt="로고">
            </a>
		</div> <!-- logo -->

		<ul class="gnb" onmouseover="on()" onmouseout="off()">
        	<li class="gnbMenu">
            	<div class="textWrap">
                	<a href="./goods.html">상품</a>
                </div>
            </li>
            <li class="gnbMenu">
            	<div class="textWrap">게시판</div>
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
                   		<li>공지사항</li>
                     	<li>커뮤니티</li>
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