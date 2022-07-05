<jsp:include page="index.html" />

<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>

<head>
    <title>registration form</title>
</head>

<body>
    <form action="inserted.jsp">
        <table>
            <tr>
                <td>Enter name: </td>
                <td> <input type="text" name="name" size="30" maxlength="4" required placeholder="enter name" autofocus> </td>
            </tr>
            <tr>
                <td>Enter password:</td>
                <td><input type="password" name="password" placeholder="password.." autofocus></td>
            </tr>
            <tr>
                <td>Enter your country:</td>
                <td> <input type="text" name="country" value="India" readonly></td>
            </tr>
            <tr>
                <td>Select gender:</td>
                <td> <input type="radio" name="gender" value="m"> M <input type="radio" name="gender" value="f"> F </td>
            </tr>
            <tr>
                <td>Select hobbies:</td>
                <td> <input type="checkbox" checked name="hobb" value="abc"/> singing <input type="checkbox" name="hobb" value="xyz"/> dancing <input
                        type="checkbox" name="hobb" value="ijk"/> cooking </td>
            </tr>
            <tr>
                <td>enter your mail:</td>
                <td> <input type="email" name="mail"> </td>
            </tr>
            <tr>
                <td>Address:</td>
                <td> <textarea rows=2 colums=2 name="address"></textarea>
                <td>
            </tr>
            <tr>
                <td>Please select state </td>
                <td><select size="3" name="state">
                        <option selected> none </option>
                        <option value="ap"> andhra </option>
                        <option value="ap"> telangana </option>
                    </select> </td>
            </tr>
            <tr>
                <td><input type="submit" name="register"></td>
                <td> <input type="reset"> </td>
            </tr>
    </form>
</body>

</html>