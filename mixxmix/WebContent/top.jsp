<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>         
<!DOCTYPE html>        
<html>
<c:set var="mbid" value="${sessionScope.mbid}"/>
<c:set var="cateList" value="${sessionScope.cateList}"/>
<c:set var="prodList" value="${sessionScope.prodList}"/>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/style.css">
<head>
<style>
   ul{list-style:none; margin:0px; padding:0px; text-align:center;}
   ul ul{display:none; position:absolute;}
   ul li:hover > ul {display:block; left:120px; width:85px;}
   ul ul li{width:130px; height:30px; line-height:20px; background-color:#EAEAEA;}
   .ul1{margin:20px; padding:20px; position:relative; color:#000000;}
   .sale{display:none; position:absolute; left: 500px; top: 20px;}
   .cate{display:none; position:absolute; left: 150px; top: 20px;}
   .brand{display:none; position:absolute; left: 150px; top: 20px;}
   a:link {text-decoration:none; color:#000000;}
   a:visited {text-decoration:none; color:#000000;}
   a:active {text-decoration:none; color:#000000;}
   a:hover {text-decoration:none; color:#000000;}
   .menu{text-align:center; font-size:12px;}
</style>
<script type="text/javascript">
   var stmnLEFT = 10; // 오른쪽 여백 
   var stmnGAP1 = 0; // 위쪽 여백 
   var stmnGAP2 = 150; // 스크롤시 브라우저 위쪽과 떨어지는 거리 
   var stmnBASE = 150; // 스크롤 시작위치 
   var stmnActivateSpeed = 35; //스크롤을 인식하는 딜레이 (숫자가 클수록 느리게 인식)
   var stmnScrollSpeed = 20; //스크롤 속도 (클수록 느림)
   var stmnTimer; 
 
    function RefreshStaticMenu() { 
        var stmnStartPoint, stmnEndPoint; 
           stmnStartPoint = parseInt(document.getElementById('STATICMENU').style.top, 10); 
           stmnEndPoint = Math.max(document.documentElement.scrollTop, document.body.scrollTop) + stmnGAP2; 
           if (stmnEndPoint < stmnGAP1) stmnEndPoint = stmnGAP1; 
           if (stmnStartPoint != stmnEndPoint) { 
            stmnScrollAmount = Math.ceil( Math.abs( stmnEndPoint - stmnStartPoint ) / 15 ); 
               document.getElementById('STATICMENU').style.top = parseInt(document.getElementById('STATICMENU').style.top, 10) + ( ( stmnEndPoint<stmnStartPoint ) ? -stmnScrollAmount : stmnScrollAmount ) + 'px'; 
               stmnRefreshTimer = stmnScrollSpeed; 
               }
              stmnTimer = setTimeout("RefreshStaticMenu();", stmnActivateSpeed); 
           } 
    function InitializeStaticMenu() {
        document.getElementById('STATICMENU').style.right = stmnLEFT + 'px';  //처음에 오른쪽에 위치. left로 바꿔도.
        document.getElementById('STATICMENU').style.top = document.body.scrollTop + stmnBASE + 'px'; 
        RefreshStaticMenu();
     }
</script>
<style type="text/css">
#STATICMENU { margin: 0pt; padding: 0pt;  position: absolute; right: 0px; top: 0px;}
</style>

<title>mixxmix</title>
</head>

<%//로그인,로그아웃 체크
      //그냥 일반 회원이 로그인할 경우
      boolean loginCheck = false; //마이페이지 로그인유무 확인하려고
      String id = (String)session.getAttribute("mbid");
      boolean isLogin = false;
      String m_id = null;
      if(id != null){
         isLogin = true;
         loginCheck = true;
         m_id = id;
      }
      session.setAttribute("isLogin", isLogin);
      //admin으로 로그인 할 경우
      String admin_id = (String)session.getAttribute("admin_id");
      boolean adminLogin = false;
      if(admin_id != null){
         adminLogin = true;
         loginCheck = true;
         m_id = admin_id;
      }
      session.setAttribute("adminLogin", adminLogin);
      session.setAttribute("loginCheck", loginCheck);
      session.setAttribute("m_id", m_id);
%>

<c:set var="msg" value="${requestScope.msg}"/><!-- 메세지 뜨게 하는 거 -->
<c:if test="${msg!=null}">
   <script type="text/javascript">
   alert("${msg}")
   </script>   
</c:if>

<body onload="InitializeStaticMenu();">
<div id="STATICMENU">
      <table bgcolor="white">
         <tr><td>
            <a href="login.do"><img src="<%=request.getContextPath()%>/img/black.png" width="50"></a><br>
          <a href="login.do"><img src="<%=request.getContextPath()%>/img/find.png" width="50"></a><br>
            <a href="login.do"><img src="<%=request.getContextPath()%>/img/delivery.png" width="50"></a><br>
            <a href="login.do"><img src="<%=request.getContextPath()%>/img/recent.png" width="50"></a><br>
          <a href="cartView.order"><img src="<%=request.getContextPath()%>/img/cart.png" width="50"></a><br>
           <a href="login.do"><img src="<%=request.getContextPath()%>/img/like.png" width="50"></a><br>
           <a href="login.do"><img src="<%=request.getContextPath()%>/img/KIN.png" width="50"></a>
        </td></tr>
     </table>
</div>
</body>
<body>
<div align="center">
   <table width="95%">
      <tr height="50" valign="top">
         <td align="right">
         <c:choose>
            <c:when test="${isLogin || adminLogin}">
            <c:set var="m_num" value="${member_num}"/>
               <a href="modify.do">회원정보</a>|
               <a href="logout.do">로그아웃</a>|
            </c:when>
            <c:otherwise>
               <a href="login.do">로그인</a>|
               <a href="member_insert.do">회원가입</a>|
            </c:otherwise>
        </c:choose>
            <a href="my_index.do">마이쇼핑</a>|
            <a href="cartView.cart?m_id=${m_id}">장바구니</a>|
            <a href="order_list.order">주문조회</a>|
            <a href="notice.board">커뮤니티</a>
            <c:choose>
            <c:when test="${isLogin || adminLogin}">
               <a href="member_list.do">|회원리스트(관리자페이지)|
            </c:when>
            <c:otherwise>
               |
            </c:otherwise>
        </c:choose>
            
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
         <td valign="top" width="10%">
            <a href="main.do"><img src="<%=request.getContextPath()%>/img/mixxmix.png"></a>
            <ul class="ul1">
         <li><a href=""><font size="4" color="red"><b>SALE</b></font></a>
                  <ul class="sale">
                     <li><font size="2">17FW시즌오프</font></li>
                  </ul>
               </li>
               <li><a href=""><font size="4" color="orange"><b>BEST</b></font></a>
               <li><a href=""><font size="4"><b>NEW</b></font></a>
               <li><a href=""><font size="4"><b>브랜드</b></font></a>
                     <ul class="brand">
                    <li><font size="2"><a href="heartclub.pro">HEART CLUB</a></font></li>
                 <li><font size="2"><a href="lonelyclub.pro">LONELY CLUB</a></font></li>
                 <li><font size="2"><a href="seek.pro">SEEK</a></font></li>
                 <li><font size="2"><a href="hide.pro">HIDE</a></font></li>
                 <li><font size="1"><a href="pastpassion.pro">PAST PASSION</a></font></li>
                 <li><font size="1"><a href="365basic.pro">365BASIC</a></font></li>
                 <li><font size="2"><a href="untitle8.pro">UNTITLE8</a></font></li>
                 <li><font size="2"><a href="matiere.pro">MATIERE</a></font></li>
                 <li><font size="2"><a href="seanlip.pro">SEANLIP</a></font></li>
                  </ul></li>
               <br><br>
               <li><c:forEach var="dto" items="${cateList}">
                        <a href="categoryView.view?c_num=${dto.c_num}&c_v_mode=new">
                        <li><font size="4">${dto.c_name}</font></li></a>
                     </c:forEach>
               </li>
               </ul>
               <br>
               <ul>
               <li><a href="notice.board">공지사항</a></li>
               <li><a href="FAQ.board">자주묻는질문</a></li>
               <li><a href="">이벤트</a></li>
               <li><a href="">카카오 상담톡</a></li>
               <li><a href="">고객리뷰</a></li>
            </ul>
            <br>
            <img src="<%=request.getContextPath()%>/img/top11.gif">
         </td>
         <td align="center" valign="top">