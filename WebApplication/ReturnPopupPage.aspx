<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ReturnPopupPage.aspx.cs" Inherits="WebApplication.ReturnPopupPage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
            <input type="submit" value="return" id="return" />
    </div>
    <script src="js/jquery-1.11.0.min.js" type="text/javascript"></script>
<script>



//        function RefreshParent() {
//            if (window.opener != null && !window.opener.closed) {
//                window.opener.location.reload();
//            }
//        }
        //window.onbeforeunload = RefreshParent;
        window.onbeforeunload = function (e) { window.opener.CallBackPageCashierUpload(); };


</script>
    </form>
</body>
</html>
