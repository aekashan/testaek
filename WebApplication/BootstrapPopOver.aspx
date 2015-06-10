<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BootstrapPopOver.aspx.cs" Inherits="WebApplication.BootstrapPopOver" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    
    <link href="js/bootstrap/css/bootstrap-table.css" rel="stylesheet" type="text/css" />
    <link href="js/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <script src="js/jquery-1.11.0.min.js" type="text/javascript"></script>
    <script src="js/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
    <script src="js/bootstrap/js/bootstrap-table.js" type="text/javascript"></script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <p>1</p>
        <p>1</p>  
    </div>
    <div>
        <a id='CoditionPayment' class='pointer popoverOption' data-content='<table class"table"><tr><td>Test ToolTip</td></tr></table>' rel='popover' data-original-title='<b>Test ToolTip header</b>' href='javascript:void(0);'><span>test toolTip</span></a>
    </div>
    <script>

        $(document).ready(function () {
            $(".popoverOption")
                .popover({
                    html: true,
                    trigger: 'manual',
                    container: $(this).attr('id'),
                    placement: 'top'
                }).on("mouseenter", function () {
                    var _this = this;
                    $(this).popover("show");
                    $(this).siblings(".popover").on("mouseleave", function () {
                        $(_this).popover('hide');
                    });
                }).on("mouseleave", function () {
                    var _this = this;
                    setTimeout(function () {
                        if (!$(".popover:hover").length) {
                            $(_this).popover("hide")
                        }
                    }, 100);
                });
        })
    </script>
    </form>
</body>
</html>
