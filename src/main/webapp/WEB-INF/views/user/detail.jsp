<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath }"/> 
<c:set var="ctxStatic" value="${pageContext.request.contextPath}/static"/>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>社交网络-用户主页-动态</title>

<jsp:include page="../include/script.jsp" flush="false"></jsp:include>

</head>

<body>
<div id="warp">
	
	<jsp:include page="../include/header.jsp" flush="false"></jsp:include>
	
	<div id="layout">
    	<div class="person_info">
        	<div class="img">
            	<img src="../images/photo2.gif" width="180" height="180" alt="" />
            </div>
            <div class="info_co">
            	<h1><a href="#">孙陶然</a></h1>
                <h3><a href="#">http://ziyunwan.com/83901069856</a></h3>
                <h4>位置：家在北京朝阳，现在北京朝阳</h4>
                <p>状态：世界真大，我们相遇...</p>
                <div class="info_btn_cont">
               		<input type="button" value="私信"  class="info_btn sx"/>
                    <div class="sixin">
                    	<h2><span class="close"></span>发私信</h2>
                        <label>
                        	<span class="fn-left">发给：</span>
                            <div class="drop_sx">
                            	<span class="more_d"></span>
                        		<div class="sx_name"><img src="../images/photo2.gif" width="24" height="24" />孙陶然</div>
                            </div>
                        </label>
                        <label>
                        	<span class="fn-left">内容：</span><textarea name="" cols="" rows="" class="sixin_text"></textarea>
                        </label>
                        <label><input type="button" class="fs" /></label>
                    </div>
                    <div class="sixin">
                    	<h2><span class="close"></span>发私信</h2>
                        <label>
                        	<span class="fn-left">发给：</span>
                            <div class="drop_sx">
                            	<span class="more_d"></span>
                        		<div class="sx_name"><img src="../images/photo2.gif" width="24" height="24" />孙陶然</div>
                            </div>
                        </label>
                        <label>
                        	<span class="fn-left">内容：</span><textarea name="" cols="" rows="" class="sixin_text"></textarea>
                        </label>
                        <label><input type="button" class="fs" /></label>
                    </div>
                    <input type="button" value="@"  class="info_btn sp"/>
                    <div class="speak">
                    	<h2><span class="close"></span>快来说点什么吧...</h2>
                        <h4>还可以输入123个字</h4>
                        <textarea name="" cols="" rows="" class="speak_text"></textarea>
                        <div class="speak_fb">
                        	<div class="fs"></div>
                            <ul>
                            	<li><a href="#"></a></li>
                                <li><a href="#"></a></li>
                                <li><a href="#"></a></li>
                                <li><a href="#"></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <div class="person_gz">
            	<div class="gz_btn_cont"><input class="gz_btn" type="button" /></div>
                <ul class="gz_list">
                	<li><a href="#"><span class="num">566</span>消息</a></li>
                    <li><a href="../user_attention.html"><span class="num">1244</span>关注</a></li>
                    <li><a href="#"><span class="num">78</span>粉丝</a></li>
                </ul>
            </div>
        </div>
        
        <div id="ul_btn">
        	<ul>
            	<li><a href="../user_homePage.html" class="hover">动态</a></li>
                <li><a href="#">@提到我的</a></li>
                <li><a href="#" class="pl">评论</a></li>
                <li><a href="#">随便看看</a></li>
            </ul>
        </div>
        <div class="main">
        	<div class="con_list">
            	<div class="tab" id="tabBox">
                	
                    <div class="tab_cont">
                    	<div class="tab_con" style="display:block;">
                        	<ul class="tab_list W100">
                            	<li>
                                    <span class="list_con">
                                        <h3>正在读<a href="#">《我和这个世界不熟》</a>，<a href="#">黄某某</a> 著，中国民族摄影艺术出版社</h3>
                                        <p>《我和这个世界不熟》极力调侃生活的琐碎，巧解各路话题新闻，用简短、精炼的笔调刻画出生活舞台上一个个鲜活的小人物，当然亦有作者本人的各种领衔出演。这不仅仅是一部原创笑话段子集，更是作者的成长录，它收录了一个网络写手从默默无闻的路人甲到低调网络小红人的整个过程。这里有每个社会人的影子，无论小清新或是小邪恶。其实，人生就是一出悲喜剧，翻开书，用幽默战胜生命的低谷。</p>
                                        <span class="book_img">
                                                <a href="#"><img src="../images/book.gif" width="105" height="140" alt="" /></a>
                                                <span class="book_info">
                                                    <h2><a href="#">上面好安静</a></h2>
                                                    <h3><span class="yizhe fn-right">译者：<a href="#">周林</a></span>作者：【荷兰】<a href="#">比克</a></h3>
                                                    <h3>出版社：<a href="#">人们出版社</a></h3>
                                                    <h4>定价：30元</h4>
                                                    <p>
                                                    《故事发生在荷兰的乡间。亨克和赫尔默是一对双胞胎兄
            弟，弟弟亨克勤于农活，深受父亲欢心，哥哥赫尔默不喜
            欢农场，渴望去城市生活，因此与父亲关系疏远。谁料，
            年轻的弟弟在一场车祸中丧生，一心想离开农场的赫尔默
            被迫中断大学学业，从此与 牛羊为伍……
                                                    </p>
                                                    <span class="book_info_btn">
                                                        <input type="text" class="text" />
                                                        <input type="text" class="join" />
                                                    </span>
                                                </span>
                                            </span>
                                        <p class="bott">
                                        	<span class="p_function">
                                            	<a href="#">转发（23）</a>|
                                                <a href="#">收藏</a>|
                                                <a href="#">评论（13）</a>
                                            </span>
                                            <span class="time">
                                            	10月15日  17：35
                                            </span>
                                        </p>
                                    </span>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <div class="sidebar">
            	<div class="side_detail">
                	<h2>个人资料.......</h2>
                    <h4>家在：北京，朝阳区</h4>
                    <h4>微博: <a href="#">http://weibo.com/suntaoran</a></h4>
                    <h4>博客: <a href="#">http://www.lakala.com</a></h4>
                    <p>自述：曾参与创办若干公司，偶尔做天使。北大企业家俱乐部执行理事，创始人俱乐部联合主席，《创业36条军规》作者，北京青联荣誉委员，长春青联副主席曾参与创办若干公司，偶尔做天使。北大企业家俱乐部执行理事，创始人俱乐部联合主席，《创业36条军规》作者，北京青联荣誉委员，长春青联副主席</p>
                    <h5><a href="#">更多...</a></h5>
                </div>
                <div class="sider_span">
                	<h2>标签</h2>
                    <p><a href="#">摄影</a> <a href="#">户外</a> <a href="#">创业36条军规</a> <a href="#">北京大学</a> <a href="#">拉卡拉</a></p>
                </div>
                <div class="now_read" style="z-index:3">
                	<div class="title">
                    	<h3><a href="#">共同兴趣.......（68）</a></h3>
                    </div>
                    <div class="read_list">
                    	<ul>
                        	<li>
                            	<a href="#" title=""><img src="../images/img1.gif" width="67" height="99" alt="" /></a><span class="book_info">
                                <h2><a href="#">上面好安静</a></h2>
                                <h3><span class="yizhe fn-right">译者：<a href="#">周林</a></span>作者：【荷兰】<a href="#">比克</a></h3>
                                <h3>出版社：<a href="#">人们出版社</a></h3>
                                <h4>定价：30元</h4>
                                <p>
                                《故事发生在荷兰的乡间。亨克和赫尔默是一对双胞胎兄
弟，弟弟亨克勤于农活，深受父亲欢心，哥哥赫尔默不喜
欢农场，渴望去城市生活，因此与父亲关系疏远。谁料，
年轻的弟弟在一场车祸中丧生，一心想离开农场的赫尔默
被迫中断大学学业，从此与 牛羊为伍……
                                </p>
                                <span class="book_info_btn">
                                    <input type="button" class="text" />
                                    <input type="button" class="join" />
                                </span>
                            </span>
                             </li>
                            
                        </ul>
                    </div>
                </div>
               <div class="interest_person">
                	<div class="title">
                    	<h3><a href="#">兴趣相同的人……</a></h3>
                    </div>
                    <div class="list">
                    	<ul>
                        	<li>
                                <a href="#">
                                	<img src="../images/img2.gif" width="48" height="48" alt="" />
                                    <h5>W</h5>
                                </a>
                                <div class="read_info">
                                    <div class="read_info_base">
                                        <img src="../images/reader.jpg" width="40" height="40" alt="" />
                                        <h2>孙陶然</h2>
                                        <h4><span>关注</span> 440 | <Span>粉丝</Span> 280万 | <Span>微博</Span> 2867</h4>
                                        <p>拉卡拉支付有限公司创始人，董事长兼总裁</p>
                                    </div>
                                    <div class="read_info_btn">
                                        <input type="button" class="btn" />
                                    </div>
                                </div>
                            </li>
                            
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>

</div>

<jsp:include page="../include/bookshelf_pop.jsp" flush="false"></jsp:include>


<script type="text/javascript"> 
 function tabMenu(tabBox,navClass){
  var tabNavLi=document.getElementById(tabBox).getElementsByTagName("ul")[0].getElementsByTagName("li");
  var tabCon=document.getElementById(tabBox).getElementsByTagName("div")[0].getElementsByTagName("div");
  var tabLens=tabCon.length;
  for(var i=0;i<tabLens;i++){
  //应用js闭包传入参数i作为当前索引值赋值给m
    (function(m){
   tabNavLi[m].onclick = function(){
    for(var j=0; j<tabLens; j++){
     tabNavLi[j].className = (j==m)?navClass:"";
     tabCon[j].style.display = (j==m)?"block":"";
    }
   }
    })(i); 
  }
 }
//函数调用
window.onload=function(){
 tabMenu("tabBox","active");
}
</script>
</body>
</html>
