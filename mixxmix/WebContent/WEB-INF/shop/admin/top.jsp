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
            <a href="<%=request.getContextPath()%>/main.do">���θ� Ȩ���� ����</a>
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
               ��            <li><font size="3">��ǰ����</font>
                  <ul class="cate1">
                     <li><a href="product_category_insert.pro"><font size="2">��ī�װ� ���/����/����</font></a></li>
                     <li><a href="product_product_insert.pro"><font size="2">����ǰ ���</font></a></li>
                     <li><a href="product_list.pro"><font size="2">����ǰ ����Ʈ</font></a></li>
                     <li><font size="2">���Ϲ����� ����</font></li>
                     <li><font size="2">��ǰ�� ��ǰ ����</font></li>
                     <li><font size="2">����ǰ ��� ����</font></li>
                     <li><font size="2">����ۺ� �ϰ� ����</font></li>
                  </ul>
               </li><br>
               <li><font size="3">�ֹ�����</font>
                  <ul class="cate1">
                     <li><a href="order_pay_wait.order"><font size="2">���Աݴ��</font></li>
                     <li><a href="order_pay_ok.order"><font size="2">���ԱݿϷ�</font></li>
                     <li><a href="order_delivery_ready.order"><font size="2">������غ�</font></li>
                     <li><a href="order_delivery_ing.order"><font size="2">�������</font></li>
                     <li><a href="order_delivery_ok.order"><font size="2">����ۿϷ�</font></li>
                     <li><a href="order_list_all.order"><font size="2">���ֹ�����Ʈ(��ü)</font></a></li>
                     <li><a href="order_cancel_list.order"><font size="2">���Ա��� ��� ����Ʈ</font></li>
                     <li><a href="order_refund_list.order"><font size="2">��ȯ�� ����Ʈ</font></li>
                     <li><a href="order_return_list.order"><font size="2">����ǰ ����Ʈ</font></li>
                     <li><a href="order_change_list.order"><font size="2">����ȯ ����Ʈ</font></li>
                     <li><a href="order_not_diposal_list.order"><font size="2">����ó�� �ֹ� ����Ʈ</font></li>
                     <li><font size="2">���ֹ����� ȯ�漳��</font></li>
                     <li><font size="2">����ٱ��� ����</font></li>
                  </ul>
               </li><br>
               <li><font size="3">ȸ������</font>
                  <ul class="cate2">
                     <li><a href="member_list.do"><font size="2">��ȸ������Ʈ</font></a></li>
                     <li><font size="2">��SMS ����</font></li>
                     <li><font size="2">������ ����</font></li>
                     <li><font size="2">�������� �α�</font></li>
                     <li><font size="2">�������� ����</font></li>
                     <li><font size="2">������ �α�</font></li>
                     <li><font size="2">������ ����</font></li>
                  </ul>
               </li><br>
              <li><font size="3">�Խ��ǰ���</font></a>
                  <ul class="cate3">
                     <li><font size="2">���Խ��Ǹ���Ʈ</font></li>
                     <li><font size="2">����ǰ����</font></li>
                     <li><font size="2">������ı�</font></li>
                     <li><font size="2">��FAQ</font></li>
                     <li><font size="2">��1:1������</font></li>
                     <li><font size="2">����������</font></li>
                     <li><font size="2">�������Խ���</font></li>
                  </ul>
               </li><br>
               <li><font size="3">�̺�Ʈ����</font></a>
                  <ul class="cate4">
                     <li><a href="event_list.do"><font size="2">���̺�Ʈ����Ʈ</font></a></li>
                     <li><font size="2">���̺�Ʈ���</font></li>
                     <li><font size="2">���˾�â ����</font></li>
                     <li><font size="2">����� ����</font></li>
                     <li><font size="2">������ ȯ�漳��</font></li>
                     <li><a href="coupon_list.do"><font size="2">������ ����Ʈ</font></a></li>
                     <li><font size="2">������ �����</font></li>
                     <li><font size="2">������ �ڵ����޼���</font></li>
                  </ul>
               </li><br>
               <li><font size="3">������</font></a>
                  <ul class="cate5">
                     <li><font size="2">���湮�ڼ�</font></li>
                     <li><font size="2">�����ƿ��</font></li>
                     <li><font size="2">���� �Ǹűݾ�</font></li>
                  </ul>
               </li>
               <br>
               <!-- 2018-08-05 9�� -->
               <li><font size="3">�����ڰ���</font></a>
                  <ul class="cate6">
                     <li><a href="brand_insert.pro"><font size="2">���귣����</font></li>
                     <li><font size="2">���귣�帮��Ʈ</font></li>
                  </ul>
               </li>
               <br>
               <!-- 2018-08-05 9�� -->
            </ul>
         </td>
         <td align="center" valign="top">