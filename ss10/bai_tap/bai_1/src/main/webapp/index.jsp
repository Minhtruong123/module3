c:forEach=""<%--
  Created by IntelliJ IDEA.
  User: ACER
  Date: 10/02/2023
  Time: 11:07 SA
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <style>
        th,td{
            border: 1px solid black;
        }
    </style>
    <title>Danh sách khách hàng</title>
</head>
<body>
<h1>Danh sach khach hang</h1>
<table class="table" style="border: 1px solid black">
    <thead>
    <tr>
        <th>Tên</th>
        <th>Ngày sinh</th>
        <th>Địa chỉ</th>
        <th>Ảnh</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="client" items="${khachHangList}">
        <tr>
            <td scope="row">${client.name}</td>
            <td>${client.date}</td>
            <td>${client.address}</td>
            <td><img src="${client.picture}" alt="" width="30px" height="30px"></td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>
