using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SASystem
{
    public partial class Admin : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //string Role = GetCookie(1).ToString();
            //if (Role != "Admin" || Role!="Stakeholder")
            //{
            //    Response.Redirect("~/index.aspx");
            //}
        }
        private string GetCookie(int index)
        {
            string cookieName = FormsAuthentication.FormsCookieName;
            HttpCookie authCookie = Context.Request.Cookies[cookieName];
            FormsAuthenticationTicket authTicket = null;
            authTicket = FormsAuthentication.Decrypt(authCookie.Value);

            string userData = authTicket.Name;
            string[] userDataSplit = userData.Split("|".ToCharArray());
            return userDataSplit[index].ToString();

        }
    }
}