<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ include file="../../../top.jsp"%>      
<!-- <html>
<head>
	<title>��й�ȣã��</title>
	<link rel="stylesheet" type="text/css" href="style.css">    
</head> -->
<script type="text/javascript">
	function radio_chk() {
		var value1 = document.f.radio1.value;
		if(value1=='email'){
			document.getElementById('view14').style.display = ''
			document.getElementById('view15').style.display = 'none'
		}
		if(value1=='phone'){
			document.getElementById('view14').style.display = 'none'
			document.getElementById('view15').style.display = ''
		}
	}
	function radio_chk2() {
		var value2 = document.f.radio2.value;
		if(value2=='email'){
			document.getElementById('view24').style.display = ''
			document.getElementById('view25').style.display = 'none'
		}
		if(value2=='phone'){
			document.getElementById('view24').style.display = 'none'
			document.getElementById('view25').style.display = ''
		}
	}
	function radio_chk3(){
		var value3 = document.f.radio3.value;
		switch(value3){
		case "corp_num" :
			document.getElementById('view34').style.display = 'none'
			document.getElementById('view35').style.display = 'none'
			document.getElementById('view36').style.display = ''
			document.getElementById('view37').style.display = ''
			break
		case "email" :
			document.getElementById('view34').style.display = ''
			document.getElementById('view35').style.display = 'none'
			document.getElementById('view36').style.display = 'none'
			document.getElementById('view37').style.display = 'none'
			break
		case "phone" :
			document.getElementById('view34').style.display = 'none'
			document.getElementById('view35').style.display = ''
			document.getElementById('view36').style.display = 'none'
			document.getElementById('view37').style.display = 'none'
			break
		}
	}
	function radio_chk4(){
		var value4 = document.f.radio4.value;
		switch(value4){
		case "fore_num" :
			document.getElementById('view44').style.display = 'none'
			document.getElementById('view45').style.display = 'none'
			document.getElementById('view46').style.display = ''
			document.getElementById('view47').style.display = ''
			break
		case "email" :
			document.getElementById('view44').style.display = ''
			document.getElementById('view45').style.display = 'none'
			document.getElementById('view46').style.display = 'none'
			document.getElementById('view47').style.display = 'none'
			break
		case "phone" :
			document.getElementById('view44').style.display = 'none'
			document.getElementById('view45').style.display = ''
			document.getElementById('view46').style.display = 'none'
			document.getElementById('view47').style.display = 'none'
			break
		}
	}
	function change(style) {
		if(style=='indi'){
			for(var i=1; i<=4; i++){
				for(var j=1; j<=5; j++){
					if(i==1){
						document.getElementById('view'+i+j).style.display = ''
					}else{
						document.getElementById('view'+i+j).style.display = 'none'
					}
					document.getElementById('view15').style.display = 'none'
					document.getElementById('view36').style.display = 'none'
					document.getElementById('view37').style.display = 'none'
					document.getElementById('view46').style.display = 'none'
					document.getElementById('view47').style.display = 'none'
				}
			}
			document.getElementById("ra1").checked = true;
		}
		if(style=='indibuis'){
			for(var i=1; i<=4; i++){
				for(var j=1; j<=5; j++){
					if(i==2){
						document.getElementById('view'+i+j).style.display = ''
					}else{
						document.getElementById('view'+i+j).style.display = 'none'
					}
					document.getElementById('view25').style.display = 'none'
					document.getElementById('view36').style.display = 'none'
					document.getElementById('view37').style.display = 'none'
					document.getElementById('view46').style.display = 'none'
					document.getElementById('view47').style.display = 'none'
				}
			}
			document.getElementById("ra2").checked = true;
		}
		if(style=='corp'){
			for(var i=1; i<=4; i++){
				for(var j=1; j<=5; j++){
					if(i==3){
						document.getElementById('view'+i+j).style.display = ''
					}else{
						document.getElementById('view'+i+j).style.display = 'none'
					}
					document.getElementById('view35').style.display = 'none'
					document.getElementById('view36').style.display = 'none'
					document.getElementById('view37').style.display = 'none'
					document.getElementById('view46').style.display = 'none'
					document.getElementById('view47').style.display = 'none'
				}
			}
			document.getElementById("ra3").checked = true;
		}
		if(style=='fore'){
			for(var i=1; i<=4; i++){
				for(var j=1; j<=5; j++){
					if(i==4){
						document.getElementById('view'+i+j).style.display = ''
					}else{
						document.getElementById('view'+i+j).style.display = 'none'
					}
					document.getElementById('view45').style.display = 'none'
					document.getElementById('view36').style.display = 'none'
					document.getElementById('view37').style.display = 'none'
					document.getElementById('view46').style.display = 'none'
					document.getElementById('view47').style.display = 'none'
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
			if (f.m_id.value==""){
				alert("���̵� �Է��� �ּ���!!")
				f.m_id.focus()
				return
			}
			if (f.m_name.value==""){
				alert("�̸��� �Է��� �ּ���!!")
				f.m_name.focus()
				return
			}
			if(value=="email"){
				if (f.m_email.value==""){
					alert("�̸����� �Է��� �ּ���!!")
					f.m_email.focus()
					return
				}
			}
			if(value=="phone"){
				if (f.m_hp1.value==""){
					alert("�޴��� ��ȣ�� �Է��� �ּ���!!")
					f.m_hp1.focus()
					return
				}
				if (f.m_hp2.value==""){
					alert("�޴��� ��ȣ�� �Է��� �ּ���!!")
					f.m_hp2.focus()
					return
				}
				if (f.m_hp3.value==""){
					alert("�޴��� ��ȣ�� �Է��� �ּ���!!")
					f.m_hp3.focus()
					return
				}
			}
			break
		case "indibuis" :
			var value = document.f.radio2.value;
			if (f.indib_id.value==""){
				alert("���̵� �Է��� �ּ���!!")
				f.indib_id.focus()
				return
			}
			if (f.indib_name.value==""){
				alert("�̸��� �Է��� �ּ���!!")
				f.indib_name.focus()
				return
			}
			if(value=="email"){
				if (f.indib_email.value==""){
					alert("�̸����� �Է��� �ּ���!!")
					f.indib_email.focus()
					return
				}
			}
			if(value=="phone"){
				if (f.indib_hp1.value==""){
					alert("�޴��� ��ȣ�� �Է��� �ּ���!!")
					f.indib_hp1.focus()
					return
				}
				if (f.indib_hp2.value==""){
					alert("�޴��� ��ȣ�� �Է��� �ּ���!!")
					f.indib_hp2.focus()
					return
				}
				if (f.indib_hp3.value==""){
					alert("�޴��� ��ȣ�� �Է��� �ּ���!!")
					f.indib_hp3.focus()
					return
				}
			}
			break
		case "corp" :
			var value = document.f.radio3.value;
			if (f.corp_id.value==""){
				alert("���̵� �Է��� �ּ���!!")
				f.corp_id.focus()
				return
			}
			if (f.corp_name.value==""){
				alert("���θ��� �Է��� �ּ���!!")
				f.corp_name.focus()
				return
			}
			if(value=="email"){
				if (f.corp_email.value==""){
					alert("�̸����� �Է��� �ּ���!!")
					f.corp_email.focus()
					return
				}
			}
			if(value=="corp_num"){
				if (f.corp_num.value==""){
					alert("���ι�ȣ�� �Է��� �ּ���!!")
					f.corp_num.focus()
					return
				}
			}
			if(value=="phone"){
				if (f.corp_hp1.value==""){
					alert("�޴��� ��ȣ�� �Է��� �ּ���!!")
					f.corp_hp1.focus()
					return
				}
				if (f.corp_hp2.value==""){
					alert("�޴��� ��ȣ�� �Է��� �ּ���!!")
					f.corp_hp2.focus()
					return
				}
				if (f.corp_hp3.value==""){
					alert("�޴��� ��ȣ�� �Է��� �ּ���!!")
					f.corp_hp3.focus()
					return
				}
			}
			break
		case "fore" :
			var value = document.f.radio4.value;
			if (f.fore_id.value==""){
				alert("���̵� �Է��� �ּ���!!")
				f.fore_id.focus()
				return
			}
			if (f.fore_name.value==""){
				alert("�̸��� �Է��� �ּ���!!")
				f.fore_name.focus()
				return
			}
			if(value=="email"){
				if (f.fore_email.value==""){
					alert("�̸����� �Է��� �ּ���!!")
					f.fore_email.focus()
					return
				}
			}
			if(value=="fore_num"){
				if (f.fore_num.value==""){
					alert("��Ϲ�ȣ�� �Է��� �ּ���!!")
					f.fore_num.focus()
					return
				}
			}
			if(value=="phone"){
				if (f.fore_hp1.value==""){
					alert("�޴��� ��ȣ�� �Է��� �ּ���!!")
					f.fore_hp1.focus()
					return
				}
				if (f.fore_hp2.value==""){
					alert("�޴��� ��ȣ�� �Է��� �ּ���!!")
					f.fore_hp2.focus()
					return
				}
				if (f.fore_hp3.value==""){
					alert("�޴��� ��ȣ�� �Է��� �ּ���!!")
					f.fore_hp3.focus()
					return
				}
			}
			break
		}
		document.f.submit()
	}
</script>
<c:set var="msg" value="${requestScope.msg}"/><!-- �޼��� �߰� �ϴ� �� -->
<c:if test="${msg!=null}">
	<script type="text/javascript">
	alert("${msg}")
	</script>	
</c:if>
<body>
	<div align="center">
		<form action="find_passwd_info.do" name="f" method="post">
			<font class="pt3">��й�ȣ ã��</font><br>
			<font class="pt2">��й�ȣ ã�� 1�ܰ� ���� �Է�</font>
			<pre></pre>
			<table width="85%" class="m1">
				<tr>
					<td colspan="4">��</td>
				</tr>
				<tr>
					<td rowspan="7" width="35%"></td>
					<td class="pt4">�� ȸ������</td>
					<td>
						<select name="searchType" id="searchType" class="pt4" onChange="change(this.options[this.selectedIndex].value)">
							<option value="indi" selected>������ȸ��
							<option value="indibuis">������ �����ȸ��������������������
							<option value="corp">������ �����ȸ��
							<option value="fore">���ܱ���ȸ��
						</select>
					</td>	
					<td rowspan="7" width="35%"></td>
				</tr>
				<!-- ����ȸ�� -->
				<tr valign="top" id="view11">
					<td></td>
					<td class="pt4">
						<input type="radio" id="ra1" name="radio1" value="email" checked="checked" onclick="radio_chk()">�̸���
						<input type="radio" name="radio1" value="phone" onclick="radio_chk()">�޴�����ȣ
					</td>
				</tr>
				<tr id="view12">
					<td class="pt4">�� ���̵�</td>
					<td><input type="text" size="30" name="m_id"></td>
				</tr>
				<tr id="view13">
					<td class="pt4">�� �̸�</td>
					<td><input type="text" size="30" name="m_name"></td>
				</tr>
				<tr id="view14">
					<td class="pt4">�� �̸��Ϸ� ã��</td>
					<td><input type="text" size="30" name="m_email"></td>
				</tr>
				<tr id="view15" style="display:none;">
					<td class="pt4">�� �޴��� ��ȣ�� ã��</td>
					<td>
						<input type='text' name='m_hp1' size='4'>
						- <input type='text' name='m_hp2' size='5'>
						- <input type='text' name='m_hp3' size='5'>
					</td>
				</tr>
				<!-- ���� �����ȸ�� -->
				<tr valign="top" id="view21" style="display:none;">
					<td></td>
					<td class="pt4">
						<input type="radio" id="ra2" name="radio2" value="email" checked="checked" onclick="radio_chk2()">�̸���
						<input type="radio" name="radio2" value="phone" onclick="radio_chk2()">�޴�����ȣ
					</td>
				</tr>
				<tr id="view22" style="display:none;">
					<td class="pt4">�� ���̵�</td>
					<td><input type="text" size="30" name="indib_id"></td>
				</tr>
				<tr id="view23" style="display:none;">
					<td class="pt4">�� �̸�</td>
					<td><input type="text" size="30" name="indib_name"></td>
				</tr>
				<tr id="view24" style="display:none;">
					<td class="pt4">�� �̸��Ϸ� ã��</td>
					<td><input type="text" size="30" name="indib_email"></td>
				</tr>
				<tr id="view25" style="display:none;">
					<td class="pt4">�� �޴��� ��ȣ�� ã��</td>
					<td>
						<input type='text' name='indib_hp1' size='4'>
						- <input type='text' name='indib_hp2' size='5'>
						- <input type='text' name='indib_hp3' size='5'>
					</td>
				</tr>
				<!-- ���� �����ȸ�� -->
				<tr valign="top" id="view31" style="display:none;">
					<td></td>
					<td class="pt4">
						<input type="radio" name="radio3" value="corp_num" onclick="radio_chk3()">���ι�ȣ
						<input type="radio" id="ra3" name="radio3" value="email" checked="checked" onclick="radio_chk3()">�̸���
						<input type="radio" name="radio3" value="phone" onclick="radio_chk3()">�޴�����ȣ
					</td>
				</tr>
				<tr id="view32" style="display:none;">
					<td class="pt4">�� ���̵�</td>
					<td><input type="text" size="30" name="corp_id"></td>
				</tr>
				<tr id="view33" style="display:none;">
					<td class="pt4">�� ���θ�</td>
					<td><input type="text" size="30" name="corp_name"></td>
				</tr>
				<tr id="view34" style="display:none;">
					<td class="pt4">�� �̸��Ϸ� ã��</td>
					<td><input type="text" size="30" name="corp_email"></td>
				</tr>
				<tr id="view35" style="display:none;">
					<td class="pt4">�� �޴��� ��ȣ�� ã��</td>
					<td>
						<input type='text' name='corp_hp1' size='4'>
						- <input type='text' name='corp_hp2' size='5'>
						- <input type='text' name='corp_hp3' size='5'>
					</td>
				</tr>
				<tr id="view36" style="display:none;">
					<td class="pt4">�� ���ι�ȣ�� ã��</td>
					<td>
						<input type="text" size="30" name="corp_num">
					</td>
				</tr>
				<tr id="view37" style="display:none;">
					<td colspan="2" align="center"><font class="pt2">(-) ���� ���ڸ� �Է��ϼ���.</font></td>
				</tr>
				<!-- �ܱ���ȸ�� -->
				<tr valign="top" id="view41" style="display:none;">
					<td></td>
					<td class="pt4">
						<input type="radio" name="radio4" value="fore_num" onclick="radio_chk4()">��Ϲ�ȣ
						<input type="radio" id="ra4" name="radio4" value="email" checked="checked" onclick="radio_chk4()">�̸���
						<input type="radio" name="radio4" value="phone" onclick="radio_chk4()">�޴�����ȣ
					</td>
				</tr>
				<tr id="view42" style="display:none;">
					<td class="pt4">�� ���̵�</td>
					<td><input type="text" size="30" name="fore_id"></td>
				</tr>
				<tr id="view43" style="display:none;">
					<td class="pt4">�� �̸�</td>
					<td><input type="text" size="30" name="fore_name"></td>
				</tr>
				<tr id="view44" style="display:none;">
					<td class="pt4">�� �̸��Ϸ� ã��</td>
					<td><input type="text" size="30" name="fore_email"></td>
				</tr>
				<tr id="view45" style="display:none;">
					<td class="pt4">�� �޴��� ��ȣ�� ã��</td>
					<td>
						<input type='text' name='fore_hp1' size='4'>
						- <input type='text' name='fore_hp2' size='5'>
						- <input type='text' name='fore_hp3' size='5'>
					</td>
				</tr>
				<tr id="view46" style="display:none;">
					<td class="pt4">�� ��Ϲ�ȣ�� ã��</td>
					<td>
						<input type="text" size="30" name="fore_num">
					</td>
				</tr>
				<tr id="view47" style="display:none;">
					<td colspan="2" align="center"><font class="pt2">(-) ���� ���ڸ� �Է��ϼ���.</font></td>
				</tr>
				
				<tr align="center">
					<td colspan="2"><a href="javascript:check()"><img src="<%=request.getContextPath()%>/img/find_pw_bt2.PNG"></a></td>
				</tr>
				<tr>
					<td colspan="4">��</td>
				</tr>
			</table>
		</form>
	</div>
</body>
<!-- </html> -->
<%@ include file="../../../bottom.jsp"%>