<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DangKy.aspx.cs" Inherits="vieclam.com.DangKy" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>DangKy</title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        .auto-style2 {
            text-align: left;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Panel ID="Panel1" runat="server" BackColor="#CCCCCC" Height="100%">
            <asp:MultiView ID="MultiView1" runat="server">
                <asp:View ID="LuaChon" runat="server">
                    <asp:Panel ID="Panel2" runat="server" BackColor="#FFFF99" Height="50%" Width="100%">
                        <asp:Label ID="Label1" runat="server" Text="Chon vai tro"></asp:Label>
                        <asp:RadioButton ID="LuaChon_UV" runat="server" OnCheckedChanged="LuaChon_UV_CheckedChanged" Text="Ung vien" AutoPostBack="True" GroupName="VaiTro" />
                        <asp:RadioButton ID="LuaChon_NTD" runat="server" Text="Nha tuyen dung" AutoPostBack="True" GroupName="VaiTro" OnCheckedChanged="LuaChon_NTD_CheckedChanged" />
                    </asp:Panel>
                </asp:View>
                <asp:View ID="View_UV" runat="server">
                    <asp:Panel ID="panel_view_uv" runat="server" BackColor="#FFFF99">
                        <strong>
                        <asp:Label ID="DangKy_UV" runat="server" Text="Dang ky ung vien"></asp:Label>
                        </strong>
                        <br />
                        <asp:Label ID="nhap_ten_uv" runat="server" Text="Nhap ten ung vien"></asp:Label>
                        <br />
                        <asp:TextBox ID="Ten_UV" runat="server"></asp:TextBox>
                        <br />
                        <asp:Label ID="nhap_diachi_uv" runat="server" Text="Nhap ten ung vien"></asp:Label>
                        <br />
                        <asp:TextBox ID="DiaChi_UV" runat="server"></asp:TextBox>
                        <br />
                        <asp:Label ID="nhap_ns_uv" runat="server" Text="Nhap ngay sinh ung vien"></asp:Label>
                        <br />
                        <asp:TextBox ID="NS_UV" runat="server"></asp:TextBox>
                        <br />
                        <asp:Label ID="nhap_email_uv" runat="server" Text="Nhap email ung vien"></asp:Label>
                        <br />
                        <asp:TextBox ID="Email_UV" runat="server"></asp:TextBox>
                        <br />
                        <asp:Label ID="nhap_sdt_uv" runat="server" Text="Nhap so dien thoai ung vien"></asp:Label>
                        <br />
                        <asp:TextBox ID="SDT_UV" runat="server"></asp:TextBox>
                        <br />
                        <asp:Label ID="nhap_ten_uv0" runat="server" Text="Nhap ten dang nhap ung vien"></asp:Label>
                        <br />
                        <asp:TextBox ID="TDN_UV" runat="server"></asp:TextBox>
                        <br />
                        <asp:Label ID="nhap_diachi_uv0" runat="server" Text="Nhap mat khau ung vien"></asp:Label>
                        <br />
                        <asp:TextBox ID="MK_UV" runat="server"></asp:TextBox>
                        <br />
                        <asp:RadioButton ID="Nam_UV" runat="server" Text="Nam" />
                        <asp:RadioButton ID="Nu_UV" runat="server" Text="Nu" />
                        <br />
                        <asp:Button ID="Nut_DK_UV" runat="server" OnClick="DK_UV_Click" Text="Dang ky ung vien" Width="200px" />
                        <br />
                        <asp:Label ID="ThongBao_UV" runat="server" Text="Label"></asp:Label>
                    </asp:Panel>
                </asp:View>
                <asp:View ID="View_NTD" runat="server">
                    <asp:Panel ID="Panel4" runat="server" BackColor="#FFFF99">
                        <div id="panel_view_ntd" class="auto-style2">
                            <strong>
                            <asp:Label ID="DangKy_NTD" runat="server" Text="Dang ky nha tuyen dung"></asp:Label>
                            </strong>
                            <br />
                            <asp:Label ID="nhap_ten_ntd" runat="server" Text="Nhap ten nha tuyen dung"></asp:Label>
                            <br />
                            <asp:TextBox ID="Ten_NTD" runat="server"></asp:TextBox>
                            <br />
                            <asp:Label ID="nhap_diachi_ntd" runat="server" Text="Nhap ten nha tuyen dung"></asp:Label>
                            <br />
                            <asp:TextBox ID="DiaChi_NTD" runat="server"></asp:TextBox>
                            <br />
                            <asp:Label ID="nhap_ns_ntd" runat="server" Text="Nhap ngay sinh nha tuyen dung"></asp:Label>
                            <br />
                            <asp:TextBox ID="NS_NTD" runat="server"></asp:TextBox>
                            <br />
                            <asp:Label ID="nhap_email_ntd" runat="server" Text="Nhap email nha tuyen dung"></asp:Label>
                            <br />
                            <asp:TextBox ID="Email_NTD" runat="server"></asp:TextBox>
                            <br />
                            <asp:Label ID="nhap_sdt_ntd" runat="server" Text="Nhap so dien thoai nha tuyen dung"></asp:Label>
                            <br />
                            <asp:TextBox ID="SDT_NTD" runat="server"></asp:TextBox>
                            <br />
                            <asp:Label ID="nhap_ten_uv1" runat="server" Text="Nhap ten dang nhap nha tuyen dung"></asp:Label>
                            <br />
                            <asp:TextBox ID="TDN_NTD" runat="server"></asp:TextBox>
                            <br />
                            <asp:Label ID="nhap_diachi_uv1" runat="server" Text="Nhap mat khau nha tuyen dung"></asp:Label>
                            <br />
                            <asp:TextBox ID="MK_NTD" runat="server"></asp:TextBox>
                            <br />
                            <asp:RadioButton ID="Nam_NTD" runat="server" Text="Nam" />
                            <asp:RadioButton ID="Nu_NTD" runat="server" Text="Nu" />
                            <br />
                            <asp:Button ID="Nut_DK_NTD" runat="server" OnClick="DK_NTD_Click" Text="Dang ky nha tuyen dung" Width="200px" />
                            <br />
                            <asp:Label ID="ThongBao_NTD" runat="server" Text="Label"></asp:Label>
                        </div>
                    </asp:Panel>
                </asp:View>
            </asp:MultiView>
        </asp:Panel>
    </form>
</body>
</html>
