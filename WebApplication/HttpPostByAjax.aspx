<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HttpPostByAjax.aspx.cs" Inherits="WebApplication.HttpPost" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>

<form action="" method="post" enctype="multipart/form-data" name="form1" id="form2">  
  ชื่อ  
  <input name="name" type="text" id="name" />  
  อีเมลล์  
  <input name="email" type="text" id="email" />  
  <input type="button" name="Button" value="Send" id="btn1" />  
  <p id="myplace"></p>
    <script src="js/jquery-1.11.0.min.js" type="text/javascript"></script>
    <script>
        // JavaScript Document
        function createAjax() {
            var request = false;
            try {
                request = new ActiveXObject('Msxml2.XMLHTTP');
            }
            catch (err2) {
                try {
                    request = new ActiveXObject('Microsoft.XMLHTTP');
                }
                catch (err3) {
                    try {
                        request = new XMLHttpRequest();
                    }
                    catch (err1) {
                        request = false;
                    }
                }
            }
            return request;
        }

            $("#btn1").click(function () {

                    var ajax1 = createAjax();
                    ajax1.onreadystatechange = function () {
                        if (ajax1.readyState == 4 && ajax1.status == 200) {
                            document.getElementById('myplace').innerHTML = ajax1.responseText;
                        } else {
                            return false;
                        }
                    }
                    ajax1.open("POST", "HttpResponsePost.aspx", true);
                    ajax1.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
                    ajax1.send("name=" + document.form1.name.value + "&email=" + document.form1.email.value);

            });

    </script>
    </form>
</body>
</html>
