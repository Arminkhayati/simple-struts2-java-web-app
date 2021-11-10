<%@ taglib prefix="s" uri="/struts-tags" %>
<%--
  Created by IntelliJ IDEA.
  User: armin
  Date: 1/25/19
  Time: 1:33 PM
  To change this template use File | Settings | File Templates.
--%>
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

    <img src="${pageContext.request.contextPath}/pomegranate.png" height="50" width="50" style="float: right;margin-left: 30px"/>
    <h2 style="padding-top: 15px;margin-left: 10px;color: white"> فارمو</h2>
  </div>
  <div class="col-md-12" style="height:60px; background-color: #4caf50;color:#ffffff; padding: 10px ">

    <div class="col-md-12" style="width:60%;height: 60%; float: left">    <a href="http://localhost:63342/untitled/productins.html?_ijt=bq7ftuusqpqvhe5l5ohvh03bdp"style="color: white">  <h2> نمایش محصولات کشاورزی</h2></a> </div>
    <div class="col-md-12" style="width:60%;height: 60%;margin-left: 50px; padding-right: 150px"><a href="http://localhost:63342/untitled/tools.html?_ijt=dmt3fds5ome5q92dkmshjnf0c0"style="color: white">  <h2> نمایش ابزار کشاورزی</h2></a> </div>


  </div>
  <div class="col-md-12 talgh"style="margin-right:150px">
    <div class="col-md-3 " style="background-color:#953b39 ;width: 33%; float: right">
      <a href="<s:url action="FarmerLogin"/> "style="color: white;"><h1 style="font-size: 20px;text-align: center">کشاورز</h1></a>
    </div>

    <div class="col-md-3 " style="width: 34%;background-color: rebeccapurple;float: right">
      <a href= "<s:url action="ShoperLogin"/>" style="color: white"> <h1 style="font-size: 20px;text-align: center">خریدار</h1></a>
    </div>
    <div class="col-md-3 " style="width: 33%;background-color: black;float: right">
      <a href= "login_tools.jsp"style="color: white">  <h1 style="font-size: 20px;text-align: center">کارگاه ابزار کشاورزی</h1></a>
    </div>
  </div>



</div>

</body>
</html>