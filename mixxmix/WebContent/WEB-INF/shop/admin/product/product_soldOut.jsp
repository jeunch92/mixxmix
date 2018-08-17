<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<title>품절상품 관리</title>
<meta charset="EUC-KR">
<link rel="stylesheet" type="text/css" href="../../../style.css">
</head>
<body>
<div align="center">
<table class="tab" width="70%" >
   <h3><b>상품 일괄 관리</b></h3>
      <tr>
         <th class="m1" width="5%"><input type="checkbox"></th>
         <th class="m1" width="30%">상품명</th>
         <th class="m1" width="15%">재고관리</th>
         <th class="m1" width="15%">재고</th>
         <th class="m1" width="10%">옵션</th>
         <th class="m1" width="10%">진열</th>
         <th class="m1">수정/삭제</th>
      </tr>
      
      <%-- <c:if test="${list==null || list.size()==0}">
      <tr>
         <td align="center" colspan="7">등록된 상품이 없습니다.</td>
      </tr>
      </c:if> --%>
      <%-- <c:forEach var="dto" items="${list }"> --%>
     <tr align="center">
     	<div class="line2">
         <td><input type="checkbox"></td>
         <td>??</td>
         <td><input type="text" size="6"></td>
         <td><input type="text" size="6"></td>
         <td>X</td>
         <td align="center"><input type="checkbox"></td>
         <td align="center"><input type="button" value="수정">
         <input type="button" value="삭제"></td>
         </div>
      </tr>
      <%-- </c:forEach> --%>
   </table><br>
</div>
</body>
</html>