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

            <h2>ثبت خرید </h2>
        </div>
        <div class="col-md-12 talgh" style="margin-right: 150px;padding-top: 40px">
            <div class="col-md-3" style="height: 80%;width: 500px;background-color: black;margin-right:250px">
                <h1 style="text-align: center; text-transform: uppercase;color: #4CAF50;">
                    خرید انجام شد.
                </h1>
                <%--<s:form action="Buy" cssStyle="align-content: center;padding-top: 30px;padding-right: 30px;">--%>
                    <%--<s:textfield name="price" label="قیمت" cssStyle="margin-right: 20px;margin-right: 20px;">--%>
                        <%--<s:property value="price"/>--%>
                    <%--</s:textfield>--%>
                    <%--<s:textfield name="totalPrice" label="قیمت کل" cssStyle="margin-right: 20px;margin-right: 20px;">--%>
                        <%--<s:property value="totalPrice"/>--%>
                    <%--</s:textfield>--%>
                    <%--<s:submit  theme="simple" value="ثبت خرید" cssStyle="background-color: #4CAF50; border: none; color: white; padding: 15px 32px; text-align: center; text-decoration: none;  display: inline-block; font-size: 16px;"/>--%>
                    <%--<s:submit action="Cancel" theme="simple" value="لغو" cssStyle="background-color: #4CAF50; border: none; color: white; padding: 15px 32px; text-align: center; text-decoration: none;  display: inline-block; font-size: 16px;"/>--%>
                <%--</s:form>--%>

            </div>


        </div>
    </div>
</div>
</body>
</html>