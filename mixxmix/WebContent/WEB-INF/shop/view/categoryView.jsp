<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ include file="../../../top.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<c:set var="mbid" value="${sessionScope.mbid}"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<div align="right">
<a href="categoryView.view?c_num=${c_num}&c_v_mode=new">신상품순</a>|
<a href="categoryView.view?c_num=${c_num}&c_v_mode=best">인기순</a>|
<a href="categoryView.view?c_num=${c_num}&c_v_mode=lowPrice">낮은가격순</a>|
<a href="categoryView.view?c_num=${c_num}&c_v_mode=highPrice">높은가격순</a>
</div>
<c:set var="prodListByCate" value="${prodListByCate}"/>
 <div>
    <table cellspacing="50">
       <tr>
         <c:set var="i" value="0"/>
         <c:forEach var="list" items="${prodListByCate}">
         <c:set var="i" value="${i+1}"/>
         <c:set var="likeSu" value="0"/>
         <c:set var="likeCheck" value="0"/>     <!--   좋아요 안 누른 상태 -->
         <c:forEach var="joayoList" items="${joayoList}">
            <c:if test="${joayoList.l_pro_num==list.p_num}">
               <c:set var="likeSu" value="${likeSu+1}"/>
            </c:if>
            <c:if test="${joayoList.l_mem_id==mbid}">
               <c:set var="likeCheck" value="1"/>
            </c:if> 
         </c:forEach>
         
         <td>
            <a href="product_content.view?num=${list.p_num}&name=${list.p_name}"><img src="<%=request.getContextPath()%>/images/${list.p_img}" width="300" height="352"><br>
            <a href="product_content.view?num=${list.p_num}&name=${list.p_name}">${list.p_name}<br></a>
         
         <script type="text/javascript">
          $(document).ready(function(){   
         $('#like_img'+${list.p_num }).click(function ()  {          
                  $.ajax({
                     url:"like.pro",
                     data: 
                     {
                        'l_pro_num' : ${list.p_num}
                     },
                     type:"post",
                     dataType: "json",
                     success : function (data) {
                        var result = JSON.parse(data)
                        if(result == 404){
                            if(${likeCheck==1}){
                               $('img#like_img'+${list.p_num }).attr('src', '<%=request.getContextPath()%>/img/like2.png')
                               $('#likeSu'+${list.p_num }).html(${likeSu-1}+"명이 좋아합니다.")
                            }else{ 
                               $('img#like_img'+${list.p_num }).attr('src', '<%=request.getContextPath()%>/img/like2.png')
                               $('#likeSu'+${list.p_num }).html(${likeSu}+"명이 좋아합니다.")
                            }
                        } else {
                           if(${likeCheck==1}){
                              $('img#like_img'+${list.p_num }).attr('src', '<%=request.getContextPath()%>/img/color_like.png')
                              $('#likeSu'+${list.p_num }).html(${likeSu}+"명이 좋아합니다.")
                           }else{
                              $('img#like_img'+${list.p_num }).attr('src', '<%=request.getContextPath()%>/img/color_like.png')
                              $('#likeSu'+${list.p_num }).html(${likeSu+1}+"명이 좋아합니다.")
                           }
                        }
                     }
                  })
               });
          });
         </script>
<!--          <button type="button" id="btnLike" > -->
                 <c:choose>
               <c:when test="${likeCheck==0}">
                  <img src="<%=request.getContextPath()%>/img/like2.png" height="39px" width="50px" id="like_img${list.p_num }">
               </c:when>
                <c:otherwise>
                  <img src="<%=request.getContextPath()%>/img/color_like.png" height="39px" width="50px" id="like_img${list.p_num }">
                </c:otherwise>
            </c:choose>
<!--              </button> -->
            <span id="likeSu${list.p_num }">${likeSu}명이 좋아합니다.</span> 
            <hr color="black" width="100%"><br>
            ${list.p_price}원<br>
            <font color="blue">${list.p_hashtag}</font><br>
            ${list.p_producer}
         </td>
                <c:if test="${i%4 eq 0}"><!-- 만약 이미지가 4개면 줄을 닫고 새로운 줄을 열어라 -->
      </tr>
      <tr>
             </c:if>
    </c:forEach>
       </tr>
    </table>
 </div>
<%@ include file="../../../bottom.jsp" %>