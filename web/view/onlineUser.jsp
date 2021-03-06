<%--
  Created by IntelliJ IDEA.
  User: 王大哥
  Date: 2021/1/7
  Time: 16:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Online</title>
    <link rel="stylesheet" href="../css/wei/onlineUser.css">
</head>
<body>
<article>
    <h1>在线用户列表</h1>
    <table>
        <tr>
            <td class="td_head">Icon</td>
            <td class="td_head">ID</td>
            <td class="td_head">Name</td>
            <td class="td_head">Type</td>
            <td class="td_head">LoginDate</td>
        </tr>
        <tr>
            <td class="td_info">
                <img class="pic" src="h1.jpg">
            </td>
            <td class="td_info">
                10128
            </td>
            <td class="td_info">
                wangwei
            </td>
            <td class="td_info">
                BUYER
            </td>
            <td class="td_info">
                2020-12-12 12:31:22
            </td>
        </tr>
        <tr>
            <td class="td_info">
                <img class="pic" src="h2.jpg">
            </td>
            <td class="td_info">
                12541
            </td>
            <td class="td_info">
                javaweb
            </td>
            <td class="td_info">
                SELLER
            </td>
            <td class="td_info">
                2020-12-12 11:31:22
            </td>
        </tr>
        <tr>
            <td class="td_info">
                <img class="pic" src="h3.jpg">
            </td>
            <td class="td_info">
                15971
            </td>
            <td class="td_info">
                wangdage
            </td>
            <td class="td_info">
                SELLER
            </td>
            <td class="td_info">
                2020-12-12 11:20:22
            </td>
        </tr>
        <tr>
            <td class="td_info">
                <img class="pic" src="h4.jpg">
            </td>
            <td class="td_info">
                12981
            </td>
            <td class="td_info">
                IAmTrying
            </td>
            <td class="td_info">
                Buyer
            </td>
            <td class="td_info">
                2020-12-12 11:15:52
            </td>
        </tr>
        <tr>
            <td class="td_info">
                <img class="pic" src="h5.jpg">
            </td>
            <td class="td_info">
                12451
            </td>
            <td class="td_info">
                SlowDown
            </td>
            <td class="td_info">
                Buyer
            </td>
            <td class="td_info">
                2020-12-12 10:58:42
            </td>
        </tr>
        <c:forEach items="${applicationScope.onlineUserList}" var="onlineUser">
            <tr>
                <td class="td_info">
                    <img class="pic" src="../${onlineUser.user.picUrl}">
                </td>
                <td class="td_info">
                        ${onlineUser.user.id}
                </td>
                <td class="td_info">
                        ${onlineUser.user.name}
                </td>
                <td class="td_info">
                        ${onlineUser.type}
                </td>
                <td class="td_info">
                        ${onlineUser.date}
                </td>
            </tr>
        </c:forEach>
    </table>
</article>
</body>
</html>