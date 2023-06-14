//convert aboce struts jsp code to spring mvc jsp code
// Path: src\main\webapp\WEB-INF\view\test.jsp
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>Add Student</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
    href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
<link rel="stylesheet"
    href="https://use.fontawesome.com/releases/v5.4.1/css/all.css">
</head>

<body>
    <div class="container my-5">
        <h3>Add Student</h3>
        <div class="card">
            <div class="card-body">
                <div class="col-md-10">

                    <form:form action="/epass/OrphanUidDetails"
                    method="post" modelAttribute="command">
    <c:if test="${empty msg}">
        <br>
        <a href='OrphanUidDetails.do?type=getData' title="Click Here to View Details"> <b>Click Here to View Details</b>
        </a>
        <table align="center" class="shadow"
            style=" width: 430; height:50px; border-collapse:collapse; border-radius: 6px; " border="0"
            bgcolor="#C2E0FF">
            <tr>
                <td colspan="4" class="border" align="center"><b> Orphan UID Details Entry</b> </td>
            </tr>
            <tr>
                <td></td>
            </tr>   
            <tr>
                <td></td>
            </tr>
            <tr>
                <td></td>
            </tr>
            <tr>
                <td style="font-weight: bold; font-family:Georgia; font-size: 13px;" colspan="1" align="right">
                    Enter UID : </td>
                <td>
                    <form:input path="uid" style="width: 160px" onblur="uidValidate(this,'12')" styleId="aadhar"
                        styleClass="textfield" onkeyup="intOnly(this);" maxlength="12" />
                </td>
            </tr>
            <tr>
                <td></td>
            </tr>
            <tr>
                <td></td>
            </tr>
            <tr>
                <td></td>
            </tr>
            <tr>
                <td colspan="2">
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <form:checkbox path="is_orphan" styleId="orphan_id" />&nbsp; <font> Applicant belongs to
                        <b>Orphan</b> Category. So No need to Enter/Upload Income Details in Application Registration.
                    </font>
                </td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    <input type="submit" value="Submit Details" onclick="return getAcyearwiseReport();" />
                </td>
            </tr>
        </table>
    </c:if>
</form:form>
</div>
</div>
</div>
</div>
</body>
</html>

