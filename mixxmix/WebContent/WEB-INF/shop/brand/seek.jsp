<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ include file="../../../top.jsp" %>
      

         <table>
                <li><img src="../../<%=request.getContextPath()%>/img/seek.png" alt="" /></li>
        </td></tr>
        </table>
        <div align="center">
        	<h2>HEART CLUB</h2>
        	<br>
        	
        	<table width="90%">
        		<tr>
        		<td align="center"><font size="2"><a href="heartclub.pro">HEART CLUB ��</a></td>
        			<td align="center"><font size="2"><a href="lonelyclub.pro">LONELY CLUB ��</a></td>
        			<td align="center"><font size="2"><a href="seek.pro">SEEK ��</a></td>
        			<td align="center"><font size="2"><a href="hide.pro">HIDE ��</a></td>
        			<td align="center"><font size="2"><a href="pastpassion.pro">PAST PASSION ��</a></td>
        			<td align="center"><font size="2"><a href="365basic.pro">365BASIC ��</a></td>
        			<td align="center"><font size="2"><a href="untitle8.pro">UNTITLE8 ��</a></td>
        			<td align="center"><font size="2"><a href="ulysses.pro">ULYSSES ��</a></td>
        			<td align="center"><font size="2"><a href="matiere.pro">MATIERE ��</a></td>
        			<td align="center"><font size="2"><a href="seanlip.pro">SEANLIP ��</a></td>
        			
        		</tr>
        	</table>
        </div>
        	<br>
        <div align="center">
        	<table>
        		<tr>
        			<td><font size="2">
        				��0���� ��ǰ�� �˻��Ǿ����ϴ�.
        			</td>
        			<td><font size="2">
        				�Ż�ǰ | �������� | �������� | �α��ǰ | ���ƿ�
        			</td>
        		</tr>
        		<c:if test="${list==null || list.size()==0}">
        	<tr></tr>
			<tr>
				<td align="center" colspan="4">��� �� ��ǰ�� �����ϴ�.</td>
			</tr>
				</c:if>
        		
        	</table>
        </div>
        
<%@ include file="../../../bottom.jsp"%>