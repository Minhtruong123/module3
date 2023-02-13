<%--
  Created by IntelliJ IDEA.
  User: ACER
  Date: 13/02/2023
  Time: 4:45 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create Product</title>
</head>
<body>
<form method="post">
    <fieldset>
        <legend>Product infomation</legend>
        <table class="table">
            <tr>
                <td scope="row">Name Product</td>
                <td><input type="text" name="name" id="name"></td>
            </tr>
            <tr>
                <td scope="row">Price Product</td>
                <td><input type="text" name="price" id="price"></td>
            </tr>
            <tr>
                <td scope="row">Describe Product</td>
                <td><input type="text" name="describe" id="describe"></td>
            </tr>
            <tr>
                <td scope="row">Producer Product</td>
                <td><input type="text" name="producer" id="producer"></td>
            </tr>
            <tr>
                <td scope="row"></td>
                <td><input name="update" id="update" class="btn btn-primary" type="submit" value="Update"></td>
            </tr>
        </table>
    </fieldset>
</form>
</body>
</html>
