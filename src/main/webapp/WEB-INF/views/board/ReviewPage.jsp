<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
	"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Review</title>
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
    
    <!-- header-->
    <header id="header" class="pr">
        <div id="headerInnerWrap">
            <div id="headerTop">
                <div class="area">
                    <p class="top_text">반려견과 함께 WithDog에 오신것을 환영 합니다.</p>
                    <ul>
                        <li class="line">|</li>
                        <li class=""><a href="">로그인</a></li>
                        <li class="line">|</li>
                        <li class=""><a href="">마이페이지</a></li>
                        <li class="line">|</li>
                        <li class=""><a onclick="top.location.href=''">고객센터</a></li>
                    </ul>
                </div>
            </div>
            <div id="headerInner" class="clearfix">
                <div class="area">
                    <h1 class="logo">
                        <a onclick="Store.clear(); top.location.href='http://hatdog.co.kr/pc_hatdog/';">
                            <img src="http://appdata.hungryapp.co.kr/images/hatdog/img/pc_img/common/logo.png" alt="하트독">
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

    <div class="sContainer">

        <!-- sub m top -->
        <div class="s21_album_m_top pr">
            <div class="s21_top_tbox">
                <div class="s21_top_tbox_left">
                    <h3 class=""><span>여행앨범</span></h3>
                    <p class="s21_h3_line_l"></p>
                    <p class="s21_h3_text_l">사랑스런 반려견과 함께한 소중한 추억을 간직하는 현명한 방법!<br>하트독 여행앨범과 스마트한 여행되세요!</p>
                    <p class="s21_top_link">
                        <a href="javascript:$('html, body').css('overflow','hidden');$('#myModal').show();" class="code_view s21Btn1">
                             <span class="lb">여행앨범 가이드</span>
                             <i class="ico-arr2"></i>
                        </a>						
                    </p>
                </div>
                <div class="s21_top_tbox_right">
                    <div class="s21_top_cal" onclick="Store.clear()">
<a onclick="go_link('?m1Code=album&amp;m2Code=album&amp;mode=in')">
    <div class="s21_top_right_box">
        <p><img src="http://appdata.hungryapp.co.kr/images/hatdog/img/pc_img/album/top_ico1.png" alt=""></p>
        <dl>
            <dt>앨범등록</dt>
            <dd><span>+</span></dd>
        </dl>
    </div>
</a>
<a onclick="go_link('?m1Code=album&amp;m2Code=album_my')">
    <div class="s21_top_right_box">
        <p><img src="http://appdata.hungryapp.co.kr/images/hatdog/img/pc_img/album/top_ico2.png" alt=""></p>
        <dl>
            <dt>마이앨범</dt>
            <dd><span>+</span></dd>
        </dl>
    </div>
</a>
</div>

<script>
function go_link(link){

location.href=link;
}
</script>					</div>
            </div>
        </div>
        <!--// sub m top -->


        <!-- 상단리스트 -->
        <div class="s21_album_top area">
            
        <div class="s21_album_list area">
            <!-- 순 -->
            <div class="s21_tour_sun">
                <!-- 검색란 체크시 출력 -->
                <h3 class="span_h3"><span class="span_h3_ttl">공개앨범</span> <span class="span_h3_st ab_total">260</span> 개의 앨범이 있습니다.</h3>
            </div>
            <!--// 순 -->

            <!-- 리스트 시작 -->
            <form id="frmSetData" name="frmSetData" method="POST" onsubmit="return false;">
                <input type="hidden" id="m2Code" name="m2Code" value="album">
                <input type="hidden" id="mode" name="mode" value="mainlist">
                <input type="hidden" id="page" name="page" value="0">
            </form>
            <div class="s21_tour_list_box">
            
            <c:forEach var="listReview" items="${list}">
            
            <a onclick="Store.set('ab_m_scroll',document.documentElement.scrollTop)" href="?m1Code=album&amp;m2Code=album_pic&amp;bf_m2Code=&amp;album_idx=943">
                            <div class="s21_tour_list_conts pr ">
                                <dl class="s21_tour_list_photo">
                                    <dt><img src="http://appdata.hungryapp.co.kr/images/hatdog/album/202111/M16359911139427221.jpg/hungryapp/resize/500" alt=""></dt>
                                    <dd><img src="http://appdata.hungryapp.co.kr/images/hatdog/album/202111/M16359911476036421.jpg/hungryapp/resize/200" alt=""></dd>
                                    <dd><img src="http://appdata.hungryapp.co.kr/images/hatdog/album/pic/202111/M16359921223203821.jpg/hungryapp/resize/200" alt=""></dd>
                                </dl>
                                <p class="s21_best_num pa">+ 16</p>
                                <div class="s21_tour_list_tbox">
                                    <h4 class="s21_best_tip">${listReview.title}</h4>
                                    <div class="s21_album_desc" onclick="">
                                      
                                       <div class="s21_album_desc_bx pr">
                                            <p><img src="http://appdata.hungryapp.co.kr/images/hatdog/img/common/login_logoutimg.jpg/hungryapp/resize/200" alt=""></p>
                                            <dl>
                                                <dt>최쮸</dt>
                                                <dd>2021.11.04 10:59</dd>
                                            </dl>
                                        </div>

                               </div>
                            </div>
                            </div>
                        </a>
                        <a onclick="Store.set('ab_m_scroll',document.documentElement.scrollTop)" href="?m1Code=album&amp;m2Code=album_pic&amp;bf_m2Code=&amp;album_idx=937">
                            <div class="s21_tour_list_conts pr ">
                                <dl class="s21_tour_list_photo">
                                    <dt><img src="http://appdata.hungryapp.co.kr/images/hatdog/album/202109/M16324493867675170.jpg/hungryapp/resize/500" alt=""></dt>
                                    <dd><img src="http://appdata.hungryapp.co.kr/images/hatdog/album/202109/M16324494013830870.jpg/hungryapp/resize/200" alt=""></dd>
                                    <dd><img src="http://appdata.hungryapp.co.kr/images/hatdog/album/pic/202109/M16324495278193170.jpg/hungryapp/resize/200" alt=""></dd>
                                </dl>
                                <p class="s21_best_num pa">+ 1</p>
                                <div class="s21_tour_list_tbox">
                                    <h4 class="s21_best_tip">${listReview.title}</h4>
                                    <div class="s21_album_desc" onclick="">
                                      
                                       <div class="s21_album_desc_bx pr">
                                            <p><img src="http://appdata.hungryapp.co.kr/images/hatdog/upload/202108/M162920674699910246.jpg/hungryapp/resize/200" alt=""></p>
                                            <dl>
                                                <dt>밤이슬</dt>
                                                <dd>2021.09.24 11:10</dd>
                                            </dl>
                                        </div>

                               </div>
                            </div>
                            </div>
                        </a>
                        <a onclick="Store.set('ab_m_scroll',document.documentElement.scrollTop)" href="?m1Code=album&amp;m2Code=album_pic&amp;bf_m2Code=&amp;album_idx=935">
                            <div class="s21_tour_list_conts pr mgr_0">
                                <dl class="s21_tour_list_photo">
                                    <dt><img src="http://appdata.hungryapp.co.kr/images/hatdog/album/202109/M16322104301121563.jpg/hungryapp/resize/500" alt=""></dt>
                                    <dd><img src="http://appdata.hungryapp.co.kr/images/hatdog/album/202109/M16322104600326863.jpg/hungryapp/resize/200" alt=""></dd>
                                    <dd><img src="http://appdata.hungryapp.co.kr/images/hatdog/album/pic/202109/M16322105096831463.jpg/hungryapp/resize/200" alt=""></dd>
                                </dl>
                                <p class="s21_best_num pa">+ 2</p>
                                <div class="s21_tour_list_tbox">
                                    <h4 class="s21_best_tip">${listReview.title}</h4>
                                    <div class="s21_album_desc" onclick="">
                                      
                                       <div class="s21_album_desc_bx pr">
                                            <p><img src="http://appdata.hungryapp.co.kr/images/hatdog/upload/202109/M16322107247842263.jpg/hungryapp/resize/200" alt=""></p>
                                            <dl>
                                                <dt>희진온비엄마</dt>
                                                <dd>2021.09.21 16:47</dd>
                                            </dl>
                                        </div>

                               </div>
                            </div>
                            </div>
                        </a>
                        <a onclick="Store.set('ab_m_scroll',document.documentElement.scrollTop)" href="?m1Code=album&amp;m2Code=album_pic&amp;bf_m2Code=&amp;album_idx=927">
                            <div class="s21_tour_list_conts pr ">
                                <dl class="s21_tour_list_photo">
                                    <dt><img src="http://appdata.hungryapp.co.kr/images/hatdog/album/202109/M163100914115160194.jpg/hungryapp/resize/500" alt=""></dt>
                                    <dd><img src="http://appdata.hungryapp.co.kr/images/hatdog/album/202109/M163100916793082194.jpg/hungryapp/resize/200" alt=""></dd>
                                    <dd><img src="http://appdata.hungryapp.co.kr/images/hatdog/album/pic/202109/M163100918847631194.jpg/hungryapp/resize/200" alt=""></dd>
                                </dl>
                                <p class="s21_best_num pa">+ 2</p>
                                <div class="s21_tour_list_tbox">
                                    <h4 class="s21_best_tip">쪼꼬와 라떼</h4>
                                    <div class="s21_album_desc" onclick="">
                                      
                                       <div class="s21_album_desc_bx pr">
                                            <p><img src="http://appdata.hungryapp.co.kr/images/hatdog/upload/202110/M163498345199754248.jpg/hungryapp/resize/200" alt=""></p>
                                            <dl>
                                                <dt>쪼꼬와라떼</dt>
                                                <dd>2021.09.07 19:04</dd>
                                            </dl>
                                        </div>

                               </div>
                            </div>
                            </div>
                        </a>
                        <a onclick="Store.set('ab_m_scroll',document.documentElement.scrollTop)" href="?m1Code=album&amp;m2Code=album_pic&amp;bf_m2Code=&amp;album_idx=924">
                            <div class="s21_tour_list_conts pr ">
                                <dl class="s21_tour_list_photo">
                                    <dt><img src="http://appdata.hungryapp.co.kr/images/hatdog/album/202108/M162920868687256108.jpg/hungryapp/resize/500" alt=""></dt>
                                    <dd><img src="http://appdata.hungryapp.co.kr/images/hatdog/album/202108/M162920869873097108.jpg/hungryapp/resize/200" alt=""></dd>
                                    <dd><img src="http://appdata.hungryapp.co.kr/images/hatdog/album/pic/202108/M162920877343295108.jpg/hungryapp/resize/200" alt=""></dd>
                                </dl>
                                <p class="s21_best_num pa">+ 1</p>
                                <div class="s21_tour_list_tbox">
                                    <h4 class="s21_best_tip">경남고성 캠핑여행</h4>
                                    <div class="s21_album_desc" onclick="">
                                      
                                       <div class="s21_album_desc_bx pr">
                                            <p><img src="http://appdata.hungryapp.co.kr/images/hatdog/upload/202012/M160924490445626127.jpg/hungryapp/resize/200" alt=""></p>
                                            <dl>
                                                <dt>나경8236</dt>
                                                <dd>2021.08.17 22:58</dd>
                                            </dl>
                                        </div>

                               </div>
                            </div>
                            </div>
                        </a>
                        <a onclick="Store.set('ab_m_scroll',document.documentElement.scrollTop)" href="?m1Code=album&amp;m2Code=album_pic&amp;bf_m2Code=&amp;album_idx=921">
                            <div class="s21_tour_list_conts pr mgr_0">
                                <dl class="s21_tour_list_photo">
                                    <dt><img src="http://appdata.hungryapp.co.kr/images/hatdog/album/202108/M16287202643860690.jpeg/hungryapp/resize/500" alt=""></dt>
                                    <dd><img src="http://appdata.hungryapp.co.kr/images/hatdog/album/202108/M16287202669146290.jpeg/hungryapp/resize/200" alt=""></dd>
                                    <dd><img src="http://appdata.hungryapp.co.kr/images/hatdog/album/pic/202108/M16287203227210490.jpeg/hungryapp/resize/200" alt=""></dd>
                                </dl>
                                <p class="s21_best_num pa">+ 2</p>
                                <div class="s21_tour_list_tbox">
                                    <h4 class="s21_best_tip">쿤이 산책완료</h4>
                                    <div class="s21_album_desc" onclick="">
                                      
                                       <div class="s21_album_desc_bx pr">
                                            <p><img src="http://appdata.hungryapp.co.kr/images/hatdog/img/common/login_logoutimg.jpg/hungryapp/resize/200" alt=""></p>
                                            <dl>
                                                <dt>김아연이</dt>
                                                <dd>2021.08.12 07:17</dd>
                                            </dl>
                                        </div>

                               </div>
                            </div>
                            </div>
                        </a>
                        <a onclick="Store.set('ab_m_scroll',document.documentElement.scrollTop)" href="?m1Code=album&amp;m2Code=album_pic&amp;bf_m2Code=&amp;album_idx=917">
                            <div class="s21_tour_list_conts pr ">
                                <dl class="s21_tour_list_photo">
                                    <dt><img src="http://appdata.hungryapp.co.kr/images/hatdog/album/202107/M162735225205834238.jpg/hungryapp/resize/500" alt=""></dt>
                                    <dd><img src="http://appdata.hungryapp.co.kr/images/hatdog/album/202107/M162735225821523238.jpg/hungryapp/resize/200" alt=""></dd>
                                    <dd><img src="http://appdata.hungryapp.co.kr/images/hatdog/album/pic/202107/M162735265773426238.jpg/hungryapp/resize/200" alt=""></dd>
                                </dl>
                                <p class="s21_best_num pa">+ 2</p>
                                <div class="s21_tour_list_tbox">
                                    <h4 class="s21_best_tip">춘봉이랑❤</h4>
                                    <div class="s21_album_desc" onclick="">
                                      
                                       <div class="s21_album_desc_bx pr">
                                            <p><img src="http://appdata.hungryapp.co.kr/images/hatdog/upload/202108/M16293860823869388.jpg/hungryapp/resize/200" alt=""></p>
                                            <dl>
                                                <dt>춘봉이애미</dt>
                                                <dd>2021.07.27 11:17</dd>
                                            </dl>
                                        </div>

                               </div>
                            </div>
                            </div>
                        </a>
                        <a onclick="Store.set('ab_m_scroll',document.documentElement.scrollTop)" href="?m1Code=album&amp;m2Code=album_pic&amp;bf_m2Code=&amp;album_idx=915">
                            <div class="s21_tour_list_conts pr ">
                                <dl class="s21_tour_list_photo">
                                    <dt><img src="http://appdata.hungryapp.co.kr/images/hatdog/album/202107/M16264029139936772.jpeg/hungryapp/resize/500" alt=""></dt>
                                    <dd><img src="http://appdata.hungryapp.co.kr/images/hatdog/album/202107/M16264029200358172.jpeg/hungryapp/resize/200" alt=""></dd>
                                    <dd><img src="http://appdata.hungryapp.co.kr/images/hatdog/album/pic/202107/M16264029559639772.jpeg/hungryapp/resize/200" alt=""></dd>
                                </dl>
                                <p class="s21_best_num pa">+ 7</p>
                                <div class="s21_tour_list_tbox">
                                    <h4 class="s21_best_tip">[행궁동] 봄(春)은 맑네요.</h4>
                                    <div class="s21_album_desc" onclick="">
                                      
                                       <div class="s21_album_desc_bx pr">
                                            <p><img src="http://appdata.hungryapp.co.kr/images/hatdog/upload/202107/M16264032071108172.jpeg/hungryapp/resize/200" alt=""></p>
                                            <dl>
                                                <dt>임호뽀미</dt>
                                                <dd>2021.07.16 11:35</dd>
                                            </dl>
                                        </div>

                               </div>
                            </div>
                            </div>
                        </a>
                        <a onclick="Store.set('ab_m_scroll',document.documentElement.scrollTop)" href="?m1Code=album&amp;m2Code=album_pic&amp;bf_m2Code=&amp;album_idx=909">
                            <div class="s21_tour_list_conts pr mgr_0">
                                <dl class="s21_tour_list_photo">
                                    <dt><img src="http://appdata.hungryapp.co.kr/images/hatdog/album/202106/M162501426182959103.jpg/hungryapp/resize/500" alt=""></dt>
                                    <dd><img src="http://appdata.hungryapp.co.kr/images/hatdog/album/202106/M162501428383011103.jpg/hungryapp/resize/200" alt=""></dd>
                                    <dd><img src="http://appdata.hungryapp.co.kr/images/hatdog/album/pic/202106/M162501434058237103.jpg/hungryapp/resize/200" alt=""></dd>
                                </dl>
                                <p class="s21_best_num pa">+ 10</p>
                                <div class="s21_tour_list_tbox">
                                    <h4 class="s21_best_tip">여수여행</h4>
                                    <div class="s21_album_desc" onclick="">
                                      
                                       <div class="s21_album_desc_bx pr">
                                            <p><img src="http://appdata.hungryapp.co.kr/images/hatdog/img/common/login_logoutimg.jpg/hungryapp/resize/200" alt=""></p>
                                            <dl>
                                                <dt>잉잉숑숑</dt>
                                                <dd>2021.06.30 09:51</dd>
                                            </dl>
                                        </div>

                               </div>
                            </div>
                            </div>
                        </a>
                        <a onclick="Store.set('ab_m_scroll',document.documentElement.scrollTop)" href="?m1Code=album&amp;m2Code=album_pic&amp;bf_m2Code=&amp;album_idx=905">
                            <div class="s21_tour_list_conts pr ">
                                <dl class="s21_tour_list_photo">
                                    <dt><img src="http://appdata.hungryapp.co.kr/images/hatdog/album/202106/M162428800202675223.jpg/hungryapp/resize/500" alt=""></dt>
                                    <dd><img src="http://appdata.hungryapp.co.kr/images/hatdog/album/202106/M162428801567897223.jpg/hungryapp/resize/200" alt=""></dd>
                                    <dd><img src="http://appdata.hungryapp.co.kr/images/hatdog/album/pic/202106/M162428812187677223.jpg/hungryapp/resize/200" alt=""></dd>
                                </dl>
                                <p class="s21_best_num pa">+ 4</p>
                                <div class="s21_tour_list_tbox">
                                    <h4 class="s21_best_tip">수영천재견</h4>
                                    <div class="s21_album_desc" onclick="">
                                      
                                       <div class="s21_album_desc_bx pr">
                                            <p><img src="http://appdata.hungryapp.co.kr/images/hatdog/upload/202106/M162428785665116223.jpg/hungryapp/resize/200" alt=""></p>
                                            <dl>
                                                <dt>도도워니</dt>
                                                <dd>2021.06.22 00:07</dd>
                                            </dl>
                                        </div>

                               </div>
                            </div>
                            </div>
                        </a>
                        <a onclick="Store.set('ab_m_scroll',document.documentElement.scrollTop)" href="?m1Code=album&amp;m2Code=album_pic&amp;bf_m2Code=&amp;album_idx=902">
                            <div class="s21_tour_list_conts pr ">
                                <dl class="s21_tour_list_photo">
                                    <dt><img src="http://appdata.hungryapp.co.kr/images/hatdog/album/202106/M162338903404942242.jpg/hungryapp/resize/500" alt=""></dt>
                                    <dd><img src="http://appdata.hungryapp.co.kr/images/hatdog/album/202106/M162338904042943242.jpg/hungryapp/resize/200" alt=""></dd>
                                    <dd><img src="http://appdata.hungryapp.co.kr/images/hatdog/album/pic/202106/M162338913426632242.jpg/hungryapp/resize/200" alt=""></dd>
                                </dl>
                                <p class="s21_best_num pa">+ 8</p>
                                <div class="s21_tour_list_tbox">
                                    <h4 class="s21_best_tip">스콘이 맛있고 작고 예쁜 까페 미쿠니 애견동반 가능</h4>
                                    <div class="s21_album_desc" onclick="">
                                      
                                       <div class="s21_album_desc_bx pr">
                                            <p><img src="http://appdata.hungryapp.co.kr/images/hatdog/img/common/login_logoutimg.jpg/hungryapp/resize/200" alt=""></p>
                                            <dl>
                                                <dt>김경미설계사</dt>
                                                <dd>2021.06.11 14:24</dd>
                                            </dl>
                                        </div>

                               </div>
                            </div>
                            </div>
                        </a>
                        <a onclick="Store.set('ab_m_scroll',document.documentElement.scrollTop)" href="?m1Code=album&amp;m2Code=album_pic&amp;bf_m2Code=&amp;album_idx=901">
                            <div class="s21_tour_list_conts pr mgr_0">
                                <dl class="s21_tour_list_photo">
                                    <dt><img src="http://appdata.hungryapp.co.kr/images/hatdog/album/202105/M162234692042222120.jpg/hungryapp/resize/500" alt=""></dt>
                                    <dd><img src="http://appdata.hungryapp.co.kr/images/hatdog/album/202105/M162234693064428120.jpg/hungryapp/resize/200" alt=""></dd>
                                    <dd><img src="http://appdata.hungryapp.co.kr/images/hatdog/album/pic/202105/M162235704679392120.jpg/hungryapp/resize/200" alt=""></dd>
                                </dl>
                                <p class="s21_best_num pa">+ 25</p>
                                <div class="s21_tour_list_tbox">
                                    <h4 class="s21_best_tip">똘이의 흔적들</h4>
                                    <div class="s21_album_desc" onclick="">
                                      
                                       <div class="s21_album_desc_bx pr">
                                            <p><img src="http://appdata.hungryapp.co.kr/images/hatdog/upload/202105/M162234673823855120.jpg/hungryapp/resize/200" alt=""></p>
                                            <dl>
                                                <dt>미써리</dt>
                                                <dd>2021.05.30 12:56</dd>
                                            </dl>
                                        </div>

                               </div>
                            </div>
                            </div>
                        </a>
                        <a onclick="Store.set('ab_m_scroll',document.documentElement.scrollTop)" href="?m1Code=album&amp;m2Code=album_pic&amp;bf_m2Code=&amp;album_idx=897">
                            <div class="s21_tour_list_conts pr ">
                                <dl class="s21_tour_list_photo">
                                    <dt><img src="http://appdata.hungryapp.co.kr/images/hatdog/album/202105/M162113550277995144.jpg/hungryapp/resize/500" alt=""></dt>
                                    <dd><img src="http://appdata.hungryapp.co.kr/images/hatdog/album/202105/M162113551650557144.jpg/hungryapp/resize/200" alt=""></dd>
                                    <dd><img src="http://appdata.hungryapp.co.kr/images/hatdog/album/pic/202105/M162113491054136144.jpg/hungryapp/resize/200" alt=""></dd>
                                </dl>
                                <p class="s21_best_num pa">+ 29</p>
                                <div class="s21_tour_list_tbox">
                                    <h4 class="s21_best_tip">봉봉이랑 제주도 여행 1일째♡</h4>
                                    <div class="s21_album_desc" onclick="">
                                      
                                       <div class="s21_album_desc_bx pr">
                                            <p><img src="http://appdata.hungryapp.co.kr/images/hatdog/upload/202105/M162113539439104144.jpg/hungryapp/resize/200" alt=""></p>
                                            <dl>
                                                <dt>mugmilk</dt>
                                                <dd>2021.05.16 12:12</dd>
                                            </dl>
                                        </div>

                               </div>
                            </div>
                            </div>
                        </a>
                        <a onclick="Store.set('ab_m_scroll',document.documentElement.scrollTop)" href="?m1Code=album&amp;m2Code=album_pic&amp;bf_m2Code=&amp;album_idx=896">
                            <div class="s21_tour_list_conts pr ">
                                <dl class="s21_tour_list_photo">
                                    <dt><img src="http://appdata.hungryapp.co.kr/images/hatdog/album/202105/M16210364019998198.jpg/hungryapp/resize/500" alt=""></dt>
                                    <dd><img src="http://appdata.hungryapp.co.kr/images/hatdog/album/202105/M16210364191498198.jpg/hungryapp/resize/200" alt=""></dd>
                                    <dd><img src="http://appdata.hungryapp.co.kr/images/hatdog/album/pic/202105/M16210364413619398.jpg/hungryapp/resize/200" alt=""></dd>
                                </dl>
                                <p class="s21_best_num pa">+ 6</p>
                                <div class="s21_tour_list_tbox">
                                    <h4 class="s21_best_tip">울꼼순이 첫 비행</h4>
                                    <div class="s21_album_desc" onclick="">
                                      
                                       <div class="s21_album_desc_bx pr">
                                            <p><img src="http://appdata.hungryapp.co.kr/images/hatdog/img/common/login_logoutimg.jpg/hungryapp/resize/200" alt=""></p>
                                            <dl>
                                                <dt>kkomsuni</dt>
                                                <dd>2021.05.15 08:53</dd>
                                            </dl>
                                        </div>

                               </div>
                            </div>
                            </div>
                        </a>
                        <a onclick="Store.set('ab_m_scroll',document.documentElement.scrollTop)" href="?m1Code=album&amp;m2Code=album_pic&amp;bf_m2Code=&amp;album_idx=894">
                            <div class="s21_tour_list_conts pr mgr_0">
                                <dl class="s21_tour_list_photo">
                                    <dt><img src="http://appdata.hungryapp.co.kr/images/hatdog/album/202105/M162089399191708199.jpg/hungryapp/resize/500" alt=""></dt>
                                    <dd><img src="http://appdata.hungryapp.co.kr/images/hatdog/album/202105/M162089412963611199.jpg/hungryapp/resize/200" alt=""></dd>
                                    <dd><img src="http://appdata.hungryapp.co.kr/images/hatdog/album/pic/202105/M162089417401275199.jpg/hungryapp/resize/200" alt=""></dd>
                                </dl>
                                <p class="s21_best_num pa">+ 3</p>
                                <div class="s21_tour_list_tbox">
                                    <h4 class="s21_best_tip">파마양 입니다</h4>
                                    <div class="s21_album_desc" onclick="">
                                      
                                       <div class="s21_album_desc_bx pr">
                                            <p><img src="http://appdata.hungryapp.co.kr/images/hatdog/upload/202105/M162089522545584199.jpg/hungryapp/resize/200" alt=""></p>
                                            <dl>
                                                <dt>파마맘</dt>
                                                <dd>2021.05.13 17:22</dd>
                                            </dl>
                                        </div>

                               </div>
                            </div>
                            </div>
                        </a>
                        <a onclick="Store.set('ab_m_scroll',document.documentElement.scrollTop)" href="?m1Code=album&amp;m2Code=album_pic&amp;bf_m2Code=&amp;album_idx=890">
                            <div class="s21_tour_list_conts pr ">
                                <dl class="s21_tour_list_photo">
                                    <dt><img src="http://appdata.hungryapp.co.kr/images/hatdog/album/202105/M162069324077279185.jpg/hungryapp/resize/500" alt=""></dt>
                                    <dd><img src="http://appdata.hungryapp.co.kr/images/hatdog/album/202105/M162069334962778185.jpg/hungryapp/resize/200" alt=""></dd>
                                    <dd><img src="http://appdata.hungryapp.co.kr/images/hatdog/album/pic/202105/M16216530867222346.jpg/hungryapp/resize/200" alt=""></dd>
                                </dl>
                                <p class="s21_best_num pa">+ 34</p>
                                <div class="s21_tour_list_tbox">
                                    <h4 class="s21_best_tip">제주생활 2년차. 중1 김꼼씨</h4>
                                    <div class="s21_album_desc" onclick="">
                                      
                                       <div class="s21_album_desc_bx pr">
                                            <p><img src="http://appdata.hungryapp.co.kr/images/hatdog/img/common/login_logoutimg.jpg/hungryapp/resize/200" alt=""></p>
                                            <dl>
                                                <dt>똥꼼이</dt>
                                                <dd>2021.05.11 09:35</dd>
                                            </dl>
                                        </div>

                               </div>
                            </div>
                            </div>
                        </a>
                        <a onclick="Store.set('ab_m_scroll',document.documentElement.scrollTop)" href="?m1Code=album&amp;m2Code=album_pic&amp;bf_m2Code=&amp;album_idx=887">
                            <div class="s21_tour_list_conts pr ">
                                <dl class="s21_tour_list_photo">
                                    <dt><img src="http://appdata.hungryapp.co.kr/images/hatdog/album/202105/M162010194228226110.jpg/hungryapp/resize/500" alt=""></dt>
                                    <dd><img src="http://appdata.hungryapp.co.kr/images/hatdog/album/202105/M162010199313839110.jpg/hungryapp/resize/200" alt=""></dd>
                                    <dd><img src="http://appdata.hungryapp.co.kr/images/hatdog/album/pic/202105/M162010203087723110.jpg/hungryapp/resize/200" alt=""></dd>
                                </dl>
                                <p class="s21_best_num pa">+ 13</p>
                                <div class="s21_tour_list_tbox">
                                    <h4 class="s21_best_tip">레오의 첫 제주도 여행</h4>
                                    <div class="s21_album_desc" onclick="">
                                      
                                       <div class="s21_album_desc_bx pr">
                                            <p><img src="http://appdata.hungryapp.co.kr/images/hatdog/img/common/login_logoutimg.jpg/hungryapp/resize/200" alt=""></p>
                                            <dl>
                                                <dt>낼름레오</dt>
                                                <dd>2021.05.04 13:20</dd>
                                            </dl>
                                        </div>

                               </div>
                            </div>
                            </div>
                        </a>
                        <a onclick="Store.set('ab_m_scroll',document.documentElement.scrollTop)" href="?m1Code=album&amp;m2Code=album_pic&amp;bf_m2Code=&amp;album_idx=883">
                            <div class="s21_tour_list_conts pr mgr_0">
                                <dl class="s21_tour_list_photo">
                                    <dt><img src="http://appdata.hungryapp.co.kr/images/hatdog/album/202104/M161901591097855120.jpg/hungryapp/resize/500" alt=""></dt>
                                    <dd><img src="http://appdata.hungryapp.co.kr/images/hatdog/album/202104/M161901593817003120.jpg/hungryapp/resize/200" alt=""></dd>
                                    <dd><img src="http://appdata.hungryapp.co.kr/images/hatdog/album/pic/202104/M161901597426860120.jpg/hungryapp/resize/200" alt=""></dd>
                                </dl>
                                <p class="s21_best_num pa">+ 7</p>
                                <div class="s21_tour_list_tbox">
                                    <h4 class="s21_best_tip">테디와 떠나요</h4>
                                    <div class="s21_album_desc" onclick="">
                                      
                                       <div class="s21_album_desc_bx pr">
                                            <p><img src="http://appdata.hungryapp.co.kr/images/hatdog/upload/202104/M161792906155228120.jpg/hungryapp/resize/200" alt=""></p>
                                            <dl>
                                                <dt>배곧테디맘</dt>
                                                <dd>2021.04.21 23:39</dd>
                                            </dl>
                                        </div>

                               </div>
                            </div>
                            </div>
                        </a>
                        <a onclick="Store.set('ab_m_scroll',document.documentElement.scrollTop)" href="?m1Code=album&amp;m2Code=album_pic&amp;bf_m2Code=&amp;album_idx=882">
                            <div class="s21_tour_list_conts pr ">
                                <dl class="s21_tour_list_photo">
                                    <dt><img src="http://appdata.hungryapp.co.kr/images/hatdog/album/202104/M16185767702061356.jpg/hungryapp/resize/500" alt=""></dt>
                                    <dd><img src="http://appdata.hungryapp.co.kr/images/hatdog/album/202104/M16185767852556256.jpg/hungryapp/resize/200" alt=""></dd>
                                    <dd><img src="http://appdata.hungryapp.co.kr/images/hatdog/album/pic/202104/M16185768066655756.jpg/hungryapp/resize/200" alt=""></dd>
                                </dl>
                                <p class="s21_best_num pa">+ 2</p>
                                <div class="s21_tour_list_tbox">
                                    <h4 class="s21_best_tip">부산 오륙도에서 </h4>
                                    <div class="s21_album_desc" onclick="">
                                      
                                       <div class="s21_album_desc_bx pr">
                                            <p><img src="http://appdata.hungryapp.co.kr/images/hatdog/img/common/login_logoutimg.jpg/hungryapp/resize/200" alt=""></p>
                                            <dl>
                                                <dt>No디디</dt>
                                                <dd>2021.04.16 21:39</dd>
                                            </dl>
                                        </div>

                               </div>
                            </div>
                            </div>
                        </a>
                        <a onclick="Store.set('ab_m_scroll',document.documentElement.scrollTop)" href="?m1Code=album&amp;m2Code=album_pic&amp;bf_m2Code=&amp;album_idx=877">
                            <div class="s21_tour_list_conts pr ">
                                <dl class="s21_tour_list_photo">
                                    <dt><img src="http://appdata.hungryapp.co.kr/images/hatdog/album/202104/M161744985349821178.jpg/hungryapp/resize/500" alt=""></dt>
                                    <dd><img src="http://appdata.hungryapp.co.kr/images/hatdog/album/202104/M161752074586633133.jpg/hungryapp/resize/200" alt=""></dd>
                                    <dd><img src="http://appdata.hungryapp.co.kr/images/hatdog/album/pic/202104/M161763395247445223.jpg/hungryapp/resize/200" alt=""></dd>
                                </dl>
                                <p class="s21_best_num pa">+ 19</p>
                                <div class="s21_tour_list_tbox">
                                    <h4 class="s21_best_tip">제주다요미</h4>
                                    <div class="s21_album_desc" onclick="">
                                      
                                       <div class="s21_album_desc_bx pr">
                                            <p><img src="http://appdata.hungryapp.co.kr/images/hatdog/img/common/login_logoutimg.jpg/hungryapp/resize/200" alt=""></p>
                                            <dl>
                                                <dt>토마통</dt>
                                                <dd>2021.04.03 20:38</dd>
                                            </dl>
                                        </div>

                               </div>
                            </div>
                            </div>
                        </a>
                        <a onclick="Store.set('ab_m_scroll',document.documentElement.scrollTop)" href="?m1Code=album&amp;m2Code=album_pic&amp;bf_m2Code=&amp;album_idx=872">
                            <div class="s21_tour_list_conts pr mgr_0">
                                <dl class="s21_tour_list_photo">
                                    <dt><img src="http://appdata.hungryapp.co.kr/images/hatdog/album/202104/M16172293981415377.jpg/hungryapp/resize/500" alt=""></dt>
                                    <dd><img src="http://appdata.hungryapp.co.kr/images/hatdog/album/202104/M16172295262730877.jpg/hungryapp/resize/200" alt=""></dd>
                                    <dd><img src="http://appdata.hungryapp.co.kr/images/hatdog/album/pic/202104/M16172296016178077.jpg/hungryapp/resize/200" alt=""></dd>
                                </dl>
                                <p class="s21_best_num pa">+ 1</p>
                                <div class="s21_tour_list_tbox">
                                    <h4 class="s21_best_tip">내사랑강카레</h4>
                                    <div class="s21_album_desc" onclick="">
                                      
                                       <div class="s21_album_desc_bx pr">
                                            <p><img src="http://appdata.hungryapp.co.kr/images/hatdog/img/common/login_logoutimg.jpg/hungryapp/resize/200" alt=""></p>
                                            <dl>
                                                <dt>강카레</dt>
                                                <dd>2021.04.01 07:25</dd>
                                            </dl>
                                        </div>

                               </div>
                            </div>
                            </div>
                        </a>
                        </c:forEach>
                        </div>
            <!--// 리스트 끝 -->

            <!-- paging s -->
            <div class="s21_page">
                <div class="s21_pagination jquery-paging" id="PageNav"><a class=" active">1</a><a class="">2</a><a class="">3</a><a class="">4</a><a class="">5</a><a class="PageNavNext">→</a><a class="">13</a><a class="">»</a></div>
            </div>
            <!--// paging e -->
        </div>
        <!--// 하단 리스트 -->
    </div>




    
    <!-- footer -->
    <footer style="margin-bottom: auto;">
        <div id="footer">
            <div class="footerBottom area">
                <div class="footerBottom_left">
                    <p>(주)여름엔 크림빵과 코코아 주소 : 서울 서초구 강남대로27길 15-5 3층 (케이티전주지사3층) 대표이사 : 여름이 | 사업자등록번호: 123-45-78987<br>
                        이메일 : summer@summer.com
                    </p>

                    <address>Copyright STYLE II. All rights reserved.</address>
                </div>
                <ul class="footerBottom_right">
                    <li><a href="http://hatdog.co.kr/pc_hatdog/?m1Code=etc&m2Code=policy" target="_top">이용약관</a></li>
                    <li><a href="http://hatdog.co.kr/pc_hatdog/?m1Code=etc&m2Code=policy2" target="_top">개인정보처리방침</a></li>
                </ul>
            </div>
        </div>
    </footer>
    <!-- footer -->
</body>
</html>