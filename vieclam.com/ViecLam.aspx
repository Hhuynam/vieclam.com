<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViecLam.aspx.cs" Inherits="vieclam.com.ViecLam" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Mẫu CV Ứng Viên</title>
    <style type="text/css">
        .panel-container {
            background-color: #339966;
            width: 50%;
            margin: 0 auto;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0px 0px 10px 2px #888;
        }

        .form-group {
            margin-bottom: 15px;
        }

        label {
            font-weight: bold;
            color: white;
        }

        .form-control {
            width: 100%;
            padding: 5px;
        }

        .submit-button {
            margin-top: 20px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="panel-container">
            <asp:Panel ID="Panel1" runat="server" CssClass="panel-container">
                <div class="form-group">
                    <asp:Label ID="Label1" runat="server" Text="Họ và tên:" CssClass="form-label"></asp:Label>
                    <asp:TextBox ID="HoTen" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
                <div class="form-group">
                    <asp:Label ID="Label2" runat="server" Text="Giới tính:" CssClass="form-label"></asp:Label>
                    <asp:RadioButtonList ID="GioiTinh" runat="server" CssClass="form-control">
                        <asp:ListItem Text="Nam" Value="Nam"></asp:ListItem>
                        <asp:ListItem Text="Nữ" Value="Nữ"></asp:ListItem>
                    </asp:RadioButtonList>
                </div>
                <div class="form-group">
                    <asp:Label ID="Label3" runat="server" Text="Ngày sinh:" CssClass="form-label"></asp:Label>
                    <asp:Calendar ID="NS" runat="server"></asp:Calendar>
                </div>
                <div class="form-group">
                    <asp:Label ID="Label4" runat="server" Text="Kỹ năng:" CssClass="form-label"></asp:Label>
                    <asp:CheckBoxList ID="KyNang" runat="server" CssClass="form-control">
                        <asp:ListItem Text="Java" Value="Java"></asp:ListItem>
                        <asp:ListItem Text="C#" Value="C#"></asp:ListItem>
                        <asp:ListItem Text="Python" Value="Python"></asp:ListItem>
                    </asp:CheckBoxList>
                </div>
                <div class="form-group">
                    <asp:Label ID="Label5" runat="server" Text="Tải lên CV:" CssClass="form-label"></asp:Label>
                    <asp:FileUpload ID="Upload_File" runat="server" CssClass="form-control" />
                </div>
                <div class="Gui_CV">
                    <asp:Button ID="Gui_CV" runat="server" Text="Gửi CV" CssClass="form-control" OnClick="btnSubmit_Click" />
                </div>
            </asp:Panel>
        </div>
    </form>
</body>
</html>