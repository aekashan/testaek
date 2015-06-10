<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TestDebuggerIE.aspx.cs" Inherits="WebApplication.TestDebuggerIE" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head  runat="server">
    <title></title>
    <link href="js/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <script src="js/jquery-1.11.0.min.js" type="text/javascript"></script>
    <script src="js/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>

</head>
<body>
      <form id="form1" runat="server">
    <div class="container">
        <input type="button" id="testdebugger" value="btdebugger" />
    </div>
    </form>

    <script>



        $("#testdebugger").click(function () {
            var aa = "55";

            alert(aa);

        });
    </script>
</body>
</html>
