<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<style>
.footer{
    background-color: rgb(255, 255, 255);
    height: 334px;
}

.footer .footerIn{
    width: 1200px;
    margin-left: auto;
    margin-right: auto;
}

.fnbWrap{
    display: flex;
    height: 33px;
    margin-bottom: 30px;
    padding-top: 30px;
}

.fnbWrap ul{
    display: flex;
}

.fnbWrap ul li{
	margin-right: 15px;
}

.footerContentsWrap{
    display: flex;
    justify-content: space-between;
    height: 120px;
    margin-bottom: 50px;
}

.companyInfo h2{
    margin-bottom: 30px;
}

.companyInfo p{
	line-height: 23px;
}

.snsWrap ul{
    display: flex;
}

.snsWrap .tiktok{
    transform: scale(0.5);
}
</style>

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
	           	<h2>(주)이마트24</h2>
	           	<p>대표이사: 김장욱 / 사업자등록번호: 105-86-92454</p>
	           	<p>서울특별시 성동구 성수동 2가 281-4 푸조비즈타워 / 고객센터: 02-6916-1500 / Fax: 02-6916-1430</p>
	           	<p>COPYRIGHT (C) EMART24.ALL RIGHT RESERVED</p>
	       	</div> <!-- companyInfo -->
	       	<div class="snsWrap">
	         	<ul>
	           		<li><img src="<c:url value='/img/snsYutube.png'/>" alt="유툽"></li>
	              	<li><img src="<c:url value='/img/snsInsta.png'/>" alt="인스타"></li>
	               	<li><img src="<c:url value='/img/snsFacebook.png'/>" alt="페북"></li>
	              	<li class="tiktok"><img src="<c:url value='/img/snsTiktok.png'/>" alt="틱톡"></li>
	           	</ul>
	      	</div> <!-- snsWrap -->
	  	</div> <!-- footerContentsWrap -->
	</div> <!-- footerIn -->
</div> <!-- footer -->