<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<center>
    <table border="1px">
        <tr>
            <td>编号</td>
            <td>姓名</td>
            <td>性别</td>
            <td>年龄</td>
            <td>等级</td>
            <td>部门</td>
            <td>操作</td>
        </tr>
        <c:forEach items="${pageInfo}" var="list">
            <tr>
                <td>${list.id}</td>
                <td>${list.name}</td>
                <td>
                    <c:if test="${list.gender==0}">
                        女
                    </c:if>
                    <c:if test="${list.gender==1}">
                        男
                    </c:if>
                </td>
                <td>${list.age}</td>
                <td>
                    <c:if test="${list.rank==1}">
                        1级
                    </c:if>
                    <c:if test="${list.rank==2}">
                        2级
                    </c:if>
                    <c:if test="${list.rank==3}">
                        3级
                    </c:if>
                    <c:if test="${list.rank==4}">
                        4级
                    </c:if>
                    <c:if test="${list.rank==5}">
                        5级
                    </c:if>

                </td>
                <td>${list.department}</td>
                <td>
                    <a href="/del?id=${list.id}">删除</a>
                </td>
            </tr>
        </c:forEach>
    </table>
    <form action="/tianjia">
        <input type="submit" value="添加成员"/>
    </form>
</center>
</body>
</html>
