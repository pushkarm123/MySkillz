<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="canmakeanewpage.aspx.cs" Inherits="MySkillz.WebPages.canmakeanewpage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>My New Page</title>
    <link rel="stylesheet" type="text/css" href="../StyleSheets/MySkillz.css" />
    <script src="../Scripts/jquery-1.10.2.min.js"></script>
    <script>
        $(document).ready(function() {
            $('#btnSubmit').click(function () {
                var inputNumber = $('#inputNumber');
                var count = parseInt(inputNumber.val());
                if (count < parseInt(inputNumber.prop('min')) || count > parseInt((inputNumber.prop('max')))) {
                    alert('Input Number should be from 0 to 60');
                    return;
                }
                $('#btnSubmit').prop('disabled', 'true').css('cursor', 'default');
                inputNumber.prop('readonly', 'true');
                
                var countDown = setInterval(function () {
                    count--;
                    $('#divCount').html(count);
                    if (count == 0) {
                        clearInterval(countDown);
                        $('#divCount').css('font-size', '30px');
                        $('#divCount').html('1 million dollars');
                    }
                }, 1000)
            });
            $('#inputNumber').change(function () {
                $('#divCount').html($('#inputNumber').val());
            });
        });
    </script>
</head>
<body>
    <form id="frmMoneyDisplay" runat="server">
    <div class="default">
        <div id="divCount">10</div>
        <input type="number" id="inputNumber" value="10" title="Enter Countdown Value" class="textbox" min="0" max="60"/>
        <br />
        <input type="button" id="btnSubmit" value="Show Me The Money" class="btnSubmit"/>
        <div style="margin-top:20px">
            <a href="Start.html" title="Redirect to Start Page">Redirect to Start Page</a>
        </div>
    </div>
    </form>
</body>
</html>
