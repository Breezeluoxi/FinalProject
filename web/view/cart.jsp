<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head lang="en">
    <meta charset="utf-8"/>
    <title>cart</title>
    <link rel="stylesheet" type="text/css" href="../css/cc_css/public.css"/>
    <link rel="stylesheet" type="text/css" href="../css/cc_css/proList.css"/>
    <script src="../js/cc_js/jquery-1.12.4.min.js" type="text/javascript" charset="utf-8"></script>
</head>
<body><!--------------------------------------cart--------------------->
<div class="head ding">
    <div class="wrapper clearfix">
        <div class="clearfix" id="top"><h1 class="fl"><a href="index.html"><img src="../photo/cc_img/logo.png"/></a></h1>
            <div class="fr clearfix" id="top1"><p class="fl"></p>
                <form action="#" method="get" class="fl"><input type="text" placeholder="搜索"/><input type="button"/>
                </form>
                <div class="btn fl clearfix"><a href="mygxin.html"><img src="../photo/cc_img/grzx.png"/></a><a href="#" class="er1"><img
                        src="../photo/cc_img/ewm.png"/></a><a href="cart.html"><img src="../photo/cc_img/gwc.png"/></a>
                    <p><a href="#"><img src="../photo/cc_img/smewm.png"/></a></p></div>
            </div>
        </div>
        <ul class="clearfix" id="bott">
            <li><a href="index.html">首页</a></li>
            <li><a href="#">所有商品</a>
                <div class="sList">
                    <div class="wrapper  clearfix"><a href="paint.html">
                        <dl>
                            <dt><img src="../photo/cc_img/nav1.jpg"/></dt>
                            <dd>浓情欧式</dd>
                        </dl>
                    </a><a href="paint.html">
                        <dl>
                            <dt><img src="../photo/cc_img/nav2.jpg"/></dt>
                            <dd>浪漫美式</dd>
                        </dl>
                    </a><a href="paint.html">
                        <dl>
                            <dt><img src="../photo/cc_img/nav3.jpg"/></dt>
                            <dd>雅致中式</dd>
                        </dl>
                    </a><a href="paint.html">
                        <dl>
                            <dt><img src="../photo/cc_img/nav6.jpg"/></dt>
                            <dd>简约现代</dd>
                        </dl>
                    </a><a href="paint.html">
                        <dl>
                            <dt><img src="../photo/cc_img/nav7.jpg"/></dt>
                            <dd>创意装饰</dd>
                        </dl>
                    </a></div>
                </div>
            </li>
            <li><a href="flowerDer.html">装饰摆件</a>
                <div class="sList2">
                    <div class="clearfix"><a href="proList.html">干花花艺</a><a href="vase_proList.html">花瓶花器</a></div>
                </div>
            </li>
            <li><a href="decoration.html">布艺软饰</a>
                <div class="sList2">
                    <div class="clearfix"><a href="zbproList.html">桌布罩件</a><a href="bzproList.html">抱枕靠垫</a></div>
                </div>
            </li>
            <li><a href="paint.html">墙式壁挂</a></li>
            <li><a href="perfume.html">蜡艺香薰</a></li>
            <li><a href="idea.html">创意家居</a></li>
        </ul>
    </div>
</div>
<div class="cart mt"><!-----------------logo------------------->
    <!--<div class="logo"><h1 class="wrapper clearfix"><a href="index.html"><img class="fl" src="../photo/cc_img/temp/logo.png"></a><img class="top" src="../photo/cc_img/temp/cartTop01.png"></h1></div>-->
    <!-----------------site------------------->
    <div class="site"><p class=" wrapper clearfix"><span class="fl">购物车</span><img class="top"
                                                                                   src="../photo/cc_img/temp/cartTop01.png"><a
            href="indexselect" class="fr">继续购物&gt;</a></p></div><!-----------------table------------------->
    <div class="table wrapper">
        <div class="tr">
            <div>商品</div>
            <div>单价</div>
            <div>数量</div>
            <div>小计</div>
            <div>操作</div>
        </div>
       
       <c:forEach var="rs" items="${requestScope.shoplist }">
       
        <div class="th">
            <div class="pro clearfix"><label class="fl">
            	<input name="ck" type="checkbox" value="${rs.cart_id }"/>
            	
            	<span></span></label>
            	<a class="fl" href="selectproductview?id=${rs.cart_p_id }">
                <dl class="clearfix">
                    <dt class="fl"><img width="120" height="120" src="images/product/${rs.cart_p_filename }"></dt>
                    <dd class="fl"><p>${rs.cart_p_name }</p>
                        <p>颜色分类:</p>
                        <p>白色瓷瓶+白色串枚</p></dd>
                </dl>
            </a></div>
            <div class="price">￥${rs.cart_p_price }.00</div>
            <div class="number">
            	<p class="num clearfix">
            	<img class="fl sub" src="../photo/cc_img/temp/sub.jpg">
            	<span datasrc="${rs.cart_id }" class="fl">${rs.cart_quantity }</span>
            	<img class="fl add" src="../photo/cc_img/temp/add.jpg"></p>
           </div>
            <div class="price sAll">￥${rs.cart_p_price * rs.cart_quantity }.00</div>
            <div class="price"><a class="del" datasrc="${rs.cart_id }" href="#2">删除</a></div>
        </div>
       
       </c:forEach>
       
        
        <div class="goOn">空空如也~<a href="indexselect">去逛逛</a></div>
        <div class="tr clearfix"><label class="fl"><input class="checkAll" type="checkbox"/><span></span></label>
            <p class="fl"><a href="#">全选</a><a href="#" class="del">删除</a></p>
            <p class="fr"><span>共<small id="sl">0</small>件商品</span><span>合计:&nbsp;<small id="all">￥0.00</small></span><a
                    href="javascript:toorder()" class="count">结算</a></p></div>
    </div>
</div>

<script>
	function toorder() {
			var str = "";
			
			$("input[name='ck']:checked").each(function(index, item){
				if($("input[name='ck']:checked").length-1 == index){
					str+= $(this).val();
				}else{
					str+= $(this).val()+",";
				}
				
			});
			
			location.href="orderselect?eids="+str;
		
	}
</script>
<div class="mask"></div>
<div class="tipDel"><p>确定要删除该商品吗？</p>
    <p class="clearfix"><a class="fl cer" href="#">确定</a><a class="fr cancel" href="#">取消</a></p></div><!--返回顶部-->
<div class="gotop"><a href="cart.html">
    <dl>
        <dt><img src="../photo/cc_img/gt1.png"/></dt>
        <dd>去购<br/>物车</dd>
    </dl>
</a><a href="#" class="dh">
    <dl>
        <dt><img src="../photo/cc_img/gt2.png"/></dt>
        <dd>联系<br/>客服</dd>
    </dl>
</a><a href="mygxin.html">
    <dl>
        <dt><img src="../photo/cc_img/gt3.png"/></dt>
        <dd>个人<br/>中心</dd>
    </dl>
</a><a href="#" class="toptop" style="display: none;">
    <dl>
        <dt><img src="../photo/cc_img/gt4.png"/></dt>
        <dd>返回<br/>顶部</dd>
    </dl>
</a>
    <p>400-800-8200</p></div><!--footer-->
<div class="footer">
    <div class="top">
        <div class="wrapper">
            <div class="clearfix"><a href="#2" class="fl"><img src="../photo/cc_img/foot1.png"/></a><span class="fl">7天无理由退货</span>
            </div>
            <div class="clearfix"><a href="#2" class="fl"><img src="../photo/cc_img/foot2.png"/></a><span class="fl">15天免费换货</span>
            </div>
            <div class="clearfix"><a href="#2" class="fl"><img src="../photo/cc_img/foot3.png"/></a><span class="fl">满599包邮</span>
            </div>
            <div class="clearfix"><a href="#2" class="fl"><img src="../photo/cc_img/foot4.png"/></a><span class="fl">手机特色服务</span>
            </div>
        </div>
    </div>
    <p class="dibu">坨根家居&copy;2020-2021团队版权所有 京ICP备080100-44备0000111888号<br/>
        违法和不良信息举报电话：400-800-8200，本网站所列数据，除特殊说明，所有数据均出自我队自行测试</p></div><!----------------mask------------------->
<div class="mask"></div><!-------------------mask内容------------------->
<div class="proDets"><img class="off" src="../photo/cc_img/temp/off.jpg"/>
    <div class="proCon clearfix">
        <div class="proImg fr"><img class="list" src="../photo/cc_img/temp/proDet.jpg"/>
            <div class="smallImg clearfix"><img src="../photo/cc_img/temp/proDet01.jpg" data-src="../photo/cc_img/temp/proDet01_big.jpg"><img
                    src="../photo/cc_img/temp/proDet02.jpg" data-src="../photo/cc_img/temp/proDet02_big.jpg"><img src="../photo/cc_img/temp/proDet03.jpg"
                                                                                          data-src="../photo/cc_img/temp/proDet03_big.jpg"><img
                    src="../photo/cc_img/temp/proDet04.jpg" data-src="../photo/cc_img/temp/proDet04_big.jpg"></div>
        </div>
        <div class="fl">
            <div class="proIntro change"><p>颜色分类</p>
                <div class="smallImg clearfix"><p class="fl on"><img src="../photo/cc_img/temp/prosmall01.jpg" alt="白瓷花瓶+20支快乐花"
                                                                     data-src="../photo/cc_img/temp/proBig01.jpg"></p>
                    <p class="fl"><img src="../photo/cc_img/temp/prosmall02.jpg" alt="白瓷花瓶+20支兔尾巴草"
                                       data-src="../photo/cc_img/temp/proBig02.jpg"></p>
                    <p class="fl"><img src="../photo/cc_img/temp/prosmall03.jpg" alt="20支快乐花" data-src="../photo/cc_img/temp/proBig03.jpg"></p>
                    <p class="fl"><img src="../photo/cc_img/temp/prosmall04.jpg" alt="20支兔尾巴草" data-src="../photo/cc_img/temp/proBig04.jpg"></p>
                </div>
            </div>
            <div class="changeBtn clearfix"><a href="#2" class="fl"><p class="buy">确认</p></a><a href="#2" class="fr"><p
                    class="cart">取消</p></a></div>
        </div>
    </div>
</div>
<div class="pleaseC"><p>请选择宝贝</p><img class="off" src="../photo/cc_img/temp/off.jpg"/></div>

<script src="../js/cc_js/public.js" type="text/javascript" charset="utf-8"></script>
<script src="../js/cc_js/pro.js" type="text/javascript" charset="utf-8"></script>
<script src="../js/cc_js/cart.js" type="text/javascript" charset="utf-8"></script>
</body>
</html>