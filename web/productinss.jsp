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
        #table1 {
            border-collapse: collapse;
            border: 1px solid black;
            width: 100%;
            height: 100%;
            font-size: x-large;
        }
        #td1{
            text-align: center;
            padding: 15px;

        }
        #tr1:hover {background-color: #2F2322;}
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
        <table id="table1">
            <tr>
                <th>شناسه</th>
                <th>نام</th>
                <th>تعداد</th>
                <th>نوع</th>
                <%--<th>تاریخ</th>--%>
                <th>شهر</th>
                <th>کیفیت</th>
            </tr>
            <s:iterator value="products" var="product">
                <tr id="tr1">
                   <td id="td1"><s:property value="#product.id" /></td>
                    <td><s:property value="#product.name" /></td>
                    <td><s:property value="#product.count" /></td>
                   <td><s:property value="#product.type" /></td>
                   <td><s:property value="#product.city" /></td>
                   <td><s:property value="#product.quality" /></td>
                </tr>
            </s:iterator>
        </table>

    </div>
    <br><br>
        <div class="col-md-12 talgh"style="margin-right: 150px; ">
            <s:form action="Purchase" cssStyle="align-content: center;padding-top: 30px;padding-right: 30px;">
                <s:textfield name="id" label="شناسه محصول" cssStyle="margin-right: 20px;margin-right: 20px;"/>
                <s:textfield name="count" label="تعداد" cssStyle="margin-right: 20px;margin-right: 20px;"/>
                <s:submit  theme="simple" value="ثبت خرید" cssStyle="background-color: #4CAF50; border: none; color: white; padding: 15px 32px; text-align: center; text-decoration: none;  display: inline-block; font-size: 16px;"/>
            </s:form>
        </div>
    </div>




</body>
</html>