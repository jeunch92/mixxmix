<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<!DOCTYPE html>        
<html>
<c:set var="mbid" value="${sessionScope.mbid}"/>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/style.css">
<head>      
<style> 
   ul{list-style:none; margin:0px; padding:0px; text-align:left;}
   ul ul{display:none; position:absolute;}
   ul li:hover > ul {display:block; left:130px; width:85px;}
   ul ul li{width:200px; height:30px; line-height:20px; background-color:#EAEAEA;}
   .ul1{margin:20px; padding:20px; position:relative; color:#000000;}
   .cate1{top:25px;}.cate2{top:60px;}.cate3{top:70px;}.cate4{top:90px;}
   .cate5{top:200px;}.cate6{top:250px;}
   a:link {text-decoration:none; color:#000000;}
   a:visited {text-decoration:none; color:#000000;}
   a:active {text-decoration:none; color:#000000;}
   a:hover {text-decoration:none; color:#000000;}
</style>
<style type="text/css">
#STATICMENU { margin: 0pt; padding: 0pt;  position: absolute; right: 0px; top: 0px;}
</style>

<title>mixxmix</title>
</head>
<body onload="InitializeStaticMenu();">
</body>
<body>
<div align="center">
   <table width="95%">
      <tr height="50" valign="top">
         <td align="right">
            <a href="<%=request.getContextPath()%>/main.do">쇼핑몰 홈으로 가기</a>
            <input type="text"></td>
      </tr>
      <tr>
         <td>
            <hr color="#D8D8D8" width="100%">
         </td>
      </tr>
   </table>
   <table width="95%" cellpadding="50">
      <tr>
         <td valign="top" width="15%">
            <a href="<%=request.getContextPath()%>/main.do"><img src="<%=request.getContextPath()%>/img/mixxmix.png"></a>
            <ul class="ul1">
               　            <li><font size="3">제품관리</font>
                  <ul class="cate1">
                     <li><a href="product_category_insert.pro"><font size="2">　카테고리 등록/수정/삭제</font></a></li>
                     <li><a href="product_product_insert.pro"><font size="2">　상품 등록</font></a></li>
                     <li><a href="product_list.pro"><font size="2">　상품 리스트</font></a></li>
                     <li><font size="2">　일반정보 관리</font></li>
                     <li><font size="2">　품절 상품 관리</font></li>
                     <li><font size="2">　상품 재고 관리</font></li>
                     <li><font size="2">　배송비 일괄 수정</font></li>
                  </ul>
               </li><br>
               <li><font size="3">주문관리</font>
                  <ul class="cate1">
                     <li><a href="order_pay_wait.order"><font size="2">　입금대기</font></li>
                     <li><a href="order_pay_ok.order"><font size="2">　입금완료</font></li>
                     <li><a href="order_delivery_ready.order"><font size="2">　배송준비</font></li>
                     <li><a href="order_delivery_ing.order"><font size="2">　배송중</font></li>
                     <li><a href="order_delivery_ok.order"><font size="2">　배송완료</font></li>
                     <li><a href="order_list_all.order"><font size="2">　주문리스트(전체)</font></a></li>
                     <li><a href="order_cancel_list.order"><font size="2">　입금전 취소 리스트</font></li>
                     <li><a href="order_refund_list.order"><font size="2">　환불 리스트</font></li>
                     <li><a href="order_return_list.order"><font size="2">　반품 리스트</font></li>
                     <li><a href="order_change_list.order"><font size="2">　교환 리스트</font></li>
                     <li><a href="order_not_diposal_list.order"><font size="2">　미처리 주문 리스트</font></li>
                     <li><font size="2">　주문관리 환경설정</font></li>
                     <li><font size="2">　장바구니 관리</font></li>
                  </ul>
               </li><br>
               <li><font size="3">회원관리</font>
                  <ul class="cate2">
                     <li><a href="member_list.do"><font size="2">　회원리스트</font></a></li>
                     <li><font size="2">　SMS 관리</font></li>
                     <li><font size="2">　메일 관리</font></li>
                     <li><font size="2">　적립금 로그</font></li>
                     <li><font size="2">　적립금 순위</font></li>
                     <li><font size="2">　쿠폰 로그</font></li>
                     <li><font size="2">　쿠폰 순위</font></li>
                  </ul>
               </li><br>
              <li><font size="3">게시판관리</font></a>
                  <ul class="cate3">
                     <li><font size="2">　게시판리스트</font></li>
                     <li><font size="2">　상품문의</font></li>
                     <li><font size="2">　사용후기</font></li>
                     <li><font size="2">　FAQ</font></li>
                     <li><font size="2">　1:1상담관리</font></li>
                     <li><font size="2">　공지사항</font></li>
                     <li><font size="2">　자유게시판</font></li>
                  </ul>
               </li><br>
               <li><font size="3">이벤트관리</font></a>
                  <ul class="cate4">
                     <li><a href="event_list.do"><font size="2">　이벤트리스트</font></a></li>
                     <li><font size="2">　이벤트등록</font></li>
                     <li><font size="2">　팝업창 관리</font></li>
                     <li><font size="2">　배너 관리</font></li>
                     <li><font size="2">　쿠폰 환경설정</font></li>
                     <li><a href="coupon_list.do"><font size="2">　쿠폰 리스트</font></a></li>
                     <li><font size="2">　쿠폰 만들기</font></li>
                     <li><font size="2">　쿠폰 자동지급설정</font></li>
                  </ul>
               </li><br>
               <li><font size="3">통계관리</font></a>
                  <ul class="cate5">
                     <li><font size="2">　방문자수</font></li>
                     <li><font size="2">　좋아요수</font></li>
                     <li><font size="2">　총 판매금액</font></li>
                  </ul>
               </li>
               <br>
               <!-- 2018-08-05 9시 -->
               <li><font size="3">공급자관리</font></a>
                  <ul class="cate6">
                     <li><a href="brand_insert.pro"><font size="2">　브랜드등록</font></li>
                     <li><font size="2">　브랜드리스트</font></li>
                  </ul>
               </li>
               <br>
               <!-- 2018-08-05 9시 -->
            </ul>
         </td>
         <td align="center" valign="top">