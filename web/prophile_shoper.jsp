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

            <h2> پروفایل خریدار </h2>
        </div>
        <div class="col-md-12 talgh" style="margin-right: 150px;padding-top: 40px">
            <div class="col-md-3" style="height: 90%;width: 40%;background-color: black;padding-top: 40px;margin-right: 280px">
                <s:form action="Register" cssStyle="padding-top: 30px;padding-right: 30px;">
                    <s:textfield name="fname" label="نام" cssStyle="margin-right: 20px;margin-right: 20px;"/>
                    <s:textfield name="lname" label="نام خانوادگی" cssStyle="margin-right: 20px;margin-right: 20px;"/>
                    <s:textfield name="username" label="نام کاربری"  cssStyle="margin-right: 20px;margin-right: 20px;"/>
                    <s:password name="password" label="رمز عبور" cssStyle="margin-right: 20px;margin-right: 20px;"/>
                    <s:textfield name="phone" label="تلفن"  cssStyle="margin-right: 20px;margin-right: 20px;"/>
                    <s:textfield name="address" label="آدرس"  cssStyle="margin-right: 20px;margin-right: 20px;"/>
                    <s:textfield name="city" label="شهر"  cssStyle="margin-right: 20px;margin-right: 20px;"/>
                    <tr>
                        <td colspan="2">
                            <s:submit theme="simple" value="ثبت نام" cssStyle="background-color: #4CAF50; border: none; color: white; padding: 15px 32px; text-align: center; text-decoration: none;  display: inline-block; font-size: 16px;"/>
                            <s:submit theme="simple" value="لغو" action="Cancel" cssStyle="background-color: #f44336; border: none; color: white;  padding: 15px 32px; text-align: center; text-decoration: none;  display: inline-block; font-size: 16px;float: left;"/>
                        </td>
                    </tr>
                </s:form>
                <%--<form style="padding-top: 30px;padding-right: 30px;font-size: 20px;float: right"> نام <input type="text" name="1" style="margin-right: 20px"></form>--%>
                <%--<form style="padding-top: 30px;padding-right: 30px;font-size: 20px">نام خانوادگی <input type="text" name="1" style="margin-right: 20px"></form>--%>

                <%--<form style="padding-top: 30px;padding-right: 30px;font-size: 20px;float: right">کد ملی<input type="text" name="1" style="margin-right: 20px"></form>--%>
                <%--<form style="padding-top: 30px;padding-right: 30px;font-size: 20px"> شهر<input type="text" name="1" style="margin-right: 20px"></form>--%>

                <%--<form style="padding-top: 30px;padding-right: 30px;font-size: 20px;float: right"> کد پستی<input type="text" name="1" style="margin-right: 20px"></form>--%>
                <%--<form style="padding-top: 30px;padding-right: 30px;font-size: 20px">تلفن<input type="text" name="1" style="margin-right: 20px"></form>--%>
                <%--<form style="padding-top: 30px;padding-right: 30px;font-size: 20px;float: right">نام کاربری<input type="text" name="1" style="margin-right: 20px"></form>--%>
                <%--<form style="padding-top: 30px;padding-right: 30px;font-size: 20px">ادرس<input type="text" name="1" style="margin-right: 20px"></form>--%>
                <%--<div dir="ltr" style="padding-top: 25px;padding-left: 25px;">--%>
                    <%--<button  style="background-color: #4caf50;width: 70px;height: 40px; margin-right: 20px;color: white;font-size: 20px"> لغو</button>--%>
                    <%--<button   style="background-color: #4caf50;width: 70px;height: 40px;color: white;font-size: 20px">تایید</button>--%>
                <%--</div>--%>
            </div>


        </div>
    </div>
</div>
</body>
</html>