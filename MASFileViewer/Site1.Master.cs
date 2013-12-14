using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MASFileViewer
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                FormsAuthentication.RedirectFromLoginPage("Admin", false);
            }

            _loggedIn.Visible = HttpContext.Current.User.Identity.IsAuthenticated;
            _login.Visible = !_loggedIn.Visible;
        }
    }
}