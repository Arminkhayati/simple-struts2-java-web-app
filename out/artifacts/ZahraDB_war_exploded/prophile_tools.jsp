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

            <h2> پروفایل کارگاه ابزار کشاورزی </h2>
        </div>
        <div class="col-md-12 talgh" style="margin-right: 150px;padding-top: 40px">
            <div class="col-md-3" style="height: 400px;width: 80%;background-color: black;padding-top: 40px;margin-right: 100px">
                <form style="padding-top: 30px;padding-right: 30px;font-size: 20px;float: right"> نام کارگاه <input type="text" name="1" style="margin-right: 20px"></form>
                <form style="padding-top: 30px;padding-right: 30px;font-size: 20px">نام مالک <input type="text" name="1" style="margin-right: 20px"></form>

                <form style="padding-top: 30px;padding-right: 30px;font-size: 20px;float: right">تاریخ تاسیس<input type="text" name="1" style="margin-right: 20px"></form>



                <form style="padding-top: 30px;padding-right: 30px;font-size: 20px">تلفن<input type="text" name="1" style="margin-right: 20px"></form>
                <form style="padding-top: 30px;padding-right: 30px;font-size: 20px;float: right">نام کاربری<input type="text" name="1" style="margin-right: 20px"></form>
                <form style="padding-top: 30px;padding-right: 30px;font-size: 20px">ادرس<input type="text" name="1" style="margin-right: 20px"></form>
                <div dir="ltr" style="padding-top: 25px;padding-left: 25px;">
                    <a href="index.jsp"style="color: white"> <button  style="background-color: #4caf50;width: 70px;height: 40px; margin-right: 20px;color: white;font-size: 20px"> لغو</button></a>
                    <a href="login_tools.jsp"style="color: white"><button   style="background-color: #4caf50;width: 70px;height: 40px;color: white;font-size: 20px">تایید</button></a>


                </div>
            </div>


        </div>
    </div>
</div>
</body>
</html>