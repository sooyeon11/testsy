<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
	"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>WithDog</title>
	
	<link rel='shortcut icon'
		href='http://appdata.hungryapp.co.kr/images/hatdog/img/intro/00_hatdog_logo.ico'>
	<link rel="stylesheet" href="resources/css/sub_j.css">
	<link rel="stylesheet" href="resources/css/sub_h.css">
	<link rel="stylesheet" href="resources/css/sub.css">
	<link rel="stylesheet" href="resources/css/default.css">
	<link rel="stylesheet" href="resources/css/main.css">
	<link rel="stylesheet" href="resources/css/layout.css">
	<link rel="stylesheet" href="resources/css/shot.css">
	<link rel="stylesheet" href="resources/css/swiper-bundle.min.css">
	
	
	<script src="resources/js/jquery.js"></script>
	<script src="resources/js/swiper-bundle.min.js"></script>
	<title>DetailReviewPage</title>
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
					<a
						onclick="Store.clear(); top.location.href='http://hatdog.co.kr/pc_hatdog/';">
						<img
						src="http://appdata.hungryapp.co.kr/images/hatdog/img/pc_img/common/logo.png"
						alt="하트독">
					</a>
				</h1>
				<div class="s21_w1422 pr">
					<a
						onclick="Store.clear(); top.location.href='http://hatdog.co.kr/pc_hatdog/';"></a>
					<div class="s_search">
						<input type="text" class="SearchInput" name="h_sch_text"
							id="h_sch_text" placeholder="어디에서 무엇을 하고 싶으세요?" title="">
						<span class="j21_btn_search" onclick="Store.clear();go_arinfo();"><a><img
								src="http://appdata.hungryapp.co.kr/images/hatdog/img/pc_img/common/ico_search.png"
								alt="검색"></a></span>
					</div>
				</div>
			</div>
		</div>
		<nav id="gnb">
		<h2 class="blind">주메뉴</h2>
		<div class="gnb-wrapper area">
			<ul class="clearfix">
				<li class="" onclick="Store.clear()"><a
					onclick="top.location.href='http://hatdog.co.kr/pc_hatdog/?m1Code=ar_info&amp;m2Code=ar_info';"><span>전체보기</span></a></li>
				<li class="" onclick="Store.clear()"><a
					onclick="top.location.href='http://hatdog.co.kr/pc_hatdog/?m1Code=tip&amp;m2Code=tip';"><span>숙소</span></a></li>
				<li class="" onclick="Store.clear()"><a
					onclick="top.location.href='http://hatdog.co.kr/pc_hatdog/?m1Code=cmm&amp;m2Code=cmm';"><span>후기게시판</span></a></li>
			</ul>
		</div>
		</nav>
	</div>
	</header>

	<div class="sContainer">
		<!-- sub s top -->
		<!-- cmm.php, cmm_list.php 빼고 다 사용-->
		<div class="h21_community_s_top pr">
			<div class="h21_top_cbox pr area">
				<h3 class="">
					위드독<span> 여행후기</span>
				</h3>
				<p class="h21_h3_line_c"></p>
				<p class="h21_h3_text_c">위드독에서 우리 반려견에 대한 이야기를 공유해보세요.</p>
			</div>
		</div>
		<!--// sub m top -->

		<!-- sub com menu -->
		<div class="s21_sm_search_box area pr">
			<div class="h21_com_sm_tab pa">
				<ul>
					<li
						onclick="Store.set(&quot;bbs_bcode&quot;,&quot;all&quot;);location.href=&quot;?m1Code=cmm&amp;m2Code=cmm_list&quot;"
						id="taball"><a onclick="storeDel()">전체목록<span
							class="list_allnb">18415</span></a></li>
					<li
						onclick="Store.set(&quot;bbs_bcode&quot;,&quot;best&quot;);location.href=&quot;?m1Code=cmm&amp;m2Code=cmm_list&quot;"
						id="tabbest"><a onclick="storeDel()">베스트글<span
							class="list_allnb">100</span></a>
					<li
						onclick="Store.set(&quot;bbs_bcode&quot;,&quot;review&quot;);location.href=&quot;?m1Code=cmm&amp;m2Code=cmm_list&quot;"
						id="tabreview"><a onclick="storeDel()">여행후기<span
							class="list_allnb">106</span></a>
				</ul>
			</div>
		</div>
		<!--// sub com menu -->
		<script>
		//탭목록 css
		//$("[id^='tab']").removeClass("h21_com_sm_menu_on");
		//상단탭메뉴 온클래스
		$("#tab"+Store.get("bbs_bcode")).addClass("h21_com_sm_menu_on");
		
		function storeDel(){
			Store.del("bbs_scroll");
			Store.del("pc_market_tab");
			Store.del("bbs_page");
			Store.del("bbs_bcode");
			Store.del("pc_best_tab");
			Store.del("sch_type");
			Store.del("sch_text");
		}
		</script>

		
		<!-- 커뮤니티 글보기 -->
		<div class="h21_community pr area">
			<div class="h21_com_btn_prev">
				<a href="?m1Code=cmm&amp;m2Code=cmm_list"><img
					src="http://appdata.hungryapp.co.kr/images/hatdog/img/pc_img/community/btn_prev.png"
					alt="뒤로"></a>
			</div>
			<div class="h21_width800px">
				<div class="h21_community_view_stop">
					<div class="c_info pr">
						<span class="com_division">여행후기<span
							class="dot_div dot_pink"></span></span> <span class="desc"> <span
							class="thmb_img"><img
								src="http://appdata.hungryapp.co.kr/images/hatdog/img/common/login_logoutimg.jpg"
								alt="프로필이미지"></span> <span class="d_name"><span
								class="d_level"><!-- <img
									src="http://appdata.hungryapp.co.kr/images/hatdog/img/lv/lv6.png?ver=4"
									alt="프로필사진"> --></span>${listReview.id}</span> <span class="d_date">ㅣ 2021-10-05</span>
							<span class="d_hit">ㅣ 조회 40</span>
						</span>
					</div>
				</div>
				<div class="h21_community_view">
					<h4>${listReview.title}</h4>



					<div>
						${listReview.content}
					<img
							src="http://appdata.hungryapp.co.kr/images/hatdog/upload/202110/M163339717806365143.jpg"
							style="max-width: 100%; image-orientation: from-image" alt="">
					<img
							src="http://appdata.hungryapp.co.kr/images/hatdog/upload/202110/M163339709710653143.jpg"
							style="max-width: 100%; image-orientation: from-image" alt="">
					</div>
					<p></p>

				</div>

				<div class="h21_community_btn pr">
					<span class="button_like_off" id="like_cnt_st10386"
						onclick="bbs_like(10386)"><a><img id="icon_like10386"
							src="http://appdata.hungryapp.co.kr/images/hatdog/img/pc_img/community/icon_like_off.png"
							alt="좋아요"></a></span> <span class="button_list"><a
						href="?m1Code=cmm&amp;m2Code=cmm_list">목록</a></span> <span
						class="button_report"> <a id="falsify">신고</a>
					</span>
				</div>
			</div>
			

			<!-- 유저리뷰 -->

			<!-- 유저리뷰s -->
			<div class="s21_event_review_box area900">
				<div class="s21_event_review_tit pr">
					<h5>
						댓글<span id="total">1</span>
					</h5>
					<button type="button"
						class="s21_event_review_wbtn pa s21_event_review_wbtn_on"
						id="order1" onclick="orderby(1)">등록순</button>
					<button type="button" class="s21_event_review_wbtn2 pa" id="order2"
						onclick="orderby(2)">최신순</button>
				</div>
				<form id="bbsCmtSetData" name="bbsCmtSetData" method="POST"
					onsubmit="return false;">
					<input type="hidden" id="m2Code" name="m2Code" value="cmm">
					<input type="hidden" id="mode" name="mode" value="cmtlist">
					<input type="hidden" id="rpage" name="rpage" value="0"> <input
						type="hidden" id="b_idx" name="b_idx" value="10386"> <input
						type="hidden" id="b_cmt_idx" name="b_cmt_idx"> <input
						type="hidden" id="orderby" name="orderby" value="1"> <input
						type="hidden" name="emoticon_id" id="emoticon_id"> <input
						type="hidden" name="secret" id="secret"> <input
						type="hidden" name="comment"> <input type="hidden"
						name="userid" id="userid" value="1967521789"> <input
						type="hidden" name="nickname" id="nickname" value="코별이">



					<div class="h21_event_write">
						<textarea id="comment" style="" class="s21_je_textarea"
							placeholder="댓글을 입력해주세요"></textarea>
						<span class="s21_je_form_btn"> <span class="btn_emoticon"
							id="btn_emoticon"><a onclick="cmtEmoticon(0)"><img
									src="http://appdata.hungryapp.co.kr/images/hatdog/img/community/emoticon/btn_emoticon.png"></a></span>
							<span class="btn_addimage" id="btn_addimage" onclick="check(0);"><a><img
									src="http://appdata.hungryapp.co.kr/images/hatdog/img/community/btn_addimage.png"></a></span>
							<div class="s21_je_in_btn">
								<span class="s21_je_btn_register"
									onclick="$('#secret').val('N'); cmt_set('cmtin','')"
									data-mode="cmtin" style="margin-right: 5px"><a>등록</a></span>
							</div>
						</span>
						<!-- 이모티콘 -->
						<!-- <div class="h21_review_emoticon pr" id="emoticon_w_0"
							style="display: none">
							<div class="h21_mainemoticon" id="emoticon_choice_0">
								<img
									src="http://appdata.hungryapp.co.kr/images/hatdog/img/community/emoticon/em_01.png"
									alt="이모티콘">
								<div class="h21_review_ico pa" onclick="cmtEmoticon(0)">
									<a class="bg_gray">닫기</a>
								</div>
							</div> -->
							<!-- <div class="h21_emoticon_w" xid="emoticon_w_0">
								<ul>
									<li onclick="emoticon_li('em_01',0)"><img
										src="http://appdata.hungryapp.co.kr/images/hatdog/img/community/emoticon/em_01.png"
										alt="이모티콘"></li>
									<li onclick="emoticon_li('em_02',0)"><img
										src="http://appdata.hungryapp.co.kr/images/hatdog/img/community/emoticon/em_02.png"
										alt="이모티콘"></li>
									<li onclick="emoticon_li('em_03',0)"><img
										src="http://appdata.hungryapp.co.kr/images/hatdog/img/community/emoticon/em_03.png"
										alt="이모티콘"></li>
									<li onclick="emoticon_li('em_04',0)"><img
										src="http://appdata.hungryapp.co.kr/images/hatdog/img/community/emoticon/em_04.png"
										alt="이모티콘"></li>
									<li onclick="emoticon_li('em_05',0)"><img
										src="http://appdata.hungryapp.co.kr/images/hatdog/img/community/emoticon/em_05.png"
										alt="이모티콘"></li>
									<li onclick="emoticon_li('em_06',0)"><img
										src="http://appdata.hungryapp.co.kr/images/hatdog/img/community/emoticon/em_06.png"
										alt="이모티콘"></li>
									<li onclick="emoticon_li('em_07',0)"><img
										src="http://appdata.hungryapp.co.kr/images/hatdog/img/community/emoticon/em_07.png"
										alt="이모티콘"></li>
									<li onclick="emoticon_li('em_08',0)"><img
										src="http://appdata.hungryapp.co.kr/images/hatdog/img/community/emoticon/em_08.png"
										alt="이모티콘"></li>
									<li onclick="emoticon_li('em_09',0)"><img
										src="http://appdata.hungryapp.co.kr/images/hatdog/img/community/emoticon/em_09.png"
										alt="이모티콘"></li>
									<li onclick="emoticon_li('em_10',0)"><img
										src="http://appdata.hungryapp.co.kr/images/hatdog/img/community/emoticon/em_10.png"
										alt="이모티콘"></li>
									<li onclick="emoticon_li('em_11',0)"><img
										src="http://appdata.hungryapp.co.kr/images/hatdog/img/community/emoticon/em_11.png"
										alt="이모티콘"></li>
									<li onclick="emoticon_li('em_12',0)"><img
										src="http://appdata.hungryapp.co.kr/images/hatdog/img/community/emoticon/em_12.png"
										alt="이모티콘"></li>
									<li onclick="emoticon_li('em_13',0)"><img
										src="http://appdata.hungryapp.co.kr/images/hatdog/img/community/emoticon/em_13.png"
										alt="이모티콘"></li>
									<li onclick="emoticon_li('em_14',0)"><img
										src="http://appdata.hungryapp.co.kr/images/hatdog/img/community/emoticon/em_14.png"
										alt="이모티콘"></li>
									<li onclick="emoticon_li('em_15',0)"><img
										src="http://appdata.hungryapp.co.kr/images/hatdog/img/community/emoticon/em_15.png"
										alt="이모티콘"></li>
									<li onclick="emoticon_li('em_16',0)"><img
										src="http://appdata.hungryapp.co.kr/images/hatdog/img/community/emoticon/em_16.png"
										alt="이모티콘"></li>
									<li onclick="emoticon_li('em_17',0)"><img
										src="http://appdata.hungryapp.co.kr/images/hatdog/img/community/emoticon/em_17.png"
										alt="이모티콘"></li>
									<li onclick="emoticon_li('em_18',0)"><img
										src="http://appdata.hungryapp.co.kr/images/hatdog/img/community/emoticon/em_18.png"
										alt="이모티콘"></li>
									<li onclick="emoticon_li('em_19',0)"><img
										src="http://appdata.hungryapp.co.kr/images/hatdog/img/community/emoticon/em_19.png"
										alt="이모티콘"></li>
									<li onclick="emoticon_li('em_20',0)"><img
										src="http://appdata.hungryapp.co.kr/images/hatdog/img/community/emoticon/em_20.png"
										alt="이모티콘"></li>
									<li onclick="emoticon_li('em_21',0)"><img
										src="http://appdata.hungryapp.co.kr/images/hatdog/img/community/emoticon/em_21.png"
										alt="이모티콘"></li>
									<li onclick="emoticon_li('em_22',0)"><img
										src="http://appdata.hungryapp.co.kr/images/hatdog/img/community/emoticon/em_22.png"
										alt="이모티콘"></li>
									<li onclick="emoticon_li('em_23',0)"><img
										src="http://appdata.hungryapp.co.kr/images/hatdog/img/community/emoticon/em_23.png"
										alt="이모티콘"></li>
									<li onclick="emoticon_li('em_24',0)"><img
										src="http://appdata.hungryapp.co.kr/images/hatdog/img/community/emoticon/em_24.png"
										alt="이모티콘"></li>
									<li onclick="emoticon_li('em_25',0)"><img
										src="http://appdata.hungryapp.co.kr/images/hatdog/img/community/emoticon/em_25.png"
										alt="이모티콘"></li>
									<li onclick="emoticon_li('em_26',0)"><img
										src="http://appdata.hungryapp.co.kr/images/hatdog/img/community/emoticon/em_26.png"
										alt="이모티콘"></li>
									<li onclick="emoticon_li('em_27',0)"><img
										src="http://appdata.hungryapp.co.kr/images/hatdog/img/community/emoticon/em_27.png"
										alt="이모티콘"></li>
									<li onclick="emoticon_li('em_28',0)"><img
										src="http://appdata.hungryapp.co.kr/images/hatdog/img/community/emoticon/em_28.png"
										alt="이모티콘"></li>
									<li onclick="emoticon_li('em_29',0)"><img
										src="http://appdata.hungryapp.co.kr/images/hatdog/img/community/emoticon/em_29.png"
										alt="이모티콘"></li>
									<li onclick="emoticon_li('em_30',0)"><img
										src="http://appdata.hungryapp.co.kr/images/hatdog/img/community/emoticon/em_30.png"
										alt="이모티콘"></li>
									<li onclick="emoticon_li('em_31',0)"><img
										src="http://appdata.hungryapp.co.kr/images/hatdog/img/community/emoticon/em_31.png"
										alt="이모티콘"></li>
									<li onclick="emoticon_li('em_32',0)"><img
										src="http://appdata.hungryapp.co.kr/images/hatdog/img/community/emoticon/em_32.png"
										alt="이모티콘"></li>
									<li onclick="emoticon_li('em_33',0)"><img
										src="http://appdata.hungryapp.co.kr/images/hatdog/img/community/emoticon/em_33.png"
										alt="이모티콘"></li>
									<li onclick="emoticon_li('em_34',0)"><img
										src="http://appdata.hungryapp.co.kr/images/hatdog/img/community/emoticon/em_34.png"
										alt="이모티콘"></li>
									<li onclick="emoticon_li('em_35',0)"><img
										src="http://appdata.hungryapp.co.kr/images/hatdog/img/community/emoticon/em_35.png"
										alt="이모티콘"></li>
									<li onclick="emoticon_li('em_36',0)"><img
										src="http://appdata.hungryapp.co.kr/images/hatdog/img/community/emoticon/em_36.png"
										alt="이모티콘"></li>
									<li onclick="emoticon_li('em_37',0)"><img
										src="http://appdata.hungryapp.co.kr/images/hatdog/img/community/emoticon/em_37.png"
										alt="이모티콘"></li>
									<li onclick="emoticon_li('em_38',0)"><img
										src="http://appdata.hungryapp.co.kr/images/hatdog/img/community/emoticon/em_38.png"
										alt="이모티콘"></li>
									<li onclick="emoticon_li('em_39',0)"><img
										src="http://appdata.hungryapp.co.kr/images/hatdog/img/community/emoticon/em_39.png"
										alt="이모티콘"></li>
									<li onclick="emoticon_li('em_40',0)"><img
										src="http://appdata.hungryapp.co.kr/images/hatdog/img/community/emoticon/em_40.png"
										alt="이모티콘"></li>
									<li onclick="emoticon_li('em_41',0)"><img
										src="http://appdata.hungryapp.co.kr/images/hatdog/img/community/emoticon/em_41.png"
										alt="이모티콘"></li>
									<li onclick="emoticon_li('em_42',0)"><img
										src="http://appdata.hungryapp.co.kr/images/hatdog/img/community/emoticon/em_42.png"
										alt="이모티콘"></li>
									<li onclick="emoticon_li('em_43',0)"><img
										src="http://appdata.hungryapp.co.kr/images/hatdog/img/community/emoticon/em_43.png"
										alt="이모티콘"></li>
									<li onclick="emoticon_li('em_44',0)"><img
										src="http://appdata.hungryapp.co.kr/images/hatdog/img/community/emoticon/em_44.png"
										alt="이모티콘"></li>
									<li onclick="emoticon_li('em_45',0)"><img
										src="http://appdata.hungryapp.co.kr/images/hatdog/img/community/emoticon/em_45.png"
										alt="이모티콘"></li>
									<li onclick="emoticon_li('em_46',0)"><img
										src="http://appdata.hungryapp.co.kr/images/hatdog/img/community/emoticon/em_46.png"
										alt="이모티콘"></li>
									<li onclick="emoticon_li('em_47',0)"><img
										src="http://appdata.hungryapp.co.kr/images/hatdog/img/community/emoticon/em_47.png"
										alt="이모티콘"></li>
									<li onclick="emoticon_li('em_48',0)"><img
										src="http://appdata.hungryapp.co.kr/images/hatdog/img/community/emoticon/em_48.png"
										alt="이모티콘"></li>
									<li onclick="emoticon_li('em_49',0)"><img
										src="http://appdata.hungryapp.co.kr/images/hatdog/img/community/emoticon/em_49.png"
										alt="이모티콘"></li>
									<li onclick="emoticon_li('em_50',0)"><img
										src="http://appdata.hungryapp.co.kr/images/hatdog/img/community/emoticon/em_50.png"
										alt="이모티콘"></li>
									<li onclick="emoticon_li('em_51',0)"><img
										src="http://appdata.hungryapp.co.kr/images/hatdog/img/community/emoticon/em_51.png"
										alt="이모티콘"></li>
									<li onclick="emoticon_li('em_52',0)"><img
										src="http://appdata.hungryapp.co.kr/images/hatdog/img/community/emoticon/em_52.png"
										alt="이모티콘"></li>
									<li onclick="emoticon_li('em_53',0)"><img
										src="http://appdata.hungryapp.co.kr/images/hatdog/img/community/emoticon/em_53.png"
										alt="이모티콘"></li>
									<li onclick="emoticon_li('em_54',0)"><img
										src="http://appdata.hungryapp.co.kr/images/hatdog/img/community/emoticon/em_54.png"
										alt="이모티콘"></li>
									<li onclick="emoticon_li('em_55',0)"><img
										src="http://appdata.hungryapp.co.kr/images/hatdog/img/community/emoticon/em_55.png"
										alt="이모티콘"></li>
									<li onclick="emoticon_li('em_56',0)"><img
										src="http://appdata.hungryapp.co.kr/images/hatdog/img/community/emoticon/em_56.png"
										alt="이모티콘"></li>
									<li onclick="emoticon_li('em_57',0)"><img
										src="http://appdata.hungryapp.co.kr/images/hatdog/img/community/emoticon/em_57.png"
										alt="이모티콘"></li>
									<li onclick="emoticon_li('em_58',0)"><img
										src="http://appdata.hungryapp.co.kr/images/hatdog/img/community/emoticon/em_58.png"
										alt="이모티콘"></li>
									<li onclick="emoticon_li('em_59',0)"><img
										src="http://appdata.hungryapp.co.kr/images/hatdog/img/community/emoticon/em_59.png"
										alt="이모티콘"></li>
									<li onclick="emoticon_li('em_60',0)"><img
										src="http://appdata.hungryapp.co.kr/images/hatdog/img/community/emoticon/em_60.png"
										alt="이모티콘"></li>
									<li onclick="emoticon_li('em_61',0)"><img
										src="http://appdata.hungryapp.co.kr/images/hatdog/img/community/emoticon/em_61.png"
										alt="이모티콘"></li>
									<li onclick="emoticon_li('em_62',0)"><img
										src="http://appdata.hungryapp.co.kr/images/hatdog/img/community/emoticon/em_62.png"
										alt="이모티콘"></li>
									<li onclick="emoticon_li('em_63',0)"><img
										src="http://appdata.hungryapp.co.kr/images/hatdog/img/community/emoticon/em_63.png"
										alt="이모티콘"></li>
								</ul>
							</div> -->
						<!-- </div> -->




						<!-- 2021.02 사진첨부 오픈 영역 S -->
						<div class="h21_review_emoticon pr" id="cmm_img_div_0"
							style="display: none">
							<div class="h21_uploadimg_w">
								<form id="imgForm_" name="imgForm_">
									<ul id="uploadimg_w_0">
									</ul>
								</form>
							</div>
						</div>
						<input type="file" id="upload_file" name="upload_file"
							style="display: none;" accept="image/*">






					</div>
				</form>

				<div class="s21_review_list" id="s21_review_list">
					<div class="s21_review_list db_none  pr" id="r_idx_13158">
						<p>
							<img
								src="http://appdata.hungryapp.co.kr/images/hatdog/img/common/login_logoutimg.jpg/hungryapp/resize/200x200"
								alt="">
						</p>
						<dl>
							<dt>
								코별이<span>12:00</span>
							</dt>
							<dd>
								<span id="r_contents13158">ㅎㅎ</span>
							</dd>

						</dl>
						<div class="s21_review_ico pa">
							<a onclick="cmt_reply_str('cmtReply',13158)">댓글</a><a
								onclick="cmt_reply_str('cmtEditOk',13158)">수정</a><a
								class="bg_gray" onclick="cmt_set('cmtDel',13158,1)">삭제</a>
						</div>
					</div>
				</div>
			</div>


			<!-- paging s -->
			<div class="s21_page dt_none">
				<div class="s21_pagination jquery-paging" id="PageNav">
					<a class=" active">1</a>
				</div>
			</div>
			<!--// paging e -->

			<script>
if(Store.get("bbs_cmt_oderby")){
	orderby(Store.get("bbs_cmt_oderby"))
}else{
	orderby(1)
}
function orderby(d){
	$("#orderby").val(d);
	
	$("#order1,#order2").removeClass("s21_event_review_wbtn_on");
	$("#order"+d).addClass("s21_event_review_wbtn_on");
	
	Store.set("bbs_cmt_oderby",d);
	listContent();
}
function listContent(page,w_mode){
	if(!page){ page = 0; }
	
	if(Store.get("bbs_cmt_oderby")){
		$("#orderby").val(Store.get("bbs_cmt_oderby"));
	}
	$("#rpage").val(page);
	$("input[name='mode']").val("cmtlist");
	var data = $("#bbsCmtSetData").serializeArray();
	$.ajax({
		type: "post",
		dataType: "json",
		data: data,
		url: "ajaxData_cmm.php",
		success: function(r){
			if(r.result){
				$('#s21_review_list').show();
				$("#s21_review_list").html(r.html);
				$('#total').html(r.total);
				$('#PageNav').show();
				
				var tap = Math.ceil(r.total/ 10);
				$('#PageNav').paging({
					current:page,
					max:tap,
					item:"a",
					itemClass:'',
					itemCurrent:"active",
					href:'123',
					next:"&raquo;",
					sideClass:"←",
					sideClass2:"→",
					arrowNext:'PageNavNext',
					arrowPrev:'PageNavPrev',
					prev:"&laquo;",
					first:'1',
					last:'{6}',
					format:"{0}",
					length:5,
					onclick:function(e,page){
						$("#rpage").val(page);
						listContent(page);
						$('html, body').animate({scrollTop: $(".s21_event_review_box").offset().top }, 0);
					}
				});
			}else{
				$('#total').html(0);
				$('#PageNav').hide();
				$('.s21_review_list').hide();

				if($("#rpage").val() > 1){//2페이지에 하나 있는거 삭제시 1페이지로
					listContent(page-1);
					return;
				}
			}
			
			if(w_mode=="cmtin"){//내가 쓴 댓글로 이동
				$('html, body').animate({scrollTop: $(".s21_page").offset().top }, 0);
			}
			

		},
		error: function (xhr, status, error) {
			
		}
		});
}

function cmt_reply_str(mode,r_idx){
	var r_contents="", edit_css="";
	
	if($("#r_contents"+r_idx).attr("datais")=="cmt_on"){return;}
	if($("#r_idx_"+r_idx).attr("datais")=="cmt_on"){return;}

	if(mode=="cmtEditOk"){//수정
		r_contents = $("#r_contents"+r_idx).html();
		edit_css = "db_none";

		var img_input="";
		$(".cmm_img_div"+r_idx).each(function(index, item){
				img_input +='<li onClick="javascript:removeImg(this,'+r_idx+');"><img src="'+$(item).attr("src")+'"><button type="button" class="h21_ab_photo_img_del" >삭제</button>'
							+'			<input type="hidden" class="imgupload'+r_idx+'" name="imgupload[]"  value="'+$(item).attr("src")+'"> </li>';
		});
		$("#cmm_img_div"+r_idx).hide();
		
	}
	
	/* var reply_str=('<div class="s21_event_write_re '+edit_css+'">'
				+'	<textarea id="comment'+r_idx+'" style="" class="s21_je_textarea" name="comment_textarea" placeholder="댓글을 입력해주세요">'+r_contents.replace(/<br>/g,"")+'</textarea>'
					+'	<span class="s21_je_form_btn">'
					+'		<span class="btn_emoticon" id="btn_emoticon"><a onclick="cmtEmoticon('+r_idx+')" ><img src="http://appdata.hungryapp.co.kr/images/hatdog/img/community/emoticon/btn_emoticon.png" alt="이모티콘"></a></span>'
					+'		<span class="btn_addimage" id="btn_addimage"><a onclick="check('+r_idx+')" ><img src="http://appdata.hungryapp.co.kr/images/hatdog/img/community/btn_addimage.png" alt="이미지첨부"></a></span>'
					+'		<div class="s21_je_in_btn">'
					+'			<span class="h21_je_btn_secret" onclick="$(\'#secret\').val(\'Y\'); cmt_set(\''+mode+'\','+r_idx+')"data-mode="'+mode+'" style="margin-right:5px"><a>비밀댓글</a></span>'
					+'			<span class="s21_je_btn_register" onclick="$(\'#secret\').val(\'N\'); cmt_set(\''+mode+'\','+r_idx+')"data-mode="'+mode+'" style="margin-right:5px"><a>등록</a></span>'
					+'		</div>'
					+'	</span>'
					+'<div class="h21_review_emoticon pr" id="emoticon_w_'+r_idx+'" style="display:none">'
					+'	<div class="h21_mainemoticon" id="emoticon_choice_'+r_idx+'">'
					+'		<img src="http://appdata.hungryapp.co.kr/images/hatdog/img/community/emoticon/em_01.png" alt="이모티콘">'
					+'		<div class="h21_review_ico pa" onclick="cmtEmoticon('+r_idx+')"><a class="bg_gray">닫기</a></div>'
					+'	</div>'
					+'	<div class="h21_emoticon_w" xid="emoticon_w_'+r_idx+'">'
					+'		<ul>'
					+'		'
					+'			<li onclick="emoticon_li(\'em_01\','+r_idx+')"> <img src="http://appdata.hungryapp.co.kr/images/hatdog/img/community/emoticon/em_01.png" alt="이모티콘"></li>'
					+'		'
					+'			<li onclick="emoticon_li(\'em_02\','+r_idx+')"> <img src="http://appdata.hungryapp.co.kr/images/hatdog/img/community/emoticon/em_02.png" alt="이모티콘"></li>'
					+'		'
					+'			<li onclick="emoticon_li(\'em_03\','+r_idx+')"> <img src="http://appdata.hungryapp.co.kr/images/hatdog/img/community/emoticon/em_03.png" alt="이모티콘"></li>'
					+'		'
					+'			<li onclick="emoticon_li(\'em_04\','+r_idx+')"> <img src="http://appdata.hungryapp.co.kr/images/hatdog/img/community/emoticon/em_04.png" alt="이모티콘"></li>'
					+'		'
					+'			<li onclick="emoticon_li(\'em_05\','+r_idx+')"> <img src="http://appdata.hungryapp.co.kr/images/hatdog/img/community/emoticon/em_05.png" alt="이모티콘"></li>'
					+'		'
					+'			<li onclick="emoticon_li(\'em_06\','+r_idx+')"> <img src="http://appdata.hungryapp.co.kr/images/hatdog/img/community/emoticon/em_06.png" alt="이모티콘"></li>'
					+'		'
					+'			<li onclick="emoticon_li(\'em_07\','+r_idx+')"> <img src="http://appdata.hungryapp.co.kr/images/hatdog/img/community/emoticon/em_07.png" alt="이모티콘"></li>'
					+'		'
					+'			<li onclick="emoticon_li(\'em_08\','+r_idx+')"> <img src="http://appdata.hungryapp.co.kr/images/hatdog/img/community/emoticon/em_08.png" alt="이모티콘"></li>'
					+'		'
					+'			<li onclick="emoticon_li(\'em_09\','+r_idx+')"> <img src="http://appdata.hungryapp.co.kr/images/hatdog/img/community/emoticon/em_09.png" alt="이모티콘"></li>'
					+'		'
					+'			<li onclick="emoticon_li(\'em_10\','+r_idx+')"> <img src="http://appdata.hungryapp.co.kr/images/hatdog/img/community/emoticon/em_10.png" alt="이모티콘"></li>'
					+'		'
					+'			<li onclick="emoticon_li(\'em_11\','+r_idx+')"> <img src="http://appdata.hungryapp.co.kr/images/hatdog/img/community/emoticon/em_11.png" alt="이모티콘"></li>'
					+'		'
					+'			<li onclick="emoticon_li(\'em_12\','+r_idx+')"> <img src="http://appdata.hungryapp.co.kr/images/hatdog/img/community/emoticon/em_12.png" alt="이모티콘"></li>'
					+'		'
					+'			<li onclick="emoticon_li(\'em_13\','+r_idx+')"> <img src="http://appdata.hungryapp.co.kr/images/hatdog/img/community/emoticon/em_13.png" alt="이모티콘"></li>'
					+'		'
					+'			<li onclick="emoticon_li(\'em_14\','+r_idx+')"> <img src="http://appdata.hungryapp.co.kr/images/hatdog/img/community/emoticon/em_14.png" alt="이모티콘"></li>'
					+'		'
					+'			<li onclick="emoticon_li(\'em_15\','+r_idx+')"> <img src="http://appdata.hungryapp.co.kr/images/hatdog/img/community/emoticon/em_15.png" alt="이모티콘"></li>'
					+'		'
					+'			<li onclick="emoticon_li(\'em_16\','+r_idx+')"> <img src="http://appdata.hungryapp.co.kr/images/hatdog/img/community/emoticon/em_16.png" alt="이모티콘"></li>'
					+'		'
					+'			<li onclick="emoticon_li(\'em_17\','+r_idx+')"> <img src="http://appdata.hungryapp.co.kr/images/hatdog/img/community/emoticon/em_17.png" alt="이모티콘"></li>'
					+'		'
					+'			<li onclick="emoticon_li(\'em_18\','+r_idx+')"> <img src="http://appdata.hungryapp.co.kr/images/hatdog/img/community/emoticon/em_18.png" alt="이모티콘"></li>'
					+'		'
					+'			<li onclick="emoticon_li(\'em_19\','+r_idx+')"> <img src="http://appdata.hungryapp.co.kr/images/hatdog/img/community/emoticon/em_19.png" alt="이모티콘"></li>'
					+'		'
					+'			<li onclick="emoticon_li(\'em_20\','+r_idx+')"> <img src="http://appdata.hungryapp.co.kr/images/hatdog/img/community/emoticon/em_20.png" alt="이모티콘"></li>'
					+'		'
					+'			<li onclick="emoticon_li(\'em_21\','+r_idx+')"> <img src="http://appdata.hungryapp.co.kr/images/hatdog/img/community/emoticon/em_21.png" alt="이모티콘"></li>'
					+'		'
					+'			<li onclick="emoticon_li(\'em_22\','+r_idx+')"> <img src="http://appdata.hungryapp.co.kr/images/hatdog/img/community/emoticon/em_22.png" alt="이모티콘"></li>'
					+'		'
					+'			<li onclick="emoticon_li(\'em_23\','+r_idx+')"> <img src="http://appdata.hungryapp.co.kr/images/hatdog/img/community/emoticon/em_23.png" alt="이모티콘"></li>'
					+'		'
					+'			<li onclick="emoticon_li(\'em_24\','+r_idx+')"> <img src="http://appdata.hungryapp.co.kr/images/hatdog/img/community/emoticon/em_24.png" alt="이모티콘"></li>'
					+'		'
					+'			<li onclick="emoticon_li(\'em_25\','+r_idx+')"> <img src="http://appdata.hungryapp.co.kr/images/hatdog/img/community/emoticon/em_25.png" alt="이모티콘"></li>'
					+'		'
					+'			<li onclick="emoticon_li(\'em_26\','+r_idx+')"> <img src="http://appdata.hungryapp.co.kr/images/hatdog/img/community/emoticon/em_26.png" alt="이모티콘"></li>'
					+'		'
					+'			<li onclick="emoticon_li(\'em_27\','+r_idx+')"> <img src="http://appdata.hungryapp.co.kr/images/hatdog/img/community/emoticon/em_27.png" alt="이모티콘"></li>'
					+'		'
					+'			<li onclick="emoticon_li(\'em_28\','+r_idx+')"> <img src="http://appdata.hungryapp.co.kr/images/hatdog/img/community/emoticon/em_28.png" alt="이모티콘"></li>'
					+'		'
					+'			<li onclick="emoticon_li(\'em_29\','+r_idx+')"> <img src="http://appdata.hungryapp.co.kr/images/hatdog/img/community/emoticon/em_29.png" alt="이모티콘"></li>'
					+'		'
					+'			<li onclick="emoticon_li(\'em_30\','+r_idx+')"> <img src="http://appdata.hungryapp.co.kr/images/hatdog/img/community/emoticon/em_30.png" alt="이모티콘"></li>'
					+'		'
					+'			<li onclick="emoticon_li(\'em_31\','+r_idx+')"> <img src="http://appdata.hungryapp.co.kr/images/hatdog/img/community/emoticon/em_31.png" alt="이모티콘"></li>'
					+'		'
					+'			<li onclick="emoticon_li(\'em_32\','+r_idx+')"> <img src="http://appdata.hungryapp.co.kr/images/hatdog/img/community/emoticon/em_32.png" alt="이모티콘"></li>'
					+'		'
					+'			<li onclick="emoticon_li(\'em_33\','+r_idx+')"> <img src="http://appdata.hungryapp.co.kr/images/hatdog/img/community/emoticon/em_33.png" alt="이모티콘"></li>'
					+'		'
					+'			<li onclick="emoticon_li(\'em_34\','+r_idx+')"> <img src="http://appdata.hungryapp.co.kr/images/hatdog/img/community/emoticon/em_34.png" alt="이모티콘"></li>'
					+'		'
					+'			<li onclick="emoticon_li(\'em_35\','+r_idx+')"> <img src="http://appdata.hungryapp.co.kr/images/hatdog/img/community/emoticon/em_35.png" alt="이모티콘"></li>'
					+'		'
					+'			<li onclick="emoticon_li(\'em_36\','+r_idx+')"> <img src="http://appdata.hungryapp.co.kr/images/hatdog/img/community/emoticon/em_36.png" alt="이모티콘"></li>'
					+'		'
					+'			<li onclick="emoticon_li(\'em_37\','+r_idx+')"> <img src="http://appdata.hungryapp.co.kr/images/hatdog/img/community/emoticon/em_37.png" alt="이모티콘"></li>'
					+'		'
					+'			<li onclick="emoticon_li(\'em_38\','+r_idx+')"> <img src="http://appdata.hungryapp.co.kr/images/hatdog/img/community/emoticon/em_38.png" alt="이모티콘"></li>'
					+'		'
					+'			<li onclick="emoticon_li(\'em_39\','+r_idx+')"> <img src="http://appdata.hungryapp.co.kr/images/hatdog/img/community/emoticon/em_39.png" alt="이모티콘"></li>'
					+'		'
					+'			<li onclick="emoticon_li(\'em_40\','+r_idx+')"> <img src="http://appdata.hungryapp.co.kr/images/hatdog/img/community/emoticon/em_40.png" alt="이모티콘"></li>'
					+'		'
					+'			<li onclick="emoticon_li(\'em_41\','+r_idx+')"> <img src="http://appdata.hungryapp.co.kr/images/hatdog/img/community/emoticon/em_41.png" alt="이모티콘"></li>'
					+'		'
					+'			<li onclick="emoticon_li(\'em_42\','+r_idx+')"> <img src="http://appdata.hungryapp.co.kr/images/hatdog/img/community/emoticon/em_42.png" alt="이모티콘"></li>'
					+'		'
					+'			<li onclick="emoticon_li(\'em_43\','+r_idx+')"> <img src="http://appdata.hungryapp.co.kr/images/hatdog/img/community/emoticon/em_43.png" alt="이모티콘"></li>'
					+'		'
					+'			<li onclick="emoticon_li(\'em_44\','+r_idx+')"> <img src="http://appdata.hungryapp.co.kr/images/hatdog/img/community/emoticon/em_44.png" alt="이모티콘"></li>'
					+'		'
					+'			<li onclick="emoticon_li(\'em_45\','+r_idx+')"> <img src="http://appdata.hungryapp.co.kr/images/hatdog/img/community/emoticon/em_45.png" alt="이모티콘"></li>'
					+'		'
					+'			<li onclick="emoticon_li(\'em_46\','+r_idx+')"> <img src="http://appdata.hungryapp.co.kr/images/hatdog/img/community/emoticon/em_46.png" alt="이모티콘"></li>'
					+'		'
					+'			<li onclick="emoticon_li(\'em_47\','+r_idx+')"> <img src="http://appdata.hungryapp.co.kr/images/hatdog/img/community/emoticon/em_47.png" alt="이모티콘"></li>'
					+'		'
					+'			<li onclick="emoticon_li(\'em_48\','+r_idx+')"> <img src="http://appdata.hungryapp.co.kr/images/hatdog/img/community/emoticon/em_48.png" alt="이모티콘"></li>'
					+'		'
					+'			<li onclick="emoticon_li(\'em_49\','+r_idx+')"> <img src="http://appdata.hungryapp.co.kr/images/hatdog/img/community/emoticon/em_49.png" alt="이모티콘"></li>'
					+'		'
					+'			<li onclick="emoticon_li(\'em_50\','+r_idx+')"> <img src="http://appdata.hungryapp.co.kr/images/hatdog/img/community/emoticon/em_50.png" alt="이모티콘"></li>'
					+'		'
					+'			<li onclick="emoticon_li(\'em_51\','+r_idx+')"> <img src="http://appdata.hungryapp.co.kr/images/hatdog/img/community/emoticon/em_51.png" alt="이모티콘"></li>'
					+'		'
					+'			<li onclick="emoticon_li(\'em_52\','+r_idx+')"> <img src="http://appdata.hungryapp.co.kr/images/hatdog/img/community/emoticon/em_52.png" alt="이모티콘"></li>'
					+'		'
					+'			<li onclick="emoticon_li(\'em_53\','+r_idx+')"> <img src="http://appdata.hungryapp.co.kr/images/hatdog/img/community/emoticon/em_53.png" alt="이모티콘"></li>'
					+'		'
					+'			<li onclick="emoticon_li(\'em_54\','+r_idx+')"> <img src="http://appdata.hungryapp.co.kr/images/hatdog/img/community/emoticon/em_54.png" alt="이모티콘"></li>'
					+'		'
					+'			<li onclick="emoticon_li(\'em_55\','+r_idx+')"> <img src="http://appdata.hungryapp.co.kr/images/hatdog/img/community/emoticon/em_55.png" alt="이모티콘"></li>'
					+'		'
					+'			<li onclick="emoticon_li(\'em_56\','+r_idx+')"> <img src="http://appdata.hungryapp.co.kr/images/hatdog/img/community/emoticon/em_56.png" alt="이모티콘"></li>'
					+'		'
					+'			<li onclick="emoticon_li(\'em_57\','+r_idx+')"> <img src="http://appdata.hungryapp.co.kr/images/hatdog/img/community/emoticon/em_57.png" alt="이모티콘"></li>'
					+'		'
					+'			<li onclick="emoticon_li(\'em_58\','+r_idx+')"> <img src="http://appdata.hungryapp.co.kr/images/hatdog/img/community/emoticon/em_58.png" alt="이모티콘"></li>'
					+'		'
					+'			<li onclick="emoticon_li(\'em_59\','+r_idx+')"> <img src="http://appdata.hungryapp.co.kr/images/hatdog/img/community/emoticon/em_59.png" alt="이모티콘"></li>'
					+'		'
					+'			<li onclick="emoticon_li(\'em_60\','+r_idx+')"> <img src="http://appdata.hungryapp.co.kr/images/hatdog/img/community/emoticon/em_60.png" alt="이모티콘"></li>'
					+'		'
					+'			<li onclick="emoticon_li(\'em_61\','+r_idx+')"> <img src="http://appdata.hungryapp.co.kr/images/hatdog/img/community/emoticon/em_61.png" alt="이모티콘"></li>'
					+'		'
					+'			<li onclick="emoticon_li(\'em_62\','+r_idx+')"> <img src="http://appdata.hungryapp.co.kr/images/hatdog/img/community/emoticon/em_62.png" alt="이모티콘"></li>'
					+'		'
					+'			<li onclick="emoticon_li(\'em_63\','+r_idx+')"> <img src="http://appdata.hungryapp.co.kr/images/hatdog/img/community/emoticon/em_63.png" alt="이모티콘"></li>'
					+'		'
					+'		</ul>'
					+'	</div>'
					+'</div>'
					+'<div class="h21_review_emoticon pr" id="cmm_img_div_'+r_idx+'" style="display:none">'
					+'<div class="h21_uploadimg_w">'
					+'	<form id="imgForm_'+r_idx+'" name="imgForm_'+r_idx+'">'
					+'		<ul id="uploadimg_w_'+r_idx+'">'
					+ img_input
					//+'			<li onClick="javascript:removeImg(this);"><img src="'+$(item).attr("src")+'"><button type="button" class="h21_ab_photo_img_del" >삭제</button>'
					//+'			<input type="hidden" class="imgupload" name="imgupload[]"  value=""> </li>'
					+'		</ul>'
					+'	</form>'
					+'</div>'
					+'</div>'
					+'</div>'); */

	if(mode=="cmtEditOk"){
		$("#r_contents"+r_idx).html(reply_str);
		$("#r_contents"+r_idx).attr("datais","cmt_on");

		if($("#imoticon_img"+r_idx).html()){//이모티콘이 있다면
			var imoticon_id = $("#imoticon_img"+r_idx).attr("name");
			$("#imoticon_img"+r_idx).hide();
			cmtEmoticon(r_idx);
			emoticon_li(imoticon_id,r_idx);
			
		}

		if(img_input){
			$("#cmm_img_div_"+r_idx).show()
		}
	}else{
		$("#r_idx_"+r_idx).after(reply_str);
		$("#r_idx_"+r_idx).attr("datais","cmt_on");
	}

	if($("#r_idx_"+r_idx).hasClass("db_none") === true) {//마지막줄일경우 클래스 추가 및 삭제
		//$("#s21_review_list").addClass("db_none");
		//$("#r_idx_"+r_idx).removeClass("db_none");
	}

	
	
}

var isRunning = false;
function cmt_set(mode,r_idx,thread){


	var upload_img_cnt = $("input[name='imgupload[]']").val();
	if(mode!="cmtDel"){
		if(!$("#comment"+r_idx).val() && !$("#emoticon_id").val() && !upload_img_cnt ){
			alert("댓글을 입력해 주세요.");
			$("#comment"+r_idx).focus();
			isRunning = false;
			return;
		}
	//	mode_str="등록하시겠습니까?"
	}else{
	//	if(thread=="1"){
	//		mode_str="댓글 삭제 시 대댓글도 같이 삭제됩니다.\n삭제 하시겠습니까?"
	//	}else{
			mode_str="삭제 하시겠습니까?"
	//	}

		if (!confirm(mode_str)) return;
	}

	if(isRunning){
		return false;
	}else{
		isRunning = true;
	}

	$("#mode").val(mode);
	$("#b_cmt_idx").val(r_idx);
	$("input[name='comment']").val($("#comment"+r_idx).val());
	var data = $("#bbsCmtSetData").serialize();
	var imgData = $("#imgForm_"+r_idx).serialize();


	$.ajax({
		url: "ajaxData_cmm.php",
		type: "POST",
		dataType: 'json',
		data: data+"&"+imgData,
		success: function(r){
			isRunning = true;
			if(!r_idx){
				r_idx=0;
			}
			$("#emoticon_w_"+r_idx).hide();
			$("#cmm_img_div_"+r_idx).hide();
			$("#uploadimg_w_"+r_idx).html("");
			
			$("#emoticon_id").val("");
			$("input[name='imgupload[]']").remove();

			
			if(!r.result){
				alert(r.msg);
			}else{
				if(mode=="cmtin"){//등록일경우 첫페이지로딩
					$("#comment").val('');
					if(Store.get("bbs_cmt_oderby")==1){//등록순일경우 마지막 페이징
						listContent( Math.ceil(r.total/ 10), 'cmtin' );
					}else{
						listContent();
					}
				}else{//대댓글, 수정일경우 해당페이지로딩
					listContent($("#rpage").val());
				}
				//alert(r.msg);
				setTimeout(function() {
					isRunning = false;//중복등록처리
				}, 500);
			}
			
		},
		error: function(error){
		}
	});//end ajax
}

function cmtEmoticon(idx){//첫 댓글, 수정 이모티콘 버튼 클릭시
	if($( "#emoticon_w_"+idx ).css( "display" )=="none"){
		$("#emoticon_w_"+idx).css('display','block');
	}else{
		$("#emoticon_w_"+idx).css('display','none');
		$("#emoticon_id").val("");
	}
}

/* function emoticon_li(img_id,idx){//이모티콘 각각 이미지 클릭시
	$("#emoticon_choice_"+idx).css('display','inline-block');

	var choice_html ='<img src="http://appdata.hungryapp.co.kr/images/hatdog/img/community/emoticon/'+img_id+'.png" alt="이모티콘">'
		choice_html += '<div class="h21_review_ico pa" onclick="cmtEmoticon('+idx+')"><a class="bg_gray">닫기</a></div>';
	$("#emoticon_choice_"+idx).html(choice_html);
	$("#emoticon_id").val(img_id);
} */

function changeSel(){
    var id = $("#nickname option:selected").data("id");
    $("#userid").val(id);
}

function onclickIsReserved(obj) {
	if ($(obj).is(":checked")) {
		$("#view_regtime").show();
	}
	else {
		$("#view_regtime").hide();
	}
}

function cmtfalsify(idx,useridx,memo){
		 if (!confirm("정말 이 게시글을 신고 하시겠습니까?")) return;
		 $("input[name='mode']").val("falsify");
		var data = $("#bbsCmtSetData").serializeArray();
			data.push({name: 'bbs_type', value: 1});
			data.push({name: 'idx', value: idx});
			data.push({name: 'useridx', value: useridx});
			data.push({name: 'memo', value:  memo});
        $.ajax({
            url: "ajaxData_cmm.php",
            type: "POST",
            dataType: 'json',
            data:data,
            success: function(r){
                if(!r.result){
                    alert(r.msg);
                }else{
                    alert(r.msg);
                }
            },
            error: function(error){
            }
        });//end ajax
}

/**이벤트 발생 (크롬,파이어폭스,사파이어 OK!) **/
	function eventOccur(evEle, evType){
		if (evEle.fireEvent) {
			evEle.fireEvent('on' + evType);
		} else {
			//MouseEvents가 포인트 그냥 Events는 안됨~ ??
			var mouseEvent = document.createEvent('MouseEvents');
			/* API문서 initEvent(type,bubbles,cancelable) */
			mouseEvent.initEvent(evType, true, false);
			var transCheck = evEle.dispatchEvent(mouseEvent);
			if (!transCheck) {
				//만약 이벤트에 실패했다면
				//console.log("클릭 이벤트 발생 실패!");
			}
		}
	}

	function check(idx){

		
		$("#b_cmt_idx").val(idx);
		//$("#rtype").val(rtype);

		if($("input[class='imgupload"+idx+"']").length >= 12) { 
			alert('최대 12개만 첨부 가능합니다.');
			return false;
		}
		eventOccur(document.getElementById('upload_file'),'click');
	}

	$('#upload_file').fileupload({
		url : 'http://img.hungryapp.co.kr/image_upload.php',
		dataType : 'json',
		formData : {upload_path:"/images/hatdog/upload/202111/",max_width:1000},
		//replaceFileInput: false,
		sequentialUploads: true,
		add: function(e, data){
			$("#imgUploadWAIT").addClass("advice_on");  
			var uploadFile = data.files[0];

			if (!(/png|jpe?g|gif/i).test(uploadFile.name)){
				alert('png, jpg, gif 형식만 가능합니다');
				$("#imgUploadWAIT").removeClass("advice_on"); 
				return false;
			}else if (uploadFile.size > (10*1024*1024)) { // 10mb
				alert('파일 용량은 10MB를 초과할 수 없습니다.');
                $("#imgUploadWAIT").removeClass("advice_on"); 
				return false;
			}
			data.submit();
		},done: function (e, data){
			var result = data.result;
			if(!result){
				alert("오류 발생");
				return false;
			}

			if(result.result == 1){
				var tag = "";
				var cmt_idx = $("#b_cmt_idx").val();
				tag ="<li onClick=\"javascript:removeImg(this,"+cmt_idx+");\"><img src=\""+result.path+"\" ><button type=\"button\" class=\"h21_ab_photo_img_del\" >삭제</button>"
				tag += "<input type=\"hidden\" class=\"imgupload"+cmt_idx+"\" name=\"imgupload[]\"  value=\""+result.path+"\" > </li>";
				
				$("#cmm_img_div_"+cmt_idx).show();
				$("#uploadimg_w_"+cmt_idx).append(tag);

				$("#imgUploadWAIT").removeClass("advice_on"); 
			}else{
				alert(result.msg);
			}
		},fail: function(e, data) {
			alert(JSON.stringify(e));
			alert("업로드 중 오류가 발생했습니다.\n잠시 후에 다시 시도해주세요.");
			$("#imgUploadWAIT").removeClass("advice_on"); 
		}
	});

	function removeImg(n,cmt_idx){
		if (!confirm("삭제하시겠습니까?")) return;
		$(n).remove();
		if($(".imgupload"+cmt_idx).length==0){
				$("#cmm_img_div_"+cmt_idx).hide();

			}
			
	}
function viewImgSlide(review_idx,n){
	window.open("?m1Code=cmm&m2Code=cmt_img&mode=view&bidx=10386&review_idx="+review_idx+"&img_key="+n);
}

</script>
			<!--// 유저리뷰 -->
			
		</div>
		<!--// 커뮤니티 글보기 -->

	</div>



	<!-- footer -->
	<footer style="margin-bottom: auto;">
	<div id="footer">
		<div class="footerBottom area">
			<div class="footerBottom_left">
				<p>
					(주)여름엔 크림빵과 코코아 주소 : 서울 서초구 강남대로27길 15-5 3층 (케이티전주지사3층) 대표이사 : 여름이
					| 사업자등록번호: 123-45-78987<br> 이메일 : summer@summer.com
				</p>

				<address>Copyright STYLE II. All rights reserved.</address>
			</div>
			<ul class="footerBottom_right">
				<li><a
					href="http://hatdog.co.kr/pc_hatdog/?m1Code=etc&m2Code=policy"
					target="_top">이용약관</a></li>
				<li><a
					href="http://hatdog.co.kr/pc_hatdog/?m1Code=etc&m2Code=policy2"
					target="_top">개인정보처리방침</a></li>
			</ul>
		</div>
	</div>
	</footer>
	<!-- footer -->

</body>
</html>