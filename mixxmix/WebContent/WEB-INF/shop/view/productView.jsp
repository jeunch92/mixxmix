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
                      detailStr = data[i].col_size +" / 남은 수량: "+data[i].col_stock;
                      $("#detail").append("<option value='"+data[i].col_size+"'>"+detailStr+"</option>");
                      }
               }     
                },
                error:function(){alert("오류")}
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
         if (confirm("장바구니에 추가합니다.") == true){    //확인
        	  document.f.action = "cart_insert.cart";
        	  document.f.method = "post";
        	  document.f.submit();
         }else{   //취소
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
			<tr><td colspan="2">색깔넣는곳</td></tr>
			<tr><td colspan="2"><font size="6"><b>${getProduct.p_name}</b></font></td></tr>
			<tr><td><font size="4"><b>판매가 : </b></font></td><td>${getProduct.p_price}</td></tr>
			<tr><td>적립금 : </td><td>${getProduct.p_point}</td></tr>
			<tr><td>상품코드</td><td>${getProduct.p_code}</td></tr>
			<tr><td>상품소재</td><td>${getProduct.p_matter}</td></tr>
			<tr><td>브랜드</td><td>${getProduct.p_producer}</td></tr>
			<tr><td>브랜드이미지</td><td></td></tr>
			<tr><td>수량 </td><td> 
			<input type="text" name="p_count" value="1" id="" class="num" size="3" readonly/>
			<div>
			    <img src="http://placehold.it/10x10" alt="" width="10" height="10" class="bt_up" />
            </div>
            <div>
                  <img src="http://placehold.it/10x10" alt="" width="10" height="10" class="bt_down" />
            </div></td></tr>
			<tr><td>색상</td><td>
			<form method="post" name="f">  
            <select name="p_color" id="p_color" onclick="createXhr()">   
                  <!-- product에서 컬러만 가지고 오는 리스트가 onlyColor -->
                  <option value="choice">색상선택</option>
                  <c:forEach var="onlyColor" items="${onlyColor}">
                     <option value="${onlyColor}">${onlyColor}</option>
                  </c:forEach>
            </select>  
         </form> 
			</td></tr>
			<tr><td width="20%">사이즈</td><td>
			<select name="p_size" id="detail">  
                    
            </select>  
			</td></tr>
			<tr><td colspan="2"><hr color="#000000" width="100%"></td></tr>
			<tr><td colspan="2">선택한거 추가하는 창</td></tr>
			<tr align="right"><td colspan="2">총 상품 금액 : ${getProduct.p_price} 원</td></tr>
			<tr align="center"><td colspan="2">카카오톡으로 공유하기</td></tr>
			<tr align="center"><td colspan="2">
				<a href="orderView.order">구매하기</a>
				<input type="button" value="장바구니" onclick="cart_insert()">
				<input type="hidden" name="m_id" value="<%=m_id%>"/>
 				<input type="hidden" name="p_name" value="${getProduct.p_name}"/>
				<input type="hidden" name="p_img" value="${getProduct.p_img}"/>
				<input type="hidden" name="p_price" value="${getProduct.p_price}"/>
				<input type="hidden" name="p_point" value="${getProduct.p_point}"/>
				|관심상품</td></tr>
			<tr align="center"><td colspan="2">카카오톡으로 상담하기</td></tr>
			<tr align="center"><td colspan="2">재입고 공지</td></tr>
		</table>
	</td>
</tr>
</table><br>
<img src="<%=request.getContextPath()%>/img/line.jpg"><br><br>
<table width="80%">
	<tr align="center">
		<td colspan="5"><font size="4"><b>관련상품</b></font><br><font size="2">고객님들께서 함께 구매한 상품입니다.</font></td>
	</tr>
	<tr align="center">
		<td>
			이미지<br>상품이름<br>가격
		</td>
		<td>
			이미지<br>상품이름<br>가격
		</td>
		<td>
			이미지<br>상품이름<br>가격
		</td>
		<td>
			이미지<br>상품이름<br>가격
		</td>
		<td>
			이미지<br>상품이름<br>가격
		</td>
	</tr>
</table>
<br><br><br>
<table width="100%">
	<tr align="center">
		<td colspan="5"><font size="4"><b>상품후기</b></font><br><font size="2">상품의 사용후기를 적어주세요.</font></td>
	</tr>
	<tr>
		<td align="right">리뷰작성|모두보기</td>
	</tr>
</table><br>
<table width="100%">
	<tr>
		<td align="left">좋아요순|최신순|조회수순</td>
	</tr>
	<tr>
		<td align="center">상품리뷰가 없습니다.</td>
	</tr>
</table>
<br><br><br>
<table>
	<tr align="center">
		<td colspan="5"><font size="4"><b>상세보기</b></font></td>
	</tr>
	<tr align="center">
		<td colspan="5">${getProduct.p_content}</td>
	</tr>
</table>
</form>
</body>
<%@ include file="../../../bottom.jsp" %>