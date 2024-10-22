<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TrangChu.aspx.cs" Inherits="vieclam.com.TrangChu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>TrangChu</title>
    <style>
        .auto-style1 {
            position: absolute;
            left: 214px;
            top: 260px;
            width: 838px;
            height: 253px;
        }
        .Nut_DangNhap {
            position: absolute;
        }
        .Nut_DangKy {
            position: absolute;
        }
        .Nut_HoSo {
            position: absolute;
        }
        .Nut_CamNang {
            position: absolute;
        }
        .Nut_ViecLam {
            position: absolute;
        }
        .auto-style2 {
            position: absolute;
            left: 716px;
            top: 15px;
        }
        .auto-style3 {
            position: absolute;
            left: 950px;
            top: 15px;
        }
        .auto-style6 {
            position: absolute;
            left: 207px;
            top: 15px;
        }
        .auto-style7 {
            position: absolute;
            left: 399px;
            top: 15px;
        }
        .auto-style8 {
            position: absolute;
            left: 10px;
            top: 15px;
        }
        </style>
    <script>
        $(document).ready(function () {
            $(".gridview-css, .Nut_DangKy, .Nut_DangNhap, .Nut_CamNang, .Nut_HoSo, .Nut_ViecLam").draggable({ containment: "window" });
        });
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Panel ID="Panel1" runat="server" BackColor="#FFFF99" CssClass="gridview-css" Height="700px">
                <asp:Panel ID="Panel2" runat="server" BackColor="#FFCC66" Height="100px" Width="100%">
                    <asp:Button runat="server" Text="Viec lam" Width="150px" PostBackUrl="~/ViecLam.aspx" CssClass="auto-style8" />
                    <asp:Button ID="HoSo" runat="server" Text="Ho so" Width="150px" PostBackUrl="~/HoSo.aspx" CssClass="auto-style6" />
                    <asp:Button ID="CamNang" runat="server" Text="Cam nang viec lam" Width="150px" PostBackUrl="~/CamNangViecLam.aspx" CssClass="auto-style7" />
                    <asp:Button ID="Nut_DangNhap" runat="server" Height="50px" Text="Dang nhap" Width="200px" CssClass="auto-style2" PostBackUrl="~/DangNhap.aspx" />
                    <asp:Button ID="Nut_DangKy" runat="server" Height="50px" Text="Dang ky" Width="200px" CssClass="auto-style3" PostBackUrl="~/DangKy.aspx" />
                    <asp:GridView ID="GridView1" runat="server" CssClass="auto-style1" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Id" DataSourceID="SqlDataSource1" EnableModelValidation="True" ForeColor="#333333" GridLines="None">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                            <asp:BoundField DataField="MoTa" HeaderText="MoTa" SortExpression="MoTa" />
                            <asp:BoundField DataField="ID_NhaTuyenDung" HeaderText="ID_NhaTuyenDung" SortExpression="ID_NhaTuyenDung" />
                            <asp:BoundField DataField="Ten_NhaTuyenDung" HeaderText="Ten_NhaTuyenDung" SortExpression="Ten_NhaTuyenDung" />
                            <asp:BoundField DataField="ID_BaiDang" HeaderText="ID_BaiDang" SortExpression="ID_BaiDang" />
                            <asp:BoundField DataField="KyNang" HeaderText="KyNang" SortExpression="KyNang" />
                            <asp:BoundField DataField="TrinhDo" HeaderText="TrinhDo" SortExpression="TrinhDo" />
                            <asp:BoundField DataField="DiaChi_CV" HeaderText="DiaChi_CV" SortExpression="DiaChi_CV" />
                        </Columns>
                        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                    </asp:GridView>  
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    Lua chon dia diem cong viec<br />
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:demo_timkiemviecConnectionString %>" ProviderName="<%$ ConnectionStrings:demo_timkiemviecConnectionString.ProviderName %>" SelectCommand="SELECT [DiaChi_CV] FROM [BaiDangTuyenDung]"></asp:SqlDataSource>
                    <asp:DropDownList ID="LuaChonDiaDiem" runat="server" DataSourceID="SqlDataSource2" DataTextField="DiaChi_CV" DataValueField="DiaChi_CV" Height="17px" Width="178px">
                    </asp:DropDownList>
                    <br />
                    Lua chon mo ta cong viec<br />
                    <asp:ListBox ID="ListBox1" runat="server" DataSourceID="SqlDataSource3" DataTextField="MoTa" DataValueField="MoTa" Width="177px"></asp:ListBox>
                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:demo_timkiemviecConnectionString %>" ProviderName="<%$ ConnectionStrings:demo_timkiemviecConnectionString.ProviderName %>" SelectCommand="SELECT [MoTa], [Id], [ID_NhaTuyenDung], [Ten_NhaTuyenDung], [ID_BaiDang], [KyNang], [TrinhDo] FROM [BaiDangTuyenDung]"></asp:SqlDataSource>
                    <br />
                    <asp:Button ID="Nut_TimKiem" runat="server" Height="34px" OnClick="Nut_TimKiem_Click" Text="Tim kiem" Width="99px" />
                </asp:Panel>
            </asp:Panel>
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:demo_timkiemviecConnectionString %>" ProviderName="<%$ ConnectionStrings:demo_timkiemviecConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [BaiDangTuyenDung]"></asp:SqlDataSource>
    </form>
</body>
</html>
