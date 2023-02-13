<%--
  Created by IntelliJ IDEA.
  User: ACER
  Date: 13/02/2023
  Time: 8:06 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Delete Product</title>
</head>
<body>
<form method="post">
    <h2>Delete the product</h2>
    <table>
        <tr>
            <td>Name product:</td>
            <td>${requestScope["product"].getNameProduct()}</td>
        </tr>
        <tr>
            <td>Price product:</td>
            <td>${requestScope["product"].getPrice()}</td>
        </tr>
        <tr>
            <td>Describe product:</td>
            <td>${requestScope["product"].getDescribe()}</td>
        </tr>
        <tr>
            <td>Producer product:</td>
            <td>${requestScope["product"].getProducer()}</td>
        </tr>
        <tr>
            <td><input type="submit" value="Delete product"></td>
            <td><a href="/product">Back to product list</a></td>
        </tr>
    </table>
</form>
</body>
</html>
