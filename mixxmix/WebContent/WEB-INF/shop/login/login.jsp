<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>        
<%@ include file="../../../top.jsp" %>
<script type="text/javascript">
   function loginCheck(){
      if (f.m_id.value==""){
         alert("아이디를 입력해 주세요!!")
         f.m_id.focus()
         return
      }
      if (f.m_passwd.value==""){
         alert("비밀번호를 입력해 주세요!!")
         f.m_passwd.focus()
         return
      }
      document.f.submit()
   }
</script>
<%      Cookie[] cks = request.getCookies();
      String value = null;
      if (cks != null || cks.length != 0){
         for(int i=0; i<cks.length; ++i){
            String name = cks[i].getName();
            if (name.equals("saveId")){
               value = cks[i].getValue();
            }
         }
      }%>   
<body>
   <form name="f" action="login.do" method="post">
      <table width="90%" height="30%" align="center">
      <br><br>
         <tr>
            <th class="pt">로그인</th>
         </tr>
         <tr>
            <td align="center">
               <table>
                  <tr>
                     <td class="pt2" align="center">아이디</td>
                     <td align="center">
                     <c:choose>
                        <c:when test="${cookie.saveId.value==null}">
                           <input type="text" name="m_id">
                        </c:when>
                        <c:otherwise>
                           <input type="text" name="m_id" value="${cookie.saveId.value}">
                        </c:otherwise>
                     </c:choose>
                     </td>
                  </tr>
                  <tr>
                     <td class="pt2" align="center">비밀번호</td>
                     <td align="center"><input type="password" name="m_passwd"></td>
                  </tr>
                  <tr align="center">
                     <td colspan="2">
                        <a href="javascript:loginCheck()">
                           <img src="<%=request.getContextPath()%>/img/login.PNG" border="0" alt="로그인"  tabindex="3"><br>
                        </a>
                     </td>
                  </tr>
               </table>
            </td>
         </tr>
         <tr>
            <td>
               <table class="line2" align="center">
                  <tr>
                     <td class="pt2">
                     <c:choose>
                        <c:when test="${cookie.saveId.value==null}">
                           <input type="checkbox" name="saveId">아이디 저장
                        </c:when>
                        <c:otherwise>
                           <input type="checkbox" name="saveId" checked>아이디 저장
                        </c:otherwise>
                     </c:choose>
                     </td>
                     <td><pre>      </pre></td>
                     <td class="pt2"><img src="<%=request.getContextPath()%>/img/ico_lock.gif">보안접속</td>
                  </tr>
               </table>
               <!-- <hr width="93%"> -->
               <div align="center">
               <font size="2" class="pt2"><img src="<%=request.getContextPath()%>/img/ico_info.gif">회원이 되시면 다양한 혜택이 있습니다.</font><br>
               <font size="2" class="pt2"><img src="<%=request.getContextPath()%>/img/ico_info.gif">아직도 회원이 아니시라면 지금바로 가입하세요.</font><br>
               <font size="2" class="pt2"><img src="<%=request.getContextPath()%>/img/ico_info.gif">비회원 문의는 카카오톡 플러스 친구 "믹스엑스믹스"</font><br>
               <font size="2" class="pt2">검색후 문의 바랍니다.</font><br><br>
               <a href="member_insert.do"><img src="<%=request.getContextPath()%>/img/join_bt.PNG" border="0"></a>
               <a href="find_id.do"><img src="<%=request.getContextPath()%>/img/find_id_bt.PNG" border="0"></a>
               <a href="find_passwd_info.do"><img src="<%=request.getContextPath()%>/img/find_pw_bt.PNG" border="0"></a>
               </div>
            </td>
         </tr>
      </table>
   </form>
</body>
</html>
<%@ include file="../../../bottom.jsp"%>