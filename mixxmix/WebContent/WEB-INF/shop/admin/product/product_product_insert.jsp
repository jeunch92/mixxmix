<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="../top.jsp" %>
<link href="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.css" rel="stylesheet"> 
<script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.4/jquery.js"></script> 
<script src="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.js"></script> 
<link href="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.1/summernote.css" rel="stylesheet"> 
<script src="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.1/summernote.js"></script> 
<script type="text/javascript">
   function add(){ //textarea�� ��ǰ ����,������,���� �߰�
      var text = document.f.text.value
      var prod
      if(text==""){
         prod = document.f.p_color.value + " / " + document.f.p_size.value 
         + " / " + document.f.p_stock.value
         document.f.text.value = prod
      }else{
         prod = text + "\n" + document.f.p_color.value + " / " + document.f.p_size.value 
         + " / " + document.f.p_stock.value
         document.f.text.value = prod
      }
   }
   function saveCheck(){
      if (f.p_code.value==""){
         alert("��ǰ�ڵ带 �Է��� �ּ���!!")
         f.p_code.focus()
         return false
      }
      if (f.p_name.value==""){
         alert("��ǰ���� �Է��� �ּ���!!")
         f.p_name.focus()
         return false
      }
      if (f.p_img.value==""){
         alert("��ǰ�̹����� �Է��� �ּ���!!")
         f.p_img.focus()
         return false
      }
      if (f.p_matter.value==""){
         alert("��ǰ���縦 �Է��� �ּ���!!")
         f.p_matter.focus()
         return false
      }
      if (f.p_price.value==""){
         alert("��ǰ������ �Է��� �ּ���!!")
         f.p_price.focus()
         return false
      }
      if (f.p_point.value==""){
         alert("��ǰ����Ʈ�� �Է��� �ּ���!!")
         f.p_point.focus()
         return false
      }
      if (f.p_hashtag.value==""){
         alert("��ǰ �ؽ��±׸� �Է��� �ּ���!!")
         f.p_hashtag.focus()
         return false
      }
      if (f.p_content.value==""){
         alert("��ǰ �󼼳����� �Է��� �ּ���!!")
         f.p_content.focus()
         return false
      }
      if (f.p_stock.value==""){
         alert("��ǰ ������ �Է��� �ּ���!!")
         f.p_stock.focus()
         return false
      }
      if (f.text.value==""){
         alert("�߰� ��ư�� �����ּ���!!")
         f.text.focus()
         return false
      }
      return true
   }
</script>
<c:set var="cate_list" value="${cate_list}"/>
<body>
<form name="f" action="product_product_insert.pro" method="post" enctype="multipart/form-data" onsubmit="return saveCheck()">
<div>
   <table width="70%" >
   ��ǰ �⺻ ����
      <tr>
         <td class="box" colspan="4" height="0.1px" width="100%"></td>
       </tr>
      <tr>
         <td class="m1" width="20%" align="center" >ī�װ�����</td>
         <td colspan="3">
         <select name="c_num">
            <c:forEach var="dto" items="${cate_list}">
                  <option value="${dto.c_num}">${dto.c_name}</option>
               </c:forEach>
         </select>
         </td>
         <td width="20%"></td>
         <td width="30%"></td>
      </tr>
      <tr>
         <td class="m1" align="center">��ǰ�ڵ�</td>
         <td colspan="3"><input type="text" name="p_code"></td>
         <td></td>
         <td></td>
      </tr>
      <tr>
         <td class="m1" align="center">��ǰ��</td>
         <td colspan="3"><input type="text" name="p_name"></td>
         <td></td>
         <td></td>
      </tr>
      <tr>
         <td class="m1" align="center">��ǰ�̹���</td>
         <td colspan="3"><input type="file" name="p_img" value="p_img"></td>
         <td></td>
         <td></td>
      </tr>
      <tr>
         <td class="m1" align="center">��ǰ ����</td>
         <td colspan="3"><input type="text" name="p_matter"></td>
         <td></td>
         <td></td>
      </tr>
      <tr>
         <td class="m1" align="center">��ǰ ����</td>
         <td colspan="3"><input type="text" name="p_price"></td>
         <td></td>
         <td></td>
      </tr>
      <tr>
         <td class="m1" align="center">��ǰ �귣��</td>
         <td colspan="3">
         <select name="p_producer">
         <option value="HEART CLUB">HEART CLUB</option>
         <option value="LONELY CLUB">LONELY CLUB</option>
         <option value="365 BASIC">365 BASIC</option>
         <option value="ONLY">ONLY</option>
         <option value="SEEK">SEEK</option>
         </select>
         </td>
         <td></td>
         <td></td>
      </tr>
      <tr>
         <td class="m1" align="center">��ǰ ����Ʈ</td>
         <td colspan="3"><input type="text" name="p_point"></td>
         <td></td>
         <td></td>
      </tr>
      <tr>
         <td class="m1" align="center">��ǰ �ؽ��±�</td>
         <td colspan="3"><input type="text" name="p_hashtag"></td>
         <td></td>
         <td></td>
      </tr>
      <tr>
         <td class="m1" align="center" >��ǰ �󼼳���</td>
         <td colspan="3"><textarea id="summernote" name="p_content" rows="10" cols="100"></textarea></td>
         <td></td>
         <td></td>
      </tr>
      <tr>
         <td colspan="2" width="50%">
            <div >
            <table width="100%" border="1" align="right">
               <tr>
                  <td class="m1" width="20%">��ǰ ����</td>
                  <td>
                     <select name="p_color">
                     <option value="black">black</option>
                     <option value="red">red</option>
                     <option value="orange">orange</option>
                     <option value="yellow">yellow</option>
                     <option value="green">green</option>
                     <option value="skyblue">skyblue</option>
                     <option value="blue">blue</option>
                     <option value="pink">pink</option>
                     <option value="purple">purple</option>
                     <option value="ivory">ivory</option>
                     <option value="gray">gray</option>
                     <option value="white">white</option>
                     <option value="navy">navy</option>
                     <option value="khaki">khaki</option>
                     </select>
                  </td>
               </tr>
               <tr>
                  <td class="m1" >��ǰ ������</td>
                  <td>
                     <select name="p_size">
                     <option value="s">S</option>
                     <option value="m">M</option>
                     <option value="l">L</option>
                     </select>
                  </td>
               </tr>
               <tr>
                     <td class="m1" width="20%">��ǰ ����</td>
                     <td><input type="text" name="p_stock"></td>
               </tr>
               <tr>
                     <td align="center" colspan="2"><input type="button" value="�߰�" onclick="javascript:add()"></td>
               </tr>
            </table>
            </div>
         </td>
         <td colspan="2" align="center">
         <table>
            <tr>
               <td>
                  <textarea rows="8" cols="80" name="text" readOnly></textarea><br>
               </td>
            </tr>
            <tr>
               <td align="center">
                  <input type="submit" value="����">
               </td>
            </tr>
         </table>         
         </td>
      </tr>
   </table>
</div>
</form>
<script> 
$(document).ready(function() {
   $('#summernote').summernote({
       height : 500
      }); 
}); 
</script> 
</body>
<%@ include file="../bottom.jsp" %>