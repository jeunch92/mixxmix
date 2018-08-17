<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="../../../top.jsp" %>
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-x.y.z.js"></script>
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>

<script>
IMP.init('imp64507989'); 
IMP.request_pay({
    pg : 'html5_inicis',
    pay_method : 'card',
    merchant_uid : 'merchant_' + new Date().getTime(),
    name : '주문명:결제테스트',
    amount : 14000,
    buyer_email : 'iamport@siot.do',
    buyer_name : '구매자이름',
    buyer_tel : '010-1234-5678',
    buyer_addr : '서울특별시 강남구 삼성동',
    buyer_postcode : '123-456'
}
, function(rsp) {
    if ( rsp.success ) {
        var msg = '결제가 완료되었습니다.';
        msg += '고유ID : ' + rsp.imp_uid;
        msg += '상점 거래ID : ' + rsp.merchant_uid;
        msg += '결제 금액 : ' + rsp.paid_amount;
        msg += '카드 승인번호 : ' + rsp.apply_num;
    } else {
        var msg = '결제에 실패하였습니다.';
        msg += '에러내용 : ' + rsp.error_msg;
    }
    alert(msg);
    
},{m_redirect_url : 'http://www.iamport.kr/mobile/landing'});
</script>
<head>
<meta charset="EUC-KR">
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
$(function(){ //전체선택 체크박스 클릭 
	$("#allCheck").click(function(){ 
		//만약 전체 선택 체크박스가 체크된상태일경우 
		if($("#allCheck").prop("checked")) { 
			//해당화면에 전체 checkbox들을 체크해준다 
			$("input[type=checkbox]").prop("checked",true); 
			// 전체선택 체크박스가 해제된 경우 
			} else { 
				//해당화면에 모든 checkbox들의 체크를해제시킨다. 
				$("input[type=checkbox]").prop("checked",false); } }) })

				
	 function cart_delete(){
         if (confirm("장바구니에서 삭제합니다.") == true){    //확인
        	  document.f.action = "cart_delete.cart";
        	  document.f.method = "post";
        	  document.f.submit();
         }else{   //취소
             return;
         }
      }
    </script> 
    <%int sum=0; 
    m_id = (String)session.getAttribute("m_id");
    %>
    
    
</head>
<body>
<form name="f" action="cartView.order" method="post">
	<table align="center">
	<tr>
	<td align="center"><h2>장바구니</h2>구매하실상품을 선택하세요</td>
	</tr>
	</table><br>
   <table border="1" width="90%">
      <tr>
         <td rowspan="2">
            혜택정보
         </td>
         <td>
            ${dto.m_name} 님은, [1LV] 회원이십니다.<br>
            10,000 이상 구매시 1%을 추가할인 받으실 수 있습니다.
         </td>
      </tr>
      <tr>
         <td>
            가용적립금:1,000원 예치금 : 0 원 쿠폰: 0 개
         </td>
      </tr>
   </table>
   
   <div class="container">

   <ul class="tabs">
      <li class="tab-link current" data-tab="tab-1">국내배송상품(0)</li>
      <li class="tab-link" data-tab="tab-2">해외배송상품(0)</li>
   </ul>

   <div id="tab-1" class="tab-content current">
   <table width="90%">
      <tr>
         <td colspan="10">
            일반상품 (4)
         </td>
      </tr>
      <tr><td colspan="10"><hr color="#D8D8D8" width="100%"></td></tr>
      <tr>
         <th>
         <input type="checkbox" id="allCheck"></th>
         <th>이미지</th>
         <th>상품명</th>
         <th>가격</th>
         <th width="10%">수량</th>
         <th>적립금</th>
         <th>배송구분</th>
         <th>배송비</th>
         <th>합계</th>
         <th>선택</th>
      </tr>
      <tr><td colspan="10"><hr color="#D8D8D8" width="100%"></td></tr>
      <c:forEach var="dto" items="${cartlist}">
         <tr align="center">
            <td width="1%"><input type="checkbox" name="ch"></td>
            <td width="6%"><img src="<%=request.getContextPath()%>/images/${dto.p_img}" width="50" height="50"></td> 
            <td width="8%"><a href="product_content.pro?name=${dto.p_name}">${dto.p_name}</a><br>${dto.p_color}<br>${dto.p_size}</td>
            <td width="2%">${dto.p_price}</td>
            <td width="2%">
            
            <input type="text" name="num" value="${dto.p_count}" id="" class="num" size="3" readonly/>

                <div>
                  <img src="http://placehold.it/10x10" alt="" width="10" height="10" class="bt_up" />
                </div>
                <div>
                  <img src="http://placehold.it/10x10" alt="" width="10" height="10" class="bt_down" />
                </div>
            </td>
            <td width="3%">${dto.p_point}</td>
            <td width="6%">기본배송<br>(해외배송가능)</td>
            <td width="3%">무료</td>
            <td width="3%">${dto.p_price}</td>
            <td width="3%">
            <input type="hidden" name="m_id" value="${dto.m_id}"/>
            <input type="hidden" name="p_name" value="${dto.p_name}"/>
            <input type="hidden" name="p_img" value="${dto.p_img}"/>
            <input type="hidden" name="p_point" value="${dto.p_point}"/>
            <input type="hidden" name="p_count" value="num"/>
            <input type="hidden" name="p_color" value="${dto.p_color}"/>
            <input type="hidden" name="p_size" value="${dto.p_size}"/>
            <input type="button" style="WIDTH: 70pt; HEIGHT: 21pt" value="주문하기" onclick="IMP.request_pay(param, callback)">
            <input type="button" style="WIDTH: 70pt; HEIGHT: 21pt" value="관심상품등록" onclick="prodtuc_delete()">
            <input type="button" style="WIDTH: 70pt; HEIGHT: 21pt" value="삭제" onclick="cart_delete()">
          <%--   <%sum=Integer.parseInt(${dto.p_price}); %> --%>
            </td>
         </tr>
      </c:forEach>
      <tr><td colspan="10"><hr color="#D8D8D8" width="100%"></td></tr>
      <tr>
         <td colspan=10>
            <table width="90%">
            <tr><td align="left">
               [기본배송]</td>
              <td align="right"></td>
               </table>
         </td>
      </tr>
      <tr><td colspan="10"><hr color="#D8D8D8" width="100%"></td></tr>
      <tr><td colspan="5"><table align="left"><tr>
               <td><input type="button" value="선택상품삭제" onclick="prodtuc_delete(${dto.p_name})">
               <input type="button" value="선택상품 해외배송상품 장바구니로 이동" onclick="prodtuc_delete(${dto.p_name})"></td></tr></table></td>
            
          <td colspan="5"><table align="right"><tr><td ><input type="button" value="장바구니비우기" onclick="prodtuc_delete(${dto.p_name})">
               <input type="button" value="견적서출력" onclick="prodtuc_delete(${dto.p_name})"></td></tr></table></td>
      </tr>
      <tr><td colspan="10"><hr color="#D8D8D8" width="100%"></td></tr>
   </table>
   <table width="90%">
         <tr align="center">
            <td colspan="2">총 상품금액</td>
            <td colspan="2">총 배송비</td>
            <td colspan="2">총 할인금액</td>
            <td colspan="3">결제예정금액</td>
         </tr>
         <tr><td colspan="10"><hr color="#D8D8D8" width="100%"></td></tr>
         <tr align="center">
            <td colspan="2">
               <%=sum%>
            </td>
            <td colspan="2">
               +0
            </td>
            <td colspan="2">
               -1000
            </td>
            <td colspan="3">
               <%=sum %>
            </td>
         </tr>
         <tr><td colspan="10"><hr color="#D8D8D8" width="100%"></td></tr>
         <tr>
            <td colspan="5" align="right">
                  <input type="button" style="WIDTH: 70pt; HEIGHT: 40pt" value="전체상품주문" onclick="prodtuc_delete(${dto.p_name})">
                  <input type="button" style="WIDTH: 70pt; HEIGHT: 40pt" value="선택상품주문" onclick="prodtuc_delete(${dto.p_name})">
               </td>
              <td colspan="5" align="right"> 
                  <input type="button" style="WIDTH: 70pt; HEIGHT: 40pt" value="쇼핑계속하기" onclick="prodtuc_delete(${dto.p_name})">
               
            </td>
         </tr>
   </table>
   <br>
   <table border="1" width="90%">
         <tr align="left">
            <td>
               이용안내
            </td>
         </tr>
         <tr>
            <td>
               장바구니 이용안내<br>
            1 |   해외배송 상품과 국내배송 상품은 함께 결제하실 수 없으니 장바구니 별로 따로 결제해 주시기 바랍니다.<br>
            2 |   해외배송 가능 상품의 경우 국내배송 장바구니에 담았다가 해외배송 장바구니로 이동하여 결제하실 수 있습니다.<br>
            3 | 선택하신 상품의 수량을 변경하시려면 수량변경 후 [변경] 버튼을 누르시면 됩니다.<br>
            4 | [쇼핑계속하기] 버튼을 누르시면 쇼핑을 계속 하실 수 있습니다.<br>
            5 | 장바구니와 관심상품을 이용하여 원하시는 상품만 주문하거나 관심상품으로 등록하실 수 있습니다.<br>
            6 | 파일첨부 옵션은 동일상품을 장바구니에 추가할 경우 마지막에 업로드 한 파일로 교체됩니다.<br>
            무이자할부 이용안내<br>
            1 | 상품별 무이자할부 혜택을 받으시려면 무이자할부 상품만 선택하여 [주문하기] 버튼을 눌러 주문/결제 하시면 됩니다.<br>
            2 | [전체 상품 주문] 버튼을 누르시면 장바구니의 구분없이 선택된 모든 상품에 대한 주문/결제가 이루어집니다.<br>
            3 | 단, 전체 상품을 주문/결제하실 경우, 상품별 무이자할부 혜택을 받으실 수 없습니다.<br>
            </td>
         </tr>
   </table>
   </div>
   <div id="tab-2" class="tab-content">
   <table width="90%">
     <tr>
         <td colspan="10">
            일반상품 (4)
         </td>
      </tr>
      <tr><td colspan="10"><hr color="#D8D8D8" width="100%"></td></tr>
      <tr>
         <th><input type="checkbox" value="전체상품"></th>
         <th>이미지</th>
         <th>상품명</th>
         <th>가격</th>
         <th width="10%">수량</th>
         <th>적립금</th>
         <th>배송구분</th>
         <th>배송비</th>
         <th>합계</th>
         <th>선택</th>
      </tr>
      <tr><td colspan="10"><hr color="#D8D8D8" width="100%"></td></tr>
      <c:forEach var="dto" items="${cartlist}">
         <tr align="center">
            <td width="1%"><input type="checkbox" name="ch"></td>
            <td width="6%">${dto.p_img}</td> 
            <td width="8%"><a href="product_content.pro?name=${dto.p_name}">${dto.p_name}</a></td>
            <td width="2%">${dto.p_price}</td>
            <td width="2%">
            <input type="text" name="num" value="1" id="" class="num" size="3" readonly/>
                <div>
                  <img src="http://placehold.it/10x10" alt="" width="10" height="10" class="bt_up" />
                </div>
                <div>
                  <img src="http://placehold.it/10x10" alt="" width="10" height="10" class="bt_down" />
                </div>
            </td>
            <td width="3%">${dto.p_color}</td>
            <td width="3%">기본배송<br>(해외배송가능)</td>
            <td width="3%">무료</td>
            <td width="3%">합계값넣어야함</td>
            <td width="3%">
            <input type="button" style="WIDTH: 70pt; HEIGHT: 21pt" value="주문하기" onclick="prodtuc_delete(${dto.p_name})">
            <input type="button" style="WIDTH: 70pt; HEIGHT: 21pt" value="관심상품등록" onclick="prodtuc_delete(${dto.p_name})">
            <input type="button" style="WIDTH: 70pt; HEIGHT: 21pt" value="삭제" onclick="cart_delete(${dto.p_name})">
            </td>
         </tr>
      </c:forEach>
      <tr><td colspan="10"><hr color="#D8D8D8" width="100%"></td></tr>
      <tr>
         <td colspan=10>
            <table width="90%">
            <tr><td align="left">
               [기본배송]</td>
              <td align="right"> 상품구매금액 ~~~ + 배송비 0(무료)= 합계 ~~~~~</td>
               </table>
         </td>
      </tr>
      <tr><td colspan="10"><hr color="#D8D8D8" width="100%"></td></tr>
      <tr><td colspan="5"><table align="left"><tr>
               <td><input type="button" value="선택상품삭제" onclick="prodtuc_delete(${dto.p_name})">
               <input type="button" value="선택상품 해외배송상품 장바구니로 이동" onclick="prodtuc_delete(${dto.p_name})"></td></tr></table></td>
            
          <td colspan="5"><table align="right"><tr><td ><input type="button" value="장바구니비우기" onclick="prodtuc_delete(${dto.p_name})">
               <input type="button" value="견적서출력" onclick="prodtuc_delete(${dto.p_name})"></td></tr></table></td>
      </tr>
      <tr><td colspan="10"><hr color="#D8D8D8" width="100%"></td></tr>
   </table>
   <table width="90%">
         <tr align="center">
            <td colspan="2">총 상품금액</td>
            <td colspan="2">총 배송비</td>
            <td colspan="2">총 할인금액</td>
            <td colspan="3">결제예정금액</td>
         </tr>
         <tr><td colspan="10"><hr color="#D8D8D8" width="100%"></td></tr>
         <tr align="center">
            <td colspan="2">
               <%=sum%>
            </td>
            <td colspan="2">
               +0
            </td>
            <td colspan="2">
               -1000
            </td>
            <td colspan="3">
               <%=sum %>
            </td>
         </tr>
         <tr><td colspan="10"><hr color="#D8D8D8" width="100%"></td></tr>
         <tr>
            <td colspan="5" align="right">
                  <input type="button" style="WIDTH: 70pt; HEIGHT: 40pt" value="전체상품주문" onclick="prodtuc_delete(${dto.p_name})">
                  <input type="button" style="WIDTH: 70pt; HEIGHT: 40pt" value="선택상품주문" onclick="prodtuc_delete(${dto.p_name})">
               </td>
              <td colspan="5" align="right"> 
                  <input type="button" style="WIDTH: 70pt; HEIGHT: 40pt" value="쇼핑계속하기" onclick="prodtuc_delete(${dto.p_name})">
               
            </td>
         </tr>
   </table>
   <br>
   <table border="1" width="90%">
         <tr align="left">
            <td>
               이용안내
            </td>
         </tr>
         <tr>
            <td>
               장바구니 이용안내<br>
            1 |   해외배송 상품과 국내배송 상품은 함께 결제하실 수 없으니 장바구니 별로 따로 결제해 주시기 바랍니다.<br>
            2 |   해외배송 가능 상품의 경우 국내배송 장바구니에 담았다가 해외배송 장바구니로 이동하여 결제하실 수 있습니다.<br>
            3 | 선택하신 상품의 수량을 변경하시려면 수량변경 후 [변경] 버튼을 누르시면 됩니다.<br>
            4 | [쇼핑계속하기] 버튼을 누르시면 쇼핑을 계속 하실 수 있습니다.<br>
            5 | 장바구니와 관심상품을 이용하여 원하시는 상품만 주문하거나 관심상품으로 등록하실 수 있습니다.<br>
            6 | 파일첨부 옵션은 동일상품을 장바구니에 추가할 경우 마지막에 업로드 한 파일로 교체됩니다.<br>
            무이자할부 이용안내<br>
            1 | 상품별 무이자할부 혜택을 받으시려면 무이자할부 상품만 선택하여 [주문하기] 버튼을 눌러 주문/결제 하시면 됩니다.<br>
            2 | [전체 상품 주문] 버튼을 누르시면 장바구니의 구분없이 선택된 모든 상품에 대한 주문/결제가 이루어집니다.<br>
            3 | 단, 전체 상품을 주문/결제하실 경우, 상품별 무이자할부 혜택을 받으실 수 없습니다.<br>
            </td>
         </tr>
   </table>   
   </div>

</div>
</form>
</body>
<%@ include file="../../../bottom.jsp" %>