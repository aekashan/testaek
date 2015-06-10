<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="JQueryAjaxFileUpload.aspx.cs"
    Inherits="WebApplication.JQueryAjaxFileUpload" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <label>
        Select File(s) to upload</label>
    <input type="file" multiple="multiple" id="selectFiles" />
    <input type="button" id="cmdUpload" value="Upload" />
    
    <div id="preview">
    </div>
    <hr />
    <div>
        <table id="TableShowImage">
            <tbody>
                <tr>
                </tr>
            </tbody>
        </table>
    </div>
    <div id="results">
    </div>
    <script src="js/jquery-1.11.0.min.js" type="text/javascript"></script>
    <script type="text/javascript">


        $("#selectFiles").change(function () { 

            var files = $("#selectFiles").prop("files");
            for (var i = 0; i < files.length; i++) {
                (function (file) {
                    if (file.type.indexOf("image") == 0 || file.type.indexOf("application/pdf") == 0) {
                        var fileReader = new FileReader();
                        fileReader.onload = function (f) {
                            var img = "<td><object  data='@data' type='application/pdf' title='@title' style='width: 200px; height: 200px; margin:15px;'></object></td>";
                            img = img.replace('@data', f.target.result);
                            img = img.replace('@title', file.name);
                            $("#TableShowImage > tbody > tr").append(img);
                        };

                        fileReader.readAsDataURL(file);
                    }
                })(files[i]);
            }

        });



        $("#cmdUpload").click(function () {
            debugger;
            var data = GetDataForUpload();
            for (var i = 0; i < data.length; i++) {
                var webMethod = 'JQueryAjaxFileUpload.aspx/UploadFiles';
                var response = AjaxWebService(webMethod, data[i]);
            }

        });

        function GetDataForUpload() {
            var data = [];
            var rows = $("#TableShowImage > tbody > tr > td");
            for (var i = 0; i < rows.length; i++) {
                var _temp;
                var ImgSrcReplace = $(rows[i]).find("object").eq(0).prop('data').replace('data:image/jpeg;base64,', '');
                var ImgSrcReplace = ImgSrcReplace.replace('data:image/png;base64,', '');
                var ImgSrcReplace = ImgSrcReplace.replace('data:application/pdf;base64,', '');
                var Name = $(rows[i]).find("object").eq(0).prop('title');

                _temp = {
                    Id:  i
                    , Urlname: ImgSrcReplace
                    , Name: Name
                }
                data.push(_temp);
            }
            return data;
        }

        function AjaxWebService(webMethod, data) {
            var _tmp;
                    $.ajax({
                        async: false
                    , type: "POST"
                    , url: webMethod
                    , contentType: "application/json; charset=utf-8"
                    , dataType: "json"
                    , data: "{data:'" + JSON.stringify(data).replace(/'/g, "\\'\\'") + "'}"
                    , success: function (response) {
                        _tmp = response.d
                    }
                    , error: function (xhr, status, msg) {
                        var error = eval("(" + xhr.responseText + ")");
                        console.log(error.Message);
                        _tmp = null
                    }
                    });

            return _tmp;
        }


    </script>
    </form>
</body>
</html>
