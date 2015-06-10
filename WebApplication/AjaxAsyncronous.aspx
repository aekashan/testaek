<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AjaxAsyncronous.aspx.cs" Inherits="WebApplication.AjaxAsyncronous" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="<%= this.ResolveClientUrl("~/css/ajax-loader.css") %>" rel="stylesheet" type="text/css" />

</head>
<body>
    <form id="form1" runat="server">
    <div>
        <input type="text" />
        <input type="button" id="btnTestProgress" />
    </div>
    <div class="ajax-loader">
        <div class="ajax-loader-icon">
            <div id="circularG">
                <div id="circularG_1" class="circularG"></div>
                <div id="circularG_2" class="circularG"></div>
                <div id="circularG_3" class="circularG"></div>
                <div id="circularG_4" class="circularG"></div>
                <div id="circularG_5" class="circularG"></div>
                <div id="circularG_6" class="circularG"></div>
                <div id="circularG_7" class="circularG"></div>
                <div id="circularG_8" class="circularG"></div>
            </div>
        </div>
    </div>
    <script src="js/jquery-1.11.0.min.js" type="text/javascript"></script>
    <script src="js/pace.min.js" type="text/javascript"></script>
     <script>
         $(window).load(function () {
             // Animate loader off screen
             $(".ajax-loader").delay(500).fadeOut("slow");
         });

         $("#btnTestProgress").click(function () {
             AjaxGetData();
         });

         function AjaxGetData() {
             debugger;
//             $(".ajax-loader").show();
             var webMethod = "../AjaxAsyncronous.aspx/Getdata";
             var data = null;
             var response = WebService(webMethod, data);
//             $(".ajax-loader").hide();
         }

         function WebService(webMethod, data) 
         {
             Pace.restart();
             var _tmp;
             $.ajax({
                          async: true
                        , type: "POST"
                        , url: webMethod
                        , contentType: "application/json; charset=utf-8"
                        , dataType: "json"
                        , data: "{data:'" + JSON.stringify(data).replace(/'/g, "\\'\\'") + "'}"
                        , success: function (response) {
                            _tmp = response.d
                        },
                        error: function (xhr, status, msg) 
                                 {
                                     var error = eval("(" + xhr.responseText + ")");
                                     MessageBox("<div class='text-center text-red'><p style='font-size:60px'><i class='glyphicon glyphicon-remove-circle'></i></p><p>ระบบไม่สามารถให้บริการได้</p><p>อาจเกิดจากปัญหาเครือข่าย หรือ ปัญหาการทำงานของระบบ</p><p>ติดต่อสอบถามและแจ้งปัญหาได้ที่ IT@silksapn หมายเลขโทรศัพท์ภายใน 503</p></div>");
                                     _tmp = null
                                 },
                                 complete: function () {
                                     Pace.stop();
                                 }
                    });
             return _tmp;
         }


    </script>
    </form>
</body>
</html>
