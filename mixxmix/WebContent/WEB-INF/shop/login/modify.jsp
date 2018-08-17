<!-- 2018-08-08 15:00 �߰��߰� -->
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ include file="../../../top.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%-- <c:set var="list" value="${list}"/> --%>
<script 
  src="https://code.jquery.com/jquery-3.3.1.min.js" 
  integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8=" 
  crossorigin="anonymous"></script> 
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script src="http://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script src="https://ssl.daumcdn.net/dmaps/map_js_init/postcode.v2.js"></script>
<style>
   .read{
      background-color: #F5F7F7;
   }
</style>
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
<script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
<script>
    $(document).ready(function(){
    	   $("#passwd1").keyup(function(){//��й�ȣ Ȯ��
    		   var userPasswd = $("#passwd1").val()
		    	      if($("#passwd1").val()!=$("#passwd").val()){
		    	         $("#passwdfont").text("��й�ȣ�� ��ġ���� �ʽ��ϴ�")
		    	      }else{
		    	         $("#passwdfont").text('')
		          }
     	     })
    	   
    	   $("#passwd").keyup(function () {
    	      var userPasswd = $("#passwd").val()
    	      var checkLen = checkLength(userPasswd)
    	      if(checkLen){//4���� �̻��̸� if�� ����
    	    	  var check = checkString(userPasswd)    
    	    	  if(check){
	    	         if($("#passwd1").val()!=$("#passwd").val()){
	    	            $("#passwdfont").text("��й�ȣ�� ��ġ���� �ʽ��ϴ�")
	    	         }else{
	    	            $("#passwdfont").text('')
	    	         }
    	    	  }else{
    	    		  $("#passwdfont").html('��й�ȣ�� ������ Ȯ�����ּ���')
    	    	  }
    	      }else{
    	    	  $("#passwdfont").text("��й�ȣ�� �ʹ� ª���ϴ�")
    	      }
    	   })
    	   
    	   $("#id").keyup(function() {
    	      var userId = $("#id").val()
    	      var checkLen = checkLength(userId)
    	      if(checkLen){//4���� �̻��̸� if�� ����
    	         var check = checkString(userId)
    	         if(check){//Ư������ ������ Ȯ��
    	        	 $("#idfont").html("")
        	         var array = new Array()
        	         <c:forEach items="${list}" var="result">
        	            array.push("${result.m_id}")
        	         </c:forEach>
        	         if(array.length==0){
        	        	 $("#idfont").css("color","green")
    	                  $("#idfont").html("��밡���� ���̵� �Դϴ�")
        	         }else{
    	    	         for (var i = 0; i < array.length; i++) {
    	    	               if($("#id").val()==array[i]){
    	    	                  $("#idfont").css("color","red")
    	    	                  $("#idfont").html("�̹� �����ϴ� ���̵� �Դϴ�")
    	    	                  return 
    	    	               }else {
    	    	                  $("#idfont").css("color","green")
    	    	                  $("#idfont").html("��밡���� ���̵� �Դϴ�")
    	    	                  continue;
    	    	               }
    	    	         }
        	         }
    	         }else{//Ư�����ڰ� ������
    	        	 $("#idfont").css("color","red")
        	         $("#idfont").html("���̵� �ٽ� Ȯ�����ּ���")
    	         }
    	      }else{//4���� �̻��� �ƴϸ�
    	         $("#idfont").css("color","red")
    	         $("#idfont").html("���̵� �ٽ� Ȯ�����ּ���")
    	      }
    	   })
    	})
</script>
<script type="text/javascript">
         function check(){
            if (f.m_id.value==""){
               alert("���̵� �Է��� �ּ���!!")
               f.m_id.focus()
               return
            }
            if (!f.m_passwd.value){
               alert("��й�ȣ�� �Է��� �ּ���!!")
               f.m_passwd.focus()
               return
            }
            if (!f.m_passwd1.value){
               alert("��й�ȣ Ȯ���� �Է��� �ּ���!!")
               f.m_passwd1.focus()
               return
            }
            if (f.m_passwd1.value!=f.m_passwd.value){
               alert("��й�ȣ�� �ٽ� Ȯ�����ּ���!!")
               f.m_passwd1.focus()
               return
            }
            if (!f.m_name.value){
               alert("�̸��� �Է��� �ּ���!!")
               f.m_name.focus()
               return
            }
            if (!f.m_addr1.value){
               alert("�����ȣ�� �Է��� �ּ���!!")
               f.m_addr1.focus()
               return
            }
            if (!f.m_addr2.value){
               alert("�ּҸ� �Է��� �ּ���!!")
               f.m_addr2.focus()
               return
            }
            if (!f.m_addr3.value){
               alert("�ּҸ� �Է��� �ּ���!!")
               f.m_addr3.focus()
               return
            }
            if (!f.m_hp1.value){
               alert("�޴���ȭ�� �Է��� �ּ���!!")
               f.m_hp1.focus()
               return
            }
            if (!f.m_hp2.value){
               alert("�޴���ȭ�� �Է��� �ּ���!!")
               f.m_hp2.focus()
               return
            }
            if (!f.m_hp3.value){
               alert("�޴���ȭ�� �Է��� �ּ���!!")
               f.m_hp3.focus()
               return
            }
            if (f.m_email1.value!=""){
               if(!f.m_email2.value){
                  alert("�̸��� ������ �ùٸ��� �ʽ��ϴ�!!")
                  f.m_email1.focus()
                  return   
               }
            }
            if(isNaN(f.m_tel2.value)){
               alert("��ȭ��ȣ�� ���ڸ� �Է� �����մϴ�!")
               f.m_tel2.focus()
               return
            }if(isNaN(f.m_tel3.value)){
               alert("��ȭ��ȣ�� ���ڸ� �Է� �����մϴ�!")
               f.m_tel3.focus()
               return
            }
            if(isNaN(f.m_hp2.value)){
               alert("��ȭ��ȣ�� ���ڸ� �Է� �����մϴ�!")
               f.m_hp2.focus()
               return
            }
            if(isNaN(f.m_hp3.value)){
               alert("��ȭ��ȣ�� ���ڸ� �Է� �����մϴ�!")
               f.m_hp3.focus()
               return
            }
            if(isNaN(f.m_birth1.value)){
               alert("��������� ���ڸ� �Է� �����մϴ�!")
               f.m_birth1.focus()
               return
            }
            if(isNaN(f.m_birth2.value)){
               alert("��������� ���ڸ� �Է� �����մϴ�!")
               f.m_birth2.focus()
               return
            }
            if(isNaN(f.m_birth3.value)){
               alert("��������� ���ڸ� �Է� �����մϴ�!")
               f.m_birth3.focus()
               return
            }
            document.f.submit()
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
<script>
function goIdCheck(){
      window.open("id_checkForm.do?id="+f.m_id.value,"idCheck","width=600, height=450")
   }
</script>

<div align="center">
<form name="f" action="modify_update.do" method="post">
<c:forEach var="list" items="${memberInfo}">
<c:set var="m_num" value="${list.m_num}"/><!-- ȸ��Ż���Ҷ� m_num�� �ѱ����~ -->
<input type="hidden" name="m_num" value="${list.m_num}">
   <table width="90%">
      <tr align="center">
         <td colspan="2"><h2>ȸ�� ���� ����</h2></td>
      </tr>
      <tr align="center" valign="middle">
			<td align="center">
				<img src="<%=request.getContextPath()%>/img/mg_img_LV.1.jpg">
			</td>
			<td align="left">
				���� ���θ��� �̿����ּż� �����մϴ�. ${list.m_name}���� [LV.${list.m_level}]ȸ�� �̽ʴϴ�.<br>
				10,000�̻� ���Ž� 1%�� �߰� ���� ������ �� �ֽ��ϴ�.
			</td>
		</tr>
   </table>
   <table cellpadding="10" class="join_page" width="90%">
      <tr>
         <td colspan="2" align="left">
         <b>�⺻����</b>
         </td>
      </tr>
      <tr>
         <th>���̵�</th>
	      <td><input type="text" name="m_id" id="id" maxlength="16" value="${list.m_id}" readOnly>(���� ��ҹ���/����,4~16��)
	      <font name = "check" size="2" color="red" id="idfont"></font>
	      </td>      
      </tr>
      <tr>
         <th>��й�ȣ</th>
         <c:set var="m_passwd" value="${list.m_passwd}"/><!-- DB�� ����� ��й�ȣ -->
         <td><input type="password" name="m_passwd" id="passwd" maxlength="16"> (���� ��ҹ���/���� 4��~16��)</td>
      </tr>
      <tr>
         <th>��й�ȣ Ȯ��</th>
         <td><input type="password" name="m_passwd1" id="passwd1" maxlength="16"><font name="check" size="2" color="red" id="passwdfont"></font></td>
      </tr>
      <tr>
         <th>�̸�</th>
         <td><input type="text" name="m_name" value="${list.m_name}" readOnly></td>
      </tr>
      <tr>
         <th>�ּ�</th>
         <td>
         <input type="text" name="m_addr1" class="read" size="10" value="${list.m_addr1}" readOnly><a href="javascript:openZipSearch()"><img src="<%=request.getContextPath()%>/img/�����ȣ.PNG" id="postnum"><br></a>
         <input type="text" name="m_addr2" class="read" size="50" value="${list.m_addr2}" readOnly> �⺻�ּ�<br>
         <input type="text" name="m_addr3" value="${list.m_addr3}" size="50"> �������ּ�
         </td>
      </tr>
      <tr>
         <th>�Ϲ���ȭ</th>
         <c:set var="m_tel1" value="${list.m_tel1}"/>
         <td><select name="m_tel1" id="m_tel1">
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
         -<input type="text" style="ime-mode:disabled;" onkeypress="return digit_check(event)" name="m_tel2" size="4" maxlength="4" id="input_text" value="${list.m_tel2}"/>
         -<input type="text" style="ime-mode:disabled;" onkeypress="return digit_check(event)" name="m_tel3" size="4" maxlength="4" id="input_text" value="${list.m_tel3}"/></td> 
      </tr>
      <tr>
         <th>�޴���ȭ</th>
         <c:set var="m_hp1" value="${list.m_hp1}"/>
         <td><select name="m_hp1" id="m_hp1">
         <option value="010">010
         <option value="011">011
         <option value="016">016
         <option value="017">017
         <option value="018">018
         </select>
         -<input type="text" style="ime-mode:disabled;" onkeypress="return digit_check(event)" name="m_hp2" size="4" maxlength="4" id="input_text" value="${list.m_hp2}"/>
       -<input type="text" style="ime-mode:disabled;" onkeypress="return digit_check(event)" name="m_hp3" size="4" maxlength="4" id="input_text" value="${list.m_hp3}"/></td>
      </tr>
      <tr>
         <th>SMS���ſ���</th>
         <c:set var="m_sms_ok" value="${list.m_sms_ok}"/>
         <td><input type="radio" name="m_sms_ok" value="1" checked="checked">������
         <input type="radio" name="m_sms_ok" value="0">���Ǿ���<br>
         ���θ����� �����ϴ� ������ �̺�Ʈ �ҽ��� SMS�� ������ �� �ֽ��ϴ�.</td>
      </tr>
      <tr>
        <th>�̸���</th>
        <c:set var="m_email2" value="${list.m_email2}"/>
         <td><input type="text" name="m_email1" id="m_email1" style="width:100px" value="${list.m_email1}"> @
         <input type="text" name="m_email2" id="m_email2" class="read" style="width:100px;" value="${list.m_email2}" readOnly>
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
      <tr>
         <th>�̸��� ���ſ���</th>
         <c:set var="m_email_ok" value="${list.m_email_ok}"/>
         <td><input type="radio" name="m_email_ok" value="1" checked="checked">������
         <input type="radio" name="m_email_ok" value="0">���Ǿ���<br>
         ���θ����� �����ϴ� ������ �̺�Ʈ �ҽ��� �̸��Ϸ� ������ �� �ֽ��ϴ�.</td>
      </tr>
      <tr>
         <th>���ȸ��</th>
         <c:set var="m_mem_ok" value="${list.m_mem_ok}"/>
         <td><input type="radio" name="m_mem_ok" value="1" checked="checked">������ 
         <input type="radio" name="m_mem_ok" value="0">���Ǿ���<br>
         - ���ȸ������ �����Ͻø� mixxmix ȸ�� Ż��ñ����� �޸�ȸ������ ��ȯ���� ������, ������ ���������� Ż��ñ��� �����ϰ� �����˴ϴ�.<br>
         - ���� ���ȸ������ �����Ͻø� ���� ��� ������ �帳�ϴ�. (���������� ������ ���, 3������ ���ȸ���� �����ϼž� �մϴ�.)
         </td>
      </tr>
      <tr>
         <td colspan="2" align="left">
       <b> �߰�����</b>
         </td>
      </tr>
      <tr>
         <th>�������</th>
         <c:set var="m_sunmoon" value="${list.m_sunmoon}"/>
         <td>
         <input type="text" name="m_birth1" placeholder="��(4��)" size="4" maxlength="4" id="input_text" style="ime-mode:disabled;" onkeypress="return digit_check(event)" value="${list.m_birth1}">��
         <input type="text" name="m_birth2" size="2" maxlength="2" id="input_text" style="ime-mode:disabled;" onkeypress="return digit_check(event)" value="${list.m_birth2}">��
         <input type="text" name="m_birth3" size="2" maxlength="2" id="input_text" style="ime-mode:disabled;" onkeypress="return digit_check(event)" value="${list.m_birth3}">��
         <input type="radio" name="m_sunmoon" value="sun" checked="checked">��� <input type="radio" name="m_sunmoon" value="moon">����</td>
      </tr>
      <tr>
         <td colspan="2" align="center">
           <a href="javascript:check()">
           <img src="<%=request.getContextPath()%>/img/modify_bt.PNG"></a>
           <a href="modify.do"><img src="<%=request.getContextPath()%>/img/modify_reset.PNG"></a>
           <div align="right"><a href="javascript:delconfirm()"><img src="<%=request.getContextPath()%>/img/drop_member.PNG"></a></div>
         </td>
      </tr>
      </table>
      </c:forEach>
</form>
<script type="text/javascript" src="http://code.jquery.com/jquery-latest.min.js"></script> 
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
            
function checkString(str){
	   var allString="abcdefghijklnmopqrstuvwxyzABCDEFGHIJKLNMOPQRSTUVWXYZ0123456789" 
	   for (var i = 0; i < str.length; i++) {//���࿡ ���� ���̵� abc
	      s = str.charAt(i)//a
	      for (var j = 0; j < allString.length; j++) {
	         if(s==allString.charAt(j)){
	            break;
	         }
	         if(j==allString.length-1){
	            return false;
	            break;
	         }
	      }
	   }
	   return true
	}

	function checkLength(str) {
	   if(str.length<4 || str.length<=0 ){
	      return false;
	   }else{
	      return true;
	   }
	}
	
	//selected ��Ű��~~	
	var m_tel1 = '<c:out value="${m_tel1}"/>';
	$("#m_tel1").val(m_tel1).prop("selected", true);
	var m_hp1 = '<c:out value="${m_hp1}"/>';
	$("#m_hp1").val(m_hp1).prop("selected", true);
	var m_email2 = '<c:out value="${m_email2}"/>';
	$("#selectEmail").val(m_email2).prop("selected", true);
	//checked ��Ű��~
	var m_sms_ok = '<c:out value="${m_sms_ok}"/>';
	$('input[name="m_sms_ok"]').val([m_sms_ok]);
	var m_email_ok = '<c:out value="${m_email_ok}"/>';
	$('input[name="m_email_ok"]').val([m_email_ok]);
	var m_mem_ok = '<c:out value="${m_mem_ok}"/>';
	$('input[name="m_mem_ok"]').val([m_mem_ok]);
	var m_sunmoon = '<c:out value="${m_sunmoon}"/>';
	$('input[name="m_sunmoon"]').val([m_sunmoon]);
</script>
<script>//ȸ��Ż�� Ȯ���ϴ� �޼��� �߰� �ϴ°�
function delconfirm(){
	 if (!f.m_passwd.value){
         alert("��й�ȣ�� �Է��� �ּ���.")
         f.m_passwd.focus()
         return
      }
      if (!f.m_passwd1.value){
         alert("��й�ȣ Ȯ���� �Է��� �ּ���.")
         f.m_passwd1.focus()
         return
      }
      if (f.m_passwd1.value!=f.m_passwd.value){
         alert("��й�ȣ�� �ٽ� Ȯ�����ּ���.")
         f.m_passwd1.focus()
         return
      }
      var m_passwd = '<c:out value="${m_passwd}"/>';
      var m_num = '<c:out value="${m_num}"/>';
      if(f.m_passwd.value==m_passwd && f.m_passwd1.value==m_passwd){//DB�� ����� ��й�ȣ�� ������ 
    	  alert("���������� Ż��Ǿ����ϴ�.");
    	  location.href="member_delete.do?mode=del&num="+m_num;
      }else{
    	  alert("��й�ȣ�� �ٽ� Ȯ�����ּ���.");
      }
}
</script>
</div>
<%@ include file="../../../bottom.jsp"%>