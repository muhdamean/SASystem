using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace SASystem.admin
{
    public partial class Index : System.Web.UI.Page
    {
        private static string _dbcon = ConfigurationManager.ConnectionStrings["sasyCon"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {

            }
        }
        private void GetTotal()
        {
            try
            {
                using (SqlConnection _con=new SqlConnection(_dbcon))
                {
                    SqlCommand cmd = new SqlCommand("select count(*) from tblApplicationDetails where ApplicationStatus='New';", _con);
                    _con.Open();
                    lblTotalApplication.InnerText = cmd.ExecuteScalar().ToString();

                    cmd.Parameters.Clear();
                    cmd.CommandText = "select count(*) from tblApplicationDetails where ApplicationStatus='Pending';";
                    lblTotalScreening.InnerText = cmd.ExecuteScalar().ToString();

                    cmd.Parameters.Clear();
                    cmd.CommandText = "select count(*) from tblApplicationDetails where ApplicationStatus='Successful';";
                    lblTotalShortlist.InnerText = cmd.ExecuteScalar().ToString();

                    cmd.Parameters.Clear();
                    cmd.CommandText = "select count(*) from tblApplicants;"; 
                    lblTotalApplicants.InnerText = cmd.ExecuteScalar().ToString();
                    // new applicants male and female
                    cmd.Parameters.Clear();
                    cmd.CommandText = "select count(*) from vwApplications where Gender='Male'  and ApplicationStatus='New';";
                    lblTotalNewMale.InnerText = "Total Hectares: " + cmd.ExecuteScalar().ToString();
                   
                    cmd.Parameters.Clear();
                    cmd.CommandText = "select count(*) from vwApplications where Gender='Female' and ApplicationStatus='New';";
                    lblTotalNewFemale.InnerText = "Cluster Hectares: " + cmd.ExecuteScalar().ToString();
                    // shortlisted male and female
                    cmd.Parameters.Clear();
                    cmd.CommandText = "select count(*) from vwApplications where Gender='Male'  and ApplicationStatus='Successful';";
                    lblTotalShortlistedFemale.InnerText = "Total Hectares: " + cmd.ExecuteScalar().ToString();
                   
                    cmd.Parameters.Clear();
                    cmd.CommandText = "select count(*) from vwApplications where Gender='Female'  and ApplicationStatus='Successful';";
                    lblTotalShortlistedMale.InnerText = "Cluster Hectares: " + cmd.ExecuteScalar().ToString();
                    // pending male and female
                    cmd.Parameters.Clear();
                    cmd.CommandText = "select count(*) from vwApplications where Gender='Male'  and ApplicationStatus='Pending';";
                    lblTotalPendingMale.InnerText = "Total Hectares: " + cmd.ExecuteScalar().ToString();

                    cmd.Parameters.Clear();
                    cmd.CommandText = "select count(*) from vwApplications where Gender='Female'  and ApplicationStatus='Pending';";
                    lblTotalPendingFemale.InnerText = "Cluster Hectares: " + cmd.ExecuteScalar().ToString();
                }
            }
            catch (Exception)
            {

            }
        }
        private void BindApplocation()
        {
            try
            {
                using (SqlConnection con = new SqlConnection(_dbcon))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter("select Concat(a.FName,' ',a.LName,' ',a.MName) as Names, a.Phone,d.Email, d.YearAdmitted, d.* from tblapplicants a right join tblApplicationDetails d on a.email=d.email order by DateSubmiitted desc;", con))
                    {
                        using (DataTable dt = new DataTable())
                        {
                            sda.Fill(dt);
                            GridView1.DataSource = dt;
                            GridView1.DataBind();
                        }
                    }
                }

                //Required for jQuery DataTables to work.
                GridView1.UseAccessibleHeader = true;
                GridView1.HeaderRow.TableSection = TableRowSection.TableHeader;
            }
            catch (Exception)
            {

               
            }
        }
    }
}