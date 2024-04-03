<%--
  Created by IntelliJ IDEA.
  User: dmstn
  Date: 2024-04-03
  Time: 오후 2:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <style>
        #menu {
            font-family: Arial, Helvetica, sans-serif;
            border-collapse: collapse;
            width: 100%;
            font-weight: bolder;
        }

        #menu td, #menu th {
            border: 1px solid #ddd;
            padding: 8px;
        }

        /*#menu tr:hover {background-color: deeppink; font-style: italic}*/

        #menu th {
            padding-top: 12px;
            padding-bottom: 12px;
            text-align: center;
            background-color: darkblue;
            color: white;

        }
        /*table tr:not(.no-hover):hover {*/
        /*    background-color: darkblue;*/
        /*}*/
        .hover-target:hover {
            background-color:pink;
            font-style: italic
        }
    </style>
</head>
<body>
<h1 style="text-align: center; color : darkblue";>Today's menu</h1>

<table id="menu">
    <caption style="margin:20px; font-size:18px;">menu table</caption>
<thead>
<tr>
    <th>메뉴</th>
    <th>개수</th>
    <th>가격</th>
</tr>

</thead>
    <tbody>

    <tr class="hover-target">

        <td>1</td>
        <td>김밥</td>
        <td>5000</td>
    </tr>
    <tr class="hover-target">
        <td>2</td>
        <td>토마토 파스타</td>
        <td>18000</td>
    </tr>
    <tr class="hover-target">
        <td>3</td>
        <td>오늘의 스프</td>
        <td>13000</td>
    </tr>
    </tbody>
</table>
</body>
</html>