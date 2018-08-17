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
    name : '�ֹ���:�����׽�Ʈ',
    amount : 14000,
    buyer_email : 'iamport@siot.do',
    buyer_name : '�������̸�',
    buyer_tel : '010-1234-5678',
    buyer_addr : '����Ư���� ������ �Ｚ��',
    buyer_postcode : '123-456'
}
, function(rsp) {
    if ( rsp.success ) {
        var msg = '������ �Ϸ�Ǿ����ϴ�.';
        msg += '����ID : ' + rsp.imp_uid;
        msg += '���� �ŷ�ID : ' + rsp.merchant_uid;
        msg += '���� �ݾ� : ' + rsp.paid_amount;
        msg += 'ī�� ���ι�ȣ : ' + rsp.apply_num;
    } else {
        var msg = '������ �����Ͽ����ϴ�.';
        msg += '�������� : ' + rsp.error_msg;
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
$(function(){ //��ü���� üũ�ڽ� Ŭ�� 
	$("#allCheck").click(function(){ 
		//���� ��ü ���� üũ�ڽ��� üũ�Ȼ����ϰ�� 
		if($("#allCheck").prop("checked")) { 
			//�ش�ȭ�鿡 ��ü checkbox���� üũ���ش� 
			$("input[type=checkbox]").prop("checked",true); 
			// ��ü���� üũ�ڽ��� ������ ��� 
			} else { 
				//�ش�ȭ�鿡 ��� checkbox���� üũ��������Ų��. 
				$("input[type=checkbox]").prop("checked",false); } }) })

				
	 function cart_delete(){
         if (confirm("��ٱ��Ͽ��� �����մϴ�.") == true){    //Ȯ��
        	  document.f.action = "cart_delete.cart";
        	  document.f.method = "post";
        	  document.f.submit();
         }else{   //���
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
	<td align="center"><h2>��ٱ���</h2>�����Ͻǻ�ǰ�� �����ϼ���</td>
	</tr>
	</table><br>
   <table border="1" width="90%">
      <tr>
         <td rowspan="2">
            ��������
         </td>
         <td>
            ${dto.m_name} ����, [1LV] ȸ���̽ʴϴ�.<br>
            10,000 �̻� ���Ž� 1%�� �߰����� ������ �� �ֽ��ϴ�.
         </td>
      </tr>
      <tr>
         <td>
            ����������:1,000�� ��ġ�� : 0 �� ����: 0 ��
         </td>
      </tr>
   </table>
   
   <div class="container">

   <ul class="tabs">
      <li class="tab-link current" data-tab="tab-1">������ۻ�ǰ(0)</li>
      <li class="tab-link" data-tab="tab-2">�ؿܹ�ۻ�ǰ(0)</li>
   </ul>

   <div id="tab-1" class="tab-content current">
   <table width="90%">
      <tr>
         <td colspan="10">
            �Ϲݻ�ǰ (4)
         </td>
      </tr>
      <tr><td colspan="10"><hr color="#D8D8D8" width="100%"></td></tr>
      <tr>
         <th>
         <input type="checkbox" id="allCheck"></th>
         <th>�̹���</th>
         <th>��ǰ��</th>
         <th>����</th>
         <th width="10%">����</th>
         <th>������</th>
         <th>��۱���</th>
         <th>��ۺ�</th>
         <th>�հ�</th>
         <th>����</th>
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
            <td width="6%">�⺻���<br>(�ؿܹ�۰���)</td>
            <td width="3%">����</td>
            <td width="3%">${dto.p_price}</td>
            <td width="3%">
            <input type="hidden" name="m_id" value="${dto.m_id}"/>
            <input type="hidden" name="p_name" value="${dto.p_name}"/>
            <input type="hidden" name="p_img" value="${dto.p_img}"/>
            <input type="hidden" name="p_point" value="${dto.p_point}"/>
            <input type="hidden" name="p_count" value="num"/>
            <input type="hidden" name="p_color" value="${dto.p_color}"/>
            <input type="hidden" name="p_size" value="${dto.p_size}"/>
            <input type="button" style="WIDTH: 70pt; HEIGHT: 21pt" value="�ֹ��ϱ�" onclick="IMP.request_pay(param, callback)">
            <input type="button" style="WIDTH: 70pt; HEIGHT: 21pt" value="���ɻ�ǰ���" onclick="prodtuc_delete()">
            <input type="button" style="WIDTH: 70pt; HEIGHT: 21pt" value="����" onclick="cart_delete()">
          <%--   <%sum=Integer.parseInt(${dto.p_price}); %> --%>
            </td>
         </tr>
      </c:forEach>
      <tr><td colspan="10"><hr color="#D8D8D8" width="100%"></td></tr>
      <tr>
         <td colspan=10>
            <table width="90%">
            <tr><td align="left">
               [�⺻���]</td>
              <td align="right"></td>
               </table>
         </td>
      </tr>
      <tr><td colspan="10"><hr color="#D8D8D8" width="100%"></td></tr>
      <tr><td colspan="5"><table align="left"><tr>
               <td><input type="button" value="���û�ǰ����" onclick="prodtuc_delete(${dto.p_name})">
               <input type="button" value="���û�ǰ �ؿܹ�ۻ�ǰ ��ٱ��Ϸ� �̵�" onclick="prodtuc_delete(${dto.p_name})"></td></tr></table></td>
            
          <td colspan="5"><table align="right"><tr><td ><input type="button" value="��ٱ��Ϻ���" onclick="prodtuc_delete(${dto.p_name})">
               <input type="button" value="���������" onclick="prodtuc_delete(${dto.p_name})"></td></tr></table></td>
      </tr>
      <tr><td colspan="10"><hr color="#D8D8D8" width="100%"></td></tr>
   </table>
   <table width="90%">
         <tr align="center">
            <td colspan="2">�� ��ǰ�ݾ�</td>
            <td colspan="2">�� ��ۺ�</td>
            <td colspan="2">�� ���αݾ�</td>
            <td colspan="3">���������ݾ�</td>
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
                  <input type="button" style="WIDTH: 70pt; HEIGHT: 40pt" value="��ü��ǰ�ֹ�" onclick="prodtuc_delete(${dto.p_name})">
                  <input type="button" style="WIDTH: 70pt; HEIGHT: 40pt" value="���û�ǰ�ֹ�" onclick="prodtuc_delete(${dto.p_name})">
               </td>
              <td colspan="5" align="right"> 
                  <input type="button" style="WIDTH: 70pt; HEIGHT: 40pt" value="���ΰ���ϱ�" onclick="prodtuc_delete(${dto.p_name})">
               
            </td>
         </tr>
   </table>
   <br>
   <table border="1" width="90%">
         <tr align="left">
            <td>
               �̿�ȳ�
            </td>
         </tr>
         <tr>
            <td>
               ��ٱ��� �̿�ȳ�<br>
            1 |   �ؿܹ�� ��ǰ�� ������� ��ǰ�� �Բ� �����Ͻ� �� ������ ��ٱ��� ���� ���� ������ �ֽñ� �ٶ��ϴ�.<br>
            2 |   �ؿܹ�� ���� ��ǰ�� ��� ������� ��ٱ��Ͽ� ��Ҵٰ� �ؿܹ�� ��ٱ��Ϸ� �̵��Ͽ� �����Ͻ� �� �ֽ��ϴ�.<br>
            3 | �����Ͻ� ��ǰ�� ������ �����Ͻ÷��� �������� �� [����] ��ư�� �����ø� �˴ϴ�.<br>
            4 | [���ΰ���ϱ�] ��ư�� �����ø� ������ ��� �Ͻ� �� �ֽ��ϴ�.<br>
            5 | ��ٱ��Ͽ� ���ɻ�ǰ�� �̿��Ͽ� ���Ͻô� ��ǰ�� �ֹ��ϰų� ���ɻ�ǰ���� ����Ͻ� �� �ֽ��ϴ�.<br>
            6 | ����÷�� �ɼ��� ���ϻ�ǰ�� ��ٱ��Ͽ� �߰��� ��� �������� ���ε� �� ���Ϸ� ��ü�˴ϴ�.<br>
            �������Һ� �̿�ȳ�<br>
            1 | ��ǰ�� �������Һ� ������ �����÷��� �������Һ� ��ǰ�� �����Ͽ� [�ֹ��ϱ�] ��ư�� ���� �ֹ�/���� �Ͻø� �˴ϴ�.<br>
            2 | [��ü ��ǰ �ֹ�] ��ư�� �����ø� ��ٱ����� ���о��� ���õ� ��� ��ǰ�� ���� �ֹ�/������ �̷�����ϴ�.<br>
            3 | ��, ��ü ��ǰ�� �ֹ�/�����Ͻ� ���, ��ǰ�� �������Һ� ������ ������ �� �����ϴ�.<br>
            </td>
         </tr>
   </table>
   </div>
   <div id="tab-2" class="tab-content">
   <table width="90%">
     <tr>
         <td colspan="10">
            �Ϲݻ�ǰ (4)
         </td>
      </tr>
      <tr><td colspan="10"><hr color="#D8D8D8" width="100%"></td></tr>
      <tr>
         <th><input type="checkbox" value="��ü��ǰ"></th>
         <th>�̹���</th>
         <th>��ǰ��</th>
         <th>����</th>
         <th width="10%">����</th>
         <th>������</th>
         <th>��۱���</th>
         <th>��ۺ�</th>
         <th>�հ�</th>
         <th>����</th>
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
            <td width="3%">�⺻���<br>(�ؿܹ�۰���)</td>
            <td width="3%">����</td>
            <td width="3%">�հ谪�־����</td>
            <td width="3%">
            <input type="button" style="WIDTH: 70pt; HEIGHT: 21pt" value="�ֹ��ϱ�" onclick="prodtuc_delete(${dto.p_name})">
            <input type="button" style="WIDTH: 70pt; HEIGHT: 21pt" value="���ɻ�ǰ���" onclick="prodtuc_delete(${dto.p_name})">
            <input type="button" style="WIDTH: 70pt; HEIGHT: 21pt" value="����" onclick="cart_delete(${dto.p_name})">
            </td>
         </tr>
      </c:forEach>
      <tr><td colspan="10"><hr color="#D8D8D8" width="100%"></td></tr>
      <tr>
         <td colspan=10>
            <table width="90%">
            <tr><td align="left">
               [�⺻���]</td>
              <td align="right"> ��ǰ���űݾ� ~~~ + ��ۺ� 0(����)= �հ� ~~~~~</td>
               </table>
         </td>
      </tr>
      <tr><td colspan="10"><hr color="#D8D8D8" width="100%"></td></tr>
      <tr><td colspan="5"><table align="left"><tr>
               <td><input type="button" value="���û�ǰ����" onclick="prodtuc_delete(${dto.p_name})">
               <input type="button" value="���û�ǰ �ؿܹ�ۻ�ǰ ��ٱ��Ϸ� �̵�" onclick="prodtuc_delete(${dto.p_name})"></td></tr></table></td>
            
          <td colspan="5"><table align="right"><tr><td ><input type="button" value="��ٱ��Ϻ���" onclick="prodtuc_delete(${dto.p_name})">
               <input type="button" value="���������" onclick="prodtuc_delete(${dto.p_name})"></td></tr></table></td>
      </tr>
      <tr><td colspan="10"><hr color="#D8D8D8" width="100%"></td></tr>
   </table>
   <table width="90%">
         <tr align="center">
            <td colspan="2">�� ��ǰ�ݾ�</td>
            <td colspan="2">�� ��ۺ�</td>
            <td colspan="2">�� ���αݾ�</td>
            <td colspan="3">���������ݾ�</td>
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
                  <input type="button" style="WIDTH: 70pt; HEIGHT: 40pt" value="��ü��ǰ�ֹ�" onclick="prodtuc_delete(${dto.p_name})">
                  <input type="button" style="WIDTH: 70pt; HEIGHT: 40pt" value="���û�ǰ�ֹ�" onclick="prodtuc_delete(${dto.p_name})">
               </td>
              <td colspan="5" align="right"> 
                  <input type="button" style="WIDTH: 70pt; HEIGHT: 40pt" value="���ΰ���ϱ�" onclick="prodtuc_delete(${dto.p_name})">
               
            </td>
         </tr>
   </table>
   <br>
   <table border="1" width="90%">
         <tr align="left">
            <td>
               �̿�ȳ�
            </td>
         </tr>
         <tr>
            <td>
               ��ٱ��� �̿�ȳ�<br>
            1 |   �ؿܹ�� ��ǰ�� ������� ��ǰ�� �Բ� �����Ͻ� �� ������ ��ٱ��� ���� ���� ������ �ֽñ� �ٶ��ϴ�.<br>
            2 |   �ؿܹ�� ���� ��ǰ�� ��� ������� ��ٱ��Ͽ� ��Ҵٰ� �ؿܹ�� ��ٱ��Ϸ� �̵��Ͽ� �����Ͻ� �� �ֽ��ϴ�.<br>
            3 | �����Ͻ� ��ǰ�� ������ �����Ͻ÷��� �������� �� [����] ��ư�� �����ø� �˴ϴ�.<br>
            4 | [���ΰ���ϱ�] ��ư�� �����ø� ������ ��� �Ͻ� �� �ֽ��ϴ�.<br>
            5 | ��ٱ��Ͽ� ���ɻ�ǰ�� �̿��Ͽ� ���Ͻô� ��ǰ�� �ֹ��ϰų� ���ɻ�ǰ���� ����Ͻ� �� �ֽ��ϴ�.<br>
            6 | ����÷�� �ɼ��� ���ϻ�ǰ�� ��ٱ��Ͽ� �߰��� ��� �������� ���ε� �� ���Ϸ� ��ü�˴ϴ�.<br>
            �������Һ� �̿�ȳ�<br>
            1 | ��ǰ�� �������Һ� ������ �����÷��� �������Һ� ��ǰ�� �����Ͽ� [�ֹ��ϱ�] ��ư�� ���� �ֹ�/���� �Ͻø� �˴ϴ�.<br>
            2 | [��ü ��ǰ �ֹ�] ��ư�� �����ø� ��ٱ����� ���о��� ���õ� ��� ��ǰ�� ���� �ֹ�/������ �̷�����ϴ�.<br>
            3 | ��, ��ü ��ǰ�� �ֹ�/�����Ͻ� ���, ��ǰ�� �������Һ� ������ ������ �� �����ϴ�.<br>
            </td>
         </tr>
   </table>   
   </div>

</div>
</form>
</body>
<%@ include file="../../../bottom.jsp" %>