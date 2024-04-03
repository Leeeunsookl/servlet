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
    <h1 style="text-align: center; color:blue">Menu Order</h1>


    <form action="/menu/order" method="post" style=" margin: 20px;">
    <select name="menuName" id="menu" style="idth: 300px; /* 너비 조정 */
            height: 40px; /* 높이 조정 */
            padding: 5px 10px; /* 내부 여백 */
            font-size: 16px; /* 글꼴 크기 */
            border: 1px solid #ddd; /* 테두리 스타일 */
            border-radius: 5px; /* 테두리 둥글기 */
            justify-content: center;">
        <option value="kimbap">kimbap</option>
        <option value="pasta">tomato pasta</option>
        <option value="soup">cream soup</option>
    </select>
    <input type="number" min="1" max="30" step="1" name="amount"
           style="width: 300px; /* 너비 조정 */
            height: 40px; /* 높이 조정 */
            padding: 5px 10px; /* 내부 여백 */
            font-size: 16px; /* 글꼴 크기 */
            border: 1px solid #ddd; /* 테두리 스타일 */
            border-radius: 5px; /* 테두리 둥글기 */
           ">

    <button type="submit" style=" width: 200px; /* 너비 조정 */
            height: 40px; /* 높이 조정 */
            font-size: 16px; /* 글꼴 크기 */
            border: 1px solid #007bff; /* 테두리 스타일 */
            background-color: #007bff; /* 배경 색상 */
            color: white; /* 글자 색상 */
            border-radius: 5px; /* 테두리 둥글기 */
            cursor: pointer; /* 커서 모양 변경 */

            justify-content: center;
            ">
        order complete</button>
    </form>
</head>
<body>

</body>
</html>
