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
   var stmnLEFT = 10; // ������ ���� 
   var stmnGAP1 = 0; // ���� ���� 
   var stmnGAP2 = 150; // ��ũ�ѽ� ������ ���ʰ� �������� �Ÿ� 
   var stmnBASE = 150; // ��ũ�� ������ġ 
   var stmnActivateSpeed = 35; //��ũ���� �ν��ϴ� ������ (���ڰ� Ŭ���� ������ �ν�)
   var stmnScrollSpeed = 20; //��ũ�� �ӵ� (Ŭ���� ����)
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
        document.getElementById('STATICMENU').style.right = stmnLEFT + 'px';  //ó���� �����ʿ� ��ġ. left�� �ٲ㵵.
        document.getElementById('STATICMENU').style.top = document.body.scrollTop + stmnBASE + 'px'; 
        RefreshStaticMenu();
     }
</script>
<style type="text/css">
#STATICMENU { margin: 0pt; padding: 0pt;  position: absolute; right: 0px; top: 0px;}
</style>

<title>mixxmix</title>
</head>

<%//�α���,�α׾ƿ� üũ
      //�׳� �Ϲ� ȸ���� �α����� ���
      boolean loginCheck = false; //���������� �α������� Ȯ���Ϸ���
      String id = (String)session.getAttribute("mbid");
      boolean isLogin = false;
      String m_id = null;
      if(id != null){
         isLogin = true;
         loginCheck = true;
         m_id = id;
      }
      session.setAttribute("isLogin", isLogin);
      //admin���� �α��� �� ���
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

<c:set var="msg" value="${requestScope.msg}"/><!-- �޼��� �߰� �ϴ� �� -->
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
               <a href="modify.do">ȸ������</a>|
               <a href="logout.do">�α׾ƿ�</a>|
            </c:when>
            <c:otherwise>
               <a href="login.do">�α���</a>|
               <a href="member_insert.do">ȸ������</a>|
            </c:otherwise>
        </c:choose>
            <a href="my_index.do">���̼���</a>|
            <a href="cartView.cart?m_id=${m_id}">��ٱ���</a>|
            <a href="order_list.order">�ֹ���ȸ</a>|
            <a href="notice.board">Ŀ�´�Ƽ</a>
            <c:choose>
            <c:when test="${isLogin || adminLogin}">
               <a href="member_list.do">|ȸ������Ʈ(������������)|
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
                     <li><font size="2">17FW�������</font></li>
                  </ul>
               </li>
               <li><a href=""><font size="4" color="orange"><b>BEST</b></font></a>
               <li><a href=""><font size="4"><b>NEW</b></font></a>
               <li><a href=""><font size="4"><b>�귣��</b></font></a>
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
               <li><a href="notice.board">��������</a></li>
               <li><a href="FAQ.board">���ֹ�������</a></li>
               <li><a href="">�̺�Ʈ</a></li>
               <li><a href="">īī�� �����</a></li>
               <li><a href="">������</a></li>
            </ul>
            <br>
            <img src="<%=request.getContextPath()%>/img/top11.gif">
         </td>
         <td align="center" valign="top">