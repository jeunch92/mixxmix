<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ include file="../../../../top.jsp" %>
<head>
<link href="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.css" rel="stylesheet"> 
<script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.4/jquery.js"></script> 
<script src="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.js"></script> 
<link href="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.1/summernote.css" rel="stylesheet"> 
<script src="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.1/summernote.js"></script> 
</head>
<script type="text/javascript">
   function check(){
      if (f.writer.value==""){
         alert("�̸��� �Է��� �ּ���!!")
         f.writer.focus()
         return false
      }   
      if (f.subject.value==""){
         alert("������ �Է��� �ּ���!!")
         f.subject.focus()
         return false
      }
      if (f.content.value==""){
         alert("������ �Է��� �ּ���!!")
         f.content.focus()
         return false
      }
      return true
   }
</script>
<div align="center">
   <form name="f" action="noticePro.board" method="post" onsubmit="return check()">
   
      <br>
      <br>
         <p align="center" colspan="2"><h3>�� �� ��</h3><p>
         <hr>
      
      <table  width="800">
      <tr>
         <th  width="10%" align="center"><h4>�� ��</h4></th>
         <td><input type="text" name="writer"  ></td>
      </tr>
      <tr>
         <th align="center" width="10%"><h4>�� ��</h4></th>
         <td><input type="text" name="subject"   size="50"></td>
      </tr>
      <tr>
         <th align="center" width="10%"><h4>�� ��</h4></th>
         <td>
            <textarea id="summernote" name="content"></textarea>
         </td>
      </tr>
      <tr>
         <td colspan="2" align="right">
            <input type="submit" value="�۾���" id="submit">
            <input type="reset" value="�ٽ��ۼ�" >
            <input type="button" value="��Ϻ���" onclick="window.location='notice.board'">
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
</body> 
</html>
<%@ include file="../../../../bottom.jsp" %>

