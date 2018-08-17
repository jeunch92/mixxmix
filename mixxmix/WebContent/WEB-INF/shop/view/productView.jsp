<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ include file="../../../top.jsp" %>
<c:set var="num" value="${getProduct.p_num}"/>
<c:set var="content" value="${getProduct.p_content}"/>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script>
$(document).ready(function(){ 
    $('#p_color').change(function ()  {
             $.ajax({
                url:"color.view",
                data: 
                {
                   'p_num' : ${num},
                   'col_name':$("#p_color").val()
                },
                type:"post",
                dataType: "json",
                success : function (data) {  
                   var detailStr="";
                   $("#detail").text("");
                   for (var i = 0; i < data.length; i++) {
                      if($("#p_color").val()==data[i].col_name){
                      detailStr = data[i].col_size +" / ���� ����: "+data[i].col_stock;
                      $("#detail").append("<option value='"+data[i].col_size+"'>"+detailStr+"</option>");
                      }
               }     
                },
                error:function(){alert("����")}
             })
          });
     });
</script>   
<head>
   <style>
         body{
  margin-top: 100px;
  font-family: 'Trebuchet MS', serif;
  line-height: 1.6
}
.container{
  width: 100%;
  margin: 0 auto;
}
 
 
 
ul.tabs{
  margin: 0px;
  padding: 0px;
  list-style: none;
}
ul.tabs li{
  background: none;
  color: #222;
  display: inline-block;
  padding: 10px 15px;
  cursor: pointer;
}
 
ul.tabs li.current{
  background: #FFFFFF;
  color: #222;
}
 
.tab-content{
  display: none;
  background: #FFFFFF;
  padding: 15px;
}
 
.tab-content.current{
  display: inherit;
}

.bt_down{
   position:relative;
   left:70px;
   top:-15px;
   
}
.bt_up{
   position:relative;
   left:70px;
   top:-15px;
   
}
.num{
   position:relative;
   top:20px;
}
      </style>
      <script src='//static.codepen.io/assets/common/stopExecutionOnTimeout-41c52890748cd7143004e0
      5d3c5f786c66b19939c4500ce446314d1748483e13.js'></script>
      <script src='//cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
     <script>
     $(document).ready(function(){
          
          $('ul.tabs li').click(function(){
             var tab_id = $(this).attr('data-tab');

             $('ul.tabs li').removeClass('current');
             $('.tab-content').removeClass('current');

             $(this).addClass('current');
             $("#"+tab_id).addClass('current');
          })

       })
       $(function(){ 
           $('.bt_up').click(function(){ 
             var n = $('.bt_up').index(this);
             var num = $(".num:eq("+n+")").val();
             num = $(".num:eq("+n+")").val(num*1+1); 
              });
           $('.bt_down').click(function(){ 
             var n = $('.bt_down').index(this);
             var num = $(".num:eq("+n+")").val();
             num = $(".num:eq("+n+")").val(num*1-1); 
        });
}) 

      function cart_insert(){
         if (confirm("��ٱ��Ͽ� �߰��մϴ�.") == true){    //Ȯ��
        	  document.f.action = "cart_insert.cart";
        	  document.f.method = "post";
        	  document.f.submit();
         }else{   //���
             return;
         }
      }
   </script>
   <%m_id = (String)session.getAttribute("m_id");%>
</head>
<body>
<form name="f">
<table width="100%" >
<tr valign="top">
	<td width="50%">
		<img src="<%=request.getContextPath()%>/images/${getProduct.p_img}" width="100%" height="800">
	</td>
	<td width="50%">
		<table width="100%" cellpadding="30" cellspacing="10">
			<tr><td colspan="2"><hr color="#000000" width="100%"></td></tr>
			<tr><td colspan="2">����ִ°�</td></tr>
			<tr><td colspan="2"><font size="6"><b>${getProduct.p_name}</b></font></td></tr>
			<tr><td><font size="4"><b>�ǸŰ� : </b></font></td><td>${getProduct.p_price}</td></tr>
			<tr><td>������ : </td><td>${getProduct.p_point}</td></tr>
			<tr><td>��ǰ�ڵ�</td><td>${getProduct.p_code}</td></tr>
			<tr><td>��ǰ����</td><td>${getProduct.p_matter}</td></tr>
			<tr><td>�귣��</td><td>${getProduct.p_producer}</td></tr>
			<tr><td>�귣���̹���</td><td></td></tr>
			<tr><td>���� </td><td> 
			<input type="text" name="p_count" value="1" id="" class="num" size="3" readonly/>
			<div>
			    <img src="http://placehold.it/10x10" alt="" width="10" height="10" class="bt_up" />
            </div>
            <div>
                  <img src="http://placehold.it/10x10" alt="" width="10" height="10" class="bt_down" />
            </div></td></tr>
			<tr><td>����</td><td>
			<form method="post" name="f">  
            <select name="p_color" id="p_color" onclick="createXhr()">   
                  <!-- product���� �÷��� ������ ���� ����Ʈ�� onlyColor -->
                  <option value="choice">������</option>
                  <c:forEach var="onlyColor" items="${onlyColor}">
                     <option value="${onlyColor}">${onlyColor}</option>
                  </c:forEach>
            </select>  
         </form> 
			</td></tr>
			<tr><td width="20%">������</td><td>
			<select name="p_size" id="detail">  
                    
            </select>  
			</td></tr>
			<tr><td colspan="2"><hr color="#000000" width="100%"></td></tr>
			<tr><td colspan="2">�����Ѱ� �߰��ϴ� â</td></tr>
			<tr align="right"><td colspan="2">�� ��ǰ �ݾ� : ${getProduct.p_price} ��</td></tr>
			<tr align="center"><td colspan="2">īī�������� �����ϱ�</td></tr>
			<tr align="center"><td colspan="2">
				<a href="orderView.order">�����ϱ�</a>
				<input type="button" value="��ٱ���" onclick="cart_insert()">
				<input type="hidden" name="m_id" value="<%=m_id%>"/>
 				<input type="hidden" name="p_name" value="${getProduct.p_name}"/>
				<input type="hidden" name="p_img" value="${getProduct.p_img}"/>
				<input type="hidden" name="p_price" value="${getProduct.p_price}"/>
				<input type="hidden" name="p_point" value="${getProduct.p_point}"/>
				|���ɻ�ǰ</td></tr>
			<tr align="center"><td colspan="2">īī�������� ����ϱ�</td></tr>
			<tr align="center"><td colspan="2">���԰� ����</td></tr>
		</table>
	</td>
</tr>
</table><br>
<img src="<%=request.getContextPath()%>/img/line.jpg"><br><br>
<table width="80%">
	<tr align="center">
		<td colspan="5"><font size="4"><b>���û�ǰ</b></font><br><font size="2">���Ե鲲�� �Բ� ������ ��ǰ�Դϴ�.</font></td>
	</tr>
	<tr align="center">
		<td>
			�̹���<br>��ǰ�̸�<br>����
		</td>
		<td>
			�̹���<br>��ǰ�̸�<br>����
		</td>
		<td>
			�̹���<br>��ǰ�̸�<br>����
		</td>
		<td>
			�̹���<br>��ǰ�̸�<br>����
		</td>
		<td>
			�̹���<br>��ǰ�̸�<br>����
		</td>
	</tr>
</table>
<br><br><br>
<table width="100%">
	<tr align="center">
		<td colspan="5"><font size="4"><b>��ǰ�ı�</b></font><br><font size="2">��ǰ�� ����ı⸦ �����ּ���.</font></td>
	</tr>
	<tr>
		<td align="right">�����ۼ�|��κ���</td>
	</tr>
</table><br>
<table width="100%">
	<tr>
		<td align="left">���ƿ��|�ֽż�|��ȸ����</td>
	</tr>
	<tr>
		<td align="center">��ǰ���䰡 �����ϴ�.</td>
	</tr>
</table>
<br><br><br>
<table>
	<tr align="center">
		<td colspan="5"><font size="4"><b>�󼼺���</b></font></td>
	</tr>
	<tr align="center">
		<td colspan="5">${getProduct.p_content}</td>
	</tr>
</table>
</form>
</body>
<%@ include file="../../../bottom.jsp" %>