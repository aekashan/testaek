<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PopupPageAndCallBack.aspx.cs" Inherits="WebApplication.PopupPageAndCallBack" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <a href="javascript: void(0)" onclick="window.open('ReturnPopupPage.aspx','windowname1','width=200, height=77'); return false;">
            Click here for simple popup window</a>
    </div>
    <script src="js/jquery-1.11.0.min.js" type="text/javascript"></script>
     <script>

//         $("#TestReturn").click(function () {
////             window.open($(this).attr("ReturnPopupPage.aspx"), "popupWindow", "width=600,height=600,scrollbars=yes");
//             window.open("ReturnPopupPage.aspx");

//         });

         function CallBackPageCashierUpload() {
             debugger;
             alert("xxx");
         }

     </script>
    </form>
</body>
</html>
