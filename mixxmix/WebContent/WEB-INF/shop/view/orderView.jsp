<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ include file="../../../top.jsp" %>
<script 
  src="https://code.jquery.com/jquery-3.3.1.min.js" 
  integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8=" 
  crossorigin="anonymous"></script> 
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script src="http://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script src="https://ssl.daumcdn.net/dmaps/map_js_init/postcode.v2.js"></script>
<script>
function digit_check(evt){
    var code = evt.which?evt.which:event.keyCode;
    if(code < 48 || code > 57){
        return false;
    }
}
 


   function openZipSearch() {
      new daum.Postcode({
         oncomplete: function(data) {
            $('[name=m_addr1]').val(data.zonecode); // �����ȣ (5�ڸ�)
            $('[name=m_addr2]').val(data.address);
            $('[name=m_addr3]').val(data.buildingName);
         }
      }).open();
   }
</script>

<script>
$(document).ready(function(){
    $('#input_text').keyup(function(){
        if ($(this).val().length > $(this).attr('maxlength')) {
            alert('���ѱ��� �ʰ�');
            $(this).val($(this).val().substr(0, $(this).attr('maxlength')));
        }
    });
    $('input[name="m_hp2"]').keyup(function(){
       var m_hp2 = $(this).val();
       m_hp2 = m_hp2.replace(/[^0-9]/g,"");
    })
    
});
</script>

<body>


<div aling="center">
<table>
	<tr>
	<td align="center"><h2>�ֹ��� �ۼ�</h2></td>
	</tr>
	<tr><td>�ֹ����� �Ĳ��ϰ� �ۼ����ּ���</td></tr>
</table><br>
<table width="90%">
<tr><td colspan="10"><hr color="#D8D8D8" width="100%"></td></tr>
	<tr>
		<th><input type="checkbox" name="ch"></th>
		<th>�̹���</th>
		<th>��ǰ����</th>
		<th>�ǸŰ�</th>
		<th>����</th>
		<th>������</th>
		<th>��۱���</th>
		<th>��ۺ�</th>
		<th>�հ�</th>
	</tr>
	<tr><td colspan="10"><hr color="#D8D8D8" width="100%"></td></tr>
	<c:if test="${list==null || list.size()==0}">
			<tr>
				<td align="center" colspan="9">�ֹ� �� ��ǰ�� �����ϴ�.</td>
			</tr>
		</c:if>
		<c:forEach var="dto" items="${list}">
			<tr align="center">
				<td><input type="checkbox" name="ch"></td>
				<td><img src="<%=request.getContextPath()%>/images/${dto.p_img}" width="60" height="80"></td>
				<td><a href="product_content.pro?num=${dto.p_num}">${dto.p_name}</a><br>[�ɼ�:${dto.p_color},${dto.p_size}]</td>
				<td>${dto.p_price}</td>
				<td>${dto.s_count}</td>
				<td>${dto.p_point}</td>
				<td>�⺻���</td>
				<c:set var="deliv_price" value="3000"/>
				<td>[${deliv_price}��]</td>
				<c:set var="total" value="${dto.p_price*dto.s_count}"/>
				<td>${total}</td>
			</tr>
		</c:forEach>
		<c:set var="all_total" value="${all_total+=total}"/>
		<tr><td colspan="10"><hr color="#D8D8D8" width="100%"></td></tr>
		<tr><td colspan="9">��ǰ���űݾ�${all_total} + ��ۺ�${deliv_price} = �հ�:${all_total}</td></tr>
		<tr><td colspan="10"><hr color="#D8D8D8" width="100%"></td></tr>
</table><br>
<table width="90%" border="1" cellpadding="10" cellspacing="0" bordercolor="#D8D8D8">
	<tr><td align="left" colspan="2">�ֹ�����</td></tr>
	<tr><th width="20%">�ֹ��Ͻôº�+</th><td>m_name(����Ʈ���� �߰�)</td></tr>
	<tr><th>�ּ�+</th><td>
		<input type="text" name="o_addr1" class="read" size="10" readOnly><a href="javascript:openZipSearch()"><img src="<%=request.getContextPath()%>/img/�����ȣ.PNG" id="postnum"><br></a>
        <input type="text" name="o_addr2" class="read" size="50" readOnly> �⺻�ּ�<br>
        <input type="text" name="o_addr3" size="50"> �������ּ�
	</td></tr>
	<tr>
		<th>�Ϲ���ȭ</th>
         <td><select name="o_tel1">
         <option value="02">02
         <option value="031">031
         <option value="032">032
         <option value="033">033
         <option value="041">041
         <option value="042">042
         <option value="043">043
         <option value="051">051
         <option value="052">052
         <option value="053">053
         <option value="054">054
         <option value="055">055
         <option value="061">061
         <option value="063">063
         <option value="064">064
         </select>
         -<input type="text" style="ime-mode:disabled;" onkeypress="return digit_check(event)" name="o_tel2" size="4" maxlength="4" id="input_text"/>
         -<input type="text" style="ime-mode:disabled;" onkeypress="return digit_check(event)" name="o_tel3" size="4" maxlength="4" id="input_text"/></td> 
	</tr>
	<tr>
		<th>�޴���ȭ</th>
         <td><select name="o_hp1">
         <option value="010">010
         <option value="011">011
         <option value="016">016
         <option value="017">017
         <option value="018">018
         </select>
         -<input type="text" style="ime-mode:disabled;" onkeypress="return digit_check(event)" name="o_hp2" size="4" maxlength="4" id="input_text"/>
       -<input type="text" style="ime-mode:disabled;" onkeypress="return digit_check(event)" name="o_hp3" size="4" maxlength="4" id="input_text"/></td>
	</tr>
	<tr>
	<th>�̸���</th>
         <td><input type="text" name="o_email1" id="m_email1" style="width:100px"> @
         <input type="text" name="o_email2" id="m_email2" class="read" style="width:100px;" readOnly>
         <select style="width:130px;margin-right:10px" name="selectEmail" id="selectEmail">
          <option>=�����ϼ���=</option>
          <option value="naver.com">naver.com</option>
          <option value="hanmail.net">hanmail.net</option>
          <option value="hotmail.com">hotmail.com</option>
          <option value="nate.com">nate.com</option>
          <option value="yahoo.co.kr">yahoo.co.kr</option>
          <option value="empas.com">empas.com</option>
          <option value="dreamwiz.com">dreamwiz.com</option>
          <option value="freechal.com">freechal.com</option>
          <option value="lycos.co.kr">lycos.co.kr</option>
          <option value="korea.com">korea.com</option>
          <option value="gmail.com">gmail.com</option>
          <option value="hanmir.com">hanmir.com</option>
          <option value="paran.com">paran.com</option>
          <option value="1">�����Է�</option>
         </select></td>
	</tr>
</table><br><br><br>
<table width="90%" border="1" cellpadding="10" cellspacing="0" bordercolor="#D8D8D8">
	<tr><td align="left" colspan="2">�������</td></tr>
	<tr><th width="20%">���������</th><td><input type="radio" name="same" value="1" checked="checked">�ֹ��������� ����
         <input type="radio" name="different" value="0">���ο�����</td></tr>
    <tr><th>�����ôº�+</th><td>m_name(����Ʈ���� �߰�)</td></tr>
    <tr><th>�ּ�+</th><td>
		<input type="text" name="d_addr1" class="read" size="10" readOnly><a href="javascript:openZipSearch()"><img src="<%=request.getContextPath()%>/img/�����ȣ.PNG" id="postnum"><br></a>
        <input type="text" name="d_addr2" class="read" size="50" readOnly> �⺻�ּ�<br>
        <input type="text" name="d_addr3" size="50"> �������ּ�
	</td></tr>
	<tr>
		<th>�Ϲ���ȭ</th>
         <td><select name="d_tel1">
         <option value="02">02
         <option value="031">031
         <option value="032">032
         <option value="033">033
         <option value="041">041
         <option value="042">042
         <option value="043">043
         <option value="051">051
         <option value="052">052
         <option value="053">053
         <option value="054">054
         <option value="055">055
         <option value="061">061
         <option value="063">063
         <option value="064">064
         </select>
         -<input type="text" style="ime-mode:disabled;" onkeypress="return digit_check(event)" name="d_tel2" size="4" maxlength="4" id="input_text"/>
         -<input type="text" style="ime-mode:disabled;" onkeypress="return digit_check(event)" name="d_tel3" size="4" maxlength="4" id="input_text"/></td> 
	</tr>
	<tr>
		<th>�޴���ȭ</th>
         <td><select name="d_hp1">
         <option value="010">010
         <option value="011">011
         <option value="016">016
         <option value="017">017
         <option value="018">018
         </select>
         -<input type="text" style="ime-mode:disabled;" onkeypress="return digit_check(event)" name="d_hp2" size="4" maxlength="4" id="input_text"/>
       -<input type="text" style="ime-mode:disabled;" onkeypress="return digit_check(event)" name="d_hp3" size="4" maxlength="4" id="input_text"/></td>
	</tr>
	<tr><th>��۸޼���</th>
	<td><input type="text" name="d_message" size="100"></td>
	</tr>
</table>
<br>
<table width="90%" border="1" cellpadding="10" cellspacing="0" bordercolor="#D8D8D8">
	<tr>
		<td colspan="3">���� ���� �ݾ�</td>
	</tr>
	<tr align="center" bgcolor="000001"><td><font color="white">�� �ֹ� �ݾ�</font></td><td><font color="white">�� ���� �ݾ�</font></td><td><font color="white">�� ���� ���� �ݾ�</font></td></tr>
	<tr align="center"><td>orderprice</td><td>discount</td><td>all_total</td></tr>
</table><br><br>
<table>
<tr><td><img src="<%=request.getContextPath()%>/img/btn_place_order.gif"></td></tr>
</table>

</div>
<script type="text/javascript"> //�̸��� �Է¹�� ���� 
$('#selectEmail').change(function(){ 
   $("#selectEmail option:selected").each(function () { 
      if($(this).val()== '1'){ //�����Է��� ��� 
         $("#m_email2").val(''); //�� �ʱ�ȭ 
         $("#m_email2").attr("readOnly",false); //Ȱ��ȭ 
         }else{ //�����Է��� �ƴҰ�� 
            $("#m_email2").val($(this).text()); //���ð� �Է� 
            $("#m_email2").attr("readOnly",true); //��Ȱ��ȭ 
            } }); }); 
</script>
</body>
<%@ include file="../../../bottom.jsp" %>