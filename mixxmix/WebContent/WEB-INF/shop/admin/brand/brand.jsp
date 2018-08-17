<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ include file="../top.jsp" %>
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
            if (f.b_bn.value==""){
               alert("사업자번호 입력해 주세요!!")
               f.b_bn.focus()
               return
            }
            if (!f.b_banknum.value){
               alert("계좌번호를 입력해 주세요!!")
               f.b_banknum.focus()
               return
            }
            if (!f.b_name.value){
               alert("거래처명을 입력해 주세요!!")
               f.b_name.focus()
               return
            }
            if (!f.b_addr1.value){
               alert("우편번호를 입력해 주세요!!")
               f.b_addr1.focus()
               return
            }
            if (!f.b_addr2.value){
               alert("주소를 입력해 주세요!!")
               f.b_addr2.focus()
               return
            }
            if (!f.b_addr3.value){
               alert("주소를 입력해 주세요!!")
               f.b_addr3.focus()
               return
            }
            if (!f.b_tel1.value){
               alert("전화를 입력해 주세요!!")
               f.b_tel1.focus()
               return
            }
            if (!f.b_tel2.value){
               alert("전화를 입력해 주세요!!")
               f.b_tel2.focus()
               return
            }
            if (!f.b_tel3.value){
               alert("전화를 입력해 주세요!!")
               f.b_tel3.focus()
               return
            if(isNaN(f.b_tel2.value)){
               alert("전화번호는 숫자만 입력 가능합니다!")
               f.b_tel2.focus()
               return
            }if(isNaN(f.b_tel3.value)){
               alert("전화번호는 숫자만 입력 가능합니다!")
               f.b_tel3.focus()
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
    $('input[name="b_tel2"]').keyup(function(){
       var b_tel2 = $(this).val();
       b_tel2 = b_tel2.replace(/[^0-9]/g,"");
    })
    
});
</script>
<div align="center">
<form name="f" action="brand_insert.pro" method="post">
   <table width="90%">
      <tr>
         <td align="center"><h2>거래처 등록</h2></td>
      </tr>
   </table>
   <table cellpadding="10" class="join_page" width="90%">
      <tr>
         <td colspan="2" align="left">
         <b>기본정보</b>
         </td>
      </tr>
      <tr>
         <th>거래처 사업자번호</th>
	      <td ><input type="text" name="b_bn">
	      </td>      
      </tr>
      <tr>
         <th>거래처명</th>
         <td><input type="text" name="b_name"></td>
      </tr>
      <tr>
         <th>거래처 계좌번호</th>
         <td><input type="text" name="b_banknum"></td>
      </tr>
      <tr>
         <th>주소</th>
         <td>
         <input type="text" name="b_addr1" class="read" size="10" readOnly><a href="javascript:openZipSearch()"><img src="<%=request.getContextPath()%>/img/우편번호.PNG" id="postnum"><br></a>
         <input type="text" name="b_addr2" class="read" size="50" readOnly> 기본주소<br>
         <input type="text" name="b_addr3" size="50"> 나머지주소
         </td>
      </tr>
      <tr>
         <th>일반전화</th>
         <td><select name="b_tel1">
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
         -<input type="text" style="ime-mode:disabled;" onkeypress="return digit_check(event)" name="b_tel2" size="4" maxlength="4" id="input_text"/>
         -<input type="text" style="ime-mode:disabled;" onkeypress="return digit_check(event)" name="b_tel3" size="4" maxlength="4" id="input_text"/></td> 
      </tr>
      <tr>
         <td colspan="2" align="center">
           <input type="button" value="브랜드등록" onclick="javascript:check()">
           <input type="button" value="취소" onclick="brand_insert.pro">
         </td>
      </tr>
      </table>
</form>
</div>
<%@ include file="../bottom.jsp" %>