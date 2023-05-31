<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<div class="header">
	<div class="headerIn">
		<div class="logo">
			<a href="./index.jsp">
            	<img src="./resources/img/logo.png" alt="로고">
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