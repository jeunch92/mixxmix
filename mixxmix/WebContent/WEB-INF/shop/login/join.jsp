<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ include file="../../../top.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<c:set var="list" value="${list}"/>
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
            }/* if($("#idfont").val()=="아이디를 다시 확인해주세요" || $("#idfont").val()=="이미 존재하는 아이디 입니다"){
            	alert("아이디를 다시 확인해 주세요")
            	f.m_id.focus()
            	return
            } */
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
            if (f.use_ok[1].checked){
               alert("이용약관에 동의하셔야 합니다.")
               f.use_ok.focus()
               return
            }
            if (f.get_ok[1].checked){
               alert("개인정보 수집약관에 동의하셔야 합니다!!")
               f.get_ok.focus()
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
<form name="f" action="member_insert.do" method="post">
   <table width="90%">
      <tr>
         <td align="center"><h2>회원가입</h2></td>
      </tr>
   </table>
   <table cellpadding="10" class="join_page" width="90%">
      <tr>
         <th bgcolor="#F8EFFB">회원구분</th>
         <td>개인회원</td>
      </tr>
      <tr>
         <td colspan="2" align="left">
         <b>기본정보</b>
         </td>
      </tr>
      <tr>
         <th>아이디</th>
	      <td ><input type="text" name="m_id" id="id" maxlength="16">(영문 대소문자/숫자,4~16자)
	      <font name = "check" size="2" color="red" id="idfont"></font>
	      </td>      
      </tr>
      <tr>
         <th>비밀번호</th>
         <td><input type="password" name="m_passwd" id="passwd" maxlength="16"> (영문 대소문자/숫자 4자~16자)</td>
      </tr>
      <tr>
         <th>비밀번호 확인</th>
         <td><input type="password" name="m_passwd1" id="passwd1" maxlength="16"><font name="check" size="2" color="red" id="passwdfont"></font></td>
      </tr>
      <tr>
         <th>이름</th>
         <td><input type="text" name="m_name"></td>
      </tr>
      <tr>
         <th>주소</th>
         <td>
         <input type="text" name="m_addr1" class="read" size="10" readOnly><a href="javascript:openZipSearch()"><img src="<%=request.getContextPath()%>/img/우편번호.PNG" id="postnum"><br></a>
         <input type="text" name="m_addr2" class="read" size="50" readOnly> 기본주소<br>
         <input type="text" name="m_addr3" size="50"> 나머지주소
         </td>
      </tr>
      <tr>
         <th>일반전화</th>
         <td><select name="m_tel1">
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
         -<input type="text" style="ime-mode:disabled;" onkeypress="return digit_check(event)" name="m_tel2" size="4" maxlength="4" id="input_text"/>
         -<input type="text" style="ime-mode:disabled;" onkeypress="return digit_check(event)" name="m_tel3" size="4" maxlength="4" id="input_text"/></td> 
      </tr>
      <tr>
         <th>휴대전화</th>
         <td><select name="m_hp1">
         <option value="010">010
         <option value="011">011
         <option value="016">016
         <option value="017">017
         <option value="018">018
         </select>
         -<input type="text" style="ime-mode:disabled;" onkeypress="return digit_check(event)" name="m_hp2" size="4" maxlength="4" id="input_text"/>
       -<input type="text" style="ime-mode:disabled;" onkeypress="return digit_check(event)" name="m_hp3" size="4" maxlength="4" id="input_text"/></td>
      </tr>
      <tr>
         <th>SMS수신여부</th>
         <td><input type="radio" name="m_sms_ok" value="1" checked="checked">동의함
         <input type="radio" name="m_sms_ok" value="0">동의안함<br>
         쇼핑몰에서 제공하는 유익한 이벤트 소식을 SMS로 받으실 수 있습니다.</td>
      </tr>
      <tr>
        <th>이메일</th>
         <td><input type="text" name="m_email1" id="m_email1" style="width:100px"> @
         <input type="text" name="m_email2" id="m_email2" class="read" style="width:100px;" readOnly>
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
         <td><input type="radio" name="m_email_ok" value="1" checked="checked">동의함
         <input type="radio" name="m_email_ok" value="0">동의안함<br>
         쇼핑몰에서 제공하는 유익한 이벤트 소식을 이메일로 받으실 수 있습니다.</td>
      </tr>
      <tr>
         <th>평생회원</th>
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
         <td>
         <input type="text" name="m_birth1" placeholder="년(4자)" size="4" maxlength="4" id="input_text" style="ime-mode:disabled;" onkeypress="return digit_check(event)">년
         <input type="text" name="m_birth2" size="2" maxlength="2" id="input_text" style="ime-mode:disabled;" onkeypress="return digit_check(event)">월
         <input type="text" name="m_birth3" size="2" maxlength="2" id="input_text" style="ime-mode:disabled;" onkeypress="return digit_check(event)">일
         <input type="radio" name="m_sunmoon" value="sun" checked="checked">양력 <input type="radio" name="m_sunmoon" value="moon">음력</td>
      </tr>
      <tr>
         <th >
         이용약관동의<br>
         </th>
         <td>
            <textarea rows="10" cols="100">
               제1조(목적)이 약관은 믹시티(전자상거래 사업자)가 운영하는 MIXXMIX(이하 “몰”이라 한다)에서 제공하는 인터넷 관련 서비스(이하 “서비스”라 한다)를 이용함에 있어 사이버 몰과 이용자의 권리.의무및 책임사항을 규정함을 목적으로 합니다.
               ※「PC통신, 무선 등을 이용하는 전자상거래에 대해서도 그 성질에 반하지 않는 한 이 약관을 준용합니다.」
               
               제2조(정의)
            ① “몰”이란 믹시티가 재화 또는 용역(이하 “재화 등”이라 함)을 이용자에게 제공하기 위하여 컴퓨터 등 정보통신설비를 이용하여 재화 등을 거래할 수 있도록 설정한 가상의 영업장을 말하며, 아울러 사이버몰을 운영하는 사업자의 의미로도 사용합니다.
            ② “이용자”란 “몰”에 접속하여 이 약관에 따라 “몰”이 제공하는 서비스를 받는 회원 및 비회원을 말합니다.
            ③ ‘회원’이라 함은 “몰”에 (삭제) 회원등록을 한 자로서, 계속적으로 “몰”이 제공하는 서비스를 이용할 수 있는 자를 말합니다.
            ④ ‘비회원’이라 함은 회원에 가입하지 않고 “몰”이 제공하는 서비스를 이용하는 자를 말합니다.

               제3조 (약관 등의 명시와 설명 및 개정) 
            ① “몰”은 이 약관의 내용과 상호 및 대표자 성명, 영업소 소재지 주소(소비자의 불만을 처리할 수 있는 곳의 주소를 포함), 전화번호.모사전송번호.전자우편주소, 사업자등록번호, 통신판매업 신고번호, 개인정보보호책임자등을 이용자가 쉽게 알 수 있도록 00 사이버몰의 초기 서비스화면(전면)에 게시합니다. 다만, 약관의 내용은 이용자가 연결화면을 통하여 볼 수 있도록 할 수 있습니다.
            ② “몰은 이용자가 약관에 동의하기에 앞서 약관에 정하여져 있는 내용 중 청약철회.배송책임.환불조건 등과 같은 중요한 내용을 이용자가 이해할 수 있도록 별도의 연결화면 또는 팝업화면 등을 제공하여 이용자의 확인을 구하여야 합니다.
            ③ “몰”은 「전자상거래 등에서의 소비자보호에 관한 법률」, 「약관의 규제에 관한 법률」, 「전자문서 및 전자거래기본법」, 「전자금융거래법」, 「전자서명법」, 「정보통신망 이용촉진 및 정보보호 등에 관한 법률」, 「방문판매 등에 관한 법률」, 「소비자기본법」 등 관련 법을 위배하지 않는 범위에서 이 약관을 개정할 수 있습니다.
            ④ “몰”이 약관을 개정할 경우에는 적용일자 및 개정사유를 명시하여 현행약관과 함께 몰의 초기화면에 그 적용일자 7일 이전부터 적용일자 전일까지 공지합니다. 다만, 이용자에게 불리하게 약관내용을 변경하는 경우에는 최소한 30일 이상의 사전 유예기간을 두고 공지합니다. 이 경우 "몰“은 개정 전 내용과 개정 후 내용을 명확하게 비교하여 이용자가 알기 쉽도록 표시합니다. 
            ⑤ “몰”이 약관을 개정할 경우에는 그 개정약관은 그 적용일자 이후에 체결되는 계약에만 적용되고 그 이전에 이미 체결된 계약에 대해서는 개정 전의 약관조항이 그대로 적용됩니다. 다만 이미 계약을 체결한 이용자가 개정약관 조항의 적용을 받기를 원하는 뜻을 제3항에 의한 개정약관의 공지기간 내에 “몰”에 송신하여 “몰”의 동의를 받은 경우에는 개정약관 조항이 적용됩니다.
            ⑥ 이 약관에서 정하지 아니한 사항과 이 약관의 해석에 관하여는 전자상거래 등에서의 소비자보호에 관한 법률, 약관의 규제 등에 관한 법률, 공정거래위원회가 정하는 전자상거래 등에서의 소비자 보호지침 및 관계법령 또는 상관례에 따릅니다.
            </textarea><br>
            이용약관에 동의하십니까? <input type="radio" name="use_ok" value="1">동의함
            <input type="radio" name="use_ok" value="0" checked="checked">동의안함
         </td>
      </tr>
      <tr>
         <th >
            개인정보 수집 및 이용동의<br>
         </th>
         <td>
            <textarea rows="10" cols="100">
              ■ 수집하는 개인정보 항목 및 수집방법

가. 수집하는 개인정보의 항목

o 회사는 회원가입, 상담, 서비스 신청 등을 위해 아래와 같은 개인정보를 수집하고 있습니다.

- 회원가입시 : 이름 , 생년월일 , 성별 , 로그인ID , 비밀번호 , 자택 전화번호 , 휴대전화번호 , 이메일 , 14세미만 가입자의 경우 법정대리인의 정보

- 서비스 신청시 : 주소, 결제 정보

o 서비스 이용 과정이나 사업 처리 과정에서 서비스이용기록, 접속로그, 쿠키, 접속 IP, 결제 기록, 불량이용 기록이 생성되어 수집될 수 있습니다.

나. 수집방법

- 홈페이지, 서면양식, 게시판, 이메일, 이벤트 응모, 배송요청, 전화, 팩스, 생성 정보 수집 툴을 통한 수집

■ 개인정보의 수집 및 이용목적

회사는 수집한 개인정보를 다음의 목적을 위해 활용합니다.

o 서비스 제공에 관한 계약 이행 및 서비스 제공에 따른 요금정산

콘텐츠 제공 , 구매 및 요금 결제 , 물품배송 또는 청구지 등 발송 , 금융거래 본인 인증 및 금융 서비스

o 회원 관리

회원제 서비스 이용에 따른 본인확인 , 개인 식별 , 불량회원의 부정 이용 방지와 비인가 사용 방지 , 가입 의사 확인 , 연령확인 , 만14세 미만 아동 개인정보 수집 시 법정 대리인 동의여부 확인, 불만처리 등 민원처리 , 고지사항 전달

o 마케팅 및 광고에 활용

이벤트 등 광고성 정보 전달 , 접속 빈도 파악 또는 회원의 서비스 이용에 대한 통계

■ 개인정보의 보유 및 이용기간

원칙적으로, 개인정보 수집 및 이용목적이 달성된 후에는 해당 정보를 지체 없이 파기합니다. 단, 다음의 정보에 대해서는 아래의 이유로 명시한 기간 동안 보존합니다.

가. 회사 내부방침에 의한 정보보유 사유

 회원이 탈퇴한 경우에도 불량회원의 부정한 이용의 재발을 방지, 분쟁해결 및 수사기관의 요청에 따른 협조를 위하여, 이용계약 해지일로부터 oo년간 회원의 정보를 보유할 수 있습니다.

나. 관련 법령에 의한 정보 보유 사유 

전자상거래등에서의소비자보호에관한법률 등 관계법령의 규정에 의하여 보존할 필요가 있는 경우 회사는 아래와 같이 관계법령에서 정한 일정한 기간 동안 회원정보를 보관합니다.

o 계약 또는 청약철회 등에 관한 기록

-보존이유 : 전자상거래등에서의소비자보호에관한법률

-보존기간 : 5년

o 대금 결제 및 재화 등의 공급에 관한 기록

-보존이유: 전자상거래등에서의소비자보호에관한법률

-보존기간 : 5년 

o 소비자 불만 또는 분쟁처리에 관한 기록

-보존이유 : 전자상거래등에서의소비자보호에관한법률

-보존기간 : 3년 

o 로그 기록 

-보존이유: 통신비밀보호법

-보존기간 : 3개월 
            </textarea><br>
            개인정보 수집 및 이용에 동의하십니까? <input type="radio" name="get_ok" value="1">동의함
            <input type="radio" name="get_ok" value="0" checked="checked">동의안함
         </td>
      </tr>
      <tr>
         <td colspan="2" align="center">
           <a href="javascript:check()">
           <img src="<%=request.getContextPath()%>/img/join.PNG"></a>
           <a href="member_insert.do"><img src="<%=request.getContextPath()%>/img/join_reset.PNG"></a>
         </td>
      </tr>
      </table>
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
            </script>
</div>
<%@ include file="../../../bottom.jsp"%>