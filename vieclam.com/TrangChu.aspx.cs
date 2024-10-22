using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace vieclam.com
{
    public partial class TrangChu : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Nut_TimKiem_Click(object sender, EventArgs e)
        {      
                string diaChi = LuaChonDiaDiem.SelectedValue;
                string moTa = ListBox1.SelectedValue;

                if (string.IsNullOrEmpty(diaChi) || string.IsNullOrEmpty(moTa))
                {
                    Response.Write("<script>alert('Vui lòng chọn địa chỉ và mô tả công việc!');</script>");
                    return;
                }

                SqlDataSource1.SelectCommand = "SELECT * FROM [BaiDangTuyenDung] WHERE [DiaChi_CV] = ? AND [MoTa] = ?";
                SqlDataSource1.SelectParameters.Clear();
                SqlDataSource1.SelectParameters.Add("DiaChi", diaChi);
                SqlDataSource1.SelectParameters.Add("MoTa", moTa);

                GridView1.DataBind();

                if (GridView1.Rows.Count == 0)
                {
                    Response.Write("<script>alert('Không có công việc nào phù hợp với tìm kiếm của bạn!');</script>");
                }
            }

        }
}