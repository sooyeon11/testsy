<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>login</title>
  
	<link rel='shortcut icon' href='http://appdata.hungryapp.co.kr/images/hatdog/img/intro/00_hatdog_logo.ico'>
    <link rel="stylesheet" href="./resources/css/sub_j.css">
    <link rel="stylesheet" href="./resources/css/sub_h.css">
    <link rel="stylesheet" href="./resources/css/sub.css">
    <link rel="stylesheet" href="./resources/css/default.css">
    <link rel="stylesheet" href="./resources/css/main.css">
    <link rel="stylesheet" href="./resources/css/layout.css">
    <link rel="stylesheet" href="./resources/css/shot.css">
    <link rel="stylesheet" href="./resources/css/swiper-bundle.min.css">


    <script src="./resources/js/jquery.js"></script>
    <script src="./resources/js/swiper-bundle.min.js"></script>

</head>

<body>
    <header id="header" class="pr">
        <div id="headerInnerWrap">
            <!-- ****************** 헤더상단 ********************** -->
            <div id="headerTop">
                <div class="area">
                    <p class="top_text">반려견과 함께 위드독에 오신것을 환영 합니다.</p>
                    <ul>
                        <li class=""><a href="">로그인</a></li>
                        <li class="line">|</li>
                        <li class=""><a href="">회원가입</a></li>
                        <li class="line">|</li>
                        <li class=""><a onclick="top.location.href=''">고객센터</a></li>
                    </ul>
                </div>
            </div>
            <div id="headerInner" class="clearfix">
                <div class="area">
                    <h1 class="logo">
                        <a onclick="Store.clear(); top.location.href='http://hatdog.co.kr/pc_hatdog/';">
                            <img src="http://appdata.hungryapp.co.kr/images/hatdog/img/pc_img/common/logo.png" alt="위드독">
                        </a>
                    </h1>
                    <div class="s21_w1422 pr">
                        <a onclick="Store.clear(); top.location.href='http://hatdog.co.kr/pc_hatdog/';"></a>
                        <div class="s_search">
                            <input type="text" class="SearchInput" name="h_sch_text" id="h_sch_text" placeholder="어디에서 무엇을 하고 싶으세요?" title="">
                            <span class="j21_btn_search" onclick="Store.clear();go_arinfo();"><a><img src="http://appdata.hungryapp.co.kr/images/hatdog/img/pc_img/common/ico_search.png" alt="검색"></a></span>
                        </div>
                    </div>
                </div>
            </div>
            <!-- ****************** GNB ********************** -->
            <!-- GNB PC -->

            <nav id="gnb">
                <h2 class="blind">주메뉴</h2>
                <div class="gnb-wrapper area">
                    <ul class="clearfix">
                        <li class="" onclick="Store.clear()"><a onclick="top.location.href='http://hatdog.co.kr/pc_hatdog/?m1Code=ar_info&amp;m2Code=ar_info';"><span>전체보기</span></a></li>
                        <li class="" onclick="Store.clear()"><a onclick="top.location.href='http://hatdog.co.kr/pc_hatdog/?m1Code=tip&amp;m2Code=tip';"><span>숙소</span></a></li>
                        <li class="" onclick="Store.clear()"><a onclick="top.location.href='http://hatdog.co.kr/pc_hatdog/?m1Code=cmm&amp;m2Code=cmm';"><span>후기게시판</span></a></li>
                    </ul>
                </div>
            </nav>
        </div>
    </header>
    
    <form action="login">
	<div class="h21_community_m_top pr" style="height: 500px">
	    <div class="h21_top_cbox pr area">
	        <h3 class=""><span>로그인</span></h3>
	        <p class="h21_h3_line_c"></p>
	        <p class="h21_h3_text_c">
	        	<div style="float: left; margin-left: 470px"><img src="./resources/images/KakaoTalk_20211025_1600145711.png" style="width:100px; height:100px"/></div>
	        	<div><input type="text" name="email" id="email" placeholder="Email" style="width:190px; height:40px; margin: 0 0 8px 5px"><br/>
				<input type="password" name="pw" id="pw" placeholder="Password" style="width:190px; height:40px; margin-left: 5px"/><br/></div><br/>
				
				<input type="submit" name="asdf" id="login" value="아이디/이메일 찾기" style="width:150px; height:30px; margin-left: 470px"/>
				<input type="submit" name="login" id="login" value="회원가입" style="width:150px; height:30px"/><br/>
				<input type="submit" name="login" id="login" value="로그인" style="width:303px; height:30px; margin: 5px 0 0 470px"/>
				
			</p>
	    </div>
	</div>
    </form>
    	
    <!-- footer -->
    <div id="footer">
        <div class="footerBottom area">
            <div class="footerBottom_left">
                <p>(주)스마트나우 전주지사 주소 : 전라북도 전주시 완산구 현무1길 9 (케이티전주지사3층) 대표이사 : 송현두 | 사업자등록번호: 402-85-34440<br>
                    이메일 : dju@smartnow.co.kr
                </p>

                <address>Copyright STYLE II. All rights reserved.</address>
            </div>
            <ul class="footerBottom_right">
                <li><a href="http://hatdog.co.kr/pc_hatdog/?m1Code=etc&m2Code=policy" target="_top">이용약관</a></li>
                <li><a href="http://hatdog.co.kr/pc_hatdog/?m1Code=etc&m2Code=policy2" target="_top">개인정보처리방침</a></li>
            </ul>
        </div>
    </div>

</body>
</html>