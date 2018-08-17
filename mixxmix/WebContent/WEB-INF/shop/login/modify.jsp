<!-- 2018-08-08 15:00 추가추가 -->
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
            $('[name=m_addr1]').val(data.zonecode); // 우편번호 (5자리)
            $('[name=m_addr2]').val(data.address);
            $('[name=m_addr3]').val(data.buildingName);
         }
      }).open();
   }
</script>
<script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
<script>
    $(document).ready(function(){
    	   $("#passwd1").keyup(function(){//비밀번호 확인
    		   var userPasswd = $("#passwd1").val()
		    	      if($("#passwd1").val()!=$("#passwd").val()){
		    	         $("#passwdfont").text("비밀번호가 일치하지 않습니다")
		    	      }else{
		    	         $("#passwdfont").text('')
		          }
     	     })
    	   
    	   $("#passwd").keyup(function () {
    	      var userPasswd = $("#passwd").val()
    	      var checkLen = checkLength(userPasswd)
    	      if(checkLen){//4글자 이상이면 if문 들어와
    	    	  var check = checkString(userPasswd)    
    	    	  if(check){
	    	         if($("#passwd1").val()!=$("#passwd").val()){
	    	            $("#passwdfont").text("비밀번호가 일치하지 않습니다")
	    	         }else{
	    	            $("#passwdfont").text('')
	    	         }
    	    	  }else{
    	    		  $("#passwdfont").html('비밀번호를 형식을 확인해주세요')
    	    	  }
    	      }else{
    	    	  $("#passwdfont").text("비밀번호가 너무 짧습니다")
    	      }
    	   })
    	   
    	   $("#id").keyup(function() {
    	      var userId = $("#id").val()
    	      var checkLen = checkLength(userId)
    	      if(checkLen){//4글자 이상이면 if문 들어와
    	         var check = checkString(userId)
    	         if(check){//특수문자 없는지 확인
    	        	 $("#idfont").html("")
        	         var array = new Array()
        	         <c:forEach items="${list}" var="result">
        	            array.push("${result.m_id}")
        	         </c:forEach>
        	         if(array.length==0){
        	        	 $("#idfont").css("color","green")
    	                  $("#idfont").html("사용가능한 아이디 입니다")
        	         }else{
    	    	         for (var i = 0; i < array.length; i++) {
    	    	               if($("#id").val()==array[i]){
    	    	                  $("#idfont").css("color","red")
    	    	                  $("#idfont").html("이미 존재하는 아이디 입니다")
    	    	                  return 
    	    	               }else {
    	    	                  $("#idfont").css("color","green")
    	    	                  $("#idfont").html("사용가능한 아이디 입니다")
    	    	                  continue;
    	    	               }
    	    	         }
        	         }
    	         }else{//특수문자가 있으면
    	        	 $("#idfont").css("color","red")
        	         $("#idfont").html("아이디를 다시 확인해주세요")
    	         }
    	      }else{//4글자 이상이 아니면
    	         $("#idfont").css("color","red")
    	         $("#idfont").html("아이디를 다시 확인해주세요")
    	      }
    	   })
    	})
</script>
<script type="text/javascript">
         function check(){
            if (f.m_id.value==""){
               alert("아이디를 입력해 주세요!!")
               f.m_id.focus()
               return
            }
            if (!f.m_passwd.value){
               alert("비밀번호를 입력해 주세요!!")
               f.m_passwd.focus()
               return
            }
            if (!f.m_passwd1.value){
               alert("비밀번호 확인을 입력해 주세요!!")
               f.m_passwd1.focus()
               return
            }
            if (f.m_passwd1.value!=f.m_passwd.value){
               alert("비밀번호를 다시 확인해주세요!!")
               f.m_passwd1.focus()
               return
            }
            if (!f.m_name.value){
               alert("이름을 입력해 주세요!!")
               f.m_name.focus()
               return
            }
            if (!f.m_addr1.value){
               alert("우편번호를 입력해 주세요!!")
               f.m_addr1.focus()
               return
            }
            if (!f.m_addr2.value){
               alert("주소를 입력해 주세요!!")
               f.m_addr2.focus()
               return
            }
            if (!f.m_addr3.value){
               alert("주소를 입력해 주세요!!")
               f.m_addr3.focus()
               return
            }
            if (!f.m_hp1.value){
               alert("휴대전화를 입력해 주세요!!")
               f.m_hp1.focus()
               return
            }
            if (!f.m_hp2.value){
               alert("휴대전화를 입력해 주세요!!")
               f.m_hp2.focus()
               return
            }
            if (!f.m_hp3.value){
               alert("휴대전화를 입력해 주세요!!")
               f.m_hp3.focus()
               return
            }
            if (f.m_email1.value!=""){
               if(!f.m_email2.value){
                  alert("이메일 형식이 올바르지 않습니다!!")
                  f.m_email1.focus()
                  return   
               }
            }
            if(isNaN(f.m_tel2.value)){
               alert("전화번호는 숫자만 입력 가능합니다!")
               f.m_tel2.focus()
               return
            }if(isNaN(f.m_tel3.value)){
               alert("전화번호는 숫자만 입력 가능합니다!")
               f.m_tel3.focus()
               return
            }
            if(isNaN(f.m_hp2.value)){
               alert("전화번호는 숫자만 입력 가능합니다!")
               f.m_hp2.focus()
               return
            }
            if(isNaN(f.m_hp3.value)){
               alert("전화번호는 숫자만 입력 가능합니다!")
               f.m_hp3.focus()
               return
            }
            if(isNaN(f.m_birth1.value)){
               alert("생년월일은 숫자만 입력 가능합니다!")
               f.m_birth1.focus()
               return
            }
            if(isNaN(f.m_birth2.value)){
               alert("생년월일은 숫자만 입력 가능합니다!")
               f.m_birth2.focus()
               return
            }
            if(isNaN(f.m_birth3.value)){
               alert("생년월일은 숫자만 입력 가능합니다!")
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
            alert('제한길이 초과');
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
<c:set var="m_num" value="${list.m_num}"/><!-- 회원탈퇴할때 m_num값 넘기려고~ -->
<input type="hidden" name="m_num" value="${list.m_num}">
   <table width="90%">
      <tr align="center">
         <td colspan="2"><h2>회원 정보 수정</h2></td>
      </tr>
      <tr align="center" valign="middle">
			<td align="center">
				<img src="<%=request.getContextPath()%>/img/mg_img_LV.1.jpg">
			</td>
			<td align="left">
				저희 쇼핑몰을 이용해주셔서 감사합니다. ${list.m_name}님은 [LV.${list.m_level}]회원 이십니다.<br>
				10,000이상 구매시 1%를 추가 할인 받으실 수 있습니다.
			</td>
		</tr>
   </table>
   <table cellpadding="10" class="join_page" width="90%">
      <tr>
         <td colspan="2" align="left">
         <b>기본정보</b>
         </td>
      </tr>
      <tr>
         <th>아이디</th>
	      <td><input type="text" name="m_id" id="id" maxlength="16" value="${list.m_id}" readOnly>(영문 대소문자/숫자,4~16자)
	      <font name = "check" size="2" color="red" id="idfont"></font>
	      </td>      
      </tr>
      <tr>
         <th>비밀번호</th>
         <c:set var="m_passwd" value="${list.m_passwd}"/><!-- DB에 저장된 비밀번호 -->
         <td><input type="password" name="m_passwd" id="passwd" maxlength="16"> (영문 대소문자/숫자 4자~16자)</td>
      </tr>
      <tr>
         <th>비밀번호 확인</th>
         <td><input type="password" name="m_passwd1" id="passwd1" maxlength="16"><font name="check" size="2" color="red" id="passwdfont"></font></td>
      </tr>
      <tr>
         <th>이름</th>
         <td><input type="text" name="m_name" value="${list.m_name}" readOnly></td>
      </tr>
      <tr>
         <th>주소</th>
         <td>
         <input type="text" name="m_addr1" class="read" size="10" value="${list.m_addr1}" readOnly><a href="javascript:openZipSearch()"><img src="<%=request.getContextPath()%>/img/우편번호.PNG" id="postnum"><br></a>
         <input type="text" name="m_addr2" class="read" size="50" value="${list.m_addr2}" readOnly> 기본주소<br>
         <input type="text" name="m_addr3" value="${list.m_addr3}" size="50"> 나머지주소
         </td>
      </tr>
      <tr>
         <th>일반전화</th>
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
         <th>휴대전화</th>
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
         <th>SMS수신여부</th>
         <c:set var="m_sms_ok" value="${list.m_sms_ok}"/>
         <td><input type="radio" name="m_sms_ok" value="1" checked="checked">동의함
         <input type="radio" name="m_sms_ok" value="0">동의안함<br>
         쇼핑몰에서 제공하는 유익한 이벤트 소식을 SMS로 받으실 수 있습니다.</td>
      </tr>
      <tr>
        <th>이메일</th>
        <c:set var="m_email2" value="${list.m_email2}"/>
         <td><input type="text" name="m_email1" id="m_email1" style="width:100px" value="${list.m_email1}"> @
         <input type="text" name="m_email2" id="m_email2" class="read" style="width:100px;" value="${list.m_email2}" readOnly>
         <select style="width:130px;margin-right:10px" name="selectEmail" id="selectEmail">
          <option>=선택하세요=</option>
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
          <option value="1">직접입력</option>
         </select></td>
      </tr>
      <tr>
         <th>이메일 수신여부</th>
         <c:set var="m_email_ok" value="${list.m_email_ok}"/>
         <td><input type="radio" name="m_email_ok" value="1" checked="checked">동의함
         <input type="radio" name="m_email_ok" value="0">동의안함<br>
         쇼핑몰에서 제공하는 유익한 이벤트 소식을 이메일로 받으실 수 있습니다.</td>
      </tr>
      <tr>
         <th>평생회원</th>
         <c:set var="m_mem_ok" value="${list.m_mem_ok}"/>
         <td><input type="radio" name="m_mem_ok" value="1" checked="checked">동의함 
         <input type="radio" name="m_mem_ok" value="0">동의안함<br>
         - 평생회원으로 가입하시면 mixxmix 회원 탈퇴시까지는 휴면회원으로 전환되지 않으며, 고객님의 개인정보가 탈퇴시까지 안전하게 보관됩니다.<br>
         - 지금 평생회원으로 가입하시면 무료 배송 쿠폰을 드립니다. (쿠폰혜택을 받으신 경우, 3개월간 평생회원을 유지하셔야 합니다.)
         </td>
      </tr>
      <tr>
         <td colspan="2" align="left">
       <b> 추가정보</b>
         </td>
      </tr>
      <tr>
         <th>생년월일</th>
         <c:set var="m_sunmoon" value="${list.m_sunmoon}"/>
         <td>
         <input type="text" name="m_birth1" placeholder="년(4자)" size="4" maxlength="4" id="input_text" style="ime-mode:disabled;" onkeypress="return digit_check(event)" value="${list.m_birth1}">년
         <input type="text" name="m_birth2" size="2" maxlength="2" id="input_text" style="ime-mode:disabled;" onkeypress="return digit_check(event)" value="${list.m_birth2}">월
         <input type="text" name="m_birth3" size="2" maxlength="2" id="input_text" style="ime-mode:disabled;" onkeypress="return digit_check(event)" value="${list.m_birth3}">일
         <input type="radio" name="m_sunmoon" value="sun" checked="checked">양력 <input type="radio" name="m_sunmoon" value="moon">음력</td>
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
<script type="text/javascript"> //이메일 입력방식 선택 
$('#selectEmail').change(function(){ 
   $("#selectEmail option:selected").each(function () { 
      if($(this).val()== '1'){ //직접입력일 경우 
         $("#m_email2").val(''); //값 초기화 
         $("#m_email2").attr("readOnly",false); //활성화 
         }else{ //직접입력이 아닐경우 
            $("#m_email2").val($(this).text()); //선택값 입력 
            $("#m_email2").attr("readOnly",true); //비활성화 
            } }); }); 
            
function checkString(str){
	   var allString="abcdefghijklnmopqrstuvwxyzABCDEFGHIJKLNMOPQRSTUVWXYZ0123456789" 
	   for (var i = 0; i < str.length; i++) {//만약에 내가 아이디를 abc
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
	
	//selected 시키기~~	
	var m_tel1 = '<c:out value="${m_tel1}"/>';
	$("#m_tel1").val(m_tel1).prop("selected", true);
	var m_hp1 = '<c:out value="${m_hp1}"/>';
	$("#m_hp1").val(m_hp1).prop("selected", true);
	var m_email2 = '<c:out value="${m_email2}"/>';
	$("#selectEmail").val(m_email2).prop("selected", true);
	//checked 시키기~
	var m_sms_ok = '<c:out value="${m_sms_ok}"/>';
	$('input[name="m_sms_ok"]').val([m_sms_ok]);
	var m_email_ok = '<c:out value="${m_email_ok}"/>';
	$('input[name="m_email_ok"]').val([m_email_ok]);
	var m_mem_ok = '<c:out value="${m_mem_ok}"/>';
	$('input[name="m_mem_ok"]').val([m_mem_ok]);
	var m_sunmoon = '<c:out value="${m_sunmoon}"/>';
	$('input[name="m_sunmoon"]').val([m_sunmoon]);
</script>
<script>//회원탈퇴 확인하는 메세지 뜨게 하는거
function delconfirm(){
	 if (!f.m_passwd.value){
         alert("비밀번호를 입력해 주세요.")
         f.m_passwd.focus()
         return
      }
      if (!f.m_passwd1.value){
         alert("비밀번호 확인을 입력해 주세요.")
         f.m_passwd1.focus()
         return
      }
      if (f.m_passwd1.value!=f.m_passwd.value){
         alert("비밀번호를 다시 확인해주세요.")
         f.m_passwd1.focus()
         return
      }
      var m_passwd = '<c:out value="${m_passwd}"/>';
      var m_num = '<c:out value="${m_num}"/>';
      if(f.m_passwd.value==m_passwd && f.m_passwd1.value==m_passwd){//DB에 저장된 비밀번호와 같으면 
    	  alert("정상적으로 탈퇴되었습니다.");
    	  location.href="member_delete.do?mode=del&num="+m_num;
      }else{
    	  alert("비밀번호를 다시 확인해주세요.");
      }
}
</script>
</div>
<%@ include file="../../../bottom.jsp"%>