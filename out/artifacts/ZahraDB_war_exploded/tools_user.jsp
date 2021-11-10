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

        <img src="${pageContext.request.contextPath}/pomegranate.png" height="50" width="50"/> </div>
    <div class="col-md-12" style="height:60px; background-color: #4caf50;color:#ffffff; padding: 10px ">

        <h2> کاربر کارگاه ابزار کشاورزی</h2>
    </div>
    <div class="col-md-12 talgh" style="margin-right: 150px;padding-top: 30px">
        <div class="col-md-3" style="height: 150px;width: 500px;background-color: black;margin-right: 300px;text-align: center;padding-top: 20px">
            <a href="insert_tools.jsp" style="color: white"> <h1>درج محصول </h1></a>
        </div><br><br>
       <a href="prophile_tools.jsp"style="color: white"> <div class="col-md-3" style="height: 150px;width: 500px;background-color:black;margin-right: 300px;text-align: center;padding-top: 20px">
            <h1>مشاهده پروفایل</h1>
       </div></a>

    </div>



</div>
</body>
</html>