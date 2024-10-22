using System;
using System.Data;
using System.Data.OleDb;
using System.IO;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace vieclam.com
{
    public partial class ViecLam : Page
    {
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string hoTen = HoTen.Text;
            string gioiTinh = GioiTinh.SelectedValue;
            string ngaySinh = NS.SelectedDate.ToString("yyyy-MM-dd");
            string kyNang = string.Empty;
            foreach (ListItem item in KyNang.Items)
            {
                if (item.Selected)
                {
                    if (!string.IsNullOrEmpty(kyNang))
                    {
                        kyNang += ", ";
                    }
                    kyNang += item.Text;
                }
            }

            string connectionString = System.Configuration.ConfigurationManager.ConnectionStrings["demo_timkiemviecConnectionString"].ConnectionString;

            using (OleDbConnection connection = new OleDbConnection(connectionString))
            {
                try
                {
                    connection.Open();
                    string query = "INSERT INTO CVs (HoTen, GioiTinh, NgaySinh, KyNang) VALUES (?, ?, ?, ?)";
                    using (OleDbCommand command = new OleDbCommand(query, connection))
                    {
                        command.Parameters.AddWithValue("?", hoTen);
                        command.Parameters.AddWithValue("?", gioiTinh);
                        command.Parameters.AddWithValue("?", ngaySinh);
                        command.Parameters.AddWithValue("?", kyNang);

                        int result = command.ExecuteNonQuery();
                        if (result > 0)
                        {
                            if (Upload_File.HasFile)
                            {
                                string fileName = Path.GetFileName(Upload_File.FileName);
                                string filePath = Server.MapPath("~/Uploads/") + fileName;
                                Upload_File.SaveAs(filePath);

                                Response.Write("CV đã được gửi thành công! Tệp đã được lưu: " + fileName);
                            }
                            else
                            {
                                Response.Write("CV đã được gửi thành công! Nhưng không có tệp nào được tải lên.");
                            }
                        }
                        else
                        {
                            Response.Write("Không thể gửi CV.");
                        }
                    }
                }
                catch (Exception ex)
                {
                    Response.Write("Có lỗi xảy ra: " + ex.Message);
                }
            }
        }

    }
}
