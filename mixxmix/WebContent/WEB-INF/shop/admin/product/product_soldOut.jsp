<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<title>ǰ����ǰ ����</title>
<meta charset="EUC-KR">
<link rel="stylesheet" type="text/css" href="../../../style.css">
</head>
<body>
<div align="center">
<table class="tab" width="70%" >
   <h3><b>��ǰ �ϰ� ����</b></h3>
      <tr>
         <th class="m1" width="5%"><input type="checkbox"></th>
         <th class="m1" width="30%">��ǰ��</th>
         <th class="m1" width="15%">������</th>
         <th class="m1" width="15%">���</th>
         <th class="m1" width="10%">�ɼ�</th>
         <th class="m1" width="10%">����</th>
         <th class="m1">����/����</th>
      </tr>
      
      <%-- <c:if test="${list==null || list.size()==0}">
      <tr>
         <td align="center" colspan="7">��ϵ� ��ǰ�� �����ϴ�.</td>
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
         <td align="center"><input type="button" value="����">
         <input type="button" value="����"></td>
         </div>
      </tr>
      <%-- </c:forEach> --%>
   </table><br>
</div>
</body>
</html>