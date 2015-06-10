<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SelectXMLExportExcel.aspx.cs" Inherits="WebApplication.SelectXMLExportExcel" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
            <nav class="navbar navbar-default navbar-fixed-top" role="navigation">
            <div class="container">
                <div class="container-fluid">
    <div>
        <table id="tbShow" border="1">
        <thead>
            <tr>
                <td>EmpId</td>
                <td>Name</td>
                <td>Sex</td>
                <td>Phone</td>
            </tr>
        </thead>
        <tbody>
        
        </tbody>
        </table>

        <hr />
        <input type="button" id="btnExcel" />
        <input type="button" id="btnPdf" />
    </div>
    </div>
    </div>
    <link href="css/style.css" rel="stylesheet" type="text/css" />
    <link href="js/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />

    <script src="js/jquery-1.11.0.min.js" type="text/javascript"></script>
    <script src="js/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
    
    <script type="text/javascript" src="js/Export/tableExport.js"></script>
    <script type="text/javascript" src="js/Export/jquery.base64.js"></script>
    <script Language="javascript">


        AjaxGetData(); 

        function AjaxGetData() {
            var webMethod = "../SelectXMLExportExcel.aspx/Getdata";
            var data = null;
            var response = AjaxWebService(webMethod, data);
            CreateRow(response);

        }
        function CreateRow(response) {

            var row = "";
            for (var i = 0; i < response.length; i++) {

                row += "<tr>" +
                            "<td> " + response[i].EmpId + "</td>" +
                            "<td> " + response[i].Name + "</td>" +
                            "<td> " + response[i].Sex + "</td>" +
                            "<td> " + response[i].Phone + "</td>" +
                        "</tr>";
            }

                 $("#tbShow > tbody").append(row);                       
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

        $("#btnExcel").click(function () {
            $('#tbShow').tableExport({
                type: 'excel'
                , escape: 'false' 
            
            });
        });

        $("#btnPdf").click(function () {
            $('#tbShow').tableExport({
                type: 'excel'
                , escape: 'false' 
            
            });
        });
    </script>
    </form>
</body>
</html>
