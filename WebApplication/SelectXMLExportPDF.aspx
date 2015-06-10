<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SelectXMLExportPDF.aspx.cs" Inherits="WebApplication.SelectXMLExportPDF" %>

<!doctype>
<html>
<head>
   <title>jsPDF</title>
    <script src="js/jquery-1.11.0.min.js" type="text/javascript"></script>
</head>

<body>
<form>
<asp:Panel ID="pnlPerson" runat="server">
    <table border="1" style="font-family: Arial; font-size: 10pt; width: 200px">
        <tr>
            <td colspan="2" style="background-color: #18B5F0; height: 18px; color: White; border: 1px solid white">
                <b>Personal Details</b>
            </td>
        </tr>
        <tr>
            <td><b>Name:</b></td>
            <td><asp:Label ID="lblName" runat="server"></asp:Label></td>
        </tr>
        <tr>
            <td><b>Age:</b></td>
            <td><asp:Label ID="lblAge" runat="server"></asp:Label></td>
        </tr>
        <tr>
            <td><b>City:</b></td>
            <td><asp:Label ID="lblCity" runat="server"></asp:Label></td>
        </tr>
        <tr>
            <td><b>Country:</b></td>
            <td><asp:Label ID="lblCountry" runat="server"></asp:Label></td>
        </tr>
    </table>
</asp:Panel>

<input id="xxx" type=button />

<script>
    $("#xxx").click(function () {
        alert();
    });
</script>
</form>
</body>
</html>
