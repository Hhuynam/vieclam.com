<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HoSo.aspx.cs" Inherits="vieclam.com.HoSo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>HoSo</title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Panel ID="Panel1" runat="server" BackColor="#FFFF99">
                <h2 class="auto-style1">Thong tin ve ho so ung vien</h2>
                    <div class="auto-style1">
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" CssClass="GridView-css" DataKeyNames="Id" DataSourceID="SqlDataSource1" EnableModelValidation="True" ForeColor="#333333" GridLines="None" Height="100%" Width="100%">
                            <AlternatingRowStyle BackColor="White" />
                            <Columns>
                                <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                                <asp:BoundField DataField="HoTen" HeaderText="HoTen" SortExpression="HoTen" />
                                <asp:BoundField DataField="GioiTinh" HeaderText="GioiTinh" SortExpression="GioiTinh" />
                                <asp:BoundField DataField="NgaySinh" HeaderText="NgaySinh" SortExpression="NgaySinh" />
                                <asp:BoundField DataField="KyNang" HeaderText="KyNang" SortExpression="KyNang" />
                            </Columns>
                            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:demo_timkiemviecConnectionString %>" ProviderName="<%$ ConnectionStrings:demo_timkiemviecConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [CVs]"></asp:SqlDataSource>
                </div>
            </asp:Panel>
        </div>
    </form>
</body>
</html>
