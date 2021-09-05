using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SASystem
{
    public partial class Site : System.Web.UI.MasterPage
    {
        private static string _dbcon = ConfigurationManager.ConnectionStrings["sasyCon"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            //string Role = GetCookie(1).ToString();
            //if (Role == "Applicant" )
            //{
            //    
            //}
            GetApplicationStatus();
            //hfA.Value = Role.Trim();
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
        private void GetApplicationStatus()
        {
            try
            {
                using (SqlConnection _con = new SqlConnection(_dbcon))
                {
                    SqlCommand cmd = new SqlCommand("select SessionName, startDate, endDate from tblSession where status=@status;", _con);
                    cmd.Parameters.AddWithValue("status", true);
                    _con.Open();
                    SqlDataReader sdr = cmd.ExecuteReader();
                    if (sdr.Read())
                    {

                        lblBlinkMsg.InnerText = sdr["SessionName"].ToString().Trim() + "application begins from " + Convert.ToDateTime(sdr["startDate"].ToString().Trim()).ToShortDateString() + " to " + Convert.ToDateTime(sdr["endDate"].ToString().Trim()).ToShortDateString();
                    }
                    else
                    {
                        lblBlinkMsg.InnerText = "New application is currently closed";
                    }
                }
            }
            catch (Exception)
            {

            }
        }
    }
}