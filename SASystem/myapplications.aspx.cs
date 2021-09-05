using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace SASystem
{
    public partial class myapplications : System.Web.UI.Page
    {
        string _dbcon = ConfigurationManager.ConnectionStrings["sasyCon"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            string Role = GetCookie(1).ToString();
            if (Role != "Applicant" || Role==null)
            {
                Response.Redirect("~/index.aspx");
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
        private void BindMyApplication()
        {
            try
            {
                using (SqlConnection con = new SqlConnection(_dbcon))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter("select row_number() over(order by DateSubmitted Desc) SN, Email, YearAdmitted, ApplicationSession, ApplicationStatus, DateSubmitted from tblapplicationDetails;", con))
                    {
                        using (DataTable dt = new DataTable())
                        {
                            sda.Fill(dt);
                            GridView1.DataSource = dt;
                            GridView1.DataBind();
                        }
                    }
                }

                GridView1.UseAccessibleHeader = true;
                GridView1.HeaderRow.TableSection = TableRowSection.TableHeader;
            }
            catch (Exception)
            {


            }
        }
    }
}