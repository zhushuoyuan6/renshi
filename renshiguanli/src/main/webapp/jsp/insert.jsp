<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="/dotinajia" method="post">
    <p>姓名<input type="text" name="name"/></p>
    <p>性别
        <select name="gender">
            <option selected="selected" value="0">女</option>
            <option value="1">男</option>
        </select>
    </p>
    <p>年龄<input type="text" name="age"/></p>
    <p>等级
    <select name="rank">
        <option value="1">1级</option>
        <option value="2">2级</option>
        <option value="3">3级</option>
        <option value="4">4级</option>
        <option value="5">5级</option>
    </select>
    </p>
    <p>部门<input type="text" name="department"/></p>
    <input type="submit" value="提交"/>
</form>
</body>
</html>
