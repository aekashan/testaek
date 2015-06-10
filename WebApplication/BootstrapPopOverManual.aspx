<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BootstrapPopOverManual.aspx.cs" Inherits="WebApplication.BootstrapPopOverManual" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="js/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <script src="js/jquery-1.11.0.min.js" type="text/javascript"></script>
    <script src="js/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>

</head>
<body>
    <form id="form1" runat="server">
    <div class="container">
        <h2><a href="#" >I am some content with a Tooltip</a></h2>
        <input type="text" class='pointer popoverKeyPress' html="true"  data-toggle="popover" data-content='data' data-trigger="manual" id="tip1" />
        <input type="button" id="testdebugger" value="btdebugger" />
    </div>
    </form>
    <script>
        $(".popoverKeyPress").popover({
                    html: true,
                    trigger: 'manual',
                    container: $(this).attr('id'),
                    placement: 'top'
                }).keypress(function (e) {

            $("#tip1").attr("title", "กรุณาใสตัวเลข");
            $("#tip1").attr("data-content", "<table class'table'><tr><td>Test ToolTip</td></tr></table>");
            $('#tip1').popover('show');

            setTimeout(function () { $('#tip1').popover('hide'); }, 1500);
        });
</script>

    <script>



        $("#testdebugger").click(function () {
            var aa = "55";

            alert(aa);

        });
    </script>
</body>
</html>
