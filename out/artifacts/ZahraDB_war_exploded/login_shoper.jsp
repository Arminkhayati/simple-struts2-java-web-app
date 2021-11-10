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


</head>
<body>

<div class="col-md-12 bg">
    <div class="col-md-12" style="height:70px ">
        <img src="${pageContext.request.contextPath}/pomegranate.png" height="50" width="50"/>
    <div class="col-md-12" style="height:60px; background-color:#4caf50;color:#ffffff; padding: 10px ">

        <h2> نمایش محصولات </h2>
    </div>
    <div class="col-md-12 talgh" style="margin-right: 150px;padding-top: 40px">
        <div class="col-md-3"  style="height: 400px;width: 500px;background-color: black;margin-right:250px">
            <s:form action="BuyerProfile/BuyerLogin" cssStyle="padding-top: 40px;padding-right: 40px;">
                <s:textfield name="username" label="نام کاربری" cssStyle="margin-right: 20px;margin-right: 20px;"/>
                <s:password name="password" label="رمز عبور" cssStyle="margin-right: 20px;margin-right: 20px;"/>
                <tr>
                    <td colspan="2">
                        <s:submit theme="simple" value="ورود" cssStyle="background-color: #4CAF50; border: none; color: white; padding: 15px 32px; text-align: center; text-decoration: none;  display: inline-block; font-size: 16px;"/>
                    </td>
                </tr>
            </s:form >
            <a href="<s:url action="BuyerRegister/Registeration"/> "style="color: white"> <button  style="background-color: #4caf50;width: 80px;height: 60px; margin-right: 20px;color: white;font-size: 20px">ثبت نام </button></a>

        </div>


    </div>
</div>
</div>
</body>
</html>