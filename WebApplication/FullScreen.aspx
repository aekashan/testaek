<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FullScreen.aspx.cs" Inherits="WebApplication.FullScreen" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="js/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <script src="js/jquery-1.11.0.min.js" type="text/javascript"></script>

    <script src="js/fullscreen.js" type="text/javascript"></script>
</head>
<body>
    <form id="form1" runat="server">
    <div class="container">
    <div class="btn-group">
                <a id="toggleFullScreen" class="btn btn-default btn-sm" data-toggle="tooltip" data-original-title="Fullscreen" data-placement="bottom">
                  <i class="glyphicon glyphicon-fullscreen"></i>
                </a> 
              </div>
    
    </div>
    </form>
    <script>
        /**
        * Bootstrap-Admin-Template v2.1.4
        * Author : [object Object] 
        * Copyright 2014
        * Licensed under ,, (,,)
        */
    
        var toggleFullScreen = {
            init: function () {
                void 0 !== window.screenfull && screenfull.enabled ? $("#toggleFullScreen").on("click", function (a) {
                    screenfull.toggle(window.document[0]), $("body").toggleClass("fullScreen"), a.preventDefault()
                }) : $("#toggleFullScreen").addClass("hidden")
            }
        };
        toggleFullScreen.init();
    </script>
</body>
</html>


