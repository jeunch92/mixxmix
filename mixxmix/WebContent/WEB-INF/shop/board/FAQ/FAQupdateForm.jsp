<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"  %>
<%@ include file="../../../../top.jsp"%>
<head>
<link href="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.css" rel="stylesheet"> 
<script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.4/jquery.js"></script> 
<script src="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.js"></script> 
<link href="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.1/summernote.css" rel="stylesheet"> 
<script src="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.1/summernote.js"></script> 
</head>

<c:set var="num" value="${dto.num}"/>
<link rel="stylesheet" type="text/css" href="../style.css">
<c:set var="dto" value="${dto}"/>

<div align="center">
   <form name="f" action="FAQupdateBoard.board" method="post" >
      <input type="hidden" name="num" value="${dto.num}" />
      <table border="1" width="80%">
         <tr bgcolor="yellow">
            <td align="center" colspan="2">�� �� ��</td>
         </tr>
         <tr>
            <th bgcolor="yellow" width="20%">�� ��</th>
            <td><input type="text" name="writer" value="${dto.writer}" readOnly></td>
         </tr>
         <tr>
            <th bgcolor="yellow" width="20%">�� ��</th>
            <td><input type="text" name="subject" size="50" value="${dto.subject}"></td>
         </tr>
         <tr>
            <th bgcolor="yellow" width="20%">�� ��</th>
            <td>
            <textarea id="summernote" name="content">${dto.content}</textarea>
         </tr>
         <tr>
            <td align="center" bgcolor="yellow" colspan="2">
               <input type="submit" value="�ۼ���">
               <input type="reset" value="�ٽ��ۼ�">
               <input type="button" value="��Ϻ���" onclick="window.location='FAQ.board'">
            </td>
         </tr>
      </table>
   </form>
</div>

<script> 
$(document).ready(function() {
   $('#summernote').summernote({
       height : 500
      }); 
}); 
</script> 
<%@ include file="../../../../bottom.jsp"%>

