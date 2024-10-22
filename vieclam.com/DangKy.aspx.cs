using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.OleDb;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace vieclam.com
{
    public partial class DangKy : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                MultiView1.ActiveViewIndex = 0;
            }
        }

        protected void LuaChon_UV_CheckedChanged(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 1;
        }
        protected void LuaChon_NTD_CheckedChanged(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 2;
        }

        protected void DK_UV_Click(object sender, EventArgs e)
        {
            string ten_uv = Ten_UV.Text;
            string tdn_uv = TDN_UV.Text;
            string mk_uv = MK_UV.Text;
            string gt_uv = Nam_UV.Checked ? "Nam" : "Nu";
            string ns_uv = NS_UV.Text;
            string email_uv = Email_UV.Text;
            string dc_uv = DiaChi_UV.Text;
            string sdt_uv = SDT_UV.Text;

            string connectionString = ConfigurationManager.ConnectionStrings["demo_timkiemviecConnectionString"].ConnectionString;
            using (OleDbConnection connection = new OleDbConnection(connectionString))
            {
                string query = "INSERT INTO DangKy (LuaChon_UngVien_NhaTuyenDung, Nhap_Ten, TenDangNhap, MatKhau, LuaChon_GioiTinh, Nhap_NgaySinh, Nhap_Email, Nhap_DiaChi, Nhap_SoDienThoai) " +
                               "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)";

                using (OleDbCommand command = new OleDbCommand(query, connection))
                {
                    command.Parameters.AddWithValue("@LuaChon", "Ứng viên");
                    command.Parameters.AddWithValue("@TenUngVien", ten_uv);
                    command.Parameters.AddWithValue("@TenDangNhap", tdn_uv);
                    command.Parameters.AddWithValue("@MatKhau", mk_uv);
                    command.Parameters.AddWithValue("@GioiTinh", gt_uv);
                    command.Parameters.AddWithValue("@NgaySinh", DateTime.Parse(ns_uv));
                    command.Parameters.AddWithValue("@Email", email_uv);
                    command.Parameters.AddWithValue("@DiaChi", dc_uv);
                    command.Parameters.AddWithValue("@SoDienThoai", sdt_uv);

                    try
                    {
                        connection.Open();
                        command.ExecuteNonQuery();
                        ThongBao_UV.Text = "Đăng ký ứng viên thành công!";
                    }
                    catch (Exception ex)
                    {
                        ThongBao_UV.Text = "Có lỗi xảy ra: " + ex.Message;
                    }
                }
            }
        }

        protected void DK_NTD_Click(object sender, EventArgs e)
        {
            string ten_ntd = Ten_NTD.Text;
            string tdn_ntd = TDN_NTD.Text;
            string mk_ntd = MK_NTD.Text;
            string gt_ntd = Nam_NTD.Checked ? "Nam" : "Nu";
            string ns_ntd = NS_NTD.Text;
            string email_ntd = Email_NTD.Text;
            string dc_ntd = DiaChi_NTD.Text;
            string sdt_ntd = SDT_NTD.Text;

            string connectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            using (OleDbConnection connection = new OleDbConnection(connectionString))
            {
                string query = "INSERT INTO DangKy (LuaChon_UngVien_NhaTuyenDung, Nhap_Ten, TenDangNhap, MatKhau, LuaChon_GioiTinh, Nhap_NgaySinh, Nhap_Email, Nhap_DiaChi, Nhap_SoDienThoai) " +
                               "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)";

                using (OleDbCommand command = new OleDbCommand(query, connection))
                {
                    command.Parameters.AddWithValue("@LuaChon", "Nhà tuyển dụng");
                    command.Parameters.AddWithValue("@TenNhaTuyenDung", ten_ntd);
                    command.Parameters.AddWithValue("@TenDangNhap", tdn_ntd);
                    command.Parameters.AddWithValue("@MatKhau", mk_ntd);
                    command.Parameters.AddWithValue("@GioiTinh", gt_ntd);
                    command.Parameters.AddWithValue("@NgaySinh", DateTime.Parse(ns_ntd));
                    command.Parameters.AddWithValue("@Email", email_ntd);
                    command.Parameters.AddWithValue("@DiaChi", dc_ntd);
                    command.Parameters.AddWithValue("@SoDienThoai", sdt_ntd);

                    try
                    {
                        connection.Open();
                        command.ExecuteNonQuery();
                        ThongBao_UV.Text = "Đăng ký ứng viên thành công!";
                    }
                    catch (Exception ex)
                    {
                        ThongBao_UV.Text = "Có lỗi xảy ra: " + ex.Message;
                    }
                }
            }
        }
    }
}