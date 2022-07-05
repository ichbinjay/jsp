<jsp:include page="index.html" />

<!DOCTYPE html>

<html>

<head>
    <title>registration form</title>
</head>

<body>
    <form action="updated.jsp">
        <table>
            <tr>
                <td>Enter email</td>
                <td> <input type="mail" name="mail" required placeholder="enter name" autofocus> </td>
            </tr>
            <tr>
                <td>Enter address to update: </td>
                <td> <textarea rows=2 colums=2 name="address"></textarea></td>
            </tr>
            <tr>
                <td><input type="submit" name="update"></td>
            </tr>
    </form>
</body>

</html>