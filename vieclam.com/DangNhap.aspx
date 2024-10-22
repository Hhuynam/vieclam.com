<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DangNhap.aspx.cs" Inherits="vieclam.com.DangNhap" %>

<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Đăng nhập</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 20px;
            background-color: #f0f0f0;
        }
        .formdangnhap {
            border-radius: 5px;
            cursor: move; 
            position: absolute; 
            margin: 10px;
            padding: 20px;
            background-color: #CCCCCC;
            top: 17px;
            left: 408px;
            z-index: 1;
        }
        .labelquenmatkhau {
            border-radius: 5px;
            cursor: move; 
            position: absolute; 
            margin: 10px;
            padding: 10px; 
            top: 423px;
            left: 421px;
            width: 125px;
            z-index: 2;
            font-size: small;
        }
    
        .draggable-HyperLink1 {
            border-radius: 5px;
            cursor: move;
            position: absolute;
            margin: 10px;
            padding: 10px;
            top: 159px;
            left: 280px;
            height: -7px;
        }

        </style>
    <script>
        $(document).ready(function () {
            $(".formdangnhap, .labelquenmatkhau").draggable({
                containment: "window"
            });
        });
    </script>
</head>
<body>
    <form id="form1" runat="server"> 
        <asp:Panel ID="Panel1" runat="server" BackColor="#FF9933" CssClass="auto-style1" Height="366px">
            <asp:Login ID="Login1" runat="server" CssClass="formdangnhap" Height="200px" LoginButtonText="Đăng nhập" PasswordLabelText="Mật khẩu:" RememberMeText="Nhớ mật khẩu" TitleText="Đăng nhập" UserNameLabelText="Tên đăng nhập:" Width="300px" DestinationPageUrl="~/trangchu.aspx" OnLoggingIn="Login1_LoggingIn">
            </asp:Login>
        </asp:Panel>
    </form>
</body>
</html>
