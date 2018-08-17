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
         alert("이름을 입력해 주세요!!")
         f.writer.focus()
         return false
      }   
      if (f.subject.value==""){
         alert("제목을 입력해 주세요!!")
         f.subject.focus()
         return false
      }
      if (f.content.value==""){
         alert("내용을 입력해 주세요!!")
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
         <p align="center" colspan="2"><h3>글 쓰 기</h3><p>
         <hr>
      
      <table  width="800">
      <tr>
         <th  width="10%" align="center"><h4>이 름</h4></th>
         <td><input type="text" name="writer"  ></td>
      </tr>
      <tr>
         <th align="center" width="10%"><h4>제 목</h4></th>
         <td><input type="text" name="subject"   size="50"></td>
      </tr>
      <tr>
         <th align="center" width="10%"><h4>내 용</h4></th>
         <td>
            <textarea id="summernote" name="content"></textarea>
         </td>
      </tr>
      <tr>
         <td colspan="2" align="right">
            <input type="submit" value="글쓰기" id="submit">
            <input type="reset" value="다시작성" >
            <input type="button" value="목록보기" onclick="window.location='notice.board'">
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

