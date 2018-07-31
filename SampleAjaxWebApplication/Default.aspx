<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="SampleAjaxWebApplication.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table>
                <tr>
                    <td>  name </td>
                    <td>  <input type="text" id ="t1" />  </td>
                </tr>
                <tr>
                    <td>  city  </td>
                    <td>  <input type="text" id ="t2" />  </td>
                </tr>
                <tr>
                    <td> 
                        <input type="button" id="b1" value="insert" onclick="insert();"/> 
                    </td>
                </tr>
            </table>
        </div>
    </form>

    <script type="text/javascript">
        function insert() {
            var name = document.getElementById("t1").value;
            var city = document.getElementById("t2").value;

            var xmlHttp = new XMLHttpRequest();
            xmlHttp.open("GET", "insert.aspx?nm=" + name + "&ct=" + city, false);
            xmlHttp.send(null);

            document.getElementById("t1").value = "";
            document.getElementById("t2").value = "";

            alert("record inserted successfully");
        }
    </script>
</body>
</html>
