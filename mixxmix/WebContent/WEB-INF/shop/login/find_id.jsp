<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!-- <html>
<head>
	<title>아이디찾기</title>
	<link rel="stylesheet" type="text/css" href="style.css">    
</head> -->
<%@ include file="../../../top.jsp" %>   
<script type="text/javascript">
	function radio_chk() {
		var value1 = document.f.radio1.value;
		if(value1=='email'){
			document.getElementById('view13').style.display = ''
			document.getElementById('view14').style.display = 'none'
		}
		if(value1=='phone'){
			document.getElementById('view13').style.display = 'none'
			document.getElementById('view14').style.display = ''
		}
	}
	function radio_chk2() {
		var value2 = document.f.radio2.value;
		if(value2=='email'){
			document.getElementById('view23').style.display = ''
			document.getElementById('view24').style.display = 'none'
		}
		if(value2=='phone'){
			document.getElementById('view23').style.display = 'none'
			document.getElementById('view24').style.display = ''
		}
	}
	function radio_chk3(){
		var value3 = document.f.radio3.value;
		switch(value3){
		case "corp_num" :
			document.getElementById('view33').style.display = 'none'
			document.getElementById('view34').style.display = ''
			document.getElementById('view35').style.display = 'none'
			break
		case "email" :
			document.getElementById('view33').style.display = ''
			document.getElementById('view34').style.display = 'none'
			document.getElementById('view35').style.display = 'none'
			break
		case "phone" :
			document.getElementById('view33').style.display = 'none'
			document.getElementById('view34').style.display = 'none'
			document.getElementById('view35').style.display = ''
			break
		}
	}
	function radio_chk4(){
		var value4 = document.f.radio4.value;
		switch(value4){
		case "fore_num" :
			document.getElementById('view43').style.display = 'none'
			document.getElementById('view44').style.display = ''
			document.getElementById('view45').style.display = 'none'
			break
		case "email" :
			document.getElementById('view43').style.display = ''
			document.getElementById('view44').style.display = 'none'
			document.getElementById('view45').style.display = 'none'
			break
		case "phone" :
			document.getElementById('view43').style.display = 'none'
			document.getElementById('view44').style.display = 'none'
			document.getElementById('view45').style.display = ''
			break
		}
	}
	function change(style) {
		if(style=='indi'){
			for(var i=1; i<=4; i++){
				for(var j=1; j<=4; j++){
					if(i==1){
						document.getElementById('view'+i+j).style.display = ''
					}else{
						document.getElementById('view'+i+j).style.display = 'none'
					}
					document.getElementById('view35').style.display = 'none'
					document.getElementById('view45').style.display = 'none'
					document.getElementById('view14').style.display = 'none'
				}
			}
			document.getElementById("ra1").checked = true;
		}
		if(style=='indibuis'){
			for(var i=1; i<=4; i++){
				for(var j=1; j<=4; j++){
					if(i==2){
						document.getElementById('view'+i+j).style.display = ''
					}else{
						document.getElementById('view'+i+j).style.display = 'none'
					}
					document.getElementById('view35').style.display = 'none'
					document.getElementById('view45').style.display = 'none'
					document.getElementById('view24').style.display = 'none'
				}
			}
			document.getElementById("ra2").checked = true;
		}
		if(style=='corp'){
			for(var i=1; i<=4; i++){
				for(var j=1; j<=4; j++){
					if(i==3){
						document.getElementById('view'+i+j).style.display = ''
					}else{
						document.getElementById('view'+i+j).style.display = 'none'
					}
					document.getElementById('view34').style.display = 'none'
					document.getElementById('view35').style.display = 'none'
					document.getElementById('view45').style.display = 'none'
				}
			}
			document.getElementById("ra3").checked = true;
		}
		if(style=='fore'){
			for(var i=1; i<=4; i++){
				for(var j=1; j<=4; j++){
					if(i==4){
						document.getElementById('view'+i+j).style.display = ''
					}else{
						document.getElementById('view'+i+j).style.display = 'none'
					}
					document.getElementById('view44').style.display = 'none'
					document.getElementById('view45').style.display = 'none'
					document.getElementById('view35').style.display = 'none'
				}
			}
			document.getElementById("ra4").checked = true;
		}
	}
	function check(){
		var option = document.f.searchType.value
		switch(option){
		case "indi" :
			var value = document.f.radio1.value;
			if (f.m_name.value==""){
				alert("이름을 입력해 주세요!!")
				f.m_name.focus()
				return
			}
			if(value=="email"){
				if (f.m_email.value==""){
					alert("이메일을 입력해 주세요!!")
					f.m_email.focus()
					return
				}
			}
			if(value=="phone"){
				if (f.m_hp1.value==""){
					alert("휴대폰 번호를 입력해 주세요!!")
					f.m_hp1.focus()
					return
				}
				if (f.m_hp2.value==""){
					alert("휴대폰 번호를 입력해 주세요!!")
					f.m_hp2.focus()
					return
				}
				if (f.m_hp3.value==""){
					alert("휴대폰 번호를 입력해 주세요!!")
					f.m_hp3.focus()
					return
				}
			}
			break
		case "indibuis" :
			var value = document.f.radio2.value;
			if (f.indib_name.value==""){
				alert("이름을 입력해 주세요!!")
				f.indib_name.focus()
				return
			}
			if(value=="email"){
				if (f.indib_email.value==""){
					alert("이메일을 입력해 주세요!!")
					f.indib_email.focus()
					return
				}
			}
			if(value=="phone"){
				if (f.indib_hp1.value==""){
					alert("휴대폰 번호를 입력해 주세요!!")
					f.indib_hp1.focus()
					return
				}
				if (f.indib_hp2.value==""){
					alert("휴대폰 번호를 입력해 주세요!!")
					f.indib_hp2.focus()
					return
				}
				if (f.indib_hp3.value==""){
					alert("휴대폰 번호를 입력해 주세요!!")
					f.indib_hp3.focus()
					return
				}
			}
			break
		case "corp" :
			var value = document.f.radio3.value;
			if (f.corp_name.value==""){
				alert("법인명을 입력해 주세요!!")
				f.corp_name.focus()
				return
			}
			if(value=="email"){
				if (f.corp_email.value==""){
					alert("이메일을 입력해 주세요!!")
					f.corp_email.focus()
					return
				}
			}
			if(value=="corp_num"){
				if (f.corp_num1.value==""){
					alert("법인번호를 입력해 주세요!!")
					f.corp_num1.focus()
					return
				}
				if (f.corp_num2.value==""){
					alert("법인번호를 입력해 주세요!!")
					f.corp_num2.focus()
					return
				}
			}
			if(value=="phone"){
				if (f.corp_hp1.value==""){
					alert("휴대폰 번호를 입력해 주세요!!")
					f.corp_hp1.focus()
					return
				}
				if (f.corp_hp2.value==""){
					alert("휴대폰 번호를 입력해 주세요!!")
					f.corp_hp2.focus()
					return
				}
				if (f.corp_hp3.value==""){
					alert("휴대폰 번호를 입력해 주세요!!")
					f.corp_hp3.focus()
					return
				}
			}
			break
		case "fore" :
			var value = document.f.radio4.value;
			if (f.fore_name.value==""){
				alert("이름을 입력해 주세요!!")
				f.fore_name.focus()
				return
			}
			if(value=="email"){
				if (f.fore_email.value==""){
					alert("이메일을 입력해 주세요!!")
					f.fore_email.focus()
					return
				}
			}
			if(value=="fore_num"){
				if (f.fore_num1.value==""){
					alert("등록번호를 입력해 주세요!!")
					f.fore_num1.focus()
					return
				}
				if (f.fore_num2.value==""){
					alert("등록번호를 입력해 주세요!!")
					f.fore_num2.focus()
					return
				}
			}
			if(value=="phone"){
				if (f.fore_hp1.value==""){
					alert("휴대폰 번호를 입력해 주세요!!")
					f.fore_hp1.focus()
					return
				}
				if (f.fore_hp2.value==""){
					alert("휴대폰 번호를 입력해 주세요!!")
					f.fore_hp2.focus()
					return
				}
				if (f.fore_hp3.value==""){
					alert("휴대폰 번호를 입력해 주세요!!")
					f.fore_hp3.focus()
					return
				}
			}
			break
		}
		document.f.submit()
	}
</script>
<body>
	<div align="center">
		<form action="find_id.do" name="f" method="post">
			<font class="pt3">아이디 찾기</font><br>
			<font class="pt2">가입하신 방법에 따라 아이디 찾기가 가능합니다.<br>
			법인사업자 회원 또는 외국인 회원의 경우 법인명과 법인번호 또는 이름과 등록번호를 입력해 주세요.</font>
			<pre></pre>
			<table width="80%" class="m1">
				<tr>
					<td colspan="4">　</td>
				</tr>
				<tr>
					<td rowspan="5" width="35%"></td>
					<td class="pt4">· 회원유형</td>
					<td>
						<select name="searchType" id="searchType" class="pt4" onChange="change(this.options[this.selectedIndex].value)">
							<option value="indi" selected>　개인회원</option>
							<option value="indibuis">　개인 사업자회원</option>　　　　　　　　　
							<option value="corp">　법인 사업자회원</option>
							<option value="fore">　외국인회원</option>
						</select>
					</td>	
					<td rowspan="5" width="35%"></td>
				</tr>
				<!-- 개인회원 -->
				<tr valign="top" id="view11">
					<td></td>
					<td class="pt4">
						<input type="radio" id="ra1" name="radio1" value="email" checked="checked" onclick="radio_chk()">이메일
						<input type="radio" name="radio1" value="phone" onclick="radio_chk()">휴대폰번호
					</td>
				</tr>
				<tr id="view12">
					<td class="pt4">· 이름</td>
					<td><input type="text" size="30" name="m_name"></td>
				</tr>
				<tr id="view13">
					<td class="pt4">· 이메일로 찾기</td>
					<td><input type="text" size="30" name="m_email"></td>
				</tr>
				<tr id="view14" style="display:none;">
					<td class="pt4">· 휴대폰 번호로 찾기</td>
					<td>
						<input type='text' name='m_hp1' size='4'>
						- <input type='text' name='m_hp2' size='5'>
						- <input type='text' name='m_hp3' size='5'>
					</td>
				</tr>
				<!-- 개인 사업자회원 -->
				<tr valign="top" id="view21" style="display:none;">
					<td></td>
					<td class="pt4">
						<input type="radio" id="ra2" name="radio2" value="email" checked="checked" onclick="radio_chk2()">이메일
						<input type="radio" name="radio2" value="phone" onclick="radio_chk2()">휴대폰번호
					</td>
				</tr>
				<tr id="view22" style="display:none;">
					<td class="pt4">· 이름</td>
					<td><input type="text" size="30" name="indib_name"></td>
				</tr>
				<tr id="view23" style="display:none;">
					<td class="pt4">· 이메일로 찾기</td>
					<td><input type="text" size="30" name="indib_email"></td>
				</tr>
				<tr id="view24" style="display:none;">
					<td class="pt4">· 휴대폰 번호로 찾기</td>
					<td>
						<input type='text' name='indib_hp1' size='4'>
						- <input type='text' name='indib_hp2' size='5'>
						- <input type='text' name='indib_hp3' size='5'>
					</td>
				</tr>
				<!-- 법인 사업자회원 -->
				<tr valign="top" id="view31" style="display:none;">
					<td></td>
					<td class="pt4">
						<input type="radio" name="radio3" value="corp_num" onclick="radio_chk3()">법인번호
						<input type="radio" id="ra3" name="radio3" value="email" checked="checked" onclick="radio_chk3()">이메일
						<input type="radio" name="radio3" value="phone" onclick="radio_chk3()">휴대폰번호
					</td>
				</tr>
				<tr id="view32" style="display:none;">
					<td class="pt4">· 법인명</td>
					<td><input type="text" size="30" name="corp_name"></td>
				</tr>
				<tr id="view33" style="display:none;">
					<td class="pt4">· 이메일로 찾기</td>
					<td><input type="text" size="30" name="corp_email"></td>
				</tr>
				<tr id="view34" style="display:none;">
					<td class="pt4">· 법인번호로 찾기</td>
					<td>
						<input type='text' name='corp_num1' size='6'>
						- <input type='text' name='corp_num2' size='6'>
					</td>
				</tr>
				<tr id="view35" style="display:none;">
					<td class="pt4">· 휴대폰 번호로 찾기</td>
					<td>
						<input type='text' name='corp_hp1' size='4'>
						- <input type='text' name='corp_hp2' size='5'>
						- <input type='text' name='corp_hp3' size='5'>
					</td>
				</tr>
				<!-- 외국인회원 -->
				<tr valign="top" id="view41" style="display:none;">
					<td></td>
					<td class="pt4">
						<input type="radio" name="radio4" value="fore_num" onclick="radio_chk4()">등록번호
						<input type="radio" id="ra4" name="radio4" value="email" checked="checked" onclick="radio_chk4()">이메일
						<input type="radio" name="radio4" value="phone" onclick="radio_chk4()">휴대폰번호
					</td>
				</tr>
				<tr id="view42" style="display:none;">
					<td class="pt4">· 이름</td>
					<td><input type="text" size="30" name="fore_name"></td>
				</tr>
				<tr id="view43" style="display:none;">
					<td class="pt4">· 이메일로 찾기</td>
					<td><input type="text" size="30" name="fore_email"></td>
				</tr>
				<tr id="view44" style="display:none;">
					<td class="pt4">· 등록번호로 찾기</td>
					<td>
						<input type='text' name='fore_num1' size='6'>
						- <input type='text' name='fore_num2' size='6'>
					</td>
				</tr>
				<tr id="view45" style="display:none;">
					<td class="pt4">· 휴대폰 번호로 찾기</td>
					<td>
						<input type='text' name='fore_hp1' size='4'>
						- <input type='text' name='fore_hp2' size='5'>
						- <input type='text' name='fore_hp3' size='5'>
					</td>
				</tr>
				
				<tr align="center">
					<td colspan="2"><a href="javascript:check()"><img src="<%=request.getContextPath()%>/img/find_id_bt2.PNG"></a></td>
				</tr>
				<tr>
					<td colspan="4">　</td>
				</tr>
			</table>
		</form>
	</div>
</body>
<!-- </html> -->
<%@ include file="../../../bottom.jsp"%>