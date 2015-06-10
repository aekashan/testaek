<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BootstrapTable.aspx.cs" Inherits="WebApplication.BootstrapTable" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="js/bootstrap/css/bootstrap-theme.min.css" rel="stylesheet" type="text/css" />
    <link href="js/bootstrap/css/bootstrap-table.css" rel="stylesheet" type="text/css" />

    <script src="js/jquery-1.11.0.min.js" type="text/javascript"></script>
    <script src="js/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
    <script src="js/bootstrap/js/bootstrap-table.js" type="text/javascript"></script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <button type="button" class="btn btn-default" data-container="body" data-toggle="popover" data-placement="left" data-content="Vivamus sagittis lacus vel augue laoreet rutrum faucibus.">
  Popover on left
</button>
    <table id="table" >
    <thead>
        <tr>
            <th data-field="id">Item ID</th>
            <th data-field="name">Item Name</th>
            <th data-field="price">Item Price</th>
        </tr>
    </thead>
</table>
    
    </div>
    <script>

        $('#table').bootstrapTable({
            url: 'data/data1.json'
        });

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
