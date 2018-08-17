<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ include file="top.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>         
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
        <script type="text/javascript" src="https://code.jquery.com/jquery-1.12.3.min.js"></script>
        <style type="text/css">            
         #wrap{position:relative; width:100%;}
         
         #main_bn {
            margin:0 auto;
            width:450px;
            height:450px;
         }
         #main_bn img {
            width:100%;
            height:auto;
         }
            #main_bn_btn {
            list-style-type:none;
            position:absolute;
            bottom:5px; left:50%;
            transform:translate(-50%);
            }
            #main_bn_btn li {
                float: left; padding:0px 2px; margin-right:5px;
            }
         a, a:hover, a:visited { text-decoration:none; }
         ul li { list-style : none; }
            
        </style>
         <script src="http://code.jquery.com/jquery-latest.js"></script>
        <script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery.ulslide.js"></script>

      <script type="text/javascript">
            $(function() {
                $('#main_bn').ulslide({
                    statusbar: true,
                    width: 1210,
                    height: 680, 
                    affect: 'slide', 
                    axis: 'x',    
                    navigator: '#main_bn_btn a',
                    duration: 1000, 
               autoslide: 2000 
                });
            });
        </script>
      
         <script type="text/javascript">
            $(document).ready(function() {
 
                var $panel = $(".rolling_panel").find("ul");
 
                var itemWidth = $panel.children().outerWidth(); // ������ ���� ����
                var itemLength = $panel.children().length;      // ������ ��
 
                // Auto �Ѹ� ���̵�
                var rollingId;
 
                auto();
 
                // ��� ���콺 ���� �̺�Ʈ
                $panel.mouseover(function() {
                    clearInterval(rollingId);
                });
 
                // ��� ���콺 �ƿ� �̺�Ʈ
                $panel.mouseout(function() {
                    auto();
                });
 
                // ���� �̺�Ʈ
                $("#prev").on("click", prev);
 
                $("#prev").mouseover(function(e) {
                    clearInterval(rollingId);
                });
 
                $("#prev").mouseout(auto);
 
                // ���� �̺�Ʈ
                $("#next").on("click", next);
 
                $("#next").mouseover(function(e) {
                    clearInterval(rollingId);
                });
 
                $("#next").mouseout(auto);
 
                function auto() {
 
                    // 2�ʸ��� start ȣ��
                    rollingId = setInterval(function() {
                        start();
                    }, 2000);
                }
 
                function start() {
                    $panel.css("width", itemWidth * itemLength);
                    $panel.animate({"left": - itemWidth + "px"}, function() {
 
                        // ù��° �������� �������� �߰��ϱ�
                        $(this).append("<li>" + $(this).find("li:first").html() + "</li>");
 
                        // ù��° �������� �����ϱ�
                        $(this).find("li:first").remove();
 
                        // ���� �г� ��ġ �ʱ�ȭ
                        $(this).css("left", 0);
                    });
                }
 
                // ���� �̺�Ʈ ����
                function prev(e) {
                    $panel.css("left", - itemWidth);
                    $panel.prepend("<li>" + $panel.find("li:last").html() + "</li>");
                    $panel.animate({"left": "0px"}, function() {
                        $(this).find("li:last").remove();
                    });
                }
 
                // ���� �̺�Ʈ ����
                function next(e) {
                    $panel.animate({"left": - itemWidth + "px"}, function() {
                        $(this).append("<li>" + $(this).find("li:first").html() + "</li>");
                        $(this).find("li:first").remove();
                        $(this).css("left", 0);
                    });
                }
            });
        </script>
           <!--  <a href="javascript:void(0)" id="prev">����</a>
               <a href="javascript:void(0)" id="next">����</a> -->
         <div id="wrap">
         <table>
         <tr><td>
        <div id="main_bn">
                <li><img src="<%=request.getContextPath()%>/img/main2.jpg" alt="" /></li>
                <li><img src="<%=request.getContextPath()%>/img/main1.jpg" alt="" /></li>
                <li><img src="<%=request.getContextPath()%>/img/main3.jpg" alt="" /></li> 
                <li><img src="<%=request.getContextPath()%>/img/main4.jpg" alt="" /></li>
                <li><img src="<%=request.getContextPath()%>/img/main5.jpg" alt="" /></li>
                <li><img src="<%=request.getContextPath()%>/img/main6.jpg" alt="" /></li>
                <li><img src="<%=request.getContextPath()%>/img/main7.jpg" alt="" /></li>
                <li><img src="<%=request.getContextPath()%>/img/main8.jpg" alt="" /></li>
        </div>
        <div id="main_bn_btn">
                <li><a href="#"><img src="<%=request.getContextPath()%>/img/main_circle.png" align="middle"></a></li>
                <li><a href="#"><img src="<%=request.getContextPath()%>/img/main_circle.png" align="middle"></a></li>
                <li><a href="#"><img src="<%=request.getContextPath()%>/img/main_circle.png" align="middle"></a></li>
                <li><a href="#"><img src="<%=request.getContextPath()%>/img/main_circle.png" align="middle"></a></li>
                <li><a href="#"><img src="<%=request.getContextPath()%>/img/main_circle.png" align="middle"></a></li>
                <li><a href="#"><img src="<%=request.getContextPath()%>/img/main_circle.png" align="middle"></a></li>
                <li><a href="#"><img src="<%=request.getContextPath()%>/img/main_circle.png" align="middle"></a></li>
                <li><a href="#"><img src="<%=request.getContextPath()%>/img/main_circle.png" align="middle"></a></li>
        </div>
        </td></tr>
        </table>
      </div>
      <img src="<%=request.getContextPath()%>/img/MAIN_SUB01_WEB.png">
      <a href="notice.board"><img src="<%=request.getContextPath()%>/img/MAIN_SUB02_WEB.png"></a>
      <br>
      <img src="<%=request.getContextPath()%>/img/Beating_Heart.gif" width="100" height="100">
      <div>
      <c:set var="prodList" value="${prodList}"/>
        <table cellspacing="50">
       <tr>
           <c:set var="i" value="0"/>
         <c:forEach var="list" items="${prodList}">
         <c:set var="i" value="${i+1}"/>
         <c:set var="likeSu" value="0"/>
         <c:set var="likeCheck" value="0"/>     <!--   ���ƿ� �� ���� ���� -->
         <c:forEach var="joayoList" items="${joayoList}">
            <c:if test="${joayoList.l_pro_num==list.p_num}">
               <c:set var="likeSu" value="${likeSu+1}"/>
            </c:if>
            <c:if test="${joayoList.l_mem_id==mbid}">
               <c:set var="likeCheck" value="1"/>
            </c:if> 
         </c:forEach>
         <c:set var="i" value="${i+1}"/>
         <td>
            <a href="product_content.view?num=${list.p_num}&name=${list.p_name}"><img src="<%=request.getContextPath()%>/images/${list.p_img}" width="300" height="352"></a><br>
            <script type="text/javascript">
            $(document).ready(function(){   
                $('#like_img'+${list.p_num}).click(function ()  {          
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
                                      $('#likeSu'+${list.p_num }).html(${likeSu-1}+"���� �����մϴ�.")
                                   }else{ 
                                      $('img#like_img'+${list.p_num }).attr('src', '<%=request.getContextPath()%>/img/like2.png')
                                      $('#likeSu'+${list.p_num }).html(${likeSu}+"���� �����մϴ�.")
                                   }
                               } else {
                                  if(${likeCheck==1}){
                                     $('img#like_img'+${list.p_num }).attr('src', '<%=request.getContextPath()%>/img/color_like.png')
                                     $('#likeSu'+${list.p_num }).html(${likeSu}+"���� �����մϴ�.")
                                  }else{
                                     $('img#like_img'+${list.p_num }).attr('src', '<%=request.getContextPath()%>/img/color_like.png')
                                     $('#likeSu'+${list.p_num }).html(${likeSu+1}+"���� �����մϴ�.")
                                  }
                               }
                            }
                         })
                      });
                 });
         </script>
                  
                 <c:choose>
               <c:when test="${likeCheck==0}">
                  <img src="<%=request.getContextPath()%>/img/like2.png" height="39px" width="50px" id="like_img${list.p_num }">
               </c:when>
                <c:otherwise>
                  <img src="<%=request.getContextPath()%>/img/color_like.png" height="39px" width="50px" id="like_img${list.p_num }">
                </c:otherwise>
            </c:choose>
             
            <span id="likeSu${list.p_num }">${likeSu}���� �����մϴ�.</span> 
            <hr color="black" width="100%"><br>
            <a href="product_content.view?num=${list.p_num}&name=${list.p_name}">${list.p_name}<br></a>
            ${list.p_price}��<br>
            <font color="blue">${list.p_hashtag}</font><br>
            ${list.p_producer}
         </td>
                <c:if test="${i%4 eq 0}"><!-- ���� �̹����� 4���� ���� �ݰ� ���ο� ���� ����� -->
      </tr>
      <tr>
             </c:if>
         </c:forEach>
       </tr>
    </table>
    </div>
<%@ include file="bottom.jsp"%>