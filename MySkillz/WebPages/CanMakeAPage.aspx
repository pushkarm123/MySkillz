<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CanMakeAPage.aspx.cs" Inherits="MySkillz.WebPages.CanMakeAPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>My Skillz</title>
    <link rel="stylesheet" type="text/css" href="../StyleSheets/MySkillz.css" />
    <script src="../Scripts/jquery-1.10.2.min.js"></script>
    <script>
        $(document).ready(function () {
            $('#tb2').attr('value', 'Starting...');
            $('#inputSubmit').click(function () {
                $('#tb2').attr('value', 'Coming soon...');
                $('#inputSubmit').prop('disabled', 'true');
                $('#inputSubmit').css('cursor', 'default');
            });
        });
    </script>
</head>
<body>
    <form id="frmMySkillz" runat="server">
        <div>
            <div class="default">
                <h2>Server Side Controls</h2>
                <asp:TextBox ID="tb1" ReadOnly="true" CssClass="textbox" runat="server" />
                <br />
                <asp:Button ID="btnSubmit" Text="When is it coming?" ToolTip="When is it coming?" CssClass="btnSubmit" runat="server"/>
                <div style="margin-top:20px">
                    <a href="Start.html" title="Redirect to Start Page">Redirect to Start Page</a>
                </div>
            </div>
            <div class="default">
                <h2>Client Side Controls</h2>
                <input type="text" id="tb2" class="textbox" readonly="true" />
                <br />
                <input type="button" id="inputSubmit" value="When is it coming?" title="When is it coming?" class="btnSubmit"/>
            </div>
        </div>
        <br />
        
    </form>
</body>
</html>
