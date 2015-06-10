<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DatePicker.aspx.cs" Inherits="WebApplication.DatePicker" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <input id="datetimepicker" type="text" >
    </div>
    <link href="js/datepicker/jquery.datetimepicker.css" rel="stylesheet" type="text/css" />
    <script src="js/jquery-1.11.0.min.js" type="text/javascript"></script>
    <script src="js/datepicker/jquery.datetimepicker.js" type="text/javascript"></script>
    <script>

        //อ้างอิง http://javascript-array.com/
        jQuery('#datetimepicker').datetimepicker({
            format: 'Y-m-d H:i',
            lang: 'th'
        });

    </script>
    </form>
</body>
</html>
