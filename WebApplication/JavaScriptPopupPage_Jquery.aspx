<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="JavaScriptPopupPage_Jquery.aspx.cs"
    Inherits="WebApplication.JavaScriptPopupPage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script>
        function popup(url) {
            params = 'width=' + screen.width;
            params += ', height=' + screen.height;
            params += ', top=0, left=0'
            params += ', fullscreen=yes';

            newwin = window.open(url, 'windowname4', params);
            if (window.focus) { newwin.focus() }
            return false;
        }

        function popupCenter(url) {
            var width = 300;
            var height = 200;
            var left = (screen.width - width) / 2;
            var top = (screen.height - height) / 2;
            var params = 'width=' + width + ', height=' + height;
            params += ', top=' + top + ', left=' + left;
            params += ', directories=no';
            params += ', location=no';
            params += ', menubar=no';
            params += ', resizable=no';
            params += ', scrollbars=no';
            params += ', status=no';
            params += ', toolbar=no';
            newwin = window.open(url, 'windowname5', params);
            if (window.focus) { newwin.focus() }
            return false;
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <a href="javascript: void(0)" onclick="window.open('popup.html','windowname1','width=200, height=77'); return false;">
            Click here for simple popup window</a>
        <hr />
        <a href="javascript: void(0)" onclick="window.open('popup.html', 
                  'windowname2', 
                  'width=200, \
                   height=77, \
                   directories=no, \
                   location=no, \
                   menubar=no, \
                   resizable=no, \
                   scrollbars=1, \
                   status=no, \
                   toolbar=no'); 
                  return false;">Click here for specific popup window </a>
        <hr />
        <input id="ExamPopupPageJQuery" type="button" />
        <hr />
        <div id="ExamPopupTaxA">
        </div>
        <hr />
        <a href="javascript: void(0)" onclick="popup('popup.html')">Fullscreen popup window</a>
        <hr />
        <a href="javascript: void(0)" onclick="popupCenter('popup.html')">Centered popup window</a>
        <hr />

    </div>

    <script src="js/jquery-1.11.0.min.js" type="text/javascript"></script>

    <script>

        BindTaxA_popup();

        $("#ExamPopupPageJQuery").click(function () {
            window.open($(this).attr("www.silkspan.com"), "popupWindow", "width=600,height=600,scrollbars=yes");
        });

        function BindTaxA_popup() {
            linkPopupTaxA = "<a href='javascript: void(0)' onclick=\"window.open('popup.html','windowname1','width=725, height=625'); return false;\">popup Tax a </a>";
            $("#ExamPopupTaxA").empty();
            $("#ExamPopupTaxA").append(linkPopupTaxA);
        }



    </script>
    </form>
</body>
</html>
