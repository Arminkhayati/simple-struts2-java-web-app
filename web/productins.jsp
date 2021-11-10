<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/ssssss.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
    <script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
    <style>
        table {
            border-collapse: collapse;
            border: 1px solid black;
            width: 100%;
            height: 100%;
            font-size: x-large;
        }
        td{
            text-align: center;
            padding: 15px;

        }
        tr:hover {background-color: #2F2322;}
    </style>
</head>
<body>
<div class="col-md-12 bg">
    <div class="col-md-12 " style="height:70px ">

        </div>
    <div class="col-md-12 " style="height:70px; background-color: #4caf50;color:#ffffff; padding: 10px ">
        <h2>محصولات کشاورزی</h2>
    </div>
    <div class="col-md-12 talgh"style="margin-right: 150px; ">
        <table>
            <tr>
                <th>نام</th>
                <th>تعداد</th>
                <th>نوع</th>
                <th>شهر</th>
                <th>کیفیت</th>
            </tr>
            <s:iterator value="products" var="product">
                <tr>
                    <td><s:property value="#product.name" /></td>
                    <td><s:property value="#product.count" /></td>
                    <td><s:property value="#product.type" /></td>
                    <td><s:property value="#product.city" /></td>
                    <td><s:property value="#product.quality" /></td>
                </tr>
            </s:iterator>
        </table>
    </div>
    </div>




</body>
</html>