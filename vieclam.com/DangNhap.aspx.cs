using System;
using System.Collections.Generic;

using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace vieclam.com
{
    public partial class DangNhap : System.Web.UI.Page
    {
        protected void Login1_LoggingIn(object sender, System.Web.UI.WebControls.LoginCancelEventArgs e)
        {
            if (Login1.UserName == "admin" && Login1.Password == "123")
            {
                FormsAuthentication.SetAuthCookie(Login1.UserName, Login1.RememberMeSet);
                Response.Redirect("TrangChu.aspx");
            }
            else
            {
                Login1.FailureText = "Tên đăng nhập hoặc mật khẩu không đúng.";
                e.Cancel = true;
            }
        }
    }
}
