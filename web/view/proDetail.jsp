<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2021/1/15
  Time: 16:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <meta charset="UTF-8">
    <title>详情页</title>
    <link rel="stylesheet" type="text/css" href="../css/cc_css/public.css"/>
    <link rel="stylesheet" type="text/css" href="../css/cc_css/proList.css"/>
</head>
<body>
<!------------------------------head------------------------------>

<!-----------------address------------------------------->
<!-----------------------Detail------------------------------>
<div class="detCon">
    <div class="proDet wrapper">
        <div class="proCon clearfix">
            <div class="proImg fl"><img class="det" src="/${good.goodsPicUrl}"/>
                <div class="smallImg clearfix"></div>
            </div>
            <div class="fr intro">
                <div class="title"><h4>${good.goodsName}</h4>
                    <p>${good.goodsIntroduce}</p><span>￥${good.price}</span></div>
                <div class="proIntro"><p></p>
                    <div class="smallImg clearfix categ"><p class="fl">

                    </div>
                    <p>数量&nbsp;&nbsp;库存<span>${good.goodsStock}</span>件</p>
                    <div class="num clearfix"><img class="fl sub" src="../photo/cc_img/temp/sub.jpg"><span class="fl"
                                                                                                           contentEditable="true">1</span><img
                            class="fl add" src="../photo/cc_img/temp/add.jpg">
                        <p class="please fl">请选择商品属性!</p></div>
                </div>
                <div class="btns clearfix"><a href="#2"><p class="buy fl">立即购买</p></a><a href="#2"><p class="cart fr">
                    加入购物车</p></a></div>
            </div>
        </div>
    </div>
</div>

<div class="gotop"><a href="cart.html">
    <dl class="goCart">
        <dt><img src="../photo/cc_img/gt1.png"/></dt>
        <dd>去购<br/>物车</dd>
        <span>1</span></dl>
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
    <p>400-800-8200</p></div>
<div class="msk"></div><!--footer-->

<script src="../js/cc_js/jquery-1.12.4.min.js" type="text/javascript" charset="utf-8"></script>
<script src="../js/cc_js/jquery.SuperSlide.2.1.1.js" type="text/javascript" charset="utf-8"></script>
<script src="../js/cc_js/public.js" type="text/javascript" charset="utf-8"></script>
<script src="../js/cc_js/nav.js" type="text/javascript" charset="utf-8"></script>
<script src="../js/cc_js/pro.js" type="text/javascript" charset="utf-8"></script>
<script src="../js/cc_js/cart.js" type="text/javascript" charset="utf-8"></script>
<script type="text/javascript">
    jQuery(".bottom").slide({
        titCell: ".hd ul",
        mainCell: ".bd .likeList",
        autoPage: true,
        autoPlay: false,
        effect: "leftLoop",
        autoPlay: true,
        vis: 1
    });

</script>
</body>
</html>
