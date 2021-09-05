using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SASystem.admin
{
    public partial class users : System.Web.UI.Page
    {
        string _dbcon = ConfigurationManager.ConnectionStrings["sasyCon"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //string Role = GetCookie(1).ToString();
                //if (Role == "Admin" || Role == "Stakeholder")
                //{
                //    UpdatePanel1.Visible = false;
                //    lblHide.Text = "Sorry!, you have no access to this page";
                //    lblHide.ForeColor = System.Drawing.Color.Red;
                //}


            }
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
        protected void btnCancel_ServerClick(object sender, EventArgs e)
        {
            textEmail.Text = "";
        }

        protected void GridView2_RowUpdated(object sender, GridViewUpdatedEventArgs e)
        {
            lblMsg.Text = "Done successfully";
            lblMsg.ForeColor = System.Drawing.Color.Green;
        }

        protected void GridView2_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView2.PageIndex = e.NewPageIndex;
            GridView2.DataBind();
        }
    }
}