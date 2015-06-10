<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CkEditor.aspx.cs" Inherits="WebApplication.CkEditor" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="js/jquery-1.11.0.min.js" type="text/javascript"></script>
    <script src="js/ckeditor/ckeditor.js" type="text/javascript"></script>

</head>
<body>
    <form id="form1" runat="server">
    <div class="content fill">
        <div class="container">
            <div class="panel">
                <div class="panel-body">
                    <h5 class="underline">CKEditor 4.4.3 Full Package</h5>
                    <p><textarea id="editor1" name="editor1" rows="10" cols="100"></textarea></p>
                    <p><input id="Button1" type="button" value="Json Deserialization" class="btn bg-blue" /></p>
                    <p><div id="deserialization"></div></p>
                </div>
            </div>
        </div>
    </div> 
    <script>
//        var helpers = new Helpers();
//        var utility = helpers.utility;
//        delete helpers;

        CKEDITOR.replace('editor1', {});

//        $(function () {
//            var webMethod = 'ckediter.aspx/JsonSerializer';
//            var data = "";
//            var response = utility.webMethod(webMethod, data);
//            if (response) {
//                var value = response[0].editer;
//                CKEDITOR.instances['editor1'].setData(value);
//            }
//        });

        $(document).on("click", "#Button1", function () {
            var value = CKEDITOR.instances['editor1'].getData();
            var webMethod = 'ckediter.aspx/JsonDeserialize';
            var data = { editer: value };
            var response = utility.webMethod(webMethod, data);
            if (response) {
                $("#deserialization").html(response);
                setTimeout(function () {
                    $("#deserialization").fadeOut('slow');
                }, 3000);
            }
        }); 


    </script>
    </form>
</body>
</html>
