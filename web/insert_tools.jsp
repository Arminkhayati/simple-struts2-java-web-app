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

            <h2> درج ابزار کشاورزی </h2>
        </div>
        <div class="col-md-12 talgh" style="margin-right: 150px;padding-top: 40px">
            <div class="col-md-3" style="height: 90%;width: 80%;background-color: black;padding-top: 40px;margin-right: 100px">
                <form style="padding-top: 30px;padding-right: 30px;font-size: 20px;float: right;">تعداد <input type="text" name="1" style="margin-right: 20px;"></form>
                <form style="padding-top: 30px;padding-right: 30px;font-size: 20px;">اندازه <input type="text" name="1" style="margin-right: 20px"></form>
                <form style="padding-top: 30px;padding-right: 30px;font-size: 20px;float: right">کیفیت<input type="text" name="1" style="margin-right: 20px"></form>
                <form style="padding-top: 30px;padding-right: 30px;font-size: 20px">تاریخ برداشت<input type="text" name="1" style="margin-right: 20px"></form>
                <form style="padding-top: 30px;padding-right: 30px;font-size: 20px;float: right"> رنگ<input type="text" name="1" style="margin-right: 20px"></form>

                <form style="padding-top: 30px;padding-right: 30px;font-size: 20px"> کد <input type="text" name="1" style="margin-right: 20px"></form>
                <form style="padding-top: 30px;padding-right: 30px;font-size: 20px;float: right">نوع<<input type="text" name="1" style="margin-right: 20px"></form>
                <form style="padding-top: 30px;padding-right: 30px;font-size: 20px">کارگاه سازنده<input type="text" name="1" style="margin-right: 20px"></form>

                <div dir="ltr" style="padding-top: 25px;padding-left: 25px;">
                    <a href="tools_user.jsp"style="color: white"><button  style="background-color: #4caf50;width: 70px;height: 40px; margin-right: 20px;color: white;font-size: 20px"> لغو</button></a>
                    <a href="tools_user.jsp"style="color: white"><button   style="background-color: #4caf50;width: 70px;height: 40px;color: white;font-size: 20px"> تایید</button></a>
                </div>
            </div>


        </div>
    </div>
</div>
</body>
</html>